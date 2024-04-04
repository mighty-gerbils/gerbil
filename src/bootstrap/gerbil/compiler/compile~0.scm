(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712251112)
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
        (letrec ((_%hash-e144310%_
                  (lambda (_%id144312%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144312%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144310%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145703 (list gxc#::void::t))
            (__tmp145702 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145703
         '()
         __tmp145702
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144306%_
        (apply make-instance gxc#::collect-bindings::t _%$args144306%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145704
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
        (__make-promise __tmp145704)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144298%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144301%_
                (let ((__obj145678
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145678))
               (__tmp145705
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144301%_ _%stx144298%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145705
           gxc#current-compile-method
           _%self144301%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145707 (list gxc#::void::t))
            (__tmp145706 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145707
         '(modules)
         __tmp145706
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144295%_
        (apply make-instance gxc#::lift-modules::t _%$args144295%_)))
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
      (let ((__tmp145708
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
        (__make-promise __tmp145708)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144269%_ _%modules144266144270%_ _%stx144272%_)
        (let ((_%modules144275%_
               (if (eq? _%modules144266144270%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144266144270%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144277%_
                  (let ((__obj145680
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145680
                       _%modules144275%_
                       '1
                       '#f
                       '#f))
                    __obj145680))
                 (__tmp145709
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144277%_ _%stx144272%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145709
             gxc#current-compile-method
             _%self144277%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144284%_ . _%args144285%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144284%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144284%_
                  'modules:
                  absent-value))
               _%args144285%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144267144291%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144267144291%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145711 (list)) (__tmp145710 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145711
         '()
         __tmp145710
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144262%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144262%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145712
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
        (__make-promise __tmp145712)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144254%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144257%_
                (let ((__obj145682
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145682))
               (__tmp145713
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144257%_ _%stx144254%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145713
           gxc#current-compile-method
           _%self144257%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145715 (list gxc#::false::t))
            (__tmp145714 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145715
         '()
         __tmp145714
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144251%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144251%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145716
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
        (__make-promise __tmp145716)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144243%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144246%_
                (let ((__obj145684
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145684))
               (__tmp145717
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144246%_ _%stx144243%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145717
           gxc#current-compile-method
           _%self144246%_))))
    (define gxc#::count-values::t
      (let ((__tmp145719 (list gxc#::false-expression::t))
            (__tmp145718 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145719
         '()
         __tmp145718
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144240%_
        (apply make-instance gxc#::count-values::t _%$args144240%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145720
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
        (__make-promise __tmp145720)))
    (define gxc#apply-count-values
      (lambda (_%stx144232%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144235%_
                (let ((__obj145686
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145686))
               (__tmp145721
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144235%_ _%stx144232%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145721
           gxc#current-compile-method
           _%self144235%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145722 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145722
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144229%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144229%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145723
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
        (__make-promise __tmp145723)))
    (define gxc#::generate-loader::t
      (let ((__tmp145725 (list gxc#::generate-runtime-empty::t))
            (__tmp145724 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145725
         '()
         __tmp145724
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144225%_
        (apply make-instance gxc#::generate-loader::t _%$args144225%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145726
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
        (__make-promise __tmp145726)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144217%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144220%_
                (let ((__obj145689
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145689))
               (__tmp145727
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144220%_ _%stx144217%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145727
           gxc#current-compile-method
           _%self144220%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145728 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145728
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144214%_
        (apply make-instance gxc#::generate-runtime::t _%$args144214%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145729
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
        (__make-promise __tmp145729)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx144206%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144209%_
                (let ((__obj145691
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145691))
               (__tmp145730
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144209%_ _%stx144206%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145730
           gxc#current-compile-method
           _%self144209%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145732 (list gxc#::generate-runtime::t))
            (__tmp145731 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145732
         '()
         __tmp145731
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args144203%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args144203%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145733
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
        (__make-promise __tmp145733)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx144195%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self144198%_
                (let ((__obj145693
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145693))
               (__tmp145734
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144198%_ _%stx144195%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145734
           gxc#current-compile-method
           _%self144198%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145735 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145735
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args144192%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args144192%_)))
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
      (let ((__tmp145736
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
        (__make-promise __tmp145736)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords144166%_ _%table144163144167%_ _%stx144169%_)
        (let ((_%table144172%_
               (if (eq? _%table144163144167%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table144163144167%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self144174%_
                  (let ((__obj145695
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145695
                       _%table144172%_
                       '1
                       '#f
                       '#f))
                    __obj145695))
                 (__tmp145737
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144174%_ _%stx144169%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145737
             gxc#current-compile-method
             _%self144174%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords144181%_ . _%args144182%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords144181%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144181%_
                  'table:
                  absent-value))
               _%args144182%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args144164144188%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args144164144188%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145739 (list gxc#::void-expression::t))
            (__tmp145738 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145739
         '(state)
         __tmp145738
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args144159%_
        (apply make-instance gxc#::generate-meta::t _%$args144159%_)))
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
      (let ((__tmp145740
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
        (__make-promise __tmp145740)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords144133%_ _%state144130144134%_ _%stx144136%_)
        (let ((_%state144139%_
               (if (eq? _%state144130144134%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144130144134%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self144141%_
                  (let ((__obj145697
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145697
                       _%state144139%_
                       '1
                       '#f
                       '#f))
                    __obj145697))
                 (__tmp145741
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144141%_ _%stx144136%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145741
             gxc#current-compile-method
             _%self144141%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords144148%_ . _%args144149%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords144148%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144148%_
                  'state:
                  absent-value))
               _%args144149%_)))
    (define gxc#apply-generate-meta
      (lambda _%args144131144155%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args144131144155%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145743 (list)) (__tmp145742 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145743
         '(state)
         __tmp145742
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args144126%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args144126%_)))
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
      (let ((__tmp145744
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
        (__make-promise __tmp145744)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords144100%_ _%state144097144101%_ _%stx144103%_)
        (let ((_%state144106%_
               (if (eq? _%state144097144101%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144097144101%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self144108%_
                  (let ((__obj145699
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145699
                       _%state144106%_
                       '1
                       '#f
                       '#f))
                    __obj145699))
                 (__tmp145745
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144108%_ _%stx144103%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145745
             gxc#current-compile-method
             _%self144108%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords144115%_ . _%args144116%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords144115%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144115%_
                  'state:
                  absent-value))
               _%args144116%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args144098144122%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args144098144122%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self144026%_ _%stx144027%_)
        (let* ((_%g144029144046%_
                (lambda (_%g144030144043%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144030144043%_))))
               (_%g144028144093%_
                (lambda (_%g144030144049%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144030144049%_))
                      (let ((_%e144035144051%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144030144049%_))))
                        (let ((_%hd144034144054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144035144051%_)))
                              (_%tl144033144056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144035144051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144033144056%_))
                              (let ((_%e144038144059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144033144056%_))))
                                (let ((_%hd144037144062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144038144059%_)))
                                      (_%tl144036144064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144038144059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144036144064%_))
                                      (let ((_%e144041144067%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144036144064%_))))
                                        (let ((_%hd144040144070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144041144067%_)))
                                              (_%tl144039144072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144041144067%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144039144072%_))
                                              ((lambda (_%L144075%_
                                                        _%L144076%_)
                                                 (let ((__tmp145746
                                                        (lambda (_%bind144091%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind144091%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind144091%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145746
                                                    _%L144076%_)))
                                               _%hd144040144070%_
                                               _%hd144037144062%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g144029144046%_
                                                 _%g144030144049%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144029144046%_
                                         _%g144030144049%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144029144046%_ _%g144030144049%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g144029144046%_ _%g144030144049%_))))))
          (declare (not safe))
          (_%g144028144093%_ _%stx144027%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143958%_ _%stx143959%_)
        (let* ((_%g143961143978%_
                (lambda (_%g143962143975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143962143975%_))))
               (_%g143960144023%_
                (lambda (_%g143962143981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143962143981%_))
                      (let ((_%e143967143983%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143962143981%_))))
                        (let ((_%hd143966143986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143967143983%_)))
                              (_%tl143965143988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143967143983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143965143988%_))
                              (let ((_%e143970143991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143965143988%_))))
                                (let ((_%hd143969143994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143970143991%_)))
                                      (_%tl143968143996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143970143991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143968143996%_))
                                      (let ((_%e143973143999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143968143996%_))))
                                        (let ((_%hd143972144002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143973143999%_)))
                                              (_%tl143971144004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143973143999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143971144004%_))
                                              ((lambda (_%L144007%_
                                                        _%L144008%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L144008%_
                                                    '#t)))
                                               _%hd143972144002%_
                                               _%hd143969143994%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143961143978%_
                                                 _%g143962143981%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143961143978%_
                                         _%g143962143981%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143961143978%_ _%g143962143981%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143961143978%_ _%g143962143981%_))))))
          (declare (not safe))
          (_%g143960144023%_ _%stx143959%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143900%_ _%stx143901%_)
        (let* ((_%g143903143917%_
                (lambda (_%g143904143914%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143904143914%_))))
               (_%g143902143955%_
                (lambda (_%g143904143920%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143904143920%_))
                      (let ((_%e143909143922%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143904143920%_))))
                        (let ((_%hd143908143925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143909143922%_)))
                              (_%tl143907143927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143909143922%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143907143927%_))
                              (let ((_%e143912143930%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143907143927%_))))
                                (let ((_%hd143911143933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143912143930%_)))
                                      (_%tl143910143935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143912143930%_))))
                                  ((lambda (_%L143938%_ _%L143939%_)
                                     (let ((_%ctx143952%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143939%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143900%_
                                           'modules))
                                        (cons _%ctx143952%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143900%_
                                                        'modules)))))
                                       (let ((__tmp145747
                                              (lambda ()
                                                (let ((__tmp145748
                                                       (##structure-ref
                                                        _%ctx143952%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143900%_
                                                   __tmp145748)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145747
                                          gx#current-expander-context
                                          _%ctx143952%_))))
                                   _%tl143910143935%_
                                   _%hd143911143933%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143903143917%_ _%g143904143920%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143903143917%_ _%g143904143920%_))))))
          (declare (not safe))
          (_%g143902143955%_ _%stx143901%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143853143855%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143853143855%_
              (let ((_%decls143858%_ _%decls143853143855%_))
                (let _%lp143860%_ ((_%rest143862%_ _%decls143858%_))
                  (let* ((_%rest143863143871%_ _%rest143862%_)
                         (_%else143865143879%_ (lambda () '#f))
                         (_%K143867143888%_
                          (lambda (_%decls143882%_ _%decl143883%_)
                            (if (equal? _%decl143883%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143883%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (declare (not safe))
                                      (_%lp143860%_ _%decls143882%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143863143871%_))
                        (let ((_%hd143868143891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143863143871%_)))
                              (_%tl143869143893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143863143871%_))))
                          (let* ((_%decl143896%_ _%hd143868143891%_)
                                 (_%decls143898%_ _%tl143869143893%_))
                            (declare (not safe))
                            (_%K143867143888%_
                             _%decls143898%_
                             _%decl143896%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143865143879%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143847%_ _%syntax?143848%_)
        (let ((_%eid143850%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143847%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143851%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143850%_))
              '#!void
              (let ((__tmp145749
                     (let ((__tmp145750
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143850%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145750 _%syntax?143848%_))))
                (declare (not safe))
                (hash-put! _%ht143851%_ _%eid143850%_ __tmp145749))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143845%_)
        (let ((__tmp145751
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143845%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145751))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143800%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143800%_))
            (let () _%key143800%_)
            (if (uninterned-symbol? _%key143800%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143800%_))
                (let ()
                  (let* ((_%key143804143811%_ _%key143800%_)
                         (_%E143806143815%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143804143811%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143807143833%_
                          (lambda (_%mark143818%_ _%eid143819%_)
                            (let ((_%$e143821%_
                                   (##structure-ref
                                    _%mark143818%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143821%_
                                  ((lambda (_%ht143824%_)
                                     (let ((_%$e143826%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143824%_
                                               _%eid143819%_))))
                                       (if _%$e143826%_
                                           ((lambda (_%id143829%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143829%_))
                                                  _%id143829%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143829%_))))
                                            _%$e143826%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%eid143819%_)))))
                                   _%$e143821%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-identifier-key
                                     _%eid143819%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143804143811%_))
                        (let ((_%hd143808143836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143804143811%_)))
                              (_%tl143809143838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143804143811%_))))
                          (let* ((_%eid143841%_ _%hd143808143836%_)
                                 (_%mark143843%_ _%tl143809143838%_))
                            (declare (not safe))
                            (_%K143807143833%_ _%mark143843%_ _%eid143841%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143806143815%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143797%_ _%stx143798%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143644%_ _%stx143645%_)
        (letrec ((_%simplify143647%_
                  (lambda (_%body143695%_)
                    (let _%lp143697%_ ((_%rest143699%_ _%body143695%_)
                                       (_%r143700%_ '()))
                      (let* ((_%rest143701143709%_ _%rest143699%_)
                             (_%else143703143717%_
                              (lambda () (reverse _%r143700%_)))
                             (_%K143705143785%_
                              (lambda (_%rest143720%_ _%hd143721%_)
                                (let* ((_%hd143722143738%_ _%hd143721%_)
                                       (_%else143726143746%_
                                        (lambda ()
                                          (let ((__tmp145752
                                                 (cons _%hd143721%_
                                                       _%r143700%_)))
                                            (declare (not safe))
                                            (_%lp143697%_
                                             _%rest143720%_
                                             __tmp145752)))))
                                  (let ((_%K143734143775%_
                                         (lambda (_%exprs143773%_)
                                           (let ((__tmp145753
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143720%_
                                                     _%exprs143773%_))))
                                             (declare (not safe))
                                             (_%lp143697%_
                                              __tmp145753
                                              _%r143700%_))))
                                        (_%K143729143759%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143720%_))
                                               (let ((__tmp145754
                                                      (cons _%hd143721%_
                                                            _%r143700%_)))
                                                 (declare (not safe))
                                                 (_%lp143697%_
                                                  _%rest143720%_
                                                  __tmp145754))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143697%_
                                                  _%rest143720%_
                                                  _%r143700%_)))))
                                        (_%K143728143751%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143720%_))
                                               (let ((__tmp145755
                                                      (cons _%hd143721%_
                                                            _%r143700%_)))
                                                 (declare (not safe))
                                                 (_%lp143697%_
                                                  _%rest143720%_
                                                  __tmp145755))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143697%_
                                                  _%rest143720%_
                                                  _%r143700%_))))))
                                    (let ((_%try-match143725143754%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143722143738%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143728143751%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143726143746%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143722143738%_))
                                          (let ((_%tl143736143780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143722143738%_)))
                                                (_%hd143735143778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143722143738%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143735143778%_
                                                         'begin))
                                                (let ((_%exprs143783%_
                                                       _%tl143736143780%_))
                                                  (declare (not safe))
                                                  (_%K143734143775%_
                                                   _%exprs143783%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143735143778%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143736143780%_))
                                                        (let ((_%tl143733143767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143736143780%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143733143767%_))
                      (let () (declare (not safe)) (_%K143729143759%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143725143754%_))))
                (let () (declare (not safe)) (_%try-match143725143754%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143725143754%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143725143754%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143701143709%_))
                            (let ((_%hd143706143788%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143701143709%_)))
                                  (_%tl143707143790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143701143709%_))))
                              (let* ((_%hd143793%_ _%hd143706143788%_)
                                     (_%rest143795%_ _%tl143707143790%_))
                                (declare (not safe))
                                (_%K143705143785%_
                                 _%rest143795%_
                                 _%hd143793%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143703143717%_))))))))
          (let* ((_%g143649143659%_
                  (lambda (_%g143650143656%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143650143656%_))))
                 (_%g143648143692%_
                  (lambda (_%g143650143662%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143650143662%_))
                        (let ((_%e143654143664%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143650143662%_))))
                          (let ((_%hd143653143667%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143654143664%_)))
                                (_%tl143652143669%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143654143664%_))))
                            ((lambda (_%L143672%_)
                               (let* ((_%body143687%_
                                       (map (lambda (_%g143682143684%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143644%_
                                                 _%g143682143684%_)))
                                            _%L143672%_))
                                      (_%body143689%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143647%_ _%body143687%_))))
                                 (if (let ((__tmp145756
                                            (length _%body143689%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145756 '1))
                                     (car _%body143689%_)
                                     (cons 'begin _%body143689%_))))
                             _%tl143652143669%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143649143659%_ _%g143650143662%_))))))
            (declare (not safe))
            (_%g143648143692%_ _%stx143645%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143605%_ _%stx143606%_)
        (let* ((_%g143608143618%_
                (lambda (_%g143609143615%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143609143615%_))))
               (_%g143607143641%_
                (lambda (_%g143609143621%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143609143621%_))
                      (let ((_%e143613143623%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143609143621%_))))
                        (let ((_%hd143612143626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143613143623%_)))
                              (_%tl143611143628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143613143623%_))))
                          ((lambda (_%L143631%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143631%_))))
                           _%tl143611143628%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143608143618%_ _%g143609143621%_))))))
          (declare (not safe))
          (_%g143607143641%_ _%stx143606%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143369%_ _%stx143370%_)
        (let* ((_%__stx144335144336%_ _%stx143370%_)
               (_%g143374143426%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144335144336%_)))))
          (let ((_%__kont144337144338%_
                 (lambda (_%L143587%_ _%L143588%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143369%_ _%L143587%_))))
                (_%__kont144339144340%_
                 (lambda (_%L143535%_ _%L143536%_ _%L143537%_)
                   (if (let ((__tmp145757
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L143537%_))))
                         (declare (not safe))
                         (##memq __tmp145757 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143369%_ _%L143535%_)))))
                (_%__kont144343144344%_
                 (lambda (_%L143455%_ _%L143456%_)
                   (let ((_%decls143471%_ (map gx#syntax->datum _%L143456%_)))
                     (let ((__tmp145760
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls143471%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143369%_
                                                   _%L143455%_))
                                                '())))))
                           (__tmp145758
                            (let ((__tmp145759
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145759 _%decls143471%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145760
                        gxc#current-compile-decls
                        __tmp145758))))))
            (let* ((_%__match144390144391%_
                    (lambda (_%e143392143479%_
                             _%hd143391143482%_
                             _%tl143390143484%_
                             _%e143395143487%_
                             _%hd143394143490%_
                             _%tl143393143492%_
                             _%e143398143495%_
                             _%hd143397143498%_
                             _%tl143396143500%_
                             _%__splice144341144342%_
                             _%target143399143503%_
                             _%tl143401143505%_)
                      (letrec ((_%loop143402143508%_
                                (lambda (_%hd143400143511%_
                                         _%param143406143513%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143400143511%_))
                                      (let ((_%e143403143516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143400143511%_))))
                                        (let ((_%lp-tl143405143521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143403143516%_)))
                                              (_%lp-hd143404143519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143403143516%_))))
                                          (let ((__tmp145761
                                                 (cons _%lp-hd143404143519%_
                                                       _%param143406143513%_)))
                                            (declare (not safe))
                                            (_%loop143402143508%_
                                             _%lp-tl143405143521%_
                                             __tmp145761))))
                                      (let ((_%param143407143524%_
                                             (reverse _%param143406143513%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143393143492%_))
                                            (let ((_%e143410143527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143393143492%_))))
                                              (let ((_%tl143408143532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143410143527%_)))
                                                    (_%hd143409143530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143410143527%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143408143532%_))
                                                    (let ((_%L143535%_
                                                           _%hd143409143530%_)
                                                          (_%L143536%_
                                                           _%param143407143524%_)
                                                          (_%L143537%_
                                                           _%hd143397143498%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L143537%_))
                       (let ((__tmp145762
                              (let ((__tmp145763
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L143537%_))))
                                (declare (not safe))
                                (##memq __tmp145763 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145762)))
                  (_%__kont144339144340%_ _%L143535%_ _%L143536%_ _%L143537%_)
                  (_%__kont144343144344%_
                   _%hd143409143530%_
                   _%hd143394143490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143374143426%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143374143426%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop143402143508%_ _%target143399143503%_ '())))))
                   (_%__match144364144365%_
                    (lambda (_%e143380143563%_
                             _%hd143379143566%_
                             _%tl143378143568%_
                             _%e143383143571%_
                             _%hd143382143574%_
                             _%tl143381143576%_
                             _%e143386143579%_
                             _%hd143385143582%_
                             _%tl143384143584%_)
                      (let ((_%L143587%_ _%hd143385143582%_)
                            (_%L143588%_ _%hd143382143574%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143588%_))
                            (_%__kont144337144338%_ _%L143587%_ _%L143588%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd143382143574%_))
                                (let ((_%e143398143495%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd143382143574%_))))
                                  (let ((_%tl143396143500%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143398143495%_)))
                                        (_%hd143397143498%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143398143495%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143396143500%_))
                                        (let ((_%__splice144341144342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143396143500%_
                                                  '0))))
                                          (let ((_%tl143401143505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144341144342%_
                                                    '1)))
                                                (_%target143399143503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144341144342%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143401143505%_))
                                                (_%__match144390144391%_
                                                 _%e143380143563%_
                                                 _%hd143379143566%_
                                                 _%tl143378143568%_
                                                 _%e143383143571%_
                                                 _%hd143382143574%_
                                                 _%tl143381143576%_
                                                 _%e143398143495%_
                                                 _%hd143397143498%_
                                                 _%tl143396143500%_
                                                 _%__splice144341144342%_
                                                 _%target143399143503%_
                                                 _%tl143401143505%_)
                                                (_%__kont144343144344%_
                                                 _%hd143385143582%_
                                                 _%hd143382143574%_))))
                                        (_%__kont144343144344%_
                                         _%hd143385143582%_
                                         _%hd143382143574%_))))
                                (_%__kont144343144344%_
                                 _%hd143385143582%_
                                 _%hd143382143574%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144335144336%_))
                  (let ((_%e143380143563%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144335144336%_))))
                    (let ((_%tl143378143568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143380143563%_)))
                          (_%hd143379143566%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143380143563%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143378143568%_))
                          (let ((_%e143383143571%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143378143568%_))))
                            (let ((_%tl143381143576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143383143571%_)))
                                  (_%hd143382143574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143383143571%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143381143576%_))
                                  (let ((_%e143386143579%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143381143576%_))))
                                    (let ((_%tl143384143584%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143386143579%_)))
                                          (_%hd143385143582%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143386143579%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143384143584%_))
                                          (_%__match144364144365%_
                                           _%e143380143563%_
                                           _%hd143379143566%_
                                           _%tl143378143568%_
                                           _%e143383143571%_
                                           _%hd143382143574%_
                                           _%tl143381143576%_
                                           _%e143386143579%_
                                           _%hd143385143582%_
                                           _%tl143384143584%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143382143574%_))
                                              (let ((_%e143398143495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143382143574%_))))
                                                (let ((_%tl143396143500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143398143495%_)))
                                                      (_%hd143397143498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143398143495%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl143396143500%_))
                                                      (let ((_%__splice144341144342%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl143396143500%_ '0))))
                (let ((_%tl143401143505%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144341144342%_ '1)))
                      (_%target143399143503%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144341144342%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143401143505%_))
                      (_%__match144390144391%_
                       _%e143380143563%_
                       _%hd143379143566%_
                       _%tl143378143568%_
                       _%e143383143571%_
                       _%hd143382143574%_
                       _%tl143381143576%_
                       _%e143398143495%_
                       _%hd143397143498%_
                       _%tl143396143500%_
                       _%__splice144341144342%_
                       _%target143399143503%_
                       _%tl143401143505%_)
                      (let () (declare (not safe)) (_%g143374143426%_)))))
              (let () (declare (not safe)) (_%g143374143426%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143374143426%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143382143574%_))
                                      (let ((_%e143398143495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143382143574%_))))
                                        (let ((_%tl143396143500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143398143495%_)))
                                              (_%hd143397143498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143398143495%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl143396143500%_))
                                              (let ((_%__splice144341144342%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl143396143500%_
                                                        '0))))
                                                (let ((_%tl143401143505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144341144342%_
                                                          '1)))
                                                      (_%target143399143503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144341144342%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143401143505%_))
                                                      (_%__match144390144391%_
                                                       _%e143380143563%_
                                                       _%hd143379143566%_
                                                       _%tl143378143568%_
                                                       _%e143383143571%_
                                                       _%hd143382143574%_
                                                       _%tl143381143576%_
                                                       _%e143398143495%_
                                                       _%hd143397143498%_
                                                       _%tl143396143500%_
                                                       _%__splice144341144342%_
                                                       _%target143399143503%_
                                                       _%tl143401143505%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g143374143426%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143374143426%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143374143426%_))))))
                          (let () (declare (not safe)) (_%g143374143426%_)))))
                  (let () (declare (not safe)) (_%g143374143426%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143328%_ _%stx143329%_)
        (let* ((_%g143331143341%_
                (lambda (_%g143332143338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143332143338%_))))
               (_%g143330143366%_
                (lambda (_%g143332143344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143332143344%_))
                      (let ((_%e143336143346%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143332143344%_))))
                        (let ((_%hd143335143349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143336143346%_)))
                              (_%tl143334143351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143336143346%_))))
                          ((lambda (_%L143354%_)
                             (let ((_%decls143364%_
                                    (map gx#syntax->datum _%L143354%_)))
                               (let ((__tmp145764
                                      (let ((__tmp145765
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145765
                                         _%decls143364%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145764))
                               (cons 'declare _%decls143364%_)))
                           _%tl143334143351%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143331143341%_ _%g143332143344%_))))))
          (declare (not safe))
          (_%g143330143366%_ _%stx143329%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self143074%_ _%stx143075%_)
        (let* ((_%g143077143094%_
                (lambda (_%g143078143091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143078143091%_))))
               (_%g143076143325%_
                (lambda (_%g143078143097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143078143097%_))
                      (let ((_%e143083143099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143078143097%_))))
                        (let ((_%hd143082143102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143083143099%_)))
                              (_%tl143081143104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143083143099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143081143104%_))
                              (let ((_%e143086143107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143081143104%_))))
                                (let ((_%hd143085143110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143086143107%_)))
                                      (_%tl143084143112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143086143107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143084143112%_))
                                      (let ((_%e143089143115%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143084143112%_))))
                                        (let ((_%hd143088143118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143089143115%_)))
                                              (_%tl143087143120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143089143115%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143087143120%_))
                                              ((lambda (_%L143123%_
                                                        _%L143124%_)
                                                 (let* ((_%__stx144443144444%_
                                                         _%L143124%_)
                                                        (_%g143141143155%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx144443144444%_)))))
                                                   (let ((_%__kont144445144446%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self143074%_
                                                               _%L143123%_))))
                                                         (_%__kont144447144448%_
                                                          (lambda (_%L143287%_)
                                                            (let ((_%eid143296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143287%_))))
                      (let ((_%lambda-expr143297143299%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L143123%_))))
                        (if _%lambda-expr143297143299%_
                            (let* ((_%lambda-expr143302%_
                                    _%lambda-expr143297143299%_)
                                   (__tmp145766
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145766
                               _%lambda-expr143302%_
                               _%eid143296%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143296%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self143074%_
                                           _%L143123%_))
                                        '()))))))
                 (_%__kont144449144450%_
                  (lambda ()
                    (let* ((_%tmp143162%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143271%_
                            (let _%lp143164%_ ((_%rest143166%_ _%L143124%_)
                                               (_%k143167%_ '0)
                                               (_%r143168%_ '()))
                              (let* ((_%__stx144413144414%_ _%rest143166%_)
                                     (_%g143173143190%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx144413144414%_)))))
                                (let ((_%__kont144415144416%_
                                       (lambda (_%L143258%_)
                                         (let ((__tmp145767
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143167%_ '1))))
                                           (declare (not safe))
                                           (_%lp143164%_
                                            _%L143258%_
                                            __tmp145767
                                            _%r143168%_))))
                                      (_%__kont144417144418%_
                                       (lambda (_%L143231%_ _%L143232%_)
                                         (let ((__tmp145769
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k143167%_ '1)))
                                               (__tmp145768
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143232%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp143162%_
                                   _%k143167%_
                                   _%L143231%_))
                                '())))
              _%r143168%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp143164%_
                                            _%L143231%_
                                            __tmp145769
                                            __tmp145768))))
                                      (_%__kont144419144420%_
                                       (lambda (_%L143202%_)
                                         (let ((__tmp145770
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143202%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp143162%_
                                   _%k143167%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145770
                                            _%r143168%_))))
                                      (_%__kont144421144422%_
                                       (lambda () (reverse _%r143168%_))))
                                  (let ((_%g143171143218%_
                                         (lambda ()
                                           (let ((_%L143202%_
                                                  _%__stx144413144414%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L143202%_))
                                                 (_%__kont144419144420%_
                                                  _%L143202%_)
                                                 (_%__kont144421144422%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144413144414%_))
                                        (let ((_%e143178143247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144413144414%_))))
                                          (let ((_%tl143176143252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143178143247%_)))
                                                (_%hd143177143250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143178143247%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd143177143250%_))
                                                (let ((_%e143179143255%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143177143250%_))))
                                                  (if (equal? _%e143179143255%_
                                                              '#f)
                                                      (_%__kont144415144416%_
                                                       _%tl143176143252%_)
                                                      (_%__kont144417144418%_
                                                       _%tl143176143252%_
                                                       _%hd143177143250%_)))
                                                (_%__kont144417144418%_
                                                 _%tl143176143252%_
                                                 _%hd143177143250%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143171143218%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp143162%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143074%_
                                                       _%L143123%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp143162%_
                                           _%L143124%_
                                           _%L143123%_))
                                        _%body143271%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx144443144444%_))
                                                         (let ((_%e143145143309%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx144443144444%_))))
                   (let ((_%tl143143143314%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e143145143309%_)))
                         (_%hd143144143312%_
                          (let ()
                            (declare (not safe))
                            (##car _%e143145143309%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd143144143312%_))
                         (let ((_%e143146143317%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd143144143312%_))))
                           (if (equal? _%e143146143317%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143143143314%_))
                                   (_%__kont144445144446%_)
                                   (_%__kont144449144450%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143143143314%_))
                                   (_%__kont144447144448%_ _%hd143144143312%_)
                                   (_%__kont144449144450%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143143143314%_))
                             (_%__kont144447144448%_ _%hd143144143312%_)
                             (_%__kont144449144450%_)))))
                 (_%__kont144449144450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143088143118%_
                                               _%hd143085143110%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143077143094%_
                                                 _%g143078143097%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143077143094%_
                                         _%g143078143097%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143077143094%_ _%g143078143097%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143077143094%_ _%g143078143097%_))))))
          (declare (not safe))
          (_%g143076143325%_ _%stx143075%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals143049%_ _%hd143050%_ _%expr143051%_)
        (let ((_%$e143053%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr143051%_))))
          (if _%$e143053%_
              ((lambda (_%count143056%_)
                 (let ((_%len143058%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143050%_)))
                       (_%cmp143059%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143050%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len143058%_ '0))
                           (_%cmp143059%_ _%count143056%_ _%len143058%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr143051%_
                          _%hd143050%_)))))
               _%$e143053%_)
              (let ()
                (let* ((_%len143065%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143050%_)))
                       (_%cmp143067%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143050%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg143069%_
                        (let ((__tmp145772
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd143050%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145771 (number->string _%len143065%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145772
                           __tmp145771
                           '" values")))
                       (_%count143071%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145773
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd143050%_))))
                             (declare (not safe))
                             (not __tmp145773))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len143065%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count143071%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals143049%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp143067%_
                                  (cons _%count143071%_
                                        (cons _%len143065%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp143067%_
                                                          (cons _%count143071%_
                                                                (cons _%len143065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg143069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count143071%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var143044%_)
        (letrec ((_%generate-inline143046%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var143044%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var143044%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline143046%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline143046%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var143037%_ _%i143038%_ _%rest143039%_)
        (letrec ((_%generate-inline143041%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i143038%_ '0))
                             (let ((__tmp145774
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest143039%_))))
                               (declare (not safe))
                               (not __tmp145774)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var143037%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var143037%_
                                                      (cons '0 '())))
                                          (cons _%var143037%_ '()))))
                        (cons '##vector-ref
                              (cons _%var143037%_ (cons _%i143038%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline143041%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline143041%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var143031%_ _%i143032%_)
        (if (let () (declare (not safe)) (##fx= _%i143032%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var143031%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var143031%_ '()))
                                    (cons (cons 'list (cons _%var143031%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var143031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var143031%_ '()))
                    (cons (cons 'list (cons _%var143031%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i143032%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var143031%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var143031%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var143031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var143031%_ '()))
                                    '()))
                        (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons '##list-tail
                            (cons (cons '##vector->list
                                        (cons _%var143031%_ '()))
                                  (cons _%i143032%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var143031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i143032%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142963%_ _%stx142964%_)
        (let* ((_%g142966142983%_
                (lambda (_%g142967142980%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142967142980%_))))
               (_%g142965143028%_
                (lambda (_%g142967142986%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142967142986%_))
                      (let ((_%e142972142988%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142967142986%_))))
                        (let ((_%hd142971142991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142972142988%_)))
                              (_%tl142970142993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142972142988%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142970142993%_))
                              (let ((_%e142975142996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142970142993%_))))
                                (let ((_%hd142974142999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142975142996%_)))
                                      (_%tl142973143001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142975142996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142973143001%_))
                                      (let ((_%e142978143004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142973143001%_))))
                                        (let ((_%hd142977143007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142978143004%_)))
                                              (_%tl142976143009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142978143004%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142976143009%_))
                                              ((lambda (_%L143012%_
                                                        _%L143013%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142963%_
                                                    _%L143013%_
                                                    _%L143012%_)))
                                               _%hd142977143007%_
                                               _%hd142974142999%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142966142983%_
                                                 _%g142967142986%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142966142983%_
                                         _%g142967142986%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142966142983%_ _%g142967142986%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142966142983%_ _%g142967142986%_))))))
          (declare (not safe))
          (_%g142965143028%_ _%stx142964%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142922%_ _%hd142923%_ _%body142924%_)
        (let* ((_%hd142926%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142923%_)))
               (_%body142928%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142922%_ _%body142924%_)))
               (_%body142960%_
                (let* ((_%body142929142937%_ _%body142928%_)
                       (_%else142931142945%_
                        (lambda () (cons _%body142928%_ '())))
                       (_%K142933142950%_
                        (lambda (_%exprs142948%_) _%exprs142948%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142929142937%_))
                      (let ((_%hd142934142953%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142929142937%_)))
                            (_%tl142935142955%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142929142937%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142934142953%_ 'begin))
                            (let ((_%exprs142958%_ _%tl142935142955%_))
                              (declare (not safe))
                              (_%K142933142950%_ _%exprs142958%_))
                            (let ()
                              (declare (not safe))
                              (_%else142931142945%_))))
                      (let () (declare (not safe)) (_%else142931142945%_))))))
          (cons 'lambda (cons _%hd142926%_ _%body142960%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142920%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142920%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self141459%_ _%stx141460%_)
        (letrec ((_%dispatch-case?141462%_
                  (lambda (_%hd142150%_ _%body142151%_)
                    (let* ((_%form142153%_
                            (cons _%hd142150%_ (cons _%body142151%_ '())))
                           (_%__stx144475144476%_ _%form142153%_)
                           (_%g142158142315%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144475144476%_)))))
                      (let ((_%__kont144477144478%_
                             (lambda (_%L142840%_ _%L142841%_ _%L142842%_)
                               '#t))
                            (_%__kont144483144484%_
                             (lambda (_%L142628%_
                                      _%L142629%_
                                      _%L142630%_
                                      _%L142631%_
                                      _%L142632%_
                                      _%L142633%_)
                               '#t))
                            (_%__kont144489144490%_
                             (lambda (_%L142423%_
                                      _%L142424%_
                                      _%L142425%_
                                      _%L142426%_)
                               '#t))
                            (_%__kont144491144492%_ (lambda () '#f)))
                        (let* ((_%__match144616144617%_
                                (lambda (_%e142277142327%_
                                         _%hd142276142330%_
                                         _%tl142275142332%_
                                         _%e142280142335%_
                                         _%hd142279142338%_
                                         _%tl142278142340%_
                                         _%e142283142343%_
                                         _%hd142282142346%_
                                         _%tl142281142348%_
                                         _%e142286142351%_
                                         _%hd142285142354%_
                                         _%tl142284142356%_
                                         _%e142289142359%_
                                         _%hd142288142362%_
                                         _%tl142287142364%_
                                         _%e142292142367%_
                                         _%hd142291142370%_
                                         _%tl142290142372%_
                                         _%e142295142375%_
                                         _%hd142294142378%_
                                         _%tl142293142380%_
                                         _%e142298142383%_
                                         _%hd142297142386%_
                                         _%tl142296142388%_
                                         _%e142301142391%_
                                         _%hd142300142394%_
                                         _%tl142299142396%_
                                         _%e142304142399%_
                                         _%hd142303142402%_
                                         _%tl142302142404%_
                                         _%e142307142407%_
                                         _%hd142306142410%_
                                         _%tl142305142412%_
                                         _%e142310142415%_
                                         _%hd142309142418%_
                                         _%tl142308142420%_)
                                  (let ((_%L142423%_ _%hd142309142418%_)
                                        (_%L142424%_ _%hd142300142394%_)
                                        (_%L142425%_ _%hd142291142370%_)
                                        (_%L142426%_ _%hd142276142330%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142426%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L142425%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L142426%_
                                                _%L142423%_))
                                             (let ((__tmp145775
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L142424%_
                                                       _%L142426%_))))
                                               (declare (not safe))
                                               (not __tmp145775)))
                                        (_%__kont144489144490%_
                                         _%L142423%_
                                         _%L142424%_
                                         _%L142425%_
                                         _%L142426%_)
                                        (_%__kont144491144492%_)))))
                               (_%__match144588144589%_
                                (lambda (_%e142277142327%_
                                         _%hd142276142330%_
                                         _%tl142275142332%_
                                         _%e142280142335%_
                                         _%hd142279142338%_
                                         _%tl142278142340%_
                                         _%e142283142343%_
                                         _%hd142282142346%_
                                         _%tl142281142348%_
                                         _%e142286142351%_
                                         _%hd142285142354%_
                                         _%tl142284142356%_
                                         _%e142289142359%_
                                         _%hd142288142362%_
                                         _%tl142287142364%_
                                         _%e142292142367%_
                                         _%hd142291142370%_
                                         _%tl142290142372%_
                                         _%e142295142375%_
                                         _%hd142294142378%_
                                         _%tl142293142380%_
                                         _%e142298142383%_
                                         _%hd142297142386%_
                                         _%tl142296142388%_
                                         _%e142301142391%_
                                         _%hd142300142394%_
                                         _%tl142299142396%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142293142380%_))
                                      (let ((_%e142304142399%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142293142380%_))))
                                        (let ((_%tl142302142404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142304142399%_)))
                                              (_%hd142303142402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142304142399%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142303142402%_))
                                              (let ((_%e142307142407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142303142402%_))))
                                                (let ((_%tl142305142412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142307142407%_)))
                                                      (_%hd142306142410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142307142407%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142306142410%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142306142410%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142305142412%_))
                      (let ((_%e142310142415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142305142412%_))))
                        (let ((_%tl142308142420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142310142415%_)))
                              (_%hd142309142418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142310142415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142308142420%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142302142404%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142278142340%_))
                                      (_%__match144616144617%_
                                       _%e142277142327%_
                                       _%hd142276142330%_
                                       _%tl142275142332%_
                                       _%e142280142335%_
                                       _%hd142279142338%_
                                       _%tl142278142340%_
                                       _%e142283142343%_
                                       _%hd142282142346%_
                                       _%tl142281142348%_
                                       _%e142286142351%_
                                       _%hd142285142354%_
                                       _%tl142284142356%_
                                       _%e142289142359%_
                                       _%hd142288142362%_
                                       _%tl142287142364%_
                                       _%e142292142367%_
                                       _%hd142291142370%_
                                       _%tl142290142372%_
                                       _%e142295142375%_
                                       _%hd142294142378%_
                                       _%tl142293142380%_
                                       _%e142298142383%_
                                       _%hd142297142386%_
                                       _%tl142296142388%_
                                       _%e142301142391%_
                                       _%hd142300142394%_
                                       _%tl142299142396%_
                                       _%e142304142399%_
                                       _%hd142303142402%_
                                       _%tl142302142404%_
                                       _%e142307142407%_
                                       _%hd142306142410%_
                                       _%tl142305142412%_
                                       _%e142310142415%_
                                       _%hd142309142418%_
                                       _%tl142308142420%_)
                                      (_%__kont144491144492%_))
                                  (_%__kont144491144492%_))
                              (_%__kont144491144492%_))))
                      (_%__kont144491144492%_))
                  (_%__kont144491144492%_))
              (_%__kont144491144492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144491144492%_))))
                                      (_%__kont144491144492%_))))
                               (_%__match144518144519%_
                                (lambda (_%e142213142468%_
                                         _%hd142212142471%_
                                         _%tl142211142473%_
                                         _%__splice144485144486%_
                                         _%target142214142476%_
                                         _%tl142216142478%_)
                                  (letrec ((_%loop142217142481%_
                                            (lambda (_%hd142215142484%_
                                                     _%arg142221142486%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142215142484%_))
                                                  (let ((_%e142218142489%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142215142484%_))))
                                                    (let ((_%lp-tl142220142494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142218142489%_)))
                                                          (_%lp-hd142219142492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142218142489%_))))
                                                      (let ((__tmp145776
                                                             (cons _%lp-hd142219142492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142221142486%_)))
                (declare (not safe))
                (_%loop142217142481%_ _%lp-tl142220142494%_ __tmp145776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142222142497%_
                                                         (reverse _%arg142221142486%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142211142473%_))
                                                        (let ((_%e142225142500%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142211142473%_))))
                  (let ((_%tl142223142505%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142225142500%_)))
                        (_%hd142224142503%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142225142500%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142224142503%_))
                        (let ((_%e142228142508%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142224142503%_))))
                          (let ((_%tl142226142513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142228142508%_)))
                                (_%hd142227142511%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142228142508%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142227142511%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142227142511%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142226142513%_))
                                        (let ((_%e142231142516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142226142513%_))))
                                          (let ((_%tl142229142521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142231142516%_)))
                                                (_%hd142230142519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142231142516%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142230142519%_))
                                                (let ((_%e142234142524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142230142519%_))))
                                                  (let ((_%tl142232142529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142234142524%_)))
                                                        (_%hd142233142527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142234142524%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142233142527%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142233142527%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142232142529%_))
                        (let ((_%e142237142532%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142232142529%_))))
                          (let ((_%tl142235142537%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142237142532%_)))
                                (_%hd142236142535%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142237142532%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142235142537%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142229142521%_))
                                    (let ((_%e142240142540%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142229142521%_))))
                                      (let ((_%tl142238142545%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142240142540%_)))
                                            (_%hd142239142543%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142240142540%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142239142543%_))
                                            (let ((_%e142243142548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142239142543%_))))
                                              (let ((_%tl142241142553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142243142548%_)))
                                                    (_%hd142242142551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142243142548%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142242142551%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142242142551%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142241142553%_))
                                                            (let ((_%e142246142556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142241142553%_))))
                      (let ((_%tl142244142561%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142246142556%_)))
                            (_%hd142245142559%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142246142556%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142244142561%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142238142545%_))
                                (if (let ((__tmp145777
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142238142545%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145777 '1))
                                    (let ((_%__splice144487144488%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142238142545%_
                                              '1))))
                                      (let ((_%tl142249142566%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144487144488%_
                                                '1)))
                                            (_%target142247142564%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144487144488%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142249142566%_))
                                            (let ((_%e142258142569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142249142566%_))))
                                              (let ((_%tl142256142574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142258142569%_)))
                                                    (_%hd142257142572%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142258142569%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142257142572%_))
                                                    (let ((_%e142261142577%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142257142572%_))))
                                                      (let ((_%tl142259142582%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142261142577%_)))
                    (_%hd142260142580%_
                     (let () (declare (not safe)) (##car _%e142261142577%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142260142580%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142260142580%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142259142582%_))
                            (let ((_%e142264142585%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142259142582%_))))
                              (let ((_%tl142262142590%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142264142585%_)))
                                    (_%hd142263142588%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142264142585%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142262142590%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142256142574%_))
                                        (letrec ((_%loop142250142593%_
                                                  (lambda (_%hd142248142596%_
                                                           _%xarg142254142598%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142248142596%_))
                                                        (let ((_%e142251142601%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142248142596%_))))
                  (let ((_%lp-tl142253142606%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142251142601%_)))
                        (_%lp-hd142252142604%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142251142601%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142252142604%_))
                        (let ((_%e142267142609%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142252142604%_))))
                          (let ((_%tl142265142614%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142267142609%_)))
                                (_%hd142266142612%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142267142609%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142266142612%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142266142612%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142265142614%_))
                                        (let ((_%e142270142617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142265142614%_))))
                                          (let ((_%tl142268142622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142270142617%_)))
                                                (_%hd142269142620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142270142617%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142268142622%_))
                                                (let ((__tmp145778
                                                       (cons _%hd142269142620%_
                                                             _%xarg142254142598%_)))
                                                  (declare (not safe))
                                                  (_%loop142250142593%_
                                                   _%lp-tl142253142606%_
                                                   __tmp145778))
                                                (_%__match144588144589%_
                                                 _%e142213142468%_
                                                 _%hd142212142471%_
                                                 _%tl142211142473%_
                                                 _%e142225142500%_
                                                 _%hd142224142503%_
                                                 _%tl142223142505%_
                                                 _%e142228142508%_
                                                 _%hd142227142511%_
                                                 _%tl142226142513%_
                                                 _%e142231142516%_
                                                 _%hd142230142519%_
                                                 _%tl142229142521%_
                                                 _%e142234142524%_
                                                 _%hd142233142527%_
                                                 _%tl142232142529%_
                                                 _%e142237142532%_
                                                 _%hd142236142535%_
                                                 _%tl142235142537%_
                                                 _%e142240142540%_
                                                 _%hd142239142543%_
                                                 _%tl142238142545%_
                                                 _%e142243142548%_
                                                 _%hd142242142551%_
                                                 _%tl142241142553%_
                                                 _%e142246142556%_
                                                 _%hd142245142559%_
                                                 _%tl142244142561%_))))
                                        (_%__match144588144589%_
                                         _%e142213142468%_
                                         _%hd142212142471%_
                                         _%tl142211142473%_
                                         _%e142225142500%_
                                         _%hd142224142503%_
                                         _%tl142223142505%_
                                         _%e142228142508%_
                                         _%hd142227142511%_
                                         _%tl142226142513%_
                                         _%e142231142516%_
                                         _%hd142230142519%_
                                         _%tl142229142521%_
                                         _%e142234142524%_
                                         _%hd142233142527%_
                                         _%tl142232142529%_
                                         _%e142237142532%_
                                         _%hd142236142535%_
                                         _%tl142235142537%_
                                         _%e142240142540%_
                                         _%hd142239142543%_
                                         _%tl142238142545%_
                                         _%e142243142548%_
                                         _%hd142242142551%_
                                         _%tl142241142553%_
                                         _%e142246142556%_
                                         _%hd142245142559%_
                                         _%tl142244142561%_))
                                    (_%__match144588144589%_
                                     _%e142213142468%_
                                     _%hd142212142471%_
                                     _%tl142211142473%_
                                     _%e142225142500%_
                                     _%hd142224142503%_
                                     _%tl142223142505%_
                                     _%e142228142508%_
                                     _%hd142227142511%_
                                     _%tl142226142513%_
                                     _%e142231142516%_
                                     _%hd142230142519%_
                                     _%tl142229142521%_
                                     _%e142234142524%_
                                     _%hd142233142527%_
                                     _%tl142232142529%_
                                     _%e142237142532%_
                                     _%hd142236142535%_
                                     _%tl142235142537%_
                                     _%e142240142540%_
                                     _%hd142239142543%_
                                     _%tl142238142545%_
                                     _%e142243142548%_
                                     _%hd142242142551%_
                                     _%tl142241142553%_
                                     _%e142246142556%_
                                     _%hd142245142559%_
                                     _%tl142244142561%_))
                                (_%__match144588144589%_
                                 _%e142213142468%_
                                 _%hd142212142471%_
                                 _%tl142211142473%_
                                 _%e142225142500%_
                                 _%hd142224142503%_
                                 _%tl142223142505%_
                                 _%e142228142508%_
                                 _%hd142227142511%_
                                 _%tl142226142513%_
                                 _%e142231142516%_
                                 _%hd142230142519%_
                                 _%tl142229142521%_
                                 _%e142234142524%_
                                 _%hd142233142527%_
                                 _%tl142232142529%_
                                 _%e142237142532%_
                                 _%hd142236142535%_
                                 _%tl142235142537%_
                                 _%e142240142540%_
                                 _%hd142239142543%_
                                 _%tl142238142545%_
                                 _%e142243142548%_
                                 _%hd142242142551%_
                                 _%tl142241142553%_
                                 _%e142246142556%_
                                 _%hd142245142559%_
                                 _%tl142244142561%_))))
                        (_%__match144588144589%_
                         _%e142213142468%_
                         _%hd142212142471%_
                         _%tl142211142473%_
                         _%e142225142500%_
                         _%hd142224142503%_
                         _%tl142223142505%_
                         _%e142228142508%_
                         _%hd142227142511%_
                         _%tl142226142513%_
                         _%e142231142516%_
                         _%hd142230142519%_
                         _%tl142229142521%_
                         _%e142234142524%_
                         _%hd142233142527%_
                         _%tl142232142529%_
                         _%e142237142532%_
                         _%hd142236142535%_
                         _%tl142235142537%_
                         _%e142240142540%_
                         _%hd142239142543%_
                         _%tl142238142545%_
                         _%e142243142548%_
                         _%hd142242142551%_
                         _%tl142241142553%_
                         _%e142246142556%_
                         _%hd142245142559%_
                         _%tl142244142561%_))))
                (let ((_%xarg142255142625%_ (reverse _%xarg142254142598%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142223142505%_))
                      (let ((_%L142628%_ _%hd142263142588%_)
                            (_%L142629%_ _%xarg142255142625%_)
                            (_%L142630%_ _%hd142245142559%_)
                            (_%L142631%_ _%hd142236142535%_)
                            (_%L142632%_ _%tl142216142478%_)
                            (_%L142633%_ _%arg142222142497%_))
                        (if (and (let ((__tmp145779
                                        (let ((__tmp145780
                                               (lambda (_%g142676142679%_
                                                        _%g142677142681%_)
                                                 (cons _%g142676142679%_
                                                       _%g142677142681%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145780
                                           '()
                                           _%L142633%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145779))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142632%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142631%_
                                    'apply))
                                 (let ((__tmp145783
                                        (length (let ((__tmp145784
                                                       (lambda (_%g142683142686%_
                                                                _%g142684142688%_)
                                                         (cons _%g142683142686%_
                                                               _%g142684142688%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145784
                                                   '()
                                                   _%L142633%_))))
                                       (__tmp145781
                                        (length (let ((__tmp145782
                                                       (lambda (_%g142690142693%_
                                                                _%g142691142695%_)
                                                         (cons _%g142690142693%_
                                                               _%g142691142695%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145782
                                                   '()
                                                   _%L142629%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145783 __tmp145781))
                                 (let ((__tmp145787
                                        (let ((__tmp145788
                                               (lambda (_%g142697142700%_
                                                        _%g142698142702%_)
                                                 (cons _%g142697142700%_
                                                       _%g142698142702%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145788
                                           '()
                                           _%L142633%_)))
                                       (__tmp145785
                                        (let ((__tmp145786
                                               (lambda (_%g142704142707%_
                                                        _%g142705142709%_)
                                                 (cons _%g142704142707%_
                                                       _%g142705142709%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145786
                                           '()
                                           _%L142629%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145787
                                    __tmp145785))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142632%_
                                    _%L142628%_))
                                 (let ((__tmp145789
                                        (let ((__tmp145793
                                               (lambda (_%g142711142713%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142711142713%_
                                                    _%L142630%_))))
                                              (__tmp145790
                                               (let ((__tmp145792
                                                      (lambda (_%g142715142718%_
                                                               _%g142716142720%_)
                                                        (cons _%g142715142718%_
                                                              _%g142716142720%_)))
                                                     (__tmp145791
                                                      (cons _%L142632%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145792
                                                  __tmp145791
                                                  _%L142633%_))))
                                          (declare (not safe))
                                          (__find __tmp145793 __tmp145790))))
                                   (declare (not safe))
                                   (not __tmp145789)))
                            (_%__kont144483144484%_
                             _%L142628%_
                             _%L142629%_
                             _%L142630%_
                             _%L142631%_
                             _%L142632%_
                             _%L142633%_)
                            (_%__match144588144589%_
                             _%e142213142468%_
                             _%hd142212142471%_
                             _%tl142211142473%_
                             _%e142225142500%_
                             _%hd142224142503%_
                             _%tl142223142505%_
                             _%e142228142508%_
                             _%hd142227142511%_
                             _%tl142226142513%_
                             _%e142231142516%_
                             _%hd142230142519%_
                             _%tl142229142521%_
                             _%e142234142524%_
                             _%hd142233142527%_
                             _%tl142232142529%_
                             _%e142237142532%_
                             _%hd142236142535%_
                             _%tl142235142537%_
                             _%e142240142540%_
                             _%hd142239142543%_
                             _%tl142238142545%_
                             _%e142243142548%_
                             _%hd142242142551%_
                             _%tl142241142553%_
                             _%e142246142556%_
                             _%hd142245142559%_
                             _%tl142244142561%_)))
                      (_%__match144588144589%_
                       _%e142213142468%_
                       _%hd142212142471%_
                       _%tl142211142473%_
                       _%e142225142500%_
                       _%hd142224142503%_
                       _%tl142223142505%_
                       _%e142228142508%_
                       _%hd142227142511%_
                       _%tl142226142513%_
                       _%e142231142516%_
                       _%hd142230142519%_
                       _%tl142229142521%_
                       _%e142234142524%_
                       _%hd142233142527%_
                       _%tl142232142529%_
                       _%e142237142532%_
                       _%hd142236142535%_
                       _%tl142235142537%_
                       _%e142240142540%_
                       _%hd142239142543%_
                       _%tl142238142545%_
                       _%e142243142548%_
                       _%hd142242142551%_
                       _%tl142241142553%_
                       _%e142246142556%_
                       _%hd142245142559%_
                       _%tl142244142561%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop142250142593%_
                                             _%target142247142564%_
                                             '())))
                                        (_%__match144588144589%_
                                         _%e142213142468%_
                                         _%hd142212142471%_
                                         _%tl142211142473%_
                                         _%e142225142500%_
                                         _%hd142224142503%_
                                         _%tl142223142505%_
                                         _%e142228142508%_
                                         _%hd142227142511%_
                                         _%tl142226142513%_
                                         _%e142231142516%_
                                         _%hd142230142519%_
                                         _%tl142229142521%_
                                         _%e142234142524%_
                                         _%hd142233142527%_
                                         _%tl142232142529%_
                                         _%e142237142532%_
                                         _%hd142236142535%_
                                         _%tl142235142537%_
                                         _%e142240142540%_
                                         _%hd142239142543%_
                                         _%tl142238142545%_
                                         _%e142243142548%_
                                         _%hd142242142551%_
                                         _%tl142241142553%_
                                         _%e142246142556%_
                                         _%hd142245142559%_
                                         _%tl142244142561%_))
                                    (_%__match144588144589%_
                                     _%e142213142468%_
                                     _%hd142212142471%_
                                     _%tl142211142473%_
                                     _%e142225142500%_
                                     _%hd142224142503%_
                                     _%tl142223142505%_
                                     _%e142228142508%_
                                     _%hd142227142511%_
                                     _%tl142226142513%_
                                     _%e142231142516%_
                                     _%hd142230142519%_
                                     _%tl142229142521%_
                                     _%e142234142524%_
                                     _%hd142233142527%_
                                     _%tl142232142529%_
                                     _%e142237142532%_
                                     _%hd142236142535%_
                                     _%tl142235142537%_
                                     _%e142240142540%_
                                     _%hd142239142543%_
                                     _%tl142238142545%_
                                     _%e142243142548%_
                                     _%hd142242142551%_
                                     _%tl142241142553%_
                                     _%e142246142556%_
                                     _%hd142245142559%_
                                     _%tl142244142561%_))))
                            (_%__match144588144589%_
                             _%e142213142468%_
                             _%hd142212142471%_
                             _%tl142211142473%_
                             _%e142225142500%_
                             _%hd142224142503%_
                             _%tl142223142505%_
                             _%e142228142508%_
                             _%hd142227142511%_
                             _%tl142226142513%_
                             _%e142231142516%_
                             _%hd142230142519%_
                             _%tl142229142521%_
                             _%e142234142524%_
                             _%hd142233142527%_
                             _%tl142232142529%_
                             _%e142237142532%_
                             _%hd142236142535%_
                             _%tl142235142537%_
                             _%e142240142540%_
                             _%hd142239142543%_
                             _%tl142238142545%_
                             _%e142243142548%_
                             _%hd142242142551%_
                             _%tl142241142553%_
                             _%e142246142556%_
                             _%hd142245142559%_
                             _%tl142244142561%_))
                        (_%__match144588144589%_
                         _%e142213142468%_
                         _%hd142212142471%_
                         _%tl142211142473%_
                         _%e142225142500%_
                         _%hd142224142503%_
                         _%tl142223142505%_
                         _%e142228142508%_
                         _%hd142227142511%_
                         _%tl142226142513%_
                         _%e142231142516%_
                         _%hd142230142519%_
                         _%tl142229142521%_
                         _%e142234142524%_
                         _%hd142233142527%_
                         _%tl142232142529%_
                         _%e142237142532%_
                         _%hd142236142535%_
                         _%tl142235142537%_
                         _%e142240142540%_
                         _%hd142239142543%_
                         _%tl142238142545%_
                         _%e142243142548%_
                         _%hd142242142551%_
                         _%tl142241142553%_
                         _%e142246142556%_
                         _%hd142245142559%_
                         _%tl142244142561%_))
                    (_%__match144588144589%_
                     _%e142213142468%_
                     _%hd142212142471%_
                     _%tl142211142473%_
                     _%e142225142500%_
                     _%hd142224142503%_
                     _%tl142223142505%_
                     _%e142228142508%_
                     _%hd142227142511%_
                     _%tl142226142513%_
                     _%e142231142516%_
                     _%hd142230142519%_
                     _%tl142229142521%_
                     _%e142234142524%_
                     _%hd142233142527%_
                     _%tl142232142529%_
                     _%e142237142532%_
                     _%hd142236142535%_
                     _%tl142235142537%_
                     _%e142240142540%_
                     _%hd142239142543%_
                     _%tl142238142545%_
                     _%e142243142548%_
                     _%hd142242142551%_
                     _%tl142241142553%_
                     _%e142246142556%_
                     _%hd142245142559%_
                     _%tl142244142561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144588144589%_
                                                     _%e142213142468%_
                                                     _%hd142212142471%_
                                                     _%tl142211142473%_
                                                     _%e142225142500%_
                                                     _%hd142224142503%_
                                                     _%tl142223142505%_
                                                     _%e142228142508%_
                                                     _%hd142227142511%_
                                                     _%tl142226142513%_
                                                     _%e142231142516%_
                                                     _%hd142230142519%_
                                                     _%tl142229142521%_
                                                     _%e142234142524%_
                                                     _%hd142233142527%_
                                                     _%tl142232142529%_
                                                     _%e142237142532%_
                                                     _%hd142236142535%_
                                                     _%tl142235142537%_
                                                     _%e142240142540%_
                                                     _%hd142239142543%_
                                                     _%tl142238142545%_
                                                     _%e142243142548%_
                                                     _%hd142242142551%_
                                                     _%tl142241142553%_
                                                     _%e142246142556%_
                                                     _%hd142245142559%_
                                                     _%tl142244142561%_))))
                                            (_%__match144588144589%_
                                             _%e142213142468%_
                                             _%hd142212142471%_
                                             _%tl142211142473%_
                                             _%e142225142500%_
                                             _%hd142224142503%_
                                             _%tl142223142505%_
                                             _%e142228142508%_
                                             _%hd142227142511%_
                                             _%tl142226142513%_
                                             _%e142231142516%_
                                             _%hd142230142519%_
                                             _%tl142229142521%_
                                             _%e142234142524%_
                                             _%hd142233142527%_
                                             _%tl142232142529%_
                                             _%e142237142532%_
                                             _%hd142236142535%_
                                             _%tl142235142537%_
                                             _%e142240142540%_
                                             _%hd142239142543%_
                                             _%tl142238142545%_
                                             _%e142243142548%_
                                             _%hd142242142551%_
                                             _%tl142241142553%_
                                             _%e142246142556%_
                                             _%hd142245142559%_
                                             _%tl142244142561%_))))
                                    (_%__match144588144589%_
                                     _%e142213142468%_
                                     _%hd142212142471%_
                                     _%tl142211142473%_
                                     _%e142225142500%_
                                     _%hd142224142503%_
                                     _%tl142223142505%_
                                     _%e142228142508%_
                                     _%hd142227142511%_
                                     _%tl142226142513%_
                                     _%e142231142516%_
                                     _%hd142230142519%_
                                     _%tl142229142521%_
                                     _%e142234142524%_
                                     _%hd142233142527%_
                                     _%tl142232142529%_
                                     _%e142237142532%_
                                     _%hd142236142535%_
                                     _%tl142235142537%_
                                     _%e142240142540%_
                                     _%hd142239142543%_
                                     _%tl142238142545%_
                                     _%e142243142548%_
                                     _%hd142242142551%_
                                     _%tl142241142553%_
                                     _%e142246142556%_
                                     _%hd142245142559%_
                                     _%tl142244142561%_))
                                (_%__match144588144589%_
                                 _%e142213142468%_
                                 _%hd142212142471%_
                                 _%tl142211142473%_
                                 _%e142225142500%_
                                 _%hd142224142503%_
                                 _%tl142223142505%_
                                 _%e142228142508%_
                                 _%hd142227142511%_
                                 _%tl142226142513%_
                                 _%e142231142516%_
                                 _%hd142230142519%_
                                 _%tl142229142521%_
                                 _%e142234142524%_
                                 _%hd142233142527%_
                                 _%tl142232142529%_
                                 _%e142237142532%_
                                 _%hd142236142535%_
                                 _%tl142235142537%_
                                 _%e142240142540%_
                                 _%hd142239142543%_
                                 _%tl142238142545%_
                                 _%e142243142548%_
                                 _%hd142242142551%_
                                 _%tl142241142553%_
                                 _%e142246142556%_
                                 _%hd142245142559%_
                                 _%tl142244142561%_))
                            (_%__kont144491144492%_))))
                    (_%__kont144491144492%_))
                (_%__kont144491144492%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144491144492%_))))
                                            (_%__kont144491144492%_))))
                                    (_%__kont144491144492%_))
                                (_%__kont144491144492%_))))
                        (_%__kont144491144492%_))
                    (_%__kont144491144492%_))
                (_%__kont144491144492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144491144492%_))))
                                        (_%__kont144491144492%_))
                                    (_%__kont144491144492%_))
                                (_%__kont144491144492%_))))
                        (_%__kont144491144492%_))))
                (_%__kont144491144492%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142217142481%_
                                       _%target142214142476%_
                                       '())))))
                               (_%__match144506144507%_
                                (lambda (_%e142165142728%_
                                         _%hd142164142731%_
                                         _%tl142163142733%_
                                         _%__splice144479144480%_
                                         _%target142166142736%_
                                         _%tl142168142738%_)
                                  (letrec ((_%loop142169142741%_
                                            (lambda (_%hd142167142744%_
                                                     _%arg142173142746%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142167142744%_))
                                                  (let ((_%e142170142749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142167142744%_))))
                                                    (let ((_%lp-tl142172142754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142170142749%_)))
                                                          (_%lp-hd142171142752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142170142749%_))))
                                                      (let ((__tmp145794
                                                             (cons _%lp-hd142171142752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg142173142746%_)))
                (declare (not safe))
                (_%loop142169142741%_ _%lp-tl142172142754%_ __tmp145794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg142174142757%_
                                                         (reverse _%arg142173142746%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142163142733%_))
                                                        (let ((_%e142177142760%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142163142733%_))))
                  (let ((_%tl142175142765%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142177142760%_)))
                        (_%hd142176142763%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142177142760%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142176142763%_))
                        (let ((_%e142180142768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142176142763%_))))
                          (let ((_%tl142178142773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142180142768%_)))
                                (_%hd142179142771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142180142768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142179142771%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142179142771%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142178142773%_))
                                        (let ((_%e142183142776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142178142773%_))))
                                          (let ((_%tl142181142781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142183142776%_)))
                                                (_%hd142182142779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142183142776%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142182142779%_))
                                                (let ((_%e142186142784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142182142779%_))))
                                                  (let ((_%tl142184142789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142186142784%_)))
                                                        (_%hd142185142787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142186142784%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142185142787%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142185142787%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142184142789%_))
                        (let ((_%e142189142792%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142184142789%_))))
                          (let ((_%tl142187142797%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142189142792%_)))
                                (_%hd142188142795%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142189142792%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142187142797%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142181142781%_))
                                    (let ((_%__splice144481144482%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142181142781%_
                                              '0))))
                                      (let ((_%tl142192142802%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144481144482%_
                                                '1)))
                                            (_%target142190142800%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144481144482%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142192142802%_))
                                            (letrec ((_%loop142193142805%_
                                                      (lambda (_%hd142191142808%_
                                                               _%xarg142197142810%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142191142808%_))
                                                            (let ((_%e142194142813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142191142808%_))))
                      (let ((_%lp-tl142196142818%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142194142813%_)))
                            (_%lp-hd142195142816%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142194142813%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142195142816%_))
                            (let ((_%e142201142821%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142195142816%_))))
                              (let ((_%tl142199142826%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142201142821%_)))
                                    (_%hd142200142824%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142201142821%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142200142824%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142200142824%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142199142826%_))
                                            (let ((_%e142204142829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142199142826%_))))
                                              (let ((_%tl142202142834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142204142829%_)))
                                                    (_%hd142203142832%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142204142829%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142202142834%_))
                                                    (let ((__tmp145795
                                                           (cons _%hd142203142832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg142197142810%_)))
              (declare (not safe))
              (_%loop142193142805%_ _%lp-tl142196142818%_ __tmp145795))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144518144519%_
                                                     _%e142165142728%_
                                                     _%hd142164142731%_
                                                     _%tl142163142733%_
                                                     _%__splice144479144480%_
                                                     _%target142166142736%_
                                                     _%tl142168142738%_))))
                                            (_%__match144518144519%_
                                             _%e142165142728%_
                                             _%hd142164142731%_
                                             _%tl142163142733%_
                                             _%__splice144479144480%_
                                             _%target142166142736%_
                                             _%tl142168142738%_))
                                        (_%__match144518144519%_
                                         _%e142165142728%_
                                         _%hd142164142731%_
                                         _%tl142163142733%_
                                         _%__splice144479144480%_
                                         _%target142166142736%_
                                         _%tl142168142738%_))
                                    (_%__match144518144519%_
                                     _%e142165142728%_
                                     _%hd142164142731%_
                                     _%tl142163142733%_
                                     _%__splice144479144480%_
                                     _%target142166142736%_
                                     _%tl142168142738%_))))
                            (_%__match144518144519%_
                             _%e142165142728%_
                             _%hd142164142731%_
                             _%tl142163142733%_
                             _%__splice144479144480%_
                             _%target142166142736%_
                             _%tl142168142738%_))))
                    (let ((_%xarg142198142837%_
                           (reverse _%xarg142197142810%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142175142765%_))
                          (let ((_%L142840%_ _%xarg142198142837%_)
                                (_%L142841%_ _%hd142188142795%_)
                                (_%L142842%_ _%arg142174142757%_))
                            (if (and (let ((__tmp145796
                                            (let ((__tmp145797
                                                   (lambda (_%g142870142873%_
                                                            _%g142871142875%_)
                                                     (cons _%g142870142873%_
                                                           _%g142871142875%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145797
                                               '()
                                               _%L142842%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145796))
                                     (let ((__tmp145800
                                            (length (let ((__tmp145801
                                                           (lambda (_%g142877142880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142878142882%_)
                     (cons _%g142877142880%_ _%g142878142882%_))))
              (declare (not safe))
              (__foldr1 __tmp145801 '() _%L142842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145798
                                            (length (let ((__tmp145799
                                                           (lambda (_%g142884142887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142885142889%_)
                     (cons _%g142884142887%_ _%g142885142889%_))))
              (declare (not safe))
              (__foldr1 __tmp145799 '() _%L142840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145800 __tmp145798))
                                     (let ((__tmp145804
                                            (let ((__tmp145805
                                                   (lambda (_%g142891142894%_
                                                            _%g142892142896%_)
                                                     (cons _%g142891142894%_
                                                           _%g142892142896%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145805
                                               '()
                                               _%L142842%_)))
                                           (__tmp145802
                                            (let ((__tmp145803
                                                   (lambda (_%g142898142901%_
                                                            _%g142899142903%_)
                                                     (cons _%g142898142901%_
                                                           _%g142899142903%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145803
                                               '()
                                               _%L142840%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145804
                                        __tmp145802))
                                     (let ((__tmp145806
                                            (let ((__tmp145809
                                                   (lambda (_%g142905142907%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142905142907%_
                                                        _%L142841%_))))
                                                  (__tmp145807
                                                   (let ((__tmp145808
                                                          (lambda (_%g142909142912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142910142914%_)
                    (cons _%g142909142912%_ _%g142910142914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145808
                                                      '()
                                                      _%L142842%_))))
                                              (declare (not safe))
                                              (__find __tmp145809
                                                      __tmp145807))))
                                       (declare (not safe))
                                       (not __tmp145806)))
                                (_%__kont144477144478%_
                                 _%L142840%_
                                 _%L142841%_
                                 _%L142842%_)
                                (_%__match144518144519%_
                                 _%e142165142728%_
                                 _%hd142164142731%_
                                 _%tl142163142733%_
                                 _%__splice144479144480%_
                                 _%target142166142736%_
                                 _%tl142168142738%_)))
                          (_%__match144518144519%_
                           _%e142165142728%_
                           _%hd142164142731%_
                           _%tl142163142733%_
                           _%__splice144479144480%_
                           _%target142166142736%_
                           _%tl142168142738%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop142193142805%_
                                                 _%target142190142800%_
                                                 '())))
                                            (_%__match144518144519%_
                                             _%e142165142728%_
                                             _%hd142164142731%_
                                             _%tl142163142733%_
                                             _%__splice144479144480%_
                                             _%target142166142736%_
                                             _%tl142168142738%_))))
                                    (_%__match144518144519%_
                                     _%e142165142728%_
                                     _%hd142164142731%_
                                     _%tl142163142733%_
                                     _%__splice144479144480%_
                                     _%target142166142736%_
                                     _%tl142168142738%_))
                                (_%__match144518144519%_
                                 _%e142165142728%_
                                 _%hd142164142731%_
                                 _%tl142163142733%_
                                 _%__splice144479144480%_
                                 _%target142166142736%_
                                 _%tl142168142738%_))))
                        (_%__match144518144519%_
                         _%e142165142728%_
                         _%hd142164142731%_
                         _%tl142163142733%_
                         _%__splice144479144480%_
                         _%target142166142736%_
                         _%tl142168142738%_))
                    (_%__match144518144519%_
                     _%e142165142728%_
                     _%hd142164142731%_
                     _%tl142163142733%_
                     _%__splice144479144480%_
                     _%target142166142736%_
                     _%tl142168142738%_))
                (_%__match144518144519%_
                 _%e142165142728%_
                 _%hd142164142731%_
                 _%tl142163142733%_
                 _%__splice144479144480%_
                 _%target142166142736%_
                 _%tl142168142738%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144518144519%_
                                                 _%e142165142728%_
                                                 _%hd142164142731%_
                                                 _%tl142163142733%_
                                                 _%__splice144479144480%_
                                                 _%target142166142736%_
                                                 _%tl142168142738%_))))
                                        (_%__match144518144519%_
                                         _%e142165142728%_
                                         _%hd142164142731%_
                                         _%tl142163142733%_
                                         _%__splice144479144480%_
                                         _%target142166142736%_
                                         _%tl142168142738%_))
                                    (_%__match144518144519%_
                                     _%e142165142728%_
                                     _%hd142164142731%_
                                     _%tl142163142733%_
                                     _%__splice144479144480%_
                                     _%target142166142736%_
                                     _%tl142168142738%_))
                                (_%__match144518144519%_
                                 _%e142165142728%_
                                 _%hd142164142731%_
                                 _%tl142163142733%_
                                 _%__splice144479144480%_
                                 _%target142166142736%_
                                 _%tl142168142738%_))))
                        (_%__match144518144519%_
                         _%e142165142728%_
                         _%hd142164142731%_
                         _%tl142163142733%_
                         _%__splice144479144480%_
                         _%target142166142736%_
                         _%tl142168142738%_))))
                (_%__match144518144519%_
                 _%e142165142728%_
                 _%hd142164142731%_
                 _%tl142163142733%_
                 _%__splice144479144480%_
                 _%target142166142736%_
                 _%tl142168142738%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop142169142741%_
                                       _%target142166142736%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144475144476%_))
                              (let ((_%e142165142728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144475144476%_))))
                                (let ((_%tl142163142733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142165142728%_)))
                                      (_%hd142164142731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142165142728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142164142731%_))
                                      (let ((_%__splice144479144480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142164142731%_
                                                '0))))
                                        (let ((_%tl142168142738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144479144480%_
                                                  '1)))
                                              (_%target142166142736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144479144480%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142168142738%_))
                                              (_%__match144506144507%_
                                               _%e142165142728%_
                                               _%hd142164142731%_
                                               _%tl142163142733%_
                                               _%__splice144479144480%_
                                               _%target142166142736%_
                                               _%tl142168142738%_)
                                              (_%__match144518144519%_
                                               _%e142165142728%_
                                               _%hd142164142731%_
                                               _%tl142163142733%_
                                               _%__splice144479144480%_
                                               _%target142166142736%_
                                               _%tl142168142738%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142163142733%_))
                                          (let ((_%e142280142335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142163142733%_))))
                                            (let ((_%tl142278142340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142280142335%_)))
                                                  (_%hd142279142338%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142280142335%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142279142338%_))
                                                  (let ((_%e142283142343%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142279142338%_))))
                                                    (let ((_%tl142281142348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142283142343%_)))
                                                          (_%hd142282142346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142283142343%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142282142346%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142282142346%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142281142348%_))
                          (let ((_%e142286142351%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142281142348%_))))
                            (let ((_%tl142284142356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142286142351%_)))
                                  (_%hd142285142354%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142286142351%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142285142354%_))
                                  (let ((_%e142289142359%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142285142354%_))))
                                    (let ((_%tl142287142364%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142289142359%_)))
                                          (_%hd142288142362%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142289142359%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142288142362%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142288142362%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142287142364%_))
                                                  (let ((_%e142292142367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142287142364%_))))
                                                    (let ((_%tl142290142372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142292142367%_)))
                                                          (_%hd142291142370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142292142367%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142290142372%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142284142356%_))
                      (let ((_%e142295142375%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142284142356%_))))
                        (let ((_%tl142293142380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142295142375%_)))
                              (_%hd142294142378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142295142375%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142294142378%_))
                              (let ((_%e142298142383%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142294142378%_))))
                                (let ((_%tl142296142388%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142298142383%_)))
                                      (_%hd142297142386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142298142383%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142297142386%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142297142386%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142296142388%_))
                                              (let ((_%e142301142391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142296142388%_))))
                                                (let ((_%tl142299142396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142301142391%_)))
                                                      (_%hd142300142394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142301142391%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142299142396%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142293142380%_))
                                                          (let ((_%e142304142399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142293142380%_))))
                    (let ((_%tl142302142404%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142304142399%_)))
                          (_%hd142303142402%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142304142399%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142303142402%_))
                          (let ((_%e142307142407%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142303142402%_))))
                            (let ((_%tl142305142412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142307142407%_)))
                                  (_%hd142306142410%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142307142407%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142306142410%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142306142410%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142305142412%_))
                                          (let ((_%e142310142415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142305142412%_))))
                                            (let ((_%tl142308142420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142310142415%_)))
                                                  (_%hd142309142418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142310142415%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142308142420%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142302142404%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142278142340%_))
                                                          (_%__match144616144617%_
                                                           _%e142165142728%_
                                                           _%hd142164142731%_
                                                           _%tl142163142733%_
                                                           _%e142280142335%_
                                                           _%hd142279142338%_
                                                           _%tl142278142340%_
                                                           _%e142283142343%_
                                                           _%hd142282142346%_
                                                           _%tl142281142348%_
                                                           _%e142286142351%_
                                                           _%hd142285142354%_
                                                           _%tl142284142356%_
                                                           _%e142289142359%_
                                                           _%hd142288142362%_
                                                           _%tl142287142364%_
                                                           _%e142292142367%_
                                                           _%hd142291142370%_
                                                           _%tl142290142372%_
                                                           _%e142295142375%_
                                                           _%hd142294142378%_
                                                           _%tl142293142380%_
                                                           _%e142298142383%_
                                                           _%hd142297142386%_
                                                           _%tl142296142388%_
                                                           _%e142301142391%_
                                                           _%hd142300142394%_
                                                           _%tl142299142396%_
                                                           _%e142304142399%_
                                                           _%hd142303142402%_
                                                           _%tl142302142404%_
                                                           _%e142307142407%_
                                                           _%hd142306142410%_
                                                           _%tl142305142412%_
                                                           _%e142310142415%_
                                                           _%hd142309142418%_
                                                           _%tl142308142420%_)
                                                          (_%__kont144491144492%_))
                                                      (_%__kont144491144492%_))
                                                  (_%__kont144491144492%_))))
                                          (_%__kont144491144492%_))
                                      (_%__kont144491144492%_))
                                  (_%__kont144491144492%_))))
                          (_%__kont144491144492%_))))
                  (_%__kont144491144492%_))
              (_%__kont144491144492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144491144492%_))
                                          (_%__kont144491144492%_))
                                      (_%__kont144491144492%_))))
                              (_%__kont144491144492%_))))
                      (_%__kont144491144492%_))
                  (_%__kont144491144492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144491144492%_))
                                              (_%__kont144491144492%_))
                                          (_%__kont144491144492%_))))
                                  (_%__kont144491144492%_))))
                          (_%__kont144491144492%_))
                      (_%__kont144491144492%_))
                  (_%__kont144491144492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144491144492%_))))
                                          (_%__kont144491144492%_)))))
                              (_%__kont144491144492%_)))))))
                 (_%dispatch-case-e141463%_
                  (lambda (_%hd141614%_ _%body141615%_)
                    (let* ((_%form141617%_
                            (cons _%hd141614%_ (cons _%body141615%_ '())))
                           (_%__stx144619144620%_ _%form141617%_)
                           (_%g141621141745%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144619144620%_)))))
                      (let ((_%__kont144621144622%_
                             (lambda (_%L142116%_ _%L142117%_ _%L142118%_)
                               (let ((__tmp145810
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142117%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141459%_
                                  __tmp145810))))
                            (_%__kont144627144628%_
                             (lambda (_%L141964%_
                                      _%L141965%_
                                      _%L141966%_
                                      _%L141967%_)
                               (let ((__tmp145811
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141964%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141459%_
                                  __tmp145811))))
                            (_%__kont144631144632%_
                             (lambda (_%L141830%_ _%L141831%_ _%L141832%_)
                               (let ((__tmp145812
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141830%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141459%_
                                  __tmp145812)))))
                        (let* ((_%__match144728144729%_
                                (lambda (_%e141713141750%_
                                         _%hd141712141753%_
                                         _%tl141711141755%_
                                         _%e141716141758%_
                                         _%hd141715141761%_
                                         _%tl141714141763%_
                                         _%e141719141766%_
                                         _%hd141718141769%_
                                         _%tl141717141771%_
                                         _%e141722141774%_
                                         _%hd141721141777%_
                                         _%tl141720141779%_
                                         _%e141725141782%_
                                         _%hd141724141785%_
                                         _%tl141723141787%_
                                         _%e141728141790%_
                                         _%hd141727141793%_
                                         _%tl141726141795%_
                                         _%e141731141798%_
                                         _%hd141730141801%_
                                         _%tl141729141803%_
                                         _%e141734141806%_
                                         _%hd141733141809%_
                                         _%tl141732141811%_
                                         _%e141737141814%_
                                         _%hd141736141817%_
                                         _%tl141735141819%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141729141803%_))
                                      (let ((_%e141740141822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141729141803%_))))
                                        (let ((_%tl141738141827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141740141822%_)))
                                              (_%hd141739141825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141740141822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141738141827%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141714141763%_))
                                                  (_%__kont144631144632%_
                                                   _%hd141736141817%_
                                                   _%hd141727141793%_
                                                   _%hd141712141753%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141621141745%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141621141745%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141621141745%_)))))
                               (_%__match144658144659%_
                                (lambda (_%e141674141868%_
                                         _%hd141673141871%_
                                         _%tl141672141873%_
                                         _%__splice144629144630%_
                                         _%target141675141876%_
                                         _%tl141677141878%_)
                                  (letrec ((_%loop141678141881%_
                                            (lambda (_%hd141676141884%_
                                                     _%arg141682141886%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141676141884%_))
                                                  (let ((_%e141679141889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141676141884%_))))
                                                    (let ((_%lp-tl141681141894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141679141889%_)))
                                                          (_%lp-hd141680141892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141679141889%_))))
                                                      (let ((__tmp145813
                                                             (cons _%lp-hd141680141892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141682141886%_)))
                (declare (not safe))
                (_%loop141678141881%_ _%lp-tl141681141894%_ __tmp145813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141683141897%_
                                                         (reverse _%arg141682141886%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141672141873%_))
                                                        (let ((_%e141686141900%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141672141873%_))))
                  (let ((_%tl141684141905%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141686141900%_)))
                        (_%hd141685141903%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141686141900%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141685141903%_))
                        (let ((_%e141689141908%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141685141903%_))))
                          (let ((_%tl141687141913%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141689141908%_)))
                                (_%hd141688141911%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141689141908%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141688141911%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141688141911%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141687141913%_))
                                        (let ((_%e141692141916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141687141913%_))))
                                          (let ((_%tl141690141921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141692141916%_)))
                                                (_%hd141691141919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141692141916%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141691141919%_))
                                                (let ((_%e141695141924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141691141919%_))))
                                                  (let ((_%tl141693141929%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141695141924%_)))
                                                        (_%hd141694141927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141695141924%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141694141927%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141694141927%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141693141929%_))
                        (let ((_%e141698141932%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141693141929%_))))
                          (let ((_%tl141696141937%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141698141932%_)))
                                (_%hd141697141935%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141698141932%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141696141937%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141690141921%_))
                                    (let ((_%e141701141940%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141690141921%_))))
                                      (let ((_%tl141699141945%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141701141940%_)))
                                            (_%hd141700141943%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141701141940%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141700141943%_))
                                            (let ((_%e141704141948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141700141943%_))))
                                              (let ((_%tl141702141953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141704141948%_)))
                                                    (_%hd141703141951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141704141948%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141703141951%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141703141951%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141702141953%_))
                                                            (let ((_%e141707141956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141702141953%_))))
                      (let ((_%tl141705141961%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141707141956%_)))
                            (_%hd141706141959%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141707141956%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141705141961%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141684141905%_))
                                (_%__kont144627144628%_
                                 _%hd141706141959%_
                                 _%hd141697141935%_
                                 _%tl141677141878%_
                                 _%arg141683141897%_)
                                (_%__match144728144729%_
                                 _%e141674141868%_
                                 _%hd141673141871%_
                                 _%tl141672141873%_
                                 _%e141686141900%_
                                 _%hd141685141903%_
                                 _%tl141684141905%_
                                 _%e141689141908%_
                                 _%hd141688141911%_
                                 _%tl141687141913%_
                                 _%e141692141916%_
                                 _%hd141691141919%_
                                 _%tl141690141921%_
                                 _%e141695141924%_
                                 _%hd141694141927%_
                                 _%tl141693141929%_
                                 _%e141698141932%_
                                 _%hd141697141935%_
                                 _%tl141696141937%_
                                 _%e141701141940%_
                                 _%hd141700141943%_
                                 _%tl141699141945%_
                                 _%e141704141948%_
                                 _%hd141703141951%_
                                 _%tl141702141953%_
                                 _%e141707141956%_
                                 _%hd141706141959%_
                                 _%tl141705141961%_))
                            (let ()
                              (declare (not safe))
                              (_%g141621141745%_)))))
                    (let () (declare (not safe)) (_%g141621141745%_)))
                (let () (declare (not safe)) (_%g141621141745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141621141745%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141621141745%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141621141745%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141621141745%_)))))
                        (let () (declare (not safe)) (_%g141621141745%_)))
                    (let () (declare (not safe)) (_%g141621141745%_)))
                (let () (declare (not safe)) (_%g141621141745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141621141745%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141621141745%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141621141745%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141621141745%_)))))
                        (let () (declare (not safe)) (_%g141621141745%_)))))
                (let () (declare (not safe)) (_%g141621141745%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141678141881%_
                                       _%target141675141876%_
                                       '())))))
                               (_%__match144646144647%_
                                (lambda (_%e141628142004%_
                                         _%hd141627142007%_
                                         _%tl141626142009%_
                                         _%__splice144623144624%_
                                         _%target141629142012%_
                                         _%tl141631142014%_)
                                  (letrec ((_%loop141632142017%_
                                            (lambda (_%hd141630142020%_
                                                     _%arg141636142022%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141630142020%_))
                                                  (let ((_%e141633142025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141630142020%_))))
                                                    (let ((_%lp-tl141635142030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141633142025%_)))
                                                          (_%lp-hd141634142028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141633142025%_))))
                                                      (let ((__tmp145814
                                                             (cons _%lp-hd141634142028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141636142022%_)))
                (declare (not safe))
                (_%loop141632142017%_ _%lp-tl141635142030%_ __tmp145814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141637142033%_
                                                         (reverse _%arg141636142022%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141626142009%_))
                                                        (let ((_%e141640142036%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141626142009%_))))
                  (let ((_%tl141638142041%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141640142036%_)))
                        (_%hd141639142039%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141640142036%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141639142039%_))
                        (let ((_%e141643142044%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141639142039%_))))
                          (let ((_%tl141641142049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141643142044%_)))
                                (_%hd141642142047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141643142044%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141642142047%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141642142047%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141641142049%_))
                                        (let ((_%e141646142052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141641142049%_))))
                                          (let ((_%tl141644142057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141646142052%_)))
                                                (_%hd141645142055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141646142052%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141645142055%_))
                                                (let ((_%e141649142060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141645142055%_))))
                                                  (let ((_%tl141647142065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141649142060%_)))
                                                        (_%hd141648142063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141649142060%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141648142063%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141648142063%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141647142065%_))
                        (let ((_%e141652142068%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141647142065%_))))
                          (let ((_%tl141650142073%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141652142068%_)))
                                (_%hd141651142071%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141652142068%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141650142073%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141644142057%_))
                                    (let ((_%__splice144625144626%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141644142057%_
                                              '0))))
                                      (let ((_%tl141655142078%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144625144626%_
                                                '1)))
                                            (_%target141653142076%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144625144626%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141655142078%_))
                                            (letrec ((_%loop141656142081%_
                                                      (lambda (_%hd141654142084%_
                                                               _%xarg141660142086%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141654142084%_))
                                                            (let ((_%e141657142089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141654142084%_))))
                      (let ((_%lp-tl141659142094%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141657142089%_)))
                            (_%lp-hd141658142092%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141657142089%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141658142092%_))
                            (let ((_%e141664142097%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141658142092%_))))
                              (let ((_%tl141662142102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141664142097%_)))
                                    (_%hd141663142100%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141664142097%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141663142100%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141663142100%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141662142102%_))
                                            (let ((_%e141667142105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141662142102%_))))
                                              (let ((_%tl141665142110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141667142105%_)))
                                                    (_%hd141666142108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141667142105%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141665142110%_))
                                                    (let ((__tmp145815
                                                           (cons _%hd141666142108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141660142086%_)))
              (declare (not safe))
              (_%loop141656142081%_ _%lp-tl141659142094%_ __tmp145815))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144658144659%_
                                                     _%e141628142004%_
                                                     _%hd141627142007%_
                                                     _%tl141626142009%_
                                                     _%__splice144623144624%_
                                                     _%target141629142012%_
                                                     _%tl141631142014%_))))
                                            (_%__match144658144659%_
                                             _%e141628142004%_
                                             _%hd141627142007%_
                                             _%tl141626142009%_
                                             _%__splice144623144624%_
                                             _%target141629142012%_
                                             _%tl141631142014%_))
                                        (_%__match144658144659%_
                                         _%e141628142004%_
                                         _%hd141627142007%_
                                         _%tl141626142009%_
                                         _%__splice144623144624%_
                                         _%target141629142012%_
                                         _%tl141631142014%_))
                                    (_%__match144658144659%_
                                     _%e141628142004%_
                                     _%hd141627142007%_
                                     _%tl141626142009%_
                                     _%__splice144623144624%_
                                     _%target141629142012%_
                                     _%tl141631142014%_))))
                            (_%__match144658144659%_
                             _%e141628142004%_
                             _%hd141627142007%_
                             _%tl141626142009%_
                             _%__splice144623144624%_
                             _%target141629142012%_
                             _%tl141631142014%_))))
                    (let ((_%xarg141661142113%_
                           (reverse _%xarg141660142086%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141638142041%_))
                          (_%__kont144621144622%_
                           _%xarg141661142113%_
                           _%hd141651142071%_
                           _%arg141637142033%_)
                          (_%__match144658144659%_
                           _%e141628142004%_
                           _%hd141627142007%_
                           _%tl141626142009%_
                           _%__splice144623144624%_
                           _%target141629142012%_
                           _%tl141631142014%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141656142081%_
                                                 _%target141653142076%_
                                                 '())))
                                            (_%__match144658144659%_
                                             _%e141628142004%_
                                             _%hd141627142007%_
                                             _%tl141626142009%_
                                             _%__splice144623144624%_
                                             _%target141629142012%_
                                             _%tl141631142014%_))))
                                    (_%__match144658144659%_
                                     _%e141628142004%_
                                     _%hd141627142007%_
                                     _%tl141626142009%_
                                     _%__splice144623144624%_
                                     _%target141629142012%_
                                     _%tl141631142014%_))
                                (_%__match144658144659%_
                                 _%e141628142004%_
                                 _%hd141627142007%_
                                 _%tl141626142009%_
                                 _%__splice144623144624%_
                                 _%target141629142012%_
                                 _%tl141631142014%_))))
                        (_%__match144658144659%_
                         _%e141628142004%_
                         _%hd141627142007%_
                         _%tl141626142009%_
                         _%__splice144623144624%_
                         _%target141629142012%_
                         _%tl141631142014%_))
                    (_%__match144658144659%_
                     _%e141628142004%_
                     _%hd141627142007%_
                     _%tl141626142009%_
                     _%__splice144623144624%_
                     _%target141629142012%_
                     _%tl141631142014%_))
                (_%__match144658144659%_
                 _%e141628142004%_
                 _%hd141627142007%_
                 _%tl141626142009%_
                 _%__splice144623144624%_
                 _%target141629142012%_
                 _%tl141631142014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144658144659%_
                                                 _%e141628142004%_
                                                 _%hd141627142007%_
                                                 _%tl141626142009%_
                                                 _%__splice144623144624%_
                                                 _%target141629142012%_
                                                 _%tl141631142014%_))))
                                        (_%__match144658144659%_
                                         _%e141628142004%_
                                         _%hd141627142007%_
                                         _%tl141626142009%_
                                         _%__splice144623144624%_
                                         _%target141629142012%_
                                         _%tl141631142014%_))
                                    (_%__match144658144659%_
                                     _%e141628142004%_
                                     _%hd141627142007%_
                                     _%tl141626142009%_
                                     _%__splice144623144624%_
                                     _%target141629142012%_
                                     _%tl141631142014%_))
                                (_%__match144658144659%_
                                 _%e141628142004%_
                                 _%hd141627142007%_
                                 _%tl141626142009%_
                                 _%__splice144623144624%_
                                 _%target141629142012%_
                                 _%tl141631142014%_))))
                        (_%__match144658144659%_
                         _%e141628142004%_
                         _%hd141627142007%_
                         _%tl141626142009%_
                         _%__splice144623144624%_
                         _%target141629142012%_
                         _%tl141631142014%_))))
                (_%__match144658144659%_
                 _%e141628142004%_
                 _%hd141627142007%_
                 _%tl141626142009%_
                 _%__splice144623144624%_
                 _%target141629142012%_
                 _%tl141631142014%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141632142017%_
                                       _%target141629142012%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144619144620%_))
                              (let ((_%e141628142004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144619144620%_))))
                                (let ((_%tl141626142009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141628142004%_)))
                                      (_%hd141627142007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141628142004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141627142007%_))
                                      (let ((_%__splice144623144624%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141627142007%_
                                                '0))))
                                        (let ((_%tl141631142014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144623144624%_
                                                  '1)))
                                              (_%target141629142012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144623144624%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141631142014%_))
                                              (_%__match144646144647%_
                                               _%e141628142004%_
                                               _%hd141627142007%_
                                               _%tl141626142009%_
                                               _%__splice144623144624%_
                                               _%target141629142012%_
                                               _%tl141631142014%_)
                                              (_%__match144658144659%_
                                               _%e141628142004%_
                                               _%hd141627142007%_
                                               _%tl141626142009%_
                                               _%__splice144623144624%_
                                               _%target141629142012%_
                                               _%tl141631142014%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141626142009%_))
                                          (let ((_%e141716141758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141626142009%_))))
                                            (let ((_%tl141714141763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141716141758%_)))
                                                  (_%hd141715141761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141716141758%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141715141761%_))
                                                  (let ((_%e141719141766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141715141761%_))))
                                                    (let ((_%tl141717141771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141719141766%_)))
                                                          (_%hd141718141769%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141719141766%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141718141769%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141718141769%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141717141771%_))
                          (let ((_%e141722141774%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141717141771%_))))
                            (let ((_%tl141720141779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141722141774%_)))
                                  (_%hd141721141777%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141722141774%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141721141777%_))
                                  (let ((_%e141725141782%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141721141777%_))))
                                    (let ((_%tl141723141787%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141725141782%_)))
                                          (_%hd141724141785%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141725141782%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141724141785%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141724141785%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141723141787%_))
                                                  (let ((_%e141728141790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141723141787%_))))
                                                    (let ((_%tl141726141795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141728141790%_)))
                                                          (_%hd141727141793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141728141790%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141726141795%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141720141779%_))
                      (let ((_%e141731141798%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141720141779%_))))
                        (let ((_%tl141729141803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141731141798%_)))
                              (_%hd141730141801%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141731141798%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141730141801%_))
                              (let ((_%e141734141806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141730141801%_))))
                                (let ((_%tl141732141811%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141734141806%_)))
                                      (_%hd141733141809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141734141806%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141733141809%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141733141809%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141732141811%_))
                                              (let ((_%e141737141814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141732141811%_))))
                                                (let ((_%tl141735141819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141737141814%_)))
                                                      (_%hd141736141817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141737141814%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141735141819%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141729141803%_))
                                                          (let ((_%e141740141822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141729141803%_))))
                    (let ((_%tl141738141827%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141740141822%_)))
                          (_%hd141739141825%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141740141822%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141738141827%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141714141763%_))
                              (_%__kont144631144632%_
                               _%hd141736141817%_
                               _%hd141727141793%_
                               _%hd141627142007%_)
                              (let ()
                                (declare (not safe))
                                (_%g141621141745%_)))
                          (let () (declare (not safe)) (_%g141621141745%_)))))
                  (let () (declare (not safe)) (_%g141621141745%_)))
              (let () (declare (not safe)) (_%g141621141745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141621141745%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141621141745%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141621141745%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141621141745%_)))))
                      (let () (declare (not safe)) (_%g141621141745%_)))
                  (let () (declare (not safe)) (_%g141621141745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141621141745%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141621141745%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141621141745%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141621141745%_)))))
                          (let () (declare (not safe)) (_%g141621141745%_)))
                      (let () (declare (not safe)) (_%g141621141745%_)))
                  (let () (declare (not safe)) (_%g141621141745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141621141745%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141621141745%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141621141745%_))))))))
                 (_%generate1141464%_
                  (lambda (_%args141599%_
                           _%arglen141600%_
                           _%hd141601%_
                           _%body141602%_)
                    (let* ((_%len141604%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141601%_)))
                           (_%condition141609%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141601%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen141600%_
                                                  (cons _%len141604%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen141600%_ (cons _%len141604%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141604%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen141600%_
                                                      (cons _%len141604%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen141600%_
                                      (cons _%len141604%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch141611%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?141462%_
                                   _%hd141601%_
                                   _%body141602%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e141463%_
                                   _%hd141601%_
                                   _%body141602%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self141459%_
                                   _%hd141601%_
                                   _%body141602%_)))))
                      (cons _%condition141609%_
                            (cons (cons 'apply
                                        (cons _%dispatch141611%_
                                              (cons _%args141599%_ '())))
                                  '()))))))
          (let* ((_%g141466141494%_
                  (lambda (_%g141467141491%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141467141491%_))))
                 (_%g141465141596%_
                  (lambda (_%g141467141497%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141467141497%_))
                        (let ((_%e141472141499%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141467141497%_))))
                          (let ((_%hd141471141502%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141472141499%_)))
                                (_%tl141470141504%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141472141499%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141470141504%_))
                                (let ((_g145816_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl141470141504%_
                                          '0))))
                                  (begin
                                    (let ((_g145817_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145816_)
                                                 (##vector-length _g145816_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145817_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145817_)))
                                    (let ((_%target141473141507%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145816_ 0)))
                                          (_%tl141475141509%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145816_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141475141509%_))
                                          (letrec ((_%loop141476141512%_
                                                    (lambda (_%hd141474141515%_
                                                             _%body141480141517%_
                                                             _%hd141481141519%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd141474141515%_))
                                                          (let ((_%e141477141522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd141474141515%_))))
                    (let ((_%lp-hd141478141525%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141477141522%_)))
                          (_%lp-tl141479141527%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141477141522%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd141478141525%_))
                          (let ((_%e141486141530%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd141478141525%_))))
                            (let ((_%hd141485141533%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141486141530%_)))
                                  (_%tl141484141535%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141486141530%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl141484141535%_))
                                  (let ((_%e141489141538%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl141484141535%_))))
                                    (let ((_%hd141488141541%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141489141538%_)))
                                          (_%tl141487141543%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141489141538%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141487141543%_))
                                          (let ((__tmp145819
                                                 (cons _%hd141488141541%_
                                                       _%body141480141517%_))
                                                (__tmp145818
                                                 (cons _%hd141485141533%_
                                                       _%hd141481141519%_)))
                                            (declare (not safe))
                                            (_%loop141476141512%_
                                             _%lp-tl141479141527%_
                                             __tmp145819
                                             __tmp145818))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141466141494%_
                                             _%g141467141497%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141466141494%_ _%g141467141497%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g141466141494%_ _%g141467141497%_)))))
                  (let ((_%body141482141546%_ (reverse _%body141480141517%_))
                        (_%hd141483141548%_ (reverse _%hd141481141519%_)))
                    ((lambda (_%L141551%_ _%L141552%_)
                       (let ((_%args141571%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141572%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141573%_
                              (let ((_%$e141568%_
                                     (let ((__tmp145820
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145820 _%stx141460%_))))
                                (if _%$e141568%_
                                    _%$e141568%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141571%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args141571%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141571%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145824
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141573%_
                                                                (cons _%args141571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145821
                                  (map (lambda (_%g141574141577%_
                                                _%g141575141579%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1141464%_
                                            _%args141571%_
                                            _%arglen141572%_
                                            _%g141574141577%_
                                            _%g141575141579%_)))
                                       (let ((__tmp145822
                                              (lambda (_%g141581141584%_
                                                       _%g141582141586%_)
                                                (cons _%g141581141584%_
                                                      _%g141582141586%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145822
                                          '()
                                          _%L141552%_))
                                       (let ((__tmp145823
                                              (lambda (_%g141588141591%_
                                                       _%g141589141593%_)
                                                (cons _%g141588141591%_
                                                      _%g141589141593%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145823
                                          '()
                                          _%L141551%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145824 __tmp145821)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body141482141546%_
                     _%hd141483141548%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop141476141512%_
                                               _%target141473141507%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141466141494%_
                                             _%g141467141497%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g141466141494%_ _%g141467141497%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g141466141494%_ _%g141467141497%_))))))
            (declare (not safe))
            (_%g141465141596%_ _%stx141460%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140689%_ _%stx140690%_ _%compiled-body?140691%_)
        (letrec ((_%generate-simple140693%_
                  (lambda (_%hd141444%_ _%body141445%_)
                    (let ((__tmp145825
                           (let ((__tmp145826
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140689%_
                                     'let
                                     _%hd141444%_
                                     _%body141445%_
                                     _%compiled-body?140691%_))))
                             (declare (not safe))
                             (_%coalesce-let140695%_ __tmp145826))))
                      (declare (not safe))
                      (_%coalesce-boolean140694%_ __tmp145825))))
                 (_%coalesce-boolean140694%_
                  (lambda (_%code141305%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141306141332%_ _%code141305%_)
                               (_%else141308141340%_
                                (lambda () _%code141305%_))
                               (_%K141310141377%_
                                (lambda (_%expr2141343%_
                                         _%expr1141344%_
                                         _%id141345%_)
                                  (let* ((_%expr2141346141354%_
                                          _%expr2141343%_)
                                         (_%else141348141362%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141344%_
                                                        (cons _%expr2141343%_
                                                              '())))))
                                         (_%K141350141367%_
                                          (lambda (_%exprs141365%_)
                                            (cons 'or
                                                  (cons _%expr1141344%_
                                                        _%exprs141365%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141346141354%_))
                                        (let ((_%hd141351141370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141346141354%_)))
                                              (_%tl141352141372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141346141354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141351141370%_ 'or))
                                              (let ((_%exprs141375%_
                                                     _%tl141352141372%_))
                                                (declare (not safe))
                                                (_%K141350141367%_
                                                 _%exprs141375%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141348141362%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141348141362%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141306141332%_))
                              (let ((_%hd141311141380%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141306141332%_)))
                                    (_%tl141312141382%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141306141332%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141311141380%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141312141382%_))
                                        (let ((_%hd141313141385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141312141382%_)))
                                              (_%tl141314141387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141312141382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141313141385%_))
                                              (let ((_%hd141325141390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141313141385%_)))
                                                    (_%tl141326141392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141313141385%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141325141390%_))
                                                    (let ((_%hd141327141395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141325141390%_)))
                                                          (_%tl141328141397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141325141390%_))))
                                                      (let ((_%id141400%_
                                                             _%hd141327141395%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141328141397%_))
                                                            (let ((_%hd141329141402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141328141397%_)))
                          (_%tl141330141404%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141328141397%_))))
                      (let ((_%expr1141407%_ _%hd141329141402%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141330141404%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141326141392%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141314141387%_))
                                    (let ((_%hd141315141409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141314141387%_)))
                                          (_%tl141316141411%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141314141387%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141315141409%_))
                                          (let ((_%hd141317141414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141315141409%_)))
                                                (_%tl141318141416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141315141409%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141317141414%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141318141416%_))
                                                    (let ((_%hd141319141419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141318141416%_)))
                                                          (_%tl141320141421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141318141416%_))))
                                                      (if ((lambda (_%g141423141425%_)
                                                             (eq? _%g141423141425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id141400%_))
                   _%hd141319141419%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141320141421%_))
                      (let ((_%hd141321141428%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141320141421%_)))
                            (_%tl141322141430%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141320141421%_))))
                        (if ((lambda (_%g141432141434%_)
                               (eq? _%g141432141434%_ _%id141400%_))
                             _%hd141321141428%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141322141430%_))
                                (let ((_%hd141323141437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141322141430%_)))
                                      (_%tl141324141439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141322141430%_))))
                                  (let ((_%expr2141442%_ _%hd141323141437%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141324141439%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141316141411%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K141310141377%_
                                               _%expr2141442%_
                                               _%expr1141407%_
                                               _%id141400%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else141308141340%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141308141340%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141308141340%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141308141340%_))))
                      (let () (declare (not safe)) (_%else141308141340%_)))
                  (let () (declare (not safe)) (_%else141308141340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141308141340%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141308141340%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141308141340%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141308141340%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else141308141340%_)))
                            (let ()
                              (declare (not safe))
                              (_%else141308141340%_)))))
                    (let () (declare (not safe)) (_%else141308141340%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else141308141340%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141308141340%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141308141340%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else141308141340%_))))
                              (let ()
                                (declare (not safe))
                                (_%else141308141340%_))))
                        _%code141305%_)))
                 (_%coalesce-let140695%_
                  (lambda (_%code140997%_)
                    (let* ((_%code140998141072%_ _%code140997%_)
                           (_%else141003141080%_ (lambda () _%code140997%_)))
                      (let ((_%K141062141280%_
                             (lambda (_%body141278%_)
                               (cons 'let _%body141278%_)))
                            (_%K141045141226%_
                             (lambda (_%body141222%_
                                      _%expr141223%_
                                      _%id141224%_)
                               (cons 'let
                                     (cons (cons (cons _%id141224%_
                                                       (cons _%expr141223%_
                                                             '()))
                                                 '())
                                           _%body141222%_))))
                            (_%K141022141150%_
                             (lambda (_%body141144%_
                                      _%expr2141145%_
                                      _%id2141146%_
                                      _%expr1141147%_
                                      _%id1141148%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141148%_
                                                       (cons _%expr1141147%_
                                                             '()))
                                                 (cons (cons _%id2141146%_
                                                             (cons _%expr2141145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body141144%_))))
                            (_%K141005141089%_
                             (lambda (_%body141084%_
                                      _%bind141085%_
                                      _%expr1141086%_
                                      _%id1141087%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141087%_
                                                       (cons _%expr1141086%_
                                                             '()))
                                                 _%bind141085%_)
                                           _%body141084%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140998141072%_))
                            (let ((_%tl141064141285%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140998141072%_)))
                                  (_%hd141063141283%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140998141072%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd141063141283%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl141064141285%_))
                                      (let ((_%tl141066141290%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl141064141285%_)))
                                            (_%hd141065141288%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl141064141285%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd141065141288%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl141066141290%_))
                                                (let ((_%tl141068141295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl141066141290%_)))
                                                      (_%hd141067141293%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl141066141290%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141067141293%_))
                                                      (let ((_%tl141070141300%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141067141293%_)))
                    (_%hd141069141298%_
                     (let () (declare (not safe)) (##car _%hd141067141293%_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _%hd141069141298%_ 'let))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%tl141068141295%_))
                        (let ((_%body141303%_ _%tl141070141300%_))
                          (declare (not safe))
                          (_%K141062141280%_ _%body141303%_))
                        (let () (declare (not safe)) (_%else141003141080%_)))
                    (let () (declare (not safe)) (_%else141003141080%_))))
              (let () (declare (not safe)) (_%else141003141080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141003141080%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd141065141288%_))
                                                (let ((_%tl141057141241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd141065141288%_)))
                                                      (_%hd141056141239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd141065141288%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141056141239%_))
                                                      (let ((_%tl141059141246%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141056141239%_)))
                    (_%hd141058141244%_
                     (let () (declare (not safe)) (##car _%hd141056141239%_))))
                (if (let () (declare (not safe)) (##pair? _%tl141059141246%_))
                    (let ((_%tl141061141253%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141059141246%_)))
                          (_%hd141060141251%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl141059141246%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl141061141253%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl141057141241%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl141066141290%_))
                                  (let ((_%tl141051141260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl141066141290%_)))
                                        (_%hd141050141258%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl141066141290%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd141050141258%_))
                                        (let ((_%tl141053141265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd141050141258%_)))
                                              (_%hd141052141263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd141050141258%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141052141263%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl141053141265%_))
                                                  (let ((_%tl141055141270%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl141053141265%_)))
                                                        (_%hd141054141268%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl141053141265%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd141054141268%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl141051141260%_))
                                                            (let ((_%id141249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd141058141244%_)
                          (_%expr141256%_ _%hd141060141251%_)
                          (_%body141273%_ _%tl141055141270%_))
                      (let ()
                        (declare (not safe))
                        (_%K141045141226%_
                         _%body141273%_
                         _%expr141256%_
                         _%id141249%_)))
                    (let () (declare (not safe)) (_%else141003141080%_)))
                (if (let () (declare (not safe)) (##pair? _%hd141054141268%_))
                    (let ((_%tl141034141199%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd141054141268%_)))
                          (_%hd141033141197%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd141054141268%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141033141197%_))
                          (let ((_%tl141036141204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141033141197%_)))
                                (_%hd141035141202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141033141197%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141036141204%_))
                                (let ((_%tl141038141211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141036141204%_)))
                                      (_%hd141037141209%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141036141204%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141038141211%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl141034141199%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl141051141260%_))
                                              (let ((_%id1141173%_
                                                     _%hd141058141244%_)
                                                    (_%expr1141180%_
                                                     _%hd141060141251%_)
                                                    (_%id2141207%_
                                                     _%hd141035141202%_)
                                                    (_%expr2141214%_
                                                     _%hd141037141209%_)
                                                    (_%body141216%_
                                                     _%tl141055141270%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%K141022141150%_
                                                   _%body141216%_
                                                   _%expr2141214%_
                                                   _%id2141207%_
                                                   _%expr1141180%_
                                                   _%id1141173%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else141003141080%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else141003141080%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else141003141080%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else141003141080%_))))
                          (let ()
                            (declare (not safe))
                            (_%else141003141080%_))))
                    (let () (declare (not safe)) (_%else141003141080%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else141003141080%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd141052141263%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl141053141265%_))
                                                      (let ((_%tl141015141133%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl141053141265%_)))
                    (_%hd141014141131%_
                     (let () (declare (not safe)) (##car _%tl141053141265%_))))
                (if (let () (declare (not safe)) (##null? _%tl141051141260%_))
                    (let ((_%id1141112%_ _%hd141058141244%_)
                          (_%expr1141119%_ _%hd141060141251%_)
                          (_%bind141136%_ _%hd141014141131%_)
                          (_%body141138%_ _%tl141015141133%_))
                      (let ()
                        (declare (not safe))
                        (_%K141005141089%_
                         _%body141138%_
                         _%bind141136%_
                         _%expr1141119%_
                         _%id1141112%_)))
                    (let () (declare (not safe)) (_%else141003141080%_))))
              (let () (declare (not safe)) (_%else141003141080%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else141003141080%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else141003141080%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else141003141080%_)))
                              (let ()
                                (declare (not safe))
                                (_%else141003141080%_)))
                          (let ()
                            (declare (not safe))
                            (_%else141003141080%_))))
                    (let () (declare (not safe)) (_%else141003141080%_))))
              (let () (declare (not safe)) (_%else141003141080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else141003141080%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else141003141080%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else141003141080%_))))
                            (let ()
                              (declare (not safe))
                              (_%else141003141080%_)))))))
                 (_%generate-values140696%_
                  (lambda (_%hd140810%_ _%body140811%_)
                    (let _%lp140813%_ ((_%rest140815%_ _%hd140810%_)
                                       (_%bind140816%_ '())
                                       (_%check140817%_ '())
                                       (_%post140818%_ '()))
                      (let* ((_%__stx144954144955%_ _%rest140815%_)
                             (_%g140821140832%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144954144955%_)))))
                        (let ((_%__kont144956144957%_
                               (lambda (_%L140859%_ _%L140860%_)
                                 (let* ((_%__stx144910144911%_ _%L140860%_)
                                        (_%g140875140900%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144910144911%_)))))
                                   (let ((_%__kont144912144913%_
                                          (lambda (_%L140973%_ _%L140974%_)
                                            (let ((_%eid140988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140974%_)))
                                                  (_%expr140989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140689%_
                                                      _%L140973%_))))
                                              (let ((__tmp145827
                                                     (cons (cons _%eid140988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140989%_ '()))
                   _%bind140816%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140813%_
                                                 _%L140859%_
                                                 __tmp145827
                                                 _%check140817%_
                                                 _%post140818%_)))))
                                         (_%__kont144914144915%_
                                          (lambda (_%L140921%_ _%L140922%_)
                                            (let* ((_%vals140935%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140937%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140935%_
                                                       _%L140922%_
                                                       _%L140921%_)))
                                                   (_%refs140939%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140935%_
                                                       _%L140922%_)))
                                                   (_%expr140941%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140689%_
                                                       _%L140921%_))))
                                              (let ((__tmp145830
                                                     (cons (cons _%vals140935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140941%_ '()))
                   _%bind140816%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145829
                                                     (cons _%check-values140937%_
                                                           _%check140817%_))
                                                    (__tmp145828
                                                     (cons _%refs140939%_
                                                           _%post140818%_)))
                                                (declare (not safe))
                                                (_%lp140813%_
                                                 _%L140859%_
                                                 __tmp145830
                                                 __tmp145829
                                                 __tmp145828))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144910144911%_))
                                         (let ((_%e140881140949%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144910144911%_))))
                                           (let ((_%tl140879140954%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140881140949%_)))
                                                 (_%hd140880140952%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140881140949%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140880140952%_))
                                                 (let ((_%e140884140957%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140880140952%_))))
                                                   (let ((_%tl140882140962%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140884140957%_)))
                                                         (_%hd140883140960%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140884140957%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140882140962%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140879140954%_))
                     (let ((_%e140887140965%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140879140954%_))))
                       (let ((_%tl140885140970%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140887140965%_)))
                             (_%hd140886140968%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140887140965%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140885140970%_))
                             (_%__kont144912144913%_
                              _%hd140886140968%_
                              _%hd140883140960%_)
                             (let ()
                               (declare (not safe))
                               (_%g140875140900%_)))))
                     (let () (declare (not safe)) (_%g140875140900%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140879140954%_))
                     (let ((_%e140895140913%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140879140954%_))))
                       (let ((_%tl140893140918%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140895140913%_)))
                             (_%hd140894140916%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140895140913%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140893140918%_))
                             (_%__kont144914144915%_
                              _%hd140894140916%_
                              _%hd140880140952%_)
                             (let ()
                               (declare (not safe))
                               (_%g140875140900%_)))))
                     (let () (declare (not safe)) (_%g140875140900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140879140954%_))
                                                     (let ((_%e140895140913%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140879140954%_))))
                                                       (let ((_%tl140893140918%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140895140913%_)))
                     (_%hd140894140916%_
                      (let () (declare (not safe)) (##car _%e140895140913%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140893140918%_))
                     (_%__kont144914144915%_
                      _%hd140894140916%_
                      _%hd140880140952%_)
                     (let () (declare (not safe)) (_%g140875140900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140875140900%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140875140900%_)))))))
                              (_%__kont144958144959%_
                               (lambda ()
                                 (let* ((_%body140839%_
                                         (if _%compiled-body?140691%_
                                             _%body140811%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140689%_
                                                _%body140811%_))))
                                        (_%body140841%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140697%_
                                            _%post140818%_
                                            _%body140839%_)))
                                        (_%body140843%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140698%_
                                            _%check140817%_
                                            _%body140841%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140816%_)
                                               (cons _%body140843%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144954144955%_))
                              (let ((_%e140827140851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144954144955%_))))
                                (let ((_%tl140825140856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140827140851%_)))
                                      (_%hd140826140854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140827140851%_))))
                                  (_%__kont144956144957%_
                                   _%tl140825140856%_
                                   _%hd140826140854%_)))
                              (_%__kont144958144959%_)))))))
                 (_%generate-values-post140697%_
                  (lambda (_%post140769%_ _%body140770%_)
                    (let _%lp140772%_ ((_%rest140774%_ _%post140769%_)
                                       (_%body140775%_ _%body140770%_))
                      (let* ((_%rest140776140784%_ _%rest140774%_)
                             (_%else140778140792%_ (lambda () _%body140775%_))
                             (_%K140780140798%_
                              (lambda (_%rest140795%_ _%bind140796%_)
                                (let ((__tmp145831
                                       (cons 'let
                                             (cons _%bind140796%_
                                                   (cons _%body140775%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140772%_ _%rest140795%_ __tmp145831)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140776140784%_))
                            (let ((_%hd140781140801%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140776140784%_)))
                                  (_%tl140782140803%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140776140784%_))))
                              (let* ((_%bind140806%_ _%hd140781140801%_)
                                     (_%rest140808%_ _%tl140782140803%_))
                                (declare (not safe))
                                (_%K140780140798%_
                                 _%rest140808%_
                                 _%bind140806%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140778140792%_)))))))
                 (_%generate-values-check140698%_
                  (lambda (_%check140766%_ _%body140767%_)
                    (cons 'begin
                          (let ((__tmp145833 (cons _%body140767%_ '()))
                                (__tmp145832 (reverse _%check140766%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145833 __tmp145832))))))
          (let* ((_%g140700140717%_
                  (lambda (_%g140701140714%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140701140714%_))))
                 (_%g140699140763%_
                  (lambda (_%g140701140720%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140701140720%_))
                        (let ((_%e140706140722%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140701140720%_))))
                          (let ((_%hd140705140725%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140706140722%_)))
                                (_%tl140704140727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140706140722%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140704140727%_))
                                (let ((_%e140709140730%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140704140727%_))))
                                  (let ((_%hd140708140733%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140709140730%_)))
                                        (_%tl140707140735%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140709140730%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140707140735%_))
                                        (let ((_%e140712140738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140707140735%_))))
                                          (let ((_%hd140711140741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140712140738%_)))
                                                (_%tl140710140743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140712140738%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140710140743%_))
                                                ((lambda (_%L140746%_
                                                          _%L140747%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140747%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140693%_
                                                          _%L140747%_
                                                          _%L140746%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140696%_
                                                          _%L140747%_
                                                          _%L140746%_))))
                                                 _%hd140711140741%_
                                                 _%hd140708140733%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140700140717%_
                                                   _%g140701140720%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140700140717%_
                                           _%g140701140720%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140700140717%_ _%g140701140720%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140700140717%_ _%g140701140720%_))))))
            (declare (not safe))
            (_%g140699140763%_ _%stx140690%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self141450%_ _%stx141451%_)
        (let ((_%compiled-body?141453%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self141450%_
           _%stx141451%_
           _%compiled-body?141453%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145835_
        (let ((_g145834_ (let () (declare (not safe)) (##length _g145835_))))
          (cond ((let () (declare (not safe)) (##fx= _g145834_ 2))
                 (apply (lambda (_%self141450%_ _%stx141451%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self141450%_
                             _%stx141451%_)))
                        _g145835_))
                ((let () (declare (not safe)) (##fx= _g145834_ 3))
                 (apply (lambda (_%self141455%_
                                 _%stx141456%_
                                 _%compiled-body?141457%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self141455%_
                             _%stx141456%_
                             _%compiled-body?141457%_)))
                        _g145835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145835_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140583%_ _%hd140584%_)
        (let _%lp140586%_ ((_%rest140588%_ _%hd140584%_)
                           (_%k140589%_ '0)
                           (_%r140590%_ '()))
          (let* ((_%__stx144968144969%_ _%rest140588%_)
                 (_%g140595140612%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144968144969%_)))))
            (let ((_%__kont144970144971%_
                   (lambda (_%L140675%_)
                     (let ((__tmp145836
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140589%_ '1))))
                       (declare (not safe))
                       (_%lp140586%_ _%L140675%_ __tmp145836 _%r140590%_))))
                  (_%__kont144972144973%_
                   (lambda (_%L140648%_ _%L140649%_)
                     (let ((__tmp145838
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140589%_ '1)))
                           (__tmp145837
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140649%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140583%_
                                                 _%k140589%_
                                                 _%L140648%_))
                                              '()))
                                  _%r140590%_)))
                       (declare (not safe))
                       (_%lp140586%_ _%L140648%_ __tmp145838 __tmp145837))))
                  (_%__kont144974144975%_
                   (lambda (_%L140624%_)
                     (let ((__tmp145839
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140624%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140583%_
                                                 _%k140589%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145839 _%r140590%_))))
                  (_%__kont144976144977%_ (lambda () (reverse _%r140590%_))))
              (let ((_%g140593140635%_
                     (lambda ()
                       (let ((_%L140624%_ _%__stx144968144969%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140624%_))
                             (_%__kont144974144975%_ _%L140624%_)
                             (_%__kont144976144977%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144968144969%_))
                    (let ((_%e140600140664%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144968144969%_))))
                      (let ((_%tl140598140669%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140600140664%_)))
                            (_%hd140599140667%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140600140664%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140599140667%_))
                            (let ((_%e140601140672%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140599140667%_))))
                              (if (equal? _%e140601140672%_ '#f)
                                  (_%__kont144970144971%_ _%tl140598140669%_)
                                  (_%__kont144972144973%_
                                   _%tl140598140669%_
                                   _%hd140599140667%_)))
                            (_%__kont144972144973%_
                             _%tl140598140669%_
                             _%hd140599140667%_))))
                    (let () (declare (not safe)) (_%g140593140635%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140262%_ _%stx140263%_ _%compiled-body?140264%_)
        (letrec ((_%generate-simple140266%_
                  (lambda (_%hd140568%_ _%body140569%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self140262%_
                       'letrec
                       _%hd140568%_
                       _%body140569%_
                       _%compiled-body?140264%_))))
                 (_%generate-values140267%_
                  (lambda (_%hd140347%_ _%body140348%_)
                    (let _%lp140350%_ ((_%rest140352%_ _%hd140347%_)
                                       (_%bind140353%_ '())
                                       (_%check140354%_ '())
                                       (_%post140355%_ '()))
                      (let* ((_%__stx145042145043%_ _%rest140352%_)
                             (_%g140358140369%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145042145043%_)))))
                        (let ((_%__kont145044145045%_
                               (lambda (_%L140396%_ _%L140397%_)
                                 (let* ((_%__stx144998144999%_ _%L140397%_)
                                        (_%g140412140437%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144998144999%_)))))
                                   (let ((_%__kont145000145001%_
                                          (lambda (_%L140544%_ _%L140545%_)
                                            (let ((_%eid140559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140545%_)))
                                                  (_%expr140560%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140262%_
                                                      _%L140544%_))))
                                              (let ((__tmp145840
                                                     (cons (cons _%eid140559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140560%_ '()))
                   _%bind140353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140350%_
                                                 _%L140396%_
                                                 __tmp145840
                                                 _%check140354%_
                                                 _%post140355%_)))))
                                         (_%__kont145002145003%_
                                          (lambda (_%L140458%_ _%L140459%_)
                                            (let* ((_%vals140472%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140474%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140472%_
                                                       _%L140459%_
                                                       _%L140458%_)))
                                                   (_%refs140476%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140472%_
                                                       _%L140459%_)))
                                                   (_%expr140478%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140262%_
                                                       _%L140458%_))))
                                              (let ((__tmp145843
                                                     (let ((__tmp145845
                                                            (cons (cons _%vals140472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr140478%_ '()))
                          _%bind140353%_))
                   (__tmp145844
                    (map (lambda (_%e140480140482%_)
                           (let* ((_%g140484140493%_ _%e140480140482%_)
                                  (_%E140486140497%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g140484140493%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K140487140502%_
                                   (lambda (_%eid140500%_)
                                     (cons _%eid140500%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g140484140493%_))
                                 (let ((_%hd140488140505%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g140484140493%_)))
                                       (_%tl140489140507%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g140484140493%_))))
                                   (let ((_%eid140510%_ _%hd140488140505%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl140489140507%_))
                                         (let ((_%tl140491140512%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl140489140507%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl140491140512%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K140487140502%_
                                                  _%eid140510%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E140486140497%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E140486140497%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E140486140497%_)))))
                         _%refs140476%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145845 __tmp145844)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145842
                                                     (cons _%check-values140474%_
                                                           _%check140354%_))
                                                    (__tmp145841
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs140476%_
                                                        _%post140355%_))))
                                                (declare (not safe))
                                                (_%lp140350%_
                                                 _%L140396%_
                                                 __tmp145843
                                                 __tmp145842
                                                 __tmp145841))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144998144999%_))
                                         (let ((_%e140418140520%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144998144999%_))))
                                           (let ((_%tl140416140525%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140418140520%_)))
                                                 (_%hd140417140523%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140418140520%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140417140523%_))
                                                 (let ((_%e140421140528%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140417140523%_))))
                                                   (let ((_%tl140419140533%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140421140528%_)))
                                                         (_%hd140420140531%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140421140528%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140419140533%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140416140525%_))
                     (let ((_%e140424140536%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140416140525%_))))
                       (let ((_%tl140422140541%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140424140536%_)))
                             (_%hd140423140539%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140424140536%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140422140541%_))
                             (_%__kont145000145001%_
                              _%hd140423140539%_
                              _%hd140420140531%_)
                             (let ()
                               (declare (not safe))
                               (_%g140412140437%_)))))
                     (let () (declare (not safe)) (_%g140412140437%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140416140525%_))
                     (let ((_%e140432140450%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140416140525%_))))
                       (let ((_%tl140430140455%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140432140450%_)))
                             (_%hd140431140453%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140432140450%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140430140455%_))
                             (_%__kont145002145003%_
                              _%hd140431140453%_
                              _%hd140417140523%_)
                             (let ()
                               (declare (not safe))
                               (_%g140412140437%_)))))
                     (let () (declare (not safe)) (_%g140412140437%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140416140525%_))
                                                     (let ((_%e140432140450%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140416140525%_))))
                                                       (let ((_%tl140430140455%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140432140450%_)))
                     (_%hd140431140453%_
                      (let () (declare (not safe)) (##car _%e140432140450%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140430140455%_))
                     (_%__kont145002145003%_
                      _%hd140431140453%_
                      _%hd140417140523%_)
                     (let () (declare (not safe)) (_%g140412140437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140412140437%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140412140437%_)))))))
                              (_%__kont145046145047%_
                               (lambda ()
                                 (let* ((_%body140376%_
                                         (if _%compiled-body?140264%_
                                             _%body140348%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140262%_
                                                _%body140348%_))))
                                        (_%body140378%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140269%_
                                            _%post140355%_
                                            _%body140376%_)))
                                        (_%body140380%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140268%_
                                            _%check140354%_
                                            _%body140378%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind140353%_)
                                               (cons _%body140380%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145042145043%_))
                              (let ((_%e140364140388%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145042145043%_))))
                                (let ((_%tl140362140393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140364140388%_)))
                                      (_%hd140363140391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140364140388%_))))
                                  (_%__kont145044145045%_
                                   _%tl140362140393%_
                                   _%hd140363140391%_)))
                              (_%__kont145046145047%_)))))))
                 (_%generate-values-check140268%_
                  (lambda (_%check140344%_ _%body140345%_)
                    (cons 'begin
                          (let ((__tmp145847 (cons _%body140345%_ '()))
                                (__tmp145846 (reverse _%check140344%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145847 __tmp145846)))))
                 (_%generate-values-post140269%_
                  (lambda (_%post140337%_ _%body140338%_)
                    (cons 'begin
                          (let ((__tmp145851 (cons _%body140338%_ '()))
                                (__tmp145848
                                 (let ((__tmp145850
                                        (lambda (_%g140339140341%_)
                                          (cons 'set! _%g140339140341%_)))
                                       (__tmp145849 (reverse _%post140337%_)))
                                   (declare (not safe))
                                   (##map __tmp145850 __tmp145849))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145851 __tmp145848))))))
          (let* ((_%g140271140288%_
                  (lambda (_%g140272140285%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140272140285%_))))
                 (_%g140270140334%_
                  (lambda (_%g140272140291%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140272140291%_))
                        (let ((_%e140277140293%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140272140291%_))))
                          (let ((_%hd140276140296%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140277140293%_)))
                                (_%tl140275140298%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140277140293%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140275140298%_))
                                (let ((_%e140280140301%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140275140298%_))))
                                  (let ((_%hd140279140304%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140280140301%_)))
                                        (_%tl140278140306%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140280140301%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140278140306%_))
                                        (let ((_%e140283140309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140278140306%_))))
                                          (let ((_%hd140282140312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140283140309%_)))
                                                (_%tl140281140314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140283140309%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140281140314%_))
                                                ((lambda (_%L140317%_
                                                          _%L140318%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140318%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140266%_
                                                          _%L140318%_
                                                          _%L140317%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140267%_
                                                          _%L140318%_
                                                          _%L140317%_))))
                                                 _%hd140282140312%_
                                                 _%hd140279140304%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140271140288%_
                                                   _%g140272140291%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140271140288%_
                                           _%g140272140291%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140271140288%_ _%g140272140291%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140271140288%_ _%g140272140291%_))))))
            (declare (not safe))
            (_%g140270140334%_ _%stx140263%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140574%_ _%stx140575%_)
        (let ((_%compiled-body?140577%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self140574%_
           _%stx140575%_
           _%compiled-body?140577%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145853_
        (let ((_g145852_ (let () (declare (not safe)) (##length _g145853_))))
          (cond ((let () (declare (not safe)) (##fx= _g145852_ 2))
                 (apply (lambda (_%self140574%_ _%stx140575%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self140574%_
                             _%stx140575%_)))
                        _g145853_))
                ((let () (declare (not safe)) (##fx= _g145852_ 3))
                 (apply (lambda (_%self140579%_
                                 _%stx140580%_
                                 _%compiled-body?140581%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self140579%_
                             _%stx140580%_
                             _%compiled-body?140581%_)))
                        _g145853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145853_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139843%_ _%stx139844%_)
        (letrec ((_%generate-values139846%_
                  (lambda (_%hd140089%_ _%body140090%_)
                    (let _%lp140092%_ ((_%rest140094%_ _%hd140089%_)
                                       (_%bind140095%_ '()))
                      (let* ((_%rest140096140104%_ _%rest140094%_)
                             (_%else140098140115%_
                              (lambda ()
                                (let ((_%bind140112%_ (reverse _%bind140095%_))
                                      (_%body140113%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139843%_
                                          _%body140090%_))))
                                  (cons 'letrec*
                                        (cons _%bind140112%_
                                              (cons _%body140113%_ '()))))))
                             (_%K140100140249%_
                              (lambda (_%rest140118%_ _%hd-bind140119%_)
                                (let* ((_%__stx145056145057%_
                                        _%hd-bind140119%_)
                                       (_%g140122140147%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx145056145057%_)))))
                                  (let ((_%__kont145058145059%_
                                         (lambda (_%L140228%_ _%L140229%_)
                                           (let ((_%eid140243%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140229%_)))
                                                 (_%expr140244%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139843%_
                                                     _%L140228%_))))
                                             (let ((__tmp145854
                                                    (cons (cons _%eid140243%_
                                                                (cons _%expr140244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind140095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp140092%_
                                                _%rest140118%_
                                                __tmp145854)))))
                                        (_%__kont145060145061%_
                                         (lambda (_%L140168%_ _%L140169%_)
                                           (let* ((_%vals140188%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp140190%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values140192%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp140190%_
                                                      _%L140169%_
                                                      _%L140168%_)))
                                                  (_%refs140194%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals140188%_
                                                      _%L140169%_)))
                                                  (_%expr140196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139843%_
                                                      _%L140168%_)))
                                                  (__tmp145855
                                                   (let ((__tmp145856
                                                          (cons (cons _%vals140188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'let
                                          (cons (cons (cons _%tmp140190%_
                                                            (cons _%expr140196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%check-values140192%_
                                                      (cons _%tmp140190%_
                                                            '()))))
                                    '()))
                        _%bind140095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldl1
                                                      cons
                                                      __tmp145856
                                                      _%refs140194%_))))
                                             (declare (not safe))
                                             (_%lp140092%_
                                              _%rest140118%_
                                              __tmp145855)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145056145057%_))
                                        (let ((_%e140128140204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145056145057%_))))
                                          (let ((_%tl140126140209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140128140204%_)))
                                                (_%hd140127140207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140128140204%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140127140207%_))
                                                (let ((_%e140131140212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140127140207%_))))
                                                  (let ((_%tl140129140217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140131140212%_)))
                                                        (_%hd140130140215%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140131140212%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140129140217%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140126140209%_))
                                                            (let ((_%e140134140220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140126140209%_))))
                      (let ((_%tl140132140225%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140134140220%_)))
                            (_%hd140133140223%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140134140220%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140132140225%_))
                            (_%__kont145058145059%_
                             _%hd140133140223%_
                             _%hd140130140215%_)
                            (let ()
                              (declare (not safe))
                              (_%g140122140147%_)))))
                    (let () (declare (not safe)) (_%g140122140147%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl140126140209%_))
                    (let ((_%e140142140160%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140126140209%_))))
                      (let ((_%tl140140140165%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140142140160%_)))
                            (_%hd140141140163%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140142140160%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140140140165%_))
                            (_%__kont145060145061%_
                             _%hd140141140163%_
                             _%hd140127140207%_)
                            (let ()
                              (declare (not safe))
                              (_%g140122140147%_)))))
                    (let () (declare (not safe)) (_%g140122140147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140126140209%_))
                                                    (let ((_%e140142140160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140126140209%_))))
                                                      (let ((_%tl140140140165%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140142140160%_)))
                    (_%hd140141140163%_
                     (let () (declare (not safe)) (##car _%e140142140160%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140140140165%_))
                    (_%__kont145060145061%_
                     _%hd140141140163%_
                     _%hd140127140207%_)
                    (let () (declare (not safe)) (_%g140122140147%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140122140147%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140122140147%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140096140104%_))
                            (let ((_%hd140101140252%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140096140104%_)))
                                  (_%tl140102140254%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140096140104%_))))
                              (let* ((_%hd-bind140257%_ _%hd140101140252%_)
                                     (_%rest140259%_ _%tl140102140254%_))
                                (declare (not safe))
                                (_%K140100140249%_
                                 _%rest140259%_
                                 _%hd-bind140257%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140098140115%_)))))))
                 (_%generate-letrec?139847%_
                  (lambda (_%hd139979%_)
                    (let _%lp139981%_ ((_%rest139983%_ _%hd139979%_))
                      (let* ((_%rest139984139992%_ _%rest139983%_)
                             (_%else139986140000%_ (lambda () '#t))
                             (_%K139988140077%_
                              (lambda (_%rest140003%_ _%hd-bind140004%_)
                                (let* ((_%g140006140023%_
                                        (lambda (_%g140007140020%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g140007140020%_))))
                                       (_%g140005140074%_
                                        (lambda (_%g140007140026%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g140007140026%_))
                                              (let ((_%e140012140028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g140007140026%_))))
                                                (let ((_%hd140011140031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140012140028%_)))
                                                      (_%tl140010140033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140012140028%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd140011140031%_))
                                                      (let ((_%e140015140036%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd140011140031%_))))
                (let ((_%hd140014140039%_
                       (let () (declare (not safe)) (##car _%e140015140036%_)))
                      (_%tl140013140041%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140015140036%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140013140041%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140010140033%_))
                          (let ((_%e140018140044%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140010140033%_))))
                            (let ((_%hd140017140047%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140018140044%_)))
                                  (_%tl140016140049%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140018140044%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl140016140049%_))
                                  ((lambda (_%L140052%_ _%L140053%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139848%_
                                            _%L140052%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139981%_ _%rest140003%_))
                                         '#f))
                                   _%hd140017140047%_
                                   _%hd140014140039%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g140006140023%_ _%g140007140026%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140006140023%_ _%g140007140026%_)))
                      (let ()
                        (declare (not safe))
                        (_%g140006140023%_ _%g140007140026%_)))))
              (let ()
                (declare (not safe))
                (_%g140006140023%_ _%g140007140026%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140006140023%_
                                                 _%g140007140026%_))))))
                                  (declare (not safe))
                                  (_%g140005140074%_ _%hd-bind140004%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139984139992%_))
                            (let ((_%hd139989140080%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139984139992%_)))
                                  (_%tl139990140082%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139984139992%_))))
                              (let* ((_%hd-bind140085%_ _%hd139989140080%_)
                                     (_%rest140087%_ _%tl139990140082%_))
                                (declare (not safe))
                                (_%K139988140077%_
                                 _%rest140087%_
                                 _%hd-bind140085%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139986140000%_)))))))
                 (_%is-lambda-expr?139848%_
                  (lambda (_%expr139916%_)
                    (let* ((_%__stx145100145101%_ _%expr139916%_)
                           (_%g139919139933%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145100145101%_)))))
                      (let ((_%__kont145102145103%_
                             (lambda (_%L139961%_ _%L139962%_) '#t))
                            (_%__kont145104145105%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx145100145101%_))
                            (let ((_%e139925139945%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx145100145101%_))))
                              (let ((_%tl139923139950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139925139945%_)))
                                    (_%hd139924139948%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139925139945%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139924139948%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139924139948%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139923139950%_))
                                            (let ((_%e139928139953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139923139950%_))))
                                              (let ((_%tl139926139958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139928139953%_)))
                                                    (_%hd139927139956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139928139953%_))))
                                                (_%__kont145102145103%_
                                                 _%tl139926139958%_
                                                 _%hd139927139956%_)))
                                            (_%__kont145104145105%_))
                                        (_%__kont145104145105%_))
                                    (_%__kont145104145105%_))))
                            (_%__kont145104145105%_)))))))
          (let* ((_%g139850139867%_
                  (lambda (_%g139851139864%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139851139864%_))))
                 (_%g139849139913%_
                  (lambda (_%g139851139870%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139851139870%_))
                        (let ((_%e139856139872%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139851139870%_))))
                          (let ((_%hd139855139875%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139856139872%_)))
                                (_%tl139854139877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139856139872%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139854139877%_))
                                (let ((_%e139859139880%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139854139877%_))))
                                  (let ((_%hd139858139883%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139859139880%_)))
                                        (_%tl139857139885%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139859139880%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139857139885%_))
                                        (let ((_%e139862139888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139857139885%_))))
                                          (let ((_%hd139861139891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139862139888%_)))
                                                (_%tl139860139893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139862139888%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139860139893%_))
                                                ((lambda (_%L139896%_
                                                          _%L139897%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139897%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139847%_
                                                              _%L139897%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139843%_
                                                              'letrec
                                                              _%L139897%_
                                                              _%L139896%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139843%_
                                                              'letrec*
                                                              _%L139897%_
                                                              _%L139896%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139846%_
                                                          _%L139897%_
                                                          _%L139896%_))))
                                                 _%hd139861139891%_
                                                 _%hd139858139883%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139850139867%_
                                                   _%g139851139870%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139850139867%_
                                           _%g139851139870%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139850139867%_ _%g139851139870%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139850139867%_ _%g139851139870%_))))))
            (declare (not safe))
            (_%g139849139913%_ _%stx139844%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139780%_)
        (let _%lp139782%_ ((_%rest139784%_ _%hd139780%_))
          (let* ((_%rest139785139801%_ _%rest139784%_)
                 (_%else139788139809%_ (lambda () '#f)))
            (let ((_%K139791139822%_
                   (lambda (_%rest139820%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139782%_ _%rest139820%_))))
                  (_%K139790139814%_ (lambda () '#t)))
              (let ((_%try-match139787139817%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139785139801%_))
                           (let () (declare (not safe)) (_%K139790139814%_))
                           (let ()
                             (declare (not safe))
                             (_%else139788139809%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139785139801%_))
                    (let ((_%tl139793139827%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139785139801%_)))
                          (_%hd139792139825%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139785139801%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139792139825%_))
                          (let ((_%tl139795139832%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139792139825%_)))
                                (_%hd139794139830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139792139825%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139794139830%_))
                                (let ((_%tl139799139835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139794139830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139799139835%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139795139832%_))
                                          (let ((_%tl139797139838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139795139832%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139797139838%_))
                                                (let ((_%rest139841%_
                                                       _%tl139793139827%_))
                                                  (declare (not safe))
                                                  (_%lp139782%_
                                                   _%rest139841%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139788139809%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139788139809%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139788139809%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139788139809%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139788139809%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139787139817%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139691%_
               _%form139692%_
               _%hd139693%_
               _%body139694%_
               _%compiled-body?139695%_)
        (letrec ((_%generate1139697%_
                  (lambda (_%bind139736%_)
                    (let* ((_%bind139737139748%_ _%bind139736%_)
                           (_%E139739139752%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139737139748%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139740139758%_
                            (lambda (_%expr139755%_ _%id139756%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139756%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139691%_
                                             _%expr139755%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139737139748%_))
                          (let ((_%hd139741139761%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139737139748%_)))
                                (_%tl139742139763%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139737139748%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139741139761%_))
                                (let ((_%hd139745139766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139741139761%_)))
                                      (_%tl139746139768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139741139761%_))))
                                  (let ((_%id139771%_ _%hd139745139766%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139746139768%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139742139763%_))
                                            (let ((_%hd139743139773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139742139763%_)))
                                                  (_%tl139744139775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139742139763%_))))
                                              (let ((_%expr139778%_
                                                     _%hd139743139773%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139744139775%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139740139758%_
                                                       _%expr139778%_
                                                       _%id139771%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139739139752%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139739139752%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139739139752%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139739139752%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139739139752%_)))))))
          (let* ((_%bind139699%_ (map _%generate1139697%_ _%hd139693%_))
                 (_%body139701%_
                  (if _%compiled-body?139695%_
                      _%body139694%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139691%_ _%body139694%_))))
                 (_%body139733%_
                  (let* ((_%body139702139710%_ _%body139701%_)
                         (_%else139704139718%_
                          (lambda () (cons _%body139701%_ '())))
                         (_%K139706139723%_
                          (lambda (_%exprs139721%_) _%exprs139721%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139702139710%_))
                        (let ((_%hd139707139726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139702139710%_)))
                              (_%tl139708139728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139702139710%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139707139726%_ 'begin))
                              (let ((_%exprs139731%_ _%tl139708139728%_))
                                (declare (not safe))
                                (_%K139706139723%_ _%exprs139731%_))
                              (let ()
                                (declare (not safe))
                                (_%else139704139718%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139704139718%_))))))
            (cons _%form139692%_ (cons _%bind139699%_ _%body139733%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139591%_ _%stx139592%_)
        (letrec ((_%generate1139594%_
                  (lambda (_%datum139646%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139646%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139646%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139646%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139646%_)))
                        (let () _%datum139646%_)
                        (if (uninterned-symbol? _%datum139646%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139646%_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139646%_))
                                (let ()
                                  (cons (let ((__tmp145857
                                               (car _%datum139646%_)))
                                          (declare (not safe))
                                          (_%generate1139594%_ __tmp145857))
                                        (let ((__tmp145858
                                               (cdr _%datum139646%_)))
                                          (declare (not safe))
                                          (_%generate1139594%_ __tmp145858))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139646%_))
                                    (let ()
                                      (box (let ((__tmp145859
                                                  (unbox _%datum139646%_)))
                                             (declare (not safe))
                                             (_%generate1139594%_
                                              __tmp145859))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139646%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139594%_
                                           _%datum139646%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139646%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139646%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139646%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139646%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139646%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139646%_))
                                                (s64vector? _%datum139646%_)
                                                (u64vector? _%datum139646%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139646%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139646%_)))
                                            (let () _%datum139646%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139592%_)))))))))))
          (let* ((_%g139596139609%_
                  (lambda (_%g139597139606%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139597139606%_))))
                 (_%g139595139643%_
                  (lambda (_%g139597139612%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139597139612%_))
                        (let ((_%e139601139614%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139597139612%_))))
                          (let ((_%hd139600139617%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139601139614%_)))
                                (_%tl139599139619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139601139614%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139599139619%_))
                                (let ((_%e139604139622%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139599139619%_))))
                                  (let ((_%hd139603139625%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139604139622%_)))
                                        (_%tl139602139627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139604139622%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139602139627%_))
                                        ((lambda (_%L139630%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145860
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139630%_))))
                 (declare (not safe))
                 (_%generate1139594%_ __tmp145860))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139603139625%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139596139609%_
                                           _%g139597139612%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139596139609%_ _%g139597139612%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139596139609%_ _%g139597139612%_))))))
            (declare (not safe))
            (_%g139595139643%_ _%stx139592%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self139032%_ _%stx139033%_)
        (letrec ((_%compile-call139035%_
                  (lambda (_%rator139324%_ _%rands139325%_)
                    (let ((_%rator139331%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self139032%_
                              _%rator139324%_)))
                          (_%rands139332%_
                           (map (lambda (_%g139326139328%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self139032%_
                                     _%g139326139328%_)))
                                _%rands139325%_)))
                      (let* ((_%__stx145147145148%_ _%rator139331%_)
                             (_%g139335139387%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145147145148%_)))))
                        (let ((_%__kont145149145150%_
                               (lambda (_%L139511%_
                                        _%L139512%_
                                        _%L139513%_
                                        _%L139514%_)
                                 (if (let ((__tmp145863
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139332%_)))
                                           (__tmp145861
                                            (length (let ((__tmp145862
                                                           (lambda (_%g139550139553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139551139555%_)
                     (cons _%g139550139553%_ _%g139551139555%_))))
              (declare (not safe))
              (__foldr1 __tmp145862 '() _%L139513%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145863 __tmp145861))
                                     (let* ((_%id139558%_ _%L139514%_)
                                            (_%args139567%_
                                             (let ((__tmp145864
                                                    (lambda (_%g139559139562%_
                                                             _%g139560139564%_)
                                                      (cons _%g139559139562%_
                                                            _%g139560139564%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145864
                                                '()
                                                _%L139513%_)))
                                            (_%body139576%_
                                             (let ((__tmp145865
                                                    (lambda (_%g139568139571%_
                                                             _%g139569139573%_)
                                                      (cons _%g139568139571%_
                                                            _%g139569139573%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145865
                                                '()
                                                _%L139512%_)))
                                            (_%init139578%_
                                             (map list
                                                  _%args139567%_
                                                  _%rands139332%_)))
                                       (cons 'let
                                             (cons _%id139558%_
                                                   (cons _%init139578%_
                                                         _%body139576%_))))
                                     (let ((__tmp145866
                                            (let ((__tmp145867
                                                   (lambda (_%g139580139583%_
                                                            _%g139581139585%_)
                                                     (cons _%g139580139583%_
                                                           _%g139581139585%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145867
                                               '()
                                               _%L139513%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx139033%_
                                        __tmp145866
                                        _%rands139332%_)))))
                              (_%__kont145155145156%_
                               (lambda ()
                                 (cons _%rator139331%_ _%rands139332%_))))
                          (let ((_%__match145214145215%_
                                 (lambda (_%e139343139399%_
                                          _%hd139342139402%_
                                          _%tl139341139404%_
                                          _%e139346139407%_
                                          _%hd139345139410%_
                                          _%tl139344139412%_
                                          _%e139349139415%_
                                          _%hd139348139418%_
                                          _%tl139347139420%_
                                          _%e139352139423%_
                                          _%hd139351139426%_
                                          _%tl139350139428%_
                                          _%e139355139431%_
                                          _%hd139354139434%_
                                          _%tl139353139436%_
                                          _%e139358139439%_
                                          _%hd139357139442%_
                                          _%tl139356139444%_
                                          _%e139361139447%_
                                          _%hd139360139450%_
                                          _%tl139359139452%_
                                          _%__splice145151145152%_
                                          _%target139362139455%_
                                          _%tl139364139457%_)
                                   (letrec ((_%loop139365139460%_
                                             (lambda (_%hd139363139463%_
                                                      _%arg139369139465%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139363139463%_))
                                                   (let ((_%e139366139468%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139363139463%_))))
                                                     (let ((_%lp-tl139368139473%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139366139468%_)))
                                                           (_%lp-hd139367139471%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139366139468%_))))
                                                       (let ((__tmp145868
                                                              (cons _%lp-hd139367139471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg139369139465%_)))
                 (declare (not safe))
                 (_%loop139365139460%_ _%lp-tl139368139473%_ __tmp145868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg139370139476%_
                                                          (reverse _%arg139369139465%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139359139452%_))
                                                         (let ((_%__splice145153145154%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139359139452%_ '0))))
                   (let ((_%tl139373139481%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145153145154%_ '1)))
                         (_%target139371139479%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145153145154%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139373139481%_))
                         (letrec ((_%loop139374139484%_
                                   (lambda (_%hd139372139487%_
                                            _%body139378139489%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd139372139487%_))
                                         (let ((_%e139375139492%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd139372139487%_))))
                                           (let ((_%lp-tl139377139497%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139375139492%_)))
                                                 (_%lp-hd139376139495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139375139492%_))))
                                             (let ((__tmp145869
                                                    (cons _%lp-hd139376139495%_
                                                          _%body139378139489%_)))
                                               (declare (not safe))
                                               (_%loop139374139484%_
                                                _%lp-tl139377139497%_
                                                __tmp145869))))
                                         (let ((_%body139379139500%_
                                                (reverse _%body139378139489%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139353139436%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139347139420%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139344139412%_))
                                                       (let ((_%e139382139503%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139344139412%_))))
                 (let ((_%tl139380139508%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e139382139503%_)))
                       (_%hd139381139506%_
                        (let ()
                          (declare (not safe))
                          (##car _%e139382139503%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl139380139508%_))
                       (let ((_%L139511%_ _%hd139381139506%_)
                             (_%L139512%_ _%body139379139500%_)
                             (_%L139513%_ _%arg139370139476%_)
                             (_%L139514%_ _%hd139351139426%_))
                         (if (eq? _%L139514%_ _%L139511%_)
                             (_%__kont145149145150%_
                              _%L139511%_
                              _%L139512%_
                              _%L139513%_
                              _%L139514%_)
                             (_%__kont145155145156%_)))
                       (_%__kont145155145156%_))))
               (_%__kont145155145156%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145155145156%_))
                                               (_%__kont145155145156%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop139374139484%_
                              _%target139371139479%_
                              '())))
                         (_%__kont145155145156%_))))
                 (_%__kont145155145156%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop139365139460%_
                                        _%target139362139455%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145147145148%_))
                                (let ((_%e139343139399%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145147145148%_))))
                                  (let ((_%tl139341139404%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139343139399%_)))
                                        (_%hd139342139402%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139343139399%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139342139402%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139342139402%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139341139404%_))
                                                (let ((_%e139346139407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139341139404%_))))
                                                  (let ((_%tl139344139412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139346139407%_)))
                                                        (_%hd139345139410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139346139407%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139345139410%_))
                                                        (let ((_%e139349139415%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139345139410%_))))
                  (let ((_%tl139347139420%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139349139415%_)))
                        (_%hd139348139418%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139349139415%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139348139418%_))
                        (let ((_%e139352139423%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139348139418%_))))
                          (let ((_%tl139350139428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139352139423%_)))
                                (_%hd139351139426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139352139423%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139350139428%_))
                                (let ((_%e139355139431%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139350139428%_))))
                                  (let ((_%tl139353139436%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139355139431%_)))
                                        (_%hd139354139434%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139355139431%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139354139434%_))
                                        (let ((_%e139358139439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139354139434%_))))
                                          (let ((_%tl139356139444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139358139439%_)))
                                                (_%hd139357139442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139358139439%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139357139442%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139357139442%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139356139444%_))
                                                        (let ((_%e139361139447%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139356139444%_))))
                  (let ((_%tl139359139452%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139361139447%_)))
                        (_%hd139360139450%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139361139447%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139360139450%_))
                        (let ((_%__splice145151145152%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139360139450%_
                                  '0))))
                          (let ((_%tl139364139457%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice145151145152%_ '1)))
                                (_%target139362139455%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice145151145152%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139364139457%_))
                                (_%__match145214145215%_
                                 _%e139343139399%_
                                 _%hd139342139402%_
                                 _%tl139341139404%_
                                 _%e139346139407%_
                                 _%hd139345139410%_
                                 _%tl139344139412%_
                                 _%e139349139415%_
                                 _%hd139348139418%_
                                 _%tl139347139420%_
                                 _%e139352139423%_
                                 _%hd139351139426%_
                                 _%tl139350139428%_
                                 _%e139355139431%_
                                 _%hd139354139434%_
                                 _%tl139353139436%_
                                 _%e139358139439%_
                                 _%hd139357139442%_
                                 _%tl139356139444%_
                                 _%e139361139447%_
                                 _%hd139360139450%_
                                 _%tl139359139452%_
                                 _%__splice145151145152%_
                                 _%target139362139455%_
                                 _%tl139364139457%_)
                                (_%__kont145155145156%_))))
                        (_%__kont145155145156%_))))
                (_%__kont145155145156%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145155145156%_))
                                                (_%__kont145155145156%_))))
                                        (_%__kont145155145156%_))))
                                (_%__kont145155145156%_))))
                        (_%__kont145155145156%_))))
                (_%__kont145155145156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145155145156%_))
                                            (_%__kont145155145156%_))
                                        (_%__kont145155145156%_))))
                                (_%__kont145155145156%_)))))))))
          (let* ((_%g139037139060%_
                  (lambda (_%g139038139057%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139038139057%_))))
                 (_%g139036139321%_
                  (lambda (_%g139038139063%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139038139063%_))
                        (let ((_%e139043139065%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139038139063%_))))
                          (let ((_%hd139042139068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139043139065%_)))
                                (_%tl139041139070%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139043139065%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139041139070%_))
                                (let ((_%e139046139073%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139041139070%_))))
                                  (let ((_%hd139045139076%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139046139073%_)))
                                        (_%tl139044139078%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139046139073%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl139044139078%_))
                                        (let ((_g145870_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl139044139078%_
                                                  '0))))
                                          (begin
                                            (let ((_g145871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145870_)
                                                         (##vector-length
                                                          _g145870_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145871_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145871_)))
                                            (let ((_%target139047139081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145870_
                                                      0)))
                                                  (_%tl139049139083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145870_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl139049139083%_))
                                                  (letrec ((_%loop139050139086%_
                                                            (lambda (_%hd139048139089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand139054139091%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd139048139089%_))
                          (let ((_%e139051139094%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd139048139089%_))))
                            (let ((_%lp-hd139052139097%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139051139094%_)))
                                  (_%lp-tl139053139099%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139051139094%_))))
                              (let ((__tmp145872
                                     (cons _%lp-hd139052139097%_
                                           _%rand139054139091%_)))
                                (declare (not safe))
                                (_%loop139050139086%_
                                 _%lp-tl139053139099%_
                                 __tmp145872))))
                          (let ((_%rand139055139102%_
                                 (reverse _%rand139054139091%_)))
                            ((lambda (_%L139105%_ _%L139106%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145873
                                          (let ((__tmp145874
                                                 (lambda (_%g139123139126%_
                                                          _%g139124139128%_)
                                                   (cons _%g139123139126%_
                                                         _%g139124139128%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145874
                                             '()
                                             _%L139105%_))))
                                     (declare (not safe))
                                     (_%compile-call139035%_
                                      _%L139106%_
                                      __tmp145873))
                                   (let* ((_%__stx145263145264%_ _%L139106%_)
                                          (_%g139132139144%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145263145264%_)))))
                                     (let ((_%__kont145265145266%_
                                            (lambda ()
                                              (let ((_%f139181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139032%_
                                                        _%L139106%_))))
                                                (if (and (let ((__tmp145875
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f139181%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145875))
                 (let ((__tmp145876
                        (let ()
                          (declare (not safe))
                          (##memq _%f139181%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145876)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp139183%_ ((_%rest139186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145882
                                                (lambda (_%g139303139306%_
                                                         _%g139304139308%_)
                                                  (cons _%g139303139306%_
                                                        _%g139304139308%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145882
                                            '()
                                            _%L139105%_))))
                               (_%bind139188%_ '())
                               (_%args139189%_ '()))
              (let* ((_%rest139190139198%_ _%rest139186%_)
                     (_%else139192139206%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind139188%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f139181%_
                                                      _%args139189%_)
                                                '()))))))
                     (_%K139194139292%_
                      (lambda (_%rest139209%_ _%e139210%_)
                        (let* ((_%__stx145217145218%_ _%e139210%_)
                               (_%g139215139233%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145217145218%_)))))
                          (let ((_%__kont145219145220%_
                                 (lambda ()
                                   (let ((__tmp145877
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139210%_))
                                                _%args139189%_)))
                                     (declare (not safe))
                                     (_%lp139183%_
                                      _%rest139209%_
                                      _%bind139188%_
                                      __tmp145877))))
                                (_%__kont145221145222%_
                                 (lambda ()
                                   (let ((__tmp145878
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e139210%_))
                                                _%args139189%_)))
                                     (declare (not safe))
                                     (_%lp139183%_
                                      _%rest139209%_
                                      _%bind139188%_
                                      __tmp145878))))
                                (_%__kont145223145224%_
                                 (lambda ()
                                   (let ((_%tmp139240%_
                                          (let ((__tmp145879
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145879))))
                                     (let ((__tmp145881
                                            (cons (cons _%tmp139240%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e139210%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind139188%_))
                                           (__tmp145880
                                            (cons _%tmp139240%_
                                                  _%args139189%_)))
                                       (declare (not safe))
                                       (_%lp139183%_
                                        _%rest139209%_
                                        __tmp145881
                                        __tmp145880))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145217145218%_))
                                (let ((_%e139219139271%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145217145218%_))))
                                  (let ((_%tl139217139276%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139219139271%_)))
                                        (_%hd139218139274%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139219139271%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139218139274%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139218139274%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139217139276%_))
                                                (let ((_%e139222139279%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139217139276%_))))
                                                  (let ((_%tl139220139284%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139222139279%_)))
                                                        (_%hd139221139282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139222139279%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139220139284%_))
                                                        (_%__kont145219145220%_)
                                                        (_%__kont145223145224%_))))
                                                (_%__kont145223145224%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139218139274%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139217139276%_))
                                                    (let ((_%e139228139256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139217139276%_))))
                                                      (let ((_%tl139226139261%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139228139256%_)))
                    (_%hd139227139259%_
                     (let () (declare (not safe)) (##car _%e139228139256%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139226139261%_))
                    (_%__kont145221145222%_)
                    (_%__kont145223145224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145223145224%_))
                                                (_%__kont145223145224%_)))
                                        (_%__kont145223145224%_))))
                                (_%__kont145223145224%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139190139198%_))
                    (let ((_%hd139195139295%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139190139198%_)))
                          (_%tl139196139297%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139190139198%_))))
                      (let* ((_%e139300%_ _%hd139195139295%_)
                             (_%rest139302%_ _%tl139196139297%_))
                        (declare (not safe))
                        (_%K139194139292%_ _%rest139302%_ _%e139300%_)))
                    (let () (declare (not safe)) (_%else139192139206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145883
                                                           (let ((__tmp145884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g139310139313%_ _%g139311139315%_)
                            (cons _%g139310139313%_ _%g139311139315%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145884 '() _%L139105%_))))
              (declare (not safe))
              (_%compile-call139035%_ _%L139106%_ __tmp145883))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145267145268%_
                                            (lambda ()
                                              (let ((__tmp145885
                                                     (let ((__tmp145886
                                                            (lambda (_%g139150139153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139151139155%_)
                      (cons _%g139150139153%_ _%g139151139155%_))))
               (declare (not safe))
               (__foldr1 __tmp145886 '() _%L139105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call139035%_
                                                 _%L139106%_
                                                 __tmp145885)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145263145264%_))
                                           (let ((_%e139136139163%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145263145264%_))))
                                             (let ((_%tl139134139168%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139136139163%_)))
                                                   (_%hd139135139166%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139136139163%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139135139166%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd139135139166%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl139134139168%_))
                                                           (let ((_%e139139139171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl139134139168%_))))
                     (let ((_%tl139137139176%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e139139139171%_)))
                           (_%hd139138139174%_
                            (let ()
                              (declare (not safe))
                              (##car _%e139139139171%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl139137139176%_))
                           (_%__kont145265145266%_)
                           (_%__kont145267145268%_))))
                   (_%__kont145267145268%_))
               (_%__kont145267145268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145267145268%_))))
                                           (_%__kont145267145268%_))))))
                             _%rand139055139102%_
                             _%hd139045139076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop139050139086%_
                                                       _%target139047139081%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g139037139060%_
                                                     _%g139038139063%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139037139060%_
                                           _%g139038139063%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139037139060%_ _%g139038139063%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139037139060%_ _%g139038139063%_))))))
            (declare (not safe))
            (_%g139036139321%_ _%stx139033%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138775%_ _%stx138776%_)
        (let* ((_%__stx145335145336%_ _%stx138776%_)
               (_%g138779138808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145335145336%_)))))
          (let ((_%__kont145337145338%_
                 (lambda (_%L138876%_ _%L138877%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138775%_
                          _%stx138776%_))
                       (let ((_%f138899%_
                              (let ((__tmp145887
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138877%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138775%_
                                 __tmp145887))))
                         (let _%lp138901%_ ((_%rest138904%_
                                             (reverse (let ((__tmp145893
                                                             (lambda (_%g139021139024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g139022139026%_)
                       (cons _%g139021139024%_ _%g139022139026%_))))
                (declare (not safe))
                (__foldr1 __tmp145893 '() _%L138876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138906%_ '())
                                            (_%args138907%_ '()))
                           (let* ((_%rest138908138916%_ _%rest138904%_)
                                  (_%else138910138924%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138906%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138907%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138912139010%_
                                   (lambda (_%rest138927%_ _%e138928%_)
                                     (let* ((_%__stx145289145290%_ _%e138928%_)
                                            (_%g138933138951%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145289145290%_)))))
                                       (let ((_%__kont145291145292%_
                                              (lambda ()
                                                (let ((__tmp145888
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138928%_))
                     _%args138907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138901%_
                                                   _%rest138927%_
                                                   _%bind138906%_
                                                   __tmp145888))))
                                             (_%__kont145293145294%_
                                              (lambda ()
                                                (let ((__tmp145889
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138928%_))
                     _%args138907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138901%_
                                                   _%rest138927%_
                                                   _%bind138906%_
                                                   __tmp145889))))
                                             (_%__kont145295145296%_
                                              (lambda ()
                                                (let ((_%tmp138958%_
                                                       (let ((__tmp145890
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145892
                                                         (cons (cons _%tmp138958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138928%_))
                                   '()))
                       _%bind138906%_))
                (__tmp145891 (cons _%tmp138958%_ _%args138907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138901%_
                                                     _%rest138927%_
                                                     __tmp145892
                                                     __tmp145891))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145289145290%_))
                                             (let ((_%e138937138989%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145289145290%_))))
                                               (let ((_%tl138935138994%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138937138989%_)))
                                                     (_%hd138936138992%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138937138989%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138936138992%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138936138992%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138935138994%_))
                     (let ((_%e138940138997%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138935138994%_))))
                       (let ((_%tl138938139002%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138940138997%_)))
                             (_%hd138939139000%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138940138997%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138938139002%_))
                             (_%__kont145291145292%_)
                             (_%__kont145295145296%_))))
                     (_%__kont145295145296%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138936138992%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138935138994%_))
                         (let ((_%e138946138974%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138935138994%_))))
                           (let ((_%tl138944138979%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138946138974%_)))
                                 (_%hd138945138977%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138946138974%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138944138979%_))
                                 (_%__kont145293145294%_)
                                 (_%__kont145295145296%_))))
                         (_%__kont145295145296%_))
                     (_%__kont145295145296%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145295145296%_))))
                                             (_%__kont145295145296%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138908138916%_))
                                 (let ((_%hd138913139013%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138908138916%_)))
                                       (_%tl138914139015%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138908138916%_))))
                                   (let* ((_%e139018%_ _%hd138913139013%_)
                                          (_%rest139020%_ _%tl138914139015%_))
                                     (declare (not safe))
                                     (_%K138912139010%_
                                      _%rest139020%_
                                      _%e139018%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138910138924%_)))))))))
                (_%__kont145341145342%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138775%_
                      _%stx138776%_)))))
            (let ((_%__match145380145381%_
                   (lambda (_%e138785138820%_
                            _%hd138784138823%_
                            _%tl138783138825%_
                            _%e138788138828%_
                            _%hd138787138831%_
                            _%tl138786138833%_
                            _%e138791138836%_
                            _%hd138790138839%_
                            _%tl138789138841%_
                            _%e138794138844%_
                            _%hd138793138847%_
                            _%tl138792138849%_
                            _%__splice145339145340%_
                            _%target138795138852%_
                            _%tl138797138854%_)
                     (letrec ((_%loop138798138857%_
                               (lambda (_%hd138796138860%_
                                        _%rand138802138862%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138796138860%_))
                                     (let ((_%e138799138865%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138796138860%_))))
                                       (let ((_%lp-tl138801138870%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138799138865%_)))
                                             (_%lp-hd138800138868%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138799138865%_))))
                                         (let ((__tmp145894
                                                (cons _%lp-hd138800138868%_
                                                      _%rand138802138862%_)))
                                           (declare (not safe))
                                           (_%loop138798138857%_
                                            _%lp-tl138801138870%_
                                            __tmp145894))))
                                     (let ((_%rand138803138873%_
                                            (reverse _%rand138802138862%_)))
                                       (_%__kont145337145338%_
                                        _%rand138803138873%_
                                        _%hd138793138847%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138798138857%_ _%target138795138852%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145335145336%_))
                  (let ((_%e138785138820%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145335145336%_))))
                    (let ((_%tl138783138825%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138785138820%_)))
                          (_%hd138784138823%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138785138820%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138783138825%_))
                          (let ((_%e138788138828%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138783138825%_))))
                            (let ((_%tl138786138833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138788138828%_)))
                                  (_%hd138787138831%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138788138828%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138787138831%_))
                                  (let ((_%e138791138836%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138787138831%_))))
                                    (let ((_%tl138789138841%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138791138836%_)))
                                          (_%hd138790138839%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138791138836%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138790138839%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138790138839%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138789138841%_))
                                                  (let ((_%e138794138844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138789138841%_))))
                                                    (let ((_%tl138792138849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138794138844%_)))
                                                          (_%hd138793138847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138794138844%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138792138849%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138786138833%_))
                      (let ((_%__splice145339145340%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138786138833%_
                                '0))))
                        (let ((_%tl138797138854%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145339145340%_ '1)))
                              (_%target138795138852%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145339145340%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138797138854%_))
                              (_%__match145380145381%_
                               _%e138785138820%_
                               _%hd138784138823%_
                               _%tl138783138825%_
                               _%e138788138828%_
                               _%hd138787138831%_
                               _%tl138786138833%_
                               _%e138791138836%_
                               _%hd138790138839%_
                               _%tl138789138841%_
                               _%e138794138844%_
                               _%hd138793138847%_
                               _%tl138792138849%_
                               _%__splice145339145340%_
                               _%target138795138852%_
                               _%tl138797138854%_)
                              (_%__kont145341145342%_))))
                      (_%__kont145341145342%_))
                  (_%__kont145341145342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145341145342%_))
                                              (_%__kont145341145342%_))
                                          (_%__kont145341145342%_))))
                                  (_%__kont145341145342%_))))
                          (_%__kont145341145342%_))))
                  (_%__kont145341145342%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138587%_ _%stx138588%_)
        (letrec ((_%simplify138590%_
                  (lambda (_%code138675%_)
                    (let* ((_%code138676138694%_ _%code138675%_)
                           (_%else138678138702%_ (lambda () _%code138675%_))
                           (_%K138680138738%_
                            (lambda (_%expr138705%_ _%test138706%_)
                              (let* ((_%expr138707138715%_ _%expr138705%_)
                                     (_%else138709138723%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138706%_
                                                    (cons _%expr138705%_
                                                          '())))))
                                     (_%K138711138728%_
                                      (lambda (_%exprs138726%_)
                                        (cons 'and
                                              (cons _%test138706%_
                                                    _%exprs138726%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138707138715%_))
                                    (let ((_%hd138712138731%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138707138715%_)))
                                          (_%tl138713138733%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138707138715%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138712138731%_ 'and))
                                          (let ((_%exprs138736%_
                                                 _%tl138713138733%_))
                                            (declare (not safe))
                                            (_%K138711138728%_
                                             _%exprs138736%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138709138723%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138709138723%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138676138694%_))
                          (let ((_%hd138681138741%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138676138694%_)))
                                (_%tl138682138743%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138676138694%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138681138741%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138682138743%_))
                                    (let ((_%hd138683138746%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138682138743%_)))
                                          (_%tl138684138748%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138682138743%_))))
                                      (let ((_%test138751%_
                                             _%hd138683138746%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138684138748%_))
                                            (let ((_%hd138685138753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138684138748%_)))
                                                  (_%tl138686138755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138684138748%_))))
                                              (let ((_%expr138758%_
                                                     _%hd138685138753%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138686138755%_))
                                                    (let ((_%hd138687138760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138686138755%_)))
                                                          (_%tl138688138762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138686138755%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138687138760%_))
                                                          (let ((_%hd138689138765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138687138760%_)))
                        (_%tl138690138767%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138687138760%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138689138765%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138690138767%_))
                            (let ((_%hd138691138770%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138690138767%_)))
                                  (_%tl138692138772%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138690138767%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138691138770%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138692138772%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138688138762%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138680138738%_
                                             _%expr138758%_
                                             _%test138751%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138678138702%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138678138702%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138678138702%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138678138702%_)))
                        (let () (declare (not safe)) (_%else138678138702%_))))
                  (let () (declare (not safe)) (_%else138678138702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138678138702%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138678138702%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138678138702%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138678138702%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138678138702%_)))))))
          (let* ((_%g138592138613%_
                  (lambda (_%g138593138610%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138593138610%_))))
                 (_%g138591138672%_
                  (lambda (_%g138593138616%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138593138616%_))
                        (let ((_%e138599138618%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138593138616%_))))
                          (let ((_%hd138598138621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138599138618%_)))
                                (_%tl138597138623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138599138618%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138597138623%_))
                                (let ((_%e138602138626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138597138623%_))))
                                  (let ((_%hd138601138629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138602138626%_)))
                                        (_%tl138600138631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138602138626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138600138631%_))
                                        (let ((_%e138605138634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138600138631%_))))
                                          (let ((_%hd138604138637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138605138634%_)))
                                                (_%tl138603138639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138605138634%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138603138639%_))
                                                (let ((_%e138608138642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138603138639%_))))
                                                  (let ((_%hd138607138645%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138608138642%_)))
                                                        (_%tl138606138647%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138608138642%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138606138647%_))
                                                        ((lambda (_%L138650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138651%_
                          _%L138652%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145895
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138587%_
                                             _%L138652%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138587%_
                                                   _%L138651%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138587%_
                                                         _%L138650%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138590%_ __tmp145895))
                       (cons 'if
                             (cons (let ((__tmp145896
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138587%_
                                               _%L138652%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145896
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138587%_
                                            _%L138651%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138587%_
                                                  _%L138650%_))
                                               '()))))))
                 _%hd138607138645%_
                 _%hd138604138637%_
                 _%hd138601138629%_)
                (let ()
                  (declare (not safe))
                  (_%g138592138613%_ _%g138593138616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138592138613%_
                                                   _%g138593138616%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138592138613%_
                                           _%g138593138616%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138592138613%_ _%g138593138616%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138592138613%_ _%g138593138616%_))))))
            (declare (not safe))
            (_%g138591138672%_ _%stx138588%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138535%_ _%stx138536%_)
        (let* ((_%g138538138551%_
                (lambda (_%g138539138548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138539138548%_))))
               (_%g138537138584%_
                (lambda (_%g138539138554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138539138554%_))
                      (let ((_%e138543138556%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138539138554%_))))
                        (let ((_%hd138542138559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138543138556%_)))
                              (_%tl138541138561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138543138556%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138541138561%_))
                              (let ((_%e138546138564%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138541138561%_))))
                                (let ((_%hd138545138567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138546138564%_)))
                                      (_%tl138544138569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138546138564%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138544138569%_))
                                      ((lambda (_%L138572%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138572%_)))
                                       _%hd138545138567%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g138538138551%_
                                         _%g138539138554%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138538138551%_ _%g138539138554%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138538138551%_ _%g138539138554%_))))))
          (declare (not safe))
          (_%g138537138584%_ _%stx138536%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self138467%_ _%stx138468%_)
        (let* ((_%g138470138487%_
                (lambda (_%g138471138484%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138471138484%_))))
               (_%g138469138532%_
                (lambda (_%g138471138490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138471138490%_))
                      (let ((_%e138476138492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138471138490%_))))
                        (let ((_%hd138475138495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138476138492%_)))
                              (_%tl138474138497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138476138492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138474138497%_))
                              (let ((_%e138479138500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138474138497%_))))
                                (let ((_%hd138478138503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138479138500%_)))
                                      (_%tl138477138505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138479138500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138477138505%_))
                                      (let ((_%e138482138508%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138477138505%_))))
                                        (let ((_%hd138481138511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138482138508%_)))
                                              (_%tl138480138513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138482138508%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138480138513%_))
                                              ((lambda (_%L138516%_
                                                        _%L138517%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L138517%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138467%_ _%L138516%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138481138511%_
                                               _%hd138478138503%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138470138487%_
                                                 _%g138471138490%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138470138487%_
                                         _%g138471138490%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138470138487%_ _%g138471138490%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138470138487%_ _%g138471138490%_))))))
          (declare (not safe))
          (_%g138469138532%_ _%stx138468%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138278%_ _%stx138279%_)
        (let* ((_%g138281138298%_
                (lambda (_%g138282138295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138282138295%_))))
               (_%g138280138464%_
                (lambda (_%g138282138301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138282138301%_))
                      (let ((_%e138287138303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138282138301%_))))
                        (let ((_%hd138286138306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138287138303%_)))
                              (_%tl138285138308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138287138303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138285138308%_))
                              (let ((_%e138290138311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138285138308%_))))
                                (let ((_%hd138289138314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138290138311%_)))
                                      (_%tl138288138316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138290138311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138288138316%_))
                                      (let ((_%e138293138319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138288138316%_))))
                                        (let ((_%hd138292138322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138293138319%_)))
                                              (_%tl138291138324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138293138319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138291138324%_))
                                              ((lambda (_%L138327%_
                                                        _%L138328%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138278%_ _%L138327%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138278%_ _%L138328%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138343%_ ((_%rest138346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138328%_ (cons _%L138327%_ '())))
                                (_%bind138348%_ '())
                                (_%args138349%_ '()))
               (let* ((_%rest138350138358%_ _%rest138346%_)
                      (_%else138352138366%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138348%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138349%_)
                                                 '()))))))
                      (_%K138354138452%_
                       (lambda (_%rest138369%_ _%e138370%_)
                         (let* ((_%__stx145383145384%_ _%e138370%_)
                                (_%g138375138393%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145383145384%_)))))
                           (let ((_%__kont145385145386%_
                                  (lambda ()
                                    (let ((__tmp145897
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138370%_))
                                                 _%args138349%_)))
                                      (declare (not safe))
                                      (_%lp138343%_
                                       _%rest138369%_
                                       _%bind138348%_
                                       __tmp145897))))
                                 (_%__kont145387145388%_
                                  (lambda ()
                                    (let ((__tmp145898
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138370%_))
                                                 _%args138349%_)))
                                      (declare (not safe))
                                      (_%lp138343%_
                                       _%rest138369%_
                                       _%bind138348%_
                                       __tmp145898))))
                                 (_%__kont145389145390%_
                                  (lambda ()
                                    (let ((_%tmp138400%_
                                           (let ((__tmp145899
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145899))))
                                      (let ((__tmp145901
                                             (cons (cons _%tmp138400%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138370%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138348%_))
                                            (__tmp145900
                                             (cons _%tmp138400%_
                                                   _%args138349%_)))
                                        (declare (not safe))
                                        (_%lp138343%_
                                         _%rest138369%_
                                         __tmp145901
                                         __tmp145900))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145383145384%_))
                                 (let ((_%e138379138431%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145383145384%_))))
                                   (let ((_%tl138377138436%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138379138431%_)))
                                         (_%hd138378138434%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138379138431%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138378138434%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138378138434%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138377138436%_))
                                                 (let ((_%e138382138439%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138377138436%_))))
                                                   (let ((_%tl138380138444%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138382138439%_)))
                                                         (_%hd138381138442%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138382138439%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138380138444%_))
                                                         (_%__kont145385145386%_)
                                                         (_%__kont145389145390%_))))
                                                 (_%__kont145389145390%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138378138434%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138377138436%_))
                                                     (let ((_%e138388138416%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138377138436%_))))
                                                       (let ((_%tl138386138421%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138388138416%_)))
                     (_%hd138387138419%_
                      (let () (declare (not safe)) (##car _%e138388138416%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138386138421%_))
                     (_%__kont145387145388%_)
                     (_%__kont145389145390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145389145390%_))
                                                 (_%__kont145389145390%_)))
                                         (_%__kont145389145390%_))))
                                 (_%__kont145389145390%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138350138358%_))
                     (let ((_%hd138355138455%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138350138358%_)))
                           (_%tl138356138457%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138350138358%_))))
                       (let* ((_%e138460%_ _%hd138355138455%_)
                              (_%rest138462%_ _%tl138356138457%_))
                         (declare (not safe))
                         (_%K138354138452%_ _%rest138462%_ _%e138460%_)))
                     (let () (declare (not safe)) (_%else138352138366%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138292138322%_
                                               _%hd138289138314%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138281138298%_
                                                 _%g138282138301%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138281138298%_
                                         _%g138282138301%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138281138298%_ _%g138282138301%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138281138298%_ _%g138282138301%_))))))
          (declare (not safe))
          (_%g138280138464%_ _%stx138279%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self138089%_ _%stx138090%_)
        (let* ((_%g138092138109%_
                (lambda (_%g138093138106%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138093138106%_))))
               (_%g138091138275%_
                (lambda (_%g138093138112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138093138112%_))
                      (let ((_%e138098138114%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138093138112%_))))
                        (let ((_%hd138097138117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138098138114%_)))
                              (_%tl138096138119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138098138114%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138096138119%_))
                              (let ((_%e138101138122%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138096138119%_))))
                                (let ((_%hd138100138125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138101138122%_)))
                                      (_%tl138099138127%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138101138122%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138099138127%_))
                                      (let ((_%e138104138130%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138099138127%_))))
                                        (let ((_%hd138103138133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138104138130%_)))
                                              (_%tl138102138135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138104138130%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138102138135%_))
                                              ((lambda (_%L138138%_
                                                        _%L138139%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138089%_ _%L138138%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138089%_ _%L138139%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138154%_ ((_%rest138157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138139%_ (cons _%L138138%_ '())))
                                (_%bind138159%_ '())
                                (_%args138160%_ '()))
               (let* ((_%rest138161138169%_ _%rest138157%_)
                      (_%else138163138177%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138159%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args138160%_)
                                                 '()))))))
                      (_%K138165138263%_
                       (lambda (_%rest138180%_ _%e138181%_)
                         (let* ((_%__stx145429145430%_ _%e138181%_)
                                (_%g138186138204%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145429145430%_)))))
                           (let ((_%__kont145431145432%_
                                  (lambda ()
                                    (let ((__tmp145902
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138181%_))
                                                 _%args138160%_)))
                                      (declare (not safe))
                                      (_%lp138154%_
                                       _%rest138180%_
                                       _%bind138159%_
                                       __tmp145902))))
                                 (_%__kont145433145434%_
                                  (lambda ()
                                    (let ((__tmp145903
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e138181%_))
                                                 _%args138160%_)))
                                      (declare (not safe))
                                      (_%lp138154%_
                                       _%rest138180%_
                                       _%bind138159%_
                                       __tmp145903))))
                                 (_%__kont145435145436%_
                                  (lambda ()
                                    (let ((_%tmp138211%_
                                           (let ((__tmp145904
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145904))))
                                      (let ((__tmp145906
                                             (cons (cons _%tmp138211%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e138181%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind138159%_))
                                            (__tmp145905
                                             (cons _%tmp138211%_
                                                   _%args138160%_)))
                                        (declare (not safe))
                                        (_%lp138154%_
                                         _%rest138180%_
                                         __tmp145906
                                         __tmp145905))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145429145430%_))
                                 (let ((_%e138190138242%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145429145430%_))))
                                   (let ((_%tl138188138247%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138190138242%_)))
                                         (_%hd138189138245%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138190138242%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138189138245%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138189138245%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138188138247%_))
                                                 (let ((_%e138193138250%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138188138247%_))))
                                                   (let ((_%tl138191138255%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138193138250%_)))
                                                         (_%hd138192138253%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138193138250%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138191138255%_))
                                                         (_%__kont145431145432%_)
                                                         (_%__kont145435145436%_))))
                                                 (_%__kont145435145436%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138189138245%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138188138247%_))
                                                     (let ((_%e138199138227%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138188138247%_))))
                                                       (let ((_%tl138197138232%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138199138227%_)))
                     (_%hd138198138230%_
                      (let () (declare (not safe)) (##car _%e138199138227%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138197138232%_))
                     (_%__kont145433145434%_)
                     (_%__kont145435145436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145435145436%_))
                                                 (_%__kont145435145436%_)))
                                         (_%__kont145435145436%_))))
                                 (_%__kont145435145436%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138161138169%_))
                     (let ((_%hd138166138266%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138161138169%_)))
                           (_%tl138167138268%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138161138169%_))))
                       (let* ((_%e138271%_ _%hd138166138266%_)
                              (_%rest138273%_ _%tl138167138268%_))
                         (declare (not safe))
                         (_%K138165138263%_ _%rest138273%_ _%e138271%_)))
                     (let () (declare (not safe)) (_%else138163138177%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138103138133%_
                                               _%hd138100138125%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g138092138109%_
                                                 _%g138093138112%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138092138109%_
                                         _%g138093138112%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138092138109%_ _%g138093138112%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138092138109%_ _%g138093138112%_))))))
          (declare (not safe))
          (_%g138091138275%_ _%stx138090%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self138005%_ _%stx138006%_)
        (let* ((_%g138008138029%_
                (lambda (_%g138009138026%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138009138026%_))))
               (_%g138007138086%_
                (lambda (_%g138009138032%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138009138032%_))
                      (let ((_%e138015138034%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138009138032%_))))
                        (let ((_%hd138014138037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138015138034%_)))
                              (_%tl138013138039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138015138034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138013138039%_))
                              (let ((_%e138018138042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138013138039%_))))
                                (let ((_%hd138017138045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138018138042%_)))
                                      (_%tl138016138047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138018138042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138016138047%_))
                                      (let ((_%e138021138050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138016138047%_))))
                                        (let ((_%hd138020138053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138021138050%_)))
                                              (_%tl138019138055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138021138050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138019138055%_))
                                              (let ((_%e138024138058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138019138055%_))))
                                                (let ((_%hd138023138061%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138024138058%_)))
                                                      (_%tl138022138063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138024138058%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138022138063%_))
                                                      ((lambda (_%L138066%_
                                                                _%L138067%_
                                                                _%L138068%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self138005%_ _%L138066%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self138005%_
                                      _%L138067%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138005%_
                                            _%L138068%_))
                                         (cons ''#f '()))))))
               _%hd138023138061%_
               _%hd138020138053%_
               _%hd138017138045%_)
              (let ()
                (declare (not safe))
                (_%g138008138029%_ _%g138009138032%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g138008138029%_
                                                 _%g138009138032%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g138008138029%_
                                         _%g138009138032%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138008138029%_ _%g138009138032%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138008138029%_ _%g138009138032%_))))))
          (declare (not safe))
          (_%g138007138086%_ _%stx138006%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137905%_ _%stx137906%_)
        (let* ((_%g137908137933%_
                (lambda (_%g137909137930%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137909137930%_))))
               (_%g137907138002%_
                (lambda (_%g137909137936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137909137936%_))
                      (let ((_%e137916137938%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137909137936%_))))
                        (let ((_%hd137915137941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137916137938%_)))
                              (_%tl137914137943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137916137938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137914137943%_))
                              (let ((_%e137919137946%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137914137943%_))))
                                (let ((_%hd137918137949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137919137946%_)))
                                      (_%tl137917137951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137919137946%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137917137951%_))
                                      (let ((_%e137922137954%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137917137951%_))))
                                        (let ((_%hd137921137957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137922137954%_)))
                                              (_%tl137920137959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137922137954%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137920137959%_))
                                              (let ((_%e137925137962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137920137959%_))))
                                                (let ((_%hd137924137965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137925137962%_)))
                                                      (_%tl137923137967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137925137962%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137923137967%_))
                                                      (let ((_%e137928137970%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137923137967%_))))
                (let ((_%hd137927137973%_
                       (let () (declare (not safe)) (##car _%e137928137970%_)))
                      (_%tl137926137975%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137928137970%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137926137975%_))
                      ((lambda (_%L137978%_
                                _%L137979%_
                                _%L137980%_
                                _%L137981%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137905%_
                                        _%L137979%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137905%_
                                              _%L137978%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137905%_
                                                    _%L137980%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137905%_
                                                          _%L137981%_))
                                                       (cons ''#f '())))))))
                       _%hd137927137973%_
                       _%hd137924137965%_
                       _%hd137921137957%_
                       _%hd137918137949%_)
                      (let ()
                        (declare (not safe))
                        (_%g137908137933%_ _%g137909137936%_)))))
              (let ()
                (declare (not safe))
                (_%g137908137933%_ _%g137909137936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137908137933%_
                                                 _%g137909137936%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137908137933%_
                                         _%g137909137936%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137908137933%_ _%g137909137936%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137908137933%_ _%g137909137936%_))))))
          (declare (not safe))
          (_%g137907138002%_ _%stx137906%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137821%_ _%stx137822%_)
        (let* ((_%g137824137845%_
                (lambda (_%g137825137842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137825137842%_))))
               (_%g137823137902%_
                (lambda (_%g137825137848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137825137848%_))
                      (let ((_%e137831137850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137825137848%_))))
                        (let ((_%hd137830137853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137831137850%_)))
                              (_%tl137829137855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137831137850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137829137855%_))
                              (let ((_%e137834137858%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137829137855%_))))
                                (let ((_%hd137833137861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137834137858%_)))
                                      (_%tl137832137863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137834137858%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137832137863%_))
                                      (let ((_%e137837137866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137832137863%_))))
                                        (let ((_%hd137836137869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137837137866%_)))
                                              (_%tl137835137871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137837137866%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137835137871%_))
                                              (let ((_%e137840137874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137835137871%_))))
                                                (let ((_%hd137839137877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137840137874%_)))
                                                      (_%tl137838137879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137840137874%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137838137879%_))
                                                      ((lambda (_%L137882%_
                                                                _%L137883%_
                                                                _%L137884%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137821%_ _%L137882%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137821%_
                                      _%L137883%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137821%_
                                            _%L137884%_))
                                         (cons ''#f '()))))))
               _%hd137839137877%_
               _%hd137836137869%_
               _%hd137833137861%_)
              (let ()
                (declare (not safe))
                (_%g137824137845%_ _%g137825137848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137824137845%_
                                                 _%g137825137848%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137824137845%_
                                         _%g137825137848%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137824137845%_ _%g137825137848%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137824137845%_ _%g137825137848%_))))))
          (declare (not safe))
          (_%g137823137902%_ _%stx137822%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137721%_ _%stx137722%_)
        (let* ((_%g137724137749%_
                (lambda (_%g137725137746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137725137746%_))))
               (_%g137723137818%_
                (lambda (_%g137725137752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137725137752%_))
                      (let ((_%e137732137754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137725137752%_))))
                        (let ((_%hd137731137757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137732137754%_)))
                              (_%tl137730137759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137732137754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137730137759%_))
                              (let ((_%e137735137762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137730137759%_))))
                                (let ((_%hd137734137765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137735137762%_)))
                                      (_%tl137733137767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137735137762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137733137767%_))
                                      (let ((_%e137738137770%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137733137767%_))))
                                        (let ((_%hd137737137773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137738137770%_)))
                                              (_%tl137736137775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137738137770%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137736137775%_))
                                              (let ((_%e137741137778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137736137775%_))))
                                                (let ((_%hd137740137781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137741137778%_)))
                                                      (_%tl137739137783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137741137778%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137739137783%_))
                                                      (let ((_%e137744137786%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137739137783%_))))
                (let ((_%hd137743137789%_
                       (let () (declare (not safe)) (##car _%e137744137786%_)))
                      (_%tl137742137791%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137744137786%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137742137791%_))
                      ((lambda (_%L137794%_
                                _%L137795%_
                                _%L137796%_
                                _%L137797%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137721%_
                                        _%L137795%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137721%_
                                              _%L137794%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137721%_
                                                    _%L137796%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137721%_
                                                          _%L137797%_))
                                                       (cons ''#f '())))))))
                       _%hd137743137789%_
                       _%hd137740137781%_
                       _%hd137737137773%_
                       _%hd137734137765%_)
                      (let ()
                        (declare (not safe))
                        (_%g137724137749%_ _%g137725137752%_)))))
              (let ()
                (declare (not safe))
                (_%g137724137749%_ _%g137725137752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137724137749%_
                                                 _%g137725137752%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137724137749%_
                                         _%g137725137752%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137724137749%_ _%g137725137752%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137724137749%_ _%g137725137752%_))))))
          (declare (not safe))
          (_%g137723137818%_ _%stx137722%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self137516%_ _%stx137517%_)
        (let* ((_%g137519137540%_
                (lambda (_%g137520137537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137520137537%_))))
               (_%g137518137718%_
                (lambda (_%g137520137543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137520137543%_))
                      (let ((_%e137526137545%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137520137543%_))))
                        (let ((_%hd137525137548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137526137545%_)))
                              (_%tl137524137550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137526137545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137524137550%_))
                              (let ((_%e137529137553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137524137550%_))))
                                (let ((_%hd137528137556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137529137553%_)))
                                      (_%tl137527137558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137529137553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137527137558%_))
                                      (let ((_%e137532137561%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137527137558%_))))
                                        (let ((_%hd137531137564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137532137561%_)))
                                              (_%tl137530137566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137532137561%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137530137566%_))
                                              (let ((_%e137535137569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137530137566%_))))
                                                (let ((_%hd137534137572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137535137569%_)))
                                                      (_%tl137533137574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137535137569%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137533137574%_))
                                                      ((lambda (_%L137577%_
                                                                _%L137578%_
                                                                _%L137579%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self137516%_
                                    _%L137577%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self137516%_
                                          _%L137578%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137597%_ ((_%rest137600%_
                                         (cons _%L137578%_
                                               (cons _%L137577%_ '())))
                                        (_%bind137602%_ '())
                                        (_%args137603%_ '()))
                       (let* ((_%rest137604137612%_ _%rest137600%_)
                              (_%else137606137620%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137602%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145907 _%args137603%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137608137706%_
                               (lambda (_%rest137623%_ _%e137624%_)
                                 (let* ((_%__stx145475145476%_ _%e137624%_)
                                        (_%g137629137647%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145475145476%_)))))
                                   (let ((_%__kont145477145478%_
                                          (lambda ()
                                            (let ((__tmp145908
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137624%_))
                                                         _%args137603%_)))
                                              (declare (not safe))
                                              (_%lp137597%_
                                               _%rest137623%_
                                               _%bind137602%_
                                               __tmp145908))))
                                         (_%__kont145479145480%_
                                          (lambda ()
                                            (let ((__tmp145909
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137624%_))
                                                         _%args137603%_)))
                                              (declare (not safe))
                                              (_%lp137597%_
                                               _%rest137623%_
                                               _%bind137602%_
                                               __tmp145909))))
                                         (_%__kont145481145482%_
                                          (lambda ()
                                            (let ((_%tmp137654%_
                                                   (let ((__tmp145910
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145910))))
                                              (let ((__tmp145912
                                                     (cons (cons _%tmp137654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137624%_))
                               '()))
                   _%bind137602%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145911
                                                     (cons _%tmp137654%_
                                                           _%args137603%_)))
                                                (declare (not safe))
                                                (_%lp137597%_
                                                 _%rest137623%_
                                                 __tmp145912
                                                 __tmp145911))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145475145476%_))
                                         (let ((_%e137633137685%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145475145476%_))))
                                           (let ((_%tl137631137690%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137633137685%_)))
                                                 (_%hd137632137688%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137633137685%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137632137688%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137632137688%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137631137690%_))
                                                         (let ((_%e137636137693%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137631137690%_))))
                   (let ((_%tl137634137698%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137636137693%_)))
                         (_%hd137635137696%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137636137693%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137634137698%_))
                         (_%__kont145477145478%_)
                         (_%__kont145481145482%_))))
                 (_%__kont145481145482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137632137688%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137631137690%_))
                     (let ((_%e137642137670%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137631137690%_))))
                       (let ((_%tl137640137675%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137642137670%_)))
                             (_%hd137641137673%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137642137670%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137640137675%_))
                             (_%__kont145479145480%_)
                             (_%__kont145481145482%_))))
                     (_%__kont145481145482%_))
                 (_%__kont145481145482%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145481145482%_))))
                                         (_%__kont145481145482%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137604137612%_))
                             (let ((_%hd137609137709%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137604137612%_)))
                                   (_%tl137610137711%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137604137612%_))))
                               (let* ((_%e137714%_ _%hd137609137709%_)
                                      (_%rest137716%_ _%tl137610137711%_))
                                 (declare (not safe))
                                 (_%K137608137706%_
                                  _%rest137716%_
                                  _%e137714%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137606137620%_)))))))
               _%hd137534137572%_
               _%hd137531137564%_
               _%hd137528137556%_)
              (let ()
                (declare (not safe))
                (_%g137519137540%_ _%g137520137543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137519137540%_
                                                 _%g137520137543%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137519137540%_
                                         _%g137520137543%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137519137540%_ _%g137520137543%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137519137540%_ _%g137520137543%_))))))
          (declare (not safe))
          (_%g137518137718%_ _%stx137517%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137295%_ _%stx137296%_)
        (let* ((_%g137298137323%_
                (lambda (_%g137299137320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137299137320%_))))
               (_%g137297137513%_
                (lambda (_%g137299137326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137299137326%_))
                      (let ((_%e137306137328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137299137326%_))))
                        (let ((_%hd137305137331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137306137328%_)))
                              (_%tl137304137333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137306137328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137304137333%_))
                              (let ((_%e137309137336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137304137333%_))))
                                (let ((_%hd137308137339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137309137336%_)))
                                      (_%tl137307137341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137309137336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137307137341%_))
                                      (let ((_%e137312137344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137307137341%_))))
                                        (let ((_%hd137311137347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137312137344%_)))
                                              (_%tl137310137349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137312137344%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137310137349%_))
                                              (let ((_%e137315137352%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137310137349%_))))
                                                (let ((_%hd137314137355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137315137352%_)))
                                                      (_%tl137313137357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137315137352%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137313137357%_))
                                                      (let ((_%e137318137360%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137313137357%_))))
                (let ((_%hd137317137363%_
                       (let () (declare (not safe)) (##car _%e137318137360%_)))
                      (_%tl137316137365%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137318137360%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137316137365%_))
                      ((lambda (_%L137368%_
                                _%L137369%_
                                _%L137370%_
                                _%L137371%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137295%_
                                            _%L137369%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137295%_
                                                  _%L137368%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137295%_
                                                        _%L137370%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp137392%_ ((_%rest137395%_
                                                 (cons _%L137370%_
                                                       (cons _%L137368%_
                                                             (cons _%L137369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind137397%_ '())
                                                (_%args137398%_ '()))
                               (let* ((_%rest137399137407%_ _%rest137395%_)
                                      (_%else137401137415%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind137397%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145913 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145913 _%args137398%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K137403137501%_
                                       (lambda (_%rest137418%_ _%e137419%_)
                                         (let* ((_%__stx145521145522%_
                                                 _%e137419%_)
                                                (_%g137424137442%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx145521145522%_)))))
                                           (let ((_%__kont145523145524%_
                                                  (lambda ()
                                                    (let ((__tmp145914
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137419%_))
                         _%args137398%_)))
              (declare (not safe))
              (_%lp137392%_ _%rest137418%_ _%bind137397%_ __tmp145914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145525145526%_
                                                  (lambda ()
                                                    (let ((__tmp145915
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137419%_))
                         _%args137398%_)))
              (declare (not safe))
              (_%lp137392%_ _%rest137418%_ _%bind137397%_ __tmp145915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145527145528%_
                                                  (lambda ()
                                                    (let ((_%tmp137449%_
                                                           (let ((__tmp145916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145916))))
              (let ((__tmp145918
                     (cons (cons _%tmp137449%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e137419%_))
                                       '()))
                           _%bind137397%_))
                    (__tmp145917 (cons _%tmp137449%_ _%args137398%_)))
                (declare (not safe))
                (_%lp137392%_ _%rest137418%_ __tmp145918 __tmp145917))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx145521145522%_))
                                                 (let ((_%e137428137480%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx145521145522%_))))
                                                   (let ((_%tl137426137485%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137428137480%_)))
                                                         (_%hd137427137483%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137428137480%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd137427137483%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd137427137483%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl137426137485%_))
                         (let ((_%e137431137488%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl137426137485%_))))
                           (let ((_%tl137429137493%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e137431137488%_)))
                                 (_%hd137430137491%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e137431137488%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl137429137493%_))
                                 (_%__kont145523145524%_)
                                 (_%__kont145527145528%_))))
                         (_%__kont145527145528%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd137427137483%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl137426137485%_))
                             (let ((_%e137437137465%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl137426137485%_))))
                               (let ((_%tl137435137470%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137437137465%_)))
                                     (_%hd137436137468%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137437137465%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl137435137470%_))
                                     (_%__kont145525145526%_)
                                     (_%__kont145527145528%_))))
                             (_%__kont145527145528%_))
                         (_%__kont145527145528%_)))
                 (_%__kont145527145528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145527145528%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest137399137407%_))
                                     (let ((_%hd137404137504%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest137399137407%_)))
                                           (_%tl137405137506%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest137399137407%_))))
                                       (let* ((_%e137509%_ _%hd137404137504%_)
                                              (_%rest137511%_
                                               _%tl137405137506%_))
                                         (declare (not safe))
                                         (_%K137403137501%_
                                          _%rest137511%_
                                          _%e137509%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else137401137415%_)))))))
                       _%hd137317137363%_
                       _%hd137314137355%_
                       _%hd137311137347%_
                       _%hd137308137339%_)
                      (let ()
                        (declare (not safe))
                        (_%g137298137323%_ _%g137299137326%_)))))
              (let ()
                (declare (not safe))
                (_%g137298137323%_ _%g137299137326%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137298137323%_
                                                 _%g137299137326%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137298137323%_
                                         _%g137299137326%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137298137323%_ _%g137299137326%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137298137323%_ _%g137299137326%_))))))
          (declare (not safe))
          (_%g137297137513%_ _%stx137296%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self137134%_ _%stx137135%_)
        (letrec ((_%import-set-template137137%_
                  (lambda (_%in137240%_ _%phi137241%_)
                    (let ((_%iphi137243%_
                           (fx+ _%phi137241%_
                                (##direct-structure-ref
                                 _%in137240%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137244%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137240%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137246%_ ((_%rest137248%_ _%imports137244%_)
                                         (_%r137249%_ '()))
                        (let* ((_%rest137250137258%_ _%rest137248%_)
                               (_%else137252137266%_ (lambda () _%r137249%_))
                               (_%K137254137283%_
                                (lambda (_%rest137269%_ _%in137270%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137270%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi137243%_))
                                            (let ((__tmp145919
                                                   (cons _%in137270%_
                                                         _%r137249%_)))
                                              (declare (not safe))
                                              (_%lp137246%_
                                               _%rest137269%_
                                               __tmp145919))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp137246%_
                                               _%rest137269%_
                                               _%r137249%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137270%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137274%_
                                                 (fx+ _%phi137241%_
                                                      (##direct-structure-ref
                                                       _%in137270%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137274%_))
                                                (let ((__tmp145920
                                                       (cons (##direct-structure-ref
                                                              (##direct-structure-ref
                                                               _%in137270%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '1
                                                              gx#module-export::t
                                                              '#f)
                                                             _%r137249%_)))
                                                  (declare (not safe))
                                                  (_%lp137246%_
                                                   _%rest137269%_
                                                   __tmp145920))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp137246%_
                                                   _%rest137269%_
                                                   _%r137249%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137270%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137277%_
                                                     (fx+ _%iphi137243%_
                                                          (##direct-structure-ref
                                                           _%in137270%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137277%_))
                                                    (let ((__tmp145921
                                                           (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137270%_
                          '1
                          gx#import-set::t
                          '#f)
                         _%r137249%_)))
              (declare (not safe))
              (_%lp137246%_ _%rest137269%_ __tmp145921))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137277%_))
                                                        (let ((__tmp145922
                                                               (let ((__tmp145923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_%import-set-template137137%_
                                 _%in137270%_
                                 _%iphi137243%_))))
                         (declare (not safe))
                         (__foldl1 cons _%r137249%_ __tmp145923))))
                  (declare (not safe))
                  (_%lp137246%_ _%rest137269%_ __tmp145922))
                (let ()
                  (declare (not safe))
                  (_%lp137246%_ _%rest137269%_ _%r137249%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%lp137246%_
                                                 _%rest137269%_
                                                 _%r137249%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137250137258%_))
                              (let ((_%hd137255137286%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137250137258%_)))
                                    (_%tl137256137288%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137250137258%_))))
                                (let* ((_%in137291%_ _%hd137255137286%_)
                                       (_%rest137293%_ _%tl137256137288%_))
                                  (declare (not safe))
                                  (_%K137254137283%_
                                   _%rest137293%_
                                   _%in137291%_)))
                              (let ()
                                (declare (not safe))
                                (_%else137252137266%_)))))))))
          (let* ((_%g137139137149%_
                  (lambda (_%g137140137146%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137140137146%_))))
                 (_%g137138137237%_
                  (lambda (_%g137140137152%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137140137152%_))
                        (let ((_%e137144137154%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137140137152%_))))
                          (let ((_%hd137143137157%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137144137154%_)))
                                (_%tl137142137159%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137144137154%_))))
                            ((lambda (_%L137162%_)
                               (let ((_%ht137173%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp137175%_ ((_%rest137177%_
                                                     _%L137162%_)
                                                    (_%loads137178%_ '()))
                                   (letrec ((_%K137180%_
                                             (lambda (_%ctx137230%_
                                                      _%rest137231%_)
                                               (let ((_%id137233%_
                                                      (##structure-ref
                                                       _%ctx137230%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht137173%_
                                                        _%id137233%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp137175%_
                                                        _%rest137231%_
                                                        _%loads137178%_))
                                                     (let ((_%rt137235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137233%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht137173%_
                                                          _%id137233%_
                                                          _%rt137235%_))
                                                       (let ((__tmp145924
                                                              (cons _%rt137235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads137178%_)))
                 (declare (not safe))
                 (_%lp137175%_ _%rest137231%_ __tmp145924))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest137181137189%_
                                             _%rest137177%_)
                                            (_%else137183137201%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145926
                                                            (lambda (_%g137196137198%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137196137198%_)))
                   (__tmp145925 (reverse _%loads137178%_)))
               (declare (not safe))
               (##map __tmp145926 __tmp145925)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K137185137218%_
                                             (lambda (_%rest137204%_
                                                      _%in137205%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137205%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%K137180%_
                                                      _%in137205%_
                                                      _%rest137204%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137205%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in137205%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145927
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in137205%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K137180%_ __tmp145927 _%rest137204%_))
                     (let ()
                       (declare (not safe))
                       (_%lp137175%_ _%rest137204%_ _%loads137178%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137205%_
                      'gx#import-set::t))
                   (let ((_%phi137210%_
                          (##direct-structure-ref
                           _%in137205%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137210%_)
                         (let ((__tmp145928
                                (##direct-structure-ref
                                 _%in137205%_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_%K137180%_ __tmp145928 _%rest137204%_))
                         (if (fxpositive? _%phi137210%_)
                             (let ()
                               (let* ((_%deps137214%_
                                       (let ()
                                         (declare (not safe))
                                         (_%import-set-template137137%_
                                          _%in137205%_
                                          '0)))
                                      (__tmp145929
                                       (let ()
                                         (declare (not safe))
                                         (__foldl1
                                          cons
                                          _%rest137204%_
                                          _%deps137214%_))))
                                 (declare (not safe))
                                 (_%lp137175%_ __tmp145929 _%loads137178%_)))
                             (let ()
                               (declare (not safe))
                               (_%lp137175%_
                                _%rest137204%_
                                _%loads137178%_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx137135%_
                      _%in137205%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest137181137189%_))
                                           (let ((_%hd137186137221%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest137181137189%_)))
                                                 (_%tl137187137223%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest137181137189%_))))
                                             (let* ((_%in137226%_
                                                     _%hd137186137221%_)
                                                    (_%rest137228%_
                                                     _%tl137187137223%_))
                                               (declare (not safe))
                                               (_%K137185137218%_
                                                _%rest137228%_
                                                _%in137226%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else137183137201%_))))))))
                             _%tl137142137159%_)))
                        (let ()
                          (declare (not safe))
                          (_%g137139137149%_ _%g137140137152%_))))))
            (declare (not safe))
            (_%g137138137237%_ _%stx137135%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136947%_ _%stx136948%_)
        (letrec ((_%add-lift!136950%_
                  (lambda (_%expr137132%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr137132%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136951%_
                  (lambda (_%id137129%_ _%marks137130%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id137129%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks137130%_
                                                        '()))))))))
                 (_%generate-simple136952%_
                  (lambda (_%stxq137124%_)
                    (let ((_%gid137126%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid137127%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq137124%_))))
                      (let ((__tmp145930
                             (cons 'define
                                   (cons _%gid137126%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136951%_
                                                  _%qid137127%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136950%_ __tmp145930))
                      (let ((__tmp145931
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145931 _%stxq137124%_ _%gid137126%_))
                      _%gid137126%_)))
                 (_%generate-serialized136953%_
                  (lambda (_%stxq137114%_ _%marks137115%_)
                    (let* ((_%mark-refs137117%_
                            (map _%generate-mark136954%_ _%marks137115%_))
                           (_%gid137119%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid137121%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq137114%_))))
                      (let ((__tmp145932
                             (cons 'define
                                   (cons _%gid137119%_
                                         (cons (let ((__tmp145933
                                                      (cons 'list
                                                            _%mark-refs137117%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136951%_
                                                  _%qid137121%_
                                                  __tmp145933))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136950%_ __tmp145932))
                      (let ((__tmp145934
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145934 _%stxq137114%_ _%gid137119%_))
                      _%gid137119%_)))
                 (_%generate-mark136954%_
                  (lambda (_%mark137099%_)
                    (let ((_%$e137101%_
                           (let ((__tmp145935
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145935 _%mark137099%_))))
                      (if _%$e137101%_
                          (values _%$e137101%_)
                          (let ()
                            (let* ((_%gid137105%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr137107%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136955%_
                                       _%mark137099%_)))
                                   (_%ctx137109%_
                                    (let ((__tmp145936
                                           (##structure-ref
                                            _%mark137099%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145936)))
                                   (_%ctx-ref137111%_
                                    (if (eq? _%ctx137109%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136956%_ _%ctx137109%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145937
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145937
                                 _%mark137099%_
                                 _%gid137105%_))
                              (let ((__tmp145938
                                     (cons 'define
                                           (cons _%gid137105%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr137107%_ '()))
                           (cons _%ctx-ref137111%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136950%_ __tmp145938))
                              _%gid137105%_))))))
                 (_%serialize-mark136955%_
                  (lambda (_%mark137046%_)
                    (letrec ((_%quote-e137048%_
                              (lambda (_%sym137097%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym137097%_))
                                    _%sym137097%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym137097%_))))))
                      (let* ((_%mark137049137058%_ _%mark137046%_)
                             (_%E137051137062%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark137049137058%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K137052137074%_
                              (lambda (_%trace137065%_
                                       _%phi137066%_
                                       _%ctx137067%_
                                       _%subst137068%_)
                                (let ((_%subs137070%_
                                       (if _%subst137068%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst137068%_))
                                           '())))
                                  (cons _%phi137066%_
                                        (map (lambda (_%pair137072%_)
                                               (cons (let ((__tmp145939
                                                            (car _%pair137072%_)))
                                                       (declare (not safe))
                                                       (_%quote-e137048%_
                                                        __tmp145939))
                                                     (let ((__tmp145940
                                                            (cdr _%pair137072%_)))
                                                       (declare (not safe))
                                                       (_%quote-e137048%_
                                                        __tmp145940))))
                                             _%subs137070%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark137049137058%_
                               'gx#expander-mark::t))
                            (let* ((_%e137053137077%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137049137058%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst137080%_ _%e137053137077%_)
                                   (_%e137054137082%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137049137058%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx137085%_ _%e137054137082%_)
                                   (_%e137055137087%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137049137058%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi137090%_ _%e137055137087%_)
                                   (_%e137056137092%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137049137058%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace137095%_ _%e137056137092%_))
                              (declare (not safe))
                              (_%K137052137074%_
                               _%trace137095%_
                               _%phi137090%_
                               _%ctx137085%_
                               _%subst137080%_))
                            (let ()
                              (declare (not safe))
                              (_%E137051137062%_)))))))
                 (_%context-ref136956%_
                  (lambda (_%ctx137033%_)
                    (if (let ((__tmp145941
                               (##structure-ref
                                _%ctx137033%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145941
                           'gx#module-context::t))
                        (let ((_%ctx-ref137035%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136958%_ _%ctx137033%_)))
                              (_%ctx-origin137036%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136957%_ _%ctx137033%_)))
                              (_%origin137037%_
                               (let ((__tmp145942
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136957%_ __tmp145942))))
                          (if (eq? _%origin137037%_ _%ctx-origin137036%_)
                              (let ((_%ref137039%_
                                     (let ((__tmp145943
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136958%_
                                        __tmp145943))))
                                (let _%lp137041%_ ((_%ref137043%_
                                                    (cdr _%ref137039%_))
                                                   (_%ctx-ref137044%_
                                                    (cdr _%ctx-ref137035%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref137043%_))
                                           (eq? (car _%ref137043%_)
                                                (car _%ctx-ref137044%_)))
                                      (let ((__tmp145945 (cdr _%ref137043%_))
                                            (__tmp145944
                                             (cdr _%ctx-ref137044%_)))
                                        (declare (not safe))
                                        (_%lp137041%_ __tmp145945 __tmp145944))
                                      (cons '#f _%ctx-ref137044%_))))
                              _%ctx-ref137035%_))
                        (let ((__tmp145946
                               (##structure-ref
                                _%ctx137033%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145946)))))
                 (_%context-ref-origin136957%_
                  (lambda (_%ctx137025%_)
                    (let _%lp137027%_ ((_%ctx137029%_ _%ctx137025%_))
                      (let ((_%super137031%_
                             (##structure-ref
                              _%ctx137029%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137031%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp137027%_ _%super137031%_))
                            _%ctx137029%_)))))
                 (_%context-ref-nested136958%_
                  (lambda (_%ctx137016%_)
                    (let _%lp137018%_ ((_%ctx137020%_ _%ctx137016%_)
                                       (_%r137021%_ '()))
                      (let ((_%super137023%_
                             (##structure-ref
                              _%ctx137020%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137023%_
                               'gx#module-context::t))
                            (let ((__tmp145947
                                   (cons (car (##structure-ref
                                               _%ctx137020%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r137021%_)))
                              (declare (not safe))
                              (_%lp137018%_ _%super137023%_ __tmp145947))
                            (cons (let ((__tmp145948
                                         (##structure-ref
                                          _%ctx137020%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145948))
                                  _%r137021%_)))))))
          (let* ((_%g136960136973%_
                  (lambda (_%g136961136970%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136961136970%_))))
                 (_%g136959137013%_
                  (lambda (_%g136961136976%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136961136976%_))
                        (let ((_%e136965136978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136961136976%_))))
                          (let ((_%hd136964136981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136965136978%_)))
                                (_%tl136963136983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136965136978%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136963136983%_))
                                (let ((_%e136968136986%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136963136983%_))))
                                  (let ((_%hd136967136989%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136968136986%_)))
                                        (_%tl136966136991%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136968136986%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136966136991%_))
                                        ((lambda (_%L136994%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136994%_))
                                               (let ((_%$e137007%_
                                                      (let ((__tmp145949
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145949 _%L136994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e137007%_
                                                     (values _%$e137007%_)
                                                     (let ((_%marks137011%_
                                                            (##direct-structure-ref
                                                             _%L136994%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%marks137011%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-simple136952%_
                                                              _%L136994%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-serialized136953%_
                                                              _%L136994%_
                                                              _%marks137011%_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136994%_))))
                                         _%hd136967136989%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136960136973%_
                                           _%g136961136976%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136960136973%_ _%g136961136976%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136960136973%_ _%g136961136976%_))))))
            (declare (not safe))
            (_%g136959137013%_ _%stx136948%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136879%_ _%stx136880%_)
        (let* ((_%g136882136899%_
                (lambda (_%g136883136896%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136883136896%_))))
               (_%g136881136944%_
                (lambda (_%g136883136902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136883136902%_))
                      (let ((_%e136888136904%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136883136902%_))))
                        (let ((_%hd136887136907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136888136904%_)))
                              (_%tl136886136909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136888136904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136886136909%_))
                              (let ((_%e136891136912%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136886136909%_))))
                                (let ((_%hd136890136915%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136891136912%_)))
                                      (_%tl136889136917%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136891136912%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136889136917%_))
                                      (let ((_%e136894136920%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136889136917%_))))
                                        (let ((_%hd136893136923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136894136920%_)))
                                              (_%tl136892136925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136894136920%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136892136925%_))
                                              ((lambda (_%L136928%_
                                                        _%L136929%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136929%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136879%_ _%L136928%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136893136923%_
                                               _%hd136890136915%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136882136899%_
                                                 _%g136883136902%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136882136899%_
                                         _%g136883136902%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136882136899%_ _%g136883136902%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136882136899%_ _%g136883136902%_))))))
          (declare (not safe))
          (_%g136881136944%_ _%stx136880%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136828%_ _%stx136829%_)
        (let* ((_%g136831136841%_
                (lambda (_%g136832136838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136832136838%_))))
               (_%g136830136876%_
                (lambda (_%g136832136844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136832136844%_))
                      (let ((_%e136836136846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136832136844%_))))
                        (let ((_%hd136835136849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136836136846%_)))
                              (_%tl136834136851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136836136846%_))))
                          ((lambda (_%L136854%_)
                             (let* ((_%c-body136868%_
                                     (map (lambda (_%g136863136865%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136828%_
                                               _%g136863136865%_)))
                                          _%L136854%_))
                                    (_%c-body136873%_
                                     (let ((__tmp145950
                                            (lambda (_%$obj136870%_)
                                              (let ((__tmp145951
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136870%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145951)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145950
                                        _%c-body136868%_))))
                               (cons '%#begin _%c-body136873%_)))
                           _%tl136834136851%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136831136841%_ _%g136832136844%_))))))
          (declare (not safe))
          (_%g136830136876%_ _%stx136829%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136733%_ _%stx136734%_)
        (let* ((_%g136736136746%_
                (lambda (_%g136737136743%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136737136743%_))))
               (_%g136735136825%_
                (lambda (_%g136737136749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136737136749%_))
                      (let ((_%e136741136751%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136737136749%_))))
                        (let ((_%hd136740136754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136741136751%_)))
                              (_%tl136739136756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136741136751%_))))
                          ((lambda (_%L136759%_)
                             (let* ((_%phi136769%_
                                     (let ((__tmp145952
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145952 '1)))
                                    (_%block136771%_
                                     (let ((__tmp145953
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136733%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145953
                                        _%phi136769%_)))
                                    (_%compiled136774%_
                                     (let ((__tmp145954
                                            (lambda ()
                                              (let ((__tmp145956
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136733%_
                                                        'state)))
                                                    (__tmp145955
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136759%_)))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi__%
                                                 '#f
                                                 __tmp145956
                                                 __tmp145955)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145954
                                        gx#current-expander-phi
                                        _%phi136769%_))))
                               (let* ((_%g136777136787%_
                                       (lambda (_%g136778136784%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136778136784%_))))
                                      (_%g136776136822%_
                                       (lambda (_%g136778136790%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136778136790%_))
                                             (let ((_%e136782136792%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136778136790%_))))
                                               (let ((_%hd136781136795%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136782136792%_)))
                                                     (_%tl136780136797%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136782136792%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136781136795%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136781136795%_))
                                                         ((lambda (_%L136800%_)
                                                            (let ((_%c-body136817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136814%_)
                                     (let ((__tmp145957
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136814%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145957)))
                                   _%L136800%_)))
                      (if _%block136771%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136817%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136817%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136817%_))))))
                  _%tl136780136797%_)
                 (let ()
                   (declare (not safe))
                   (_%g136777136787%_ _%g136778136790%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136777136787%_
                                                        _%g136778136790%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136777136787%_
                                                _%g136778136790%_))))))
                                 (declare (not safe))
                                 (_%g136776136822%_ _%compiled136774%_))))
                           _%tl136739136756%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136736136746%_ _%g136737136749%_))))))
          (declare (not safe))
          (_%g136735136825%_ _%stx136734%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136664%_ _%stx136665%_)
        (let ((__tmp145958
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136664%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145958))
        (let* ((_%g136667136681%_
                (lambda (_%g136668136678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136668136678%_))))
               (_%g136666136730%_
                (lambda (_%g136668136684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136668136684%_))
                      (let ((_%e136673136686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136668136684%_))))
                        (let ((_%hd136672136689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136673136686%_)))
                              (_%tl136671136691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136673136686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136671136691%_))
                              (let ((_%e136676136694%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136671136691%_))))
                                (let ((_%hd136675136697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136676136694%_)))
                                      (_%tl136674136699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136676136694%_))))
                                  ((lambda (_%L136702%_ _%L136703%_)
                                     (let ((_%key136716%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136703%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136716%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136665%_
                                              _%L136703%_
                                              _%key136716%_)))
                                       (let* ((_%ctx136718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136703%_)))
                                              (_%code136721%_
                                               (let ((__tmp145959
                                                      (lambda ()
                                                        (let ((__tmp145960
                                                               (##structure-ref
                                                                _%ctx136718%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136664%_
                                                           __tmp145960)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145959
                                                  gx#current-expander-context
                                                  _%ctx136718%_)))
                                              (_%rt136723%_
                                               (let ((__tmp145961
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145961
                                                  _%ctx136718%_)))
                                              (_%loader136725%_
                                               (if _%rt136723%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136723%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136703%_))))
                                         (let ((__tmp145962
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136664%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145962))
                                         (cons '%#module
                                               (cons _%modid136727%_
                                                     (cons _%code136721%_
                                                           _%loader136725%_))))))
                                   _%tl136674136699%_
                                   _%hd136675136697%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136667136681%_ _%g136668136684%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136667136681%_ _%g136668136684%_))))))
          (declare (not safe))
          (_%g136666136730%_ _%stx136665%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136651%_ _%context-chain136652%_)
        (let _%lp136654%_ ((_%ctx136656%_ _%ctx136651%_) (_%path136657%_ '()))
          (let ((_%super136659%_
                 (##structure-ref _%ctx136656%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136659%_ _%context-chain136652%_)
                (let ((__tmp145963
                       (let ((__tmp145964
                              (car (##structure-ref
                                    _%ctx136656%_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp145964 _%path136657%_))))
                  (declare (not safe))
                  (cons '#f __tmp145963))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136659%_
                       'gx#module-context::t))
                    (let ((__tmp145965
                           (cons (car (##structure-ref
                                       _%ctx136656%_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _%path136657%_)))
                      (declare (not safe))
                      (_%lp136654%_ _%super136659%_ __tmp145965))
                    (let ()
                      (cons (let ((__tmp145966
                                   (##structure-ref
                                    _%ctx136656%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145966))
                            _%path136657%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136644%_ ((_%ctx136646%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136647%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136646%_ 'gx#module-context::t))
              (let ((__tmp145968
                     (##structure-ref _%ctx136646%_ '3 gx#phi-context::t '#f))
                    (__tmp145967 (cons _%ctx136646%_ _%r136647%_)))
                (declare (not safe))
                (_%lp136644%_ __tmp145968 __tmp145967))
              (let () _%r136647%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self136407%_ _%stx136408%_)
        (letrec* ((_%context-chain136410%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec136411%_
                   (lambda (_%in136580%_)
                     (let* ((_%in136581136593%_ _%in136580%_)
                            (_%E136583136597%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136581136593%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136584136607%_
                             (lambda (_%phi136600%_
                                      _%name136601%_
                                      _%src-name136602%_
                                      _%src-phi136603%_
                                      _%src-key136604%_
                                      _%src-ctx136605%_)
                               (cons _%phi136600%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136601%_))
                                           (cons _%src-phi136603%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136602%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136581136593%_
                              'gx#module-import::t))
                           (let ((_%e136585136610%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136581136593%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136585136610%_
                                    'gx#module-export::t))
                                 (let* ((_%e136588136613%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136585136610%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136616%_ _%e136588136613%_)
                                        (_%e136589136618%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136585136610%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136621%_ _%e136589136618%_)
                                        (_%e136590136623%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136585136610%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136626%_ _%e136590136623%_)
                                        (_%e136591136628%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136585136610%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136631%_ _%e136591136628%_)
                                        (_%e136586136633%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136581136593%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136636%_ _%e136586136633%_)
                                        (_%e136587136638%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136581136593%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136641%_ _%e136587136638%_))
                                   (declare (not safe))
                                   (_%K136584136607%_
                                    _%phi136641%_
                                    _%name136636%_
                                    _%src-name136631%_
                                    _%src-phi136626%_
                                    _%src-key136621%_
                                    _%src-ctx136616%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136583136597%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136583136597%_))))))
                  (_%make-import-path136412%_
                   (lambda (_%ctx136578%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136578%_
                        _%context-chain136410%_))))
                  (_%make-import-spec-in136413%_
                   (lambda (_%ctx136575%_ _%in136576%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path136412%_ _%ctx136575%_))
                                 (reverse _%in136576%_))))))
          (let ((__tmp145969
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self136407%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145969))
          (let* ((_%g136415136425%_
                  (lambda (_%g136416136422%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136416136422%_))))
                 (_%g136414136572%_
                  (lambda (_%g136416136428%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136416136428%_))
                        (let ((_%e136420136430%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136416136428%_))))
                          (let ((_%hd136419136433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136420136430%_)))
                                (_%tl136418136435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136420136430%_))))
                            ((lambda (_%L136438%_)
                               (let _%lp136449%_ ((_%rest136451%_ _%L136438%_)
                                                  (_%current-src136452%_ '#f)
                                                  (_%current-in136453%_ '())
                                                  (_%r136454%_ '()))
                                 (let* ((_%rest136455136463%_ _%rest136451%_)
                                        (_%else136457136473%_
                                         (lambda ()
                                           (let ((_%r136471%_
                                                  (if _%current-src136452%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in136413%_
                                                               _%current-src136452%_
                                                               _%current-in136453%_))
                                                            _%r136454%_)
                                                      _%r136454%_)))
                                             (cons '%#import
                                                   (reverse _%r136471%_)))))
                                        (_%K136459136560%_
                                         (lambda (_%rest136476%_ _%in136477%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in136477%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in136479136486%_
                                                         _%in136477%_)
                                                        (_%E136481136490%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in136479136486%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K136482136498%_
                 (lambda (_%src-ctx136493%_)
                   (if (eq? _%current-src136452%_ _%src-ctx136493%_)
                       (let ((__tmp145970
                              (cons (let ()
                                      (declare (not safe))
                                      (_%make-import-spec136411%_
                                       _%in136477%_))
                                    _%current-in136453%_)))
                         (declare (not safe))
                         (_%lp136449%_
                          _%rest136476%_
                          _%current-src136452%_
                          __tmp145970
                          _%r136454%_))
                       (if _%current-src136452%_
                           (let ((__tmp145972
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136411%_
                                           _%in136477%_))
                                        '()))
                                 (__tmp145971
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec-in136413%_
                                           _%current-src136452%_
                                           _%current-in136453%_))
                                        _%r136454%_)))
                             (declare (not safe))
                             (_%lp136449%_
                              _%rest136476%_
                              _%src-ctx136493%_
                              __tmp145972
                              __tmp145971))
                           (let ((__tmp145973
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec136411%_
                                           _%in136477%_))
                                        '())))
                             (declare (not safe))
                             (_%lp136449%_
                              _%rest136476%_
                              _%src-ctx136493%_
                              __tmp145973
                              _%r136454%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136479136486%_
                                                          'gx#module-import::t))
                                                       (let ((_%e136483136501%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in136479136486%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e136483136501%_
                        'gx#module-export::t))
                     (let* ((_%e136484136504%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e136483136501%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx136507%_ _%e136484136504%_))
                       (declare (not safe))
                       (_%K136482136498%_ _%src-ctx136507%_))
                     (let () (declare (not safe)) (_%E136481136490%_))))
               (let () (declare (not safe)) (_%E136481136490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in136477%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi136510%_
                                                             (##direct-structure-ref
                                                              _%in136477%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src136512%_
                                                             (##direct-structure-ref
                                                              _%in136477%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in136552%_
                                                             (let* ((_%g136513136522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path136412%_ _%src136512%_)))
                            (_%E136516136526%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g136513136522%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K136518136542%_
                              (lambda (_%path136540%_) _%path136540%_))
                             (_%K136517136532%_
                              (lambda (_%path136530%_)
                                (cons 'in: _%path136530%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g136513136522%_))
                             (let ((_%tl136520136547%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g136513136522%_)))
                                   (_%hd136519136545%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g136513136522%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl136520136547%_))
                                   (let ((_%path136550%_ _%hd136519136545%_))
                                     (declare (not safe))
                                     (_%K136518136542%_ _%path136550%_))
                                   (let ((_%path136535%_ _%g136513136522%_))
                                     (declare (not safe))
                                     (_%K136517136532%_ _%path136535%_))))
                             (let ((_%path136535%_ _%g136513136522%_))
                               (declare (not safe))
                               (_%K136517136532%_ _%path136535%_))))))
                    (_%r136554%_
                     (if _%current-src136452%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in136413%_
                                  _%current-src136452%_
                                  _%current-in136453%_))
                               _%r136454%_)
                         _%r136454%_))
                    (__tmp145974
                     (cons (if (fxzero? _%phi136510%_)
                               _%src-in136552%_
                               (cons 'phi:
                                     (cons _%phi136510%_
                                           (cons _%src-in136552%_ '()))))
                           _%r136554%_)))
               (declare (not safe))
               (_%lp136449%_ _%rest136476%_ '#f '() __tmp145974)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in136477%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r136558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src136452%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in136413%_
                                      _%current-src136452%_
                                      _%current-in136453%_))
                                   _%r136454%_)
                             _%r136454%_))
                        (__tmp145975
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path136412%_
                                        _%in136477%_)))
                               _%r136558%_)))
                   (declare (not safe))
                   (_%lp136449%_ _%rest136476%_ '#f '() __tmp145975)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136455136463%_))
                                       (let ((_%hd136460136563%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136455136463%_)))
                                             (_%tl136461136565%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136455136463%_))))
                                         (let* ((_%in136568%_
                                                 _%hd136460136563%_)
                                                (_%rest136570%_
                                                 _%tl136461136565%_))
                                           (declare (not safe))
                                           (_%K136459136560%_
                                            _%rest136570%_
                                            _%in136568%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136457136473%_))))))
                             _%tl136418136435%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136415136425%_ _%g136416136428%_))))))
            (declare (not safe))
            (_%g136414136572%_ _%stx136408%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136217%_ _%stx136218%_)
        (letrec* ((_%context-chain136220%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path136221%_
                   (lambda (_%ctx136405%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136405%_
                        _%context-chain136220%_)))))
          (let* ((_%g136223136233%_
                  (lambda (_%g136224136230%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136224136230%_))))
                 (_%g136222136402%_
                  (lambda (_%g136224136236%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136224136236%_))
                        (let ((_%e136228136238%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136224136236%_))))
                          (let ((_%hd136227136241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136228136238%_)))
                                (_%tl136226136243%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136228136238%_))))
                            ((lambda (_%L136246%_)
                               (let _%lp136257%_ ((_%rest136259%_ _%L136246%_)
                                                  (_%r136260%_ '()))
                                 (let* ((_%rest136261136269%_ _%rest136259%_)
                                        (_%else136263136277%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136260%_))))
                                        (_%K136265136390%_
                                         (lambda (_%rest136280%_ _%out136281%_)
                                           (let* ((_%out136282136295%_
                                                   _%out136281%_)
                                                  (_%E136285136299%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136282136295%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136289136369%_
                                                    (lambda (_%name136365%_
                                                             _%phi136366%_
                                                             _%key136367%_)
                                                      (let ((__tmp145976
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi136366%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key136367%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name136365%_))
                                                   '()))))
                           _%r136260%_)))
                (declare (not safe))
                (_%lp136257%_ _%rest136280%_ __tmp145976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136286136349%_
                                                    (lambda (_%phi136303%_
                                                             _%src136304%_)
                                                      (let* ((_%out136344%_
                                                              (if _%src136304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136305136314%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path136221%_
                                                 _%src136304%_)))
                                             (_%E136308136318%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136305136314%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136310136334%_
                                               (lambda (_%path136332%_)
                                                 _%path136332%_))
                                              (_%K136309136324%_
                                               (lambda (_%path136322%_)
                                                 (cons 'in: _%path136322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136305136314%_))
                                              (let ((_%tl136312136339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136305136314%_)))
                                                    (_%hd136311136337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136305136314%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136312136339%_))
                                                    (let ((_%path136342%_
                                                           _%hd136311136337%_))
                                                      (declare (not safe))
                                                      (_%K136310136334%_
                                                       _%path136342%_))
                                                    (let ((_%path136327%_
                                                           _%g136305136314%_))
                                                      (declare (not safe))
                                                      (_%K136309136324%_
                                                       _%path136327%_))))
                                              (let ((_%path136327%_
                                                     _%g136305136314%_))
                                                (declare (not safe))
                                                (_%K136309136324%_
                                                 _%path136327%_)))))
                                      '()))
                          '#t))
                     (_%out136346%_
                      (if (fxzero? _%phi136303%_)
                          _%out136344%_
                          (cons 'phi:
                                (cons _%phi136303%_
                                      (cons _%out136344%_ '())))))
                     (__tmp145977 (cons _%out136346%_ _%r136260%_)))
                (declare (not safe))
                (_%lp136257%_ _%rest136280%_ __tmp145977)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136284136362%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136282136295%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136287136352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136282136295%_
                               '1
                               '#f
                               '#f)))
                           (_%e136288136357%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136282136295%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136355%_ _%e136287136352%_)
                            (_%phi136360%_ _%e136288136357%_))
                        (let ()
                          (declare (not safe))
                          (_%K136286136349%_ _%phi136360%_ _%src136355%_))))
                    (let () (declare (not safe)) (_%E136285136299%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136282136295%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136290136372%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136282136295%_
                        '1
                        '#f
                        '#f)))
                    (_%e136291136375%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136282136295%_
                        '2
                        '#f
                        '#f)))
                    (_%e136292136380%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136282136295%_
                        '3
                        '#f
                        '#f)))
                    (_%e136293136385%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136282136295%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key136378%_ _%e136291136375%_)
                     (_%phi136383%_ _%e136292136380%_)
                     (_%name136388%_ _%e136293136385%_))
                 (let ()
                   (declare (not safe))
                   (_%K136289136369%_
                    _%name136388%_
                    _%phi136383%_
                    _%key136378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match136284136362%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136261136269%_))
                                       (let ((_%hd136266136393%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136261136269%_)))
                                             (_%tl136267136395%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136261136269%_))))
                                         (let* ((_%out136398%_
                                                 _%hd136266136393%_)
                                                (_%rest136400%_
                                                 _%tl136267136395%_))
                                           (declare (not safe))
                                           (_%K136265136390%_
                                            _%rest136400%_
                                            _%out136398%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else136263136277%_))))))
                             _%tl136226136243%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136223136233%_ _%g136224136236%_))))))
            (declare (not safe))
            (_%g136222136402%_ _%stx136218%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self136178%_ _%stx136179%_)
        (let ((__tmp145978
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136178%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145978))
        (let* ((_%g136181136191%_
                (lambda (_%g136182136188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136182136188%_))))
               (_%g136180136214%_
                (lambda (_%g136182136194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136182136194%_))
                      (let ((_%e136186136196%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136182136194%_))))
                        (let ((_%hd136185136199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136186136196%_)))
                              (_%tl136184136201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136186136196%_))))
                          ((lambda (_%L136204%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136204%_)))
                           _%tl136184136201%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136181136191%_ _%g136182136194%_))))))
          (declare (not safe))
          (_%g136180136214%_ _%stx136179%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self136049%_ _%stx136050%_)
        (letrec ((_%generate1136052%_
                  (lambda (_%id136173%_ _%eid136174%_)
                    (let ((_%eid136176%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid136174%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid136176%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx136050%_
                             _%eid136176%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id136173%_))
                            (cons _%eid136176%_ '()))))))
          (let* ((_%g136054136082%_
                  (lambda (_%g136055136079%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136055136079%_))))
                 (_%g136053136170%_
                  (lambda (_%g136055136085%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136055136085%_))
                        (let ((_%e136060136087%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136055136085%_))))
                          (let ((_%hd136059136090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136060136087%_)))
                                (_%tl136058136092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136060136087%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl136058136092%_))
                                (let ((_g145979_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl136058136092%_
                                          '0))))
                                  (begin
                                    (let ((_g145980_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145979_)
                                                 (##vector-length _g145979_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145980_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145980_)))
                                    (let ((_%target136061136095%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145979_ 0)))
                                          (_%tl136063136097%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145979_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136063136097%_))
                                          (letrec ((_%loop136064136100%_
                                                    (lambda (_%hd136062136103%_
                                                             _%eid136068136105%_
                                                             _%id136069136107%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd136062136103%_))
                                                          (let ((_%e136065136110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd136062136103%_))))
                    (let ((_%lp-hd136066136113%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136065136110%_)))
                          (_%lp-tl136067136115%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136065136110%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd136066136113%_))
                          (let ((_%e136074136118%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd136066136113%_))))
                            (let ((_%hd136073136121%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136074136118%_)))
                                  (_%tl136072136123%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136074136118%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl136072136123%_))
                                  (let ((_%e136077136126%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl136072136123%_))))
                                    (let ((_%hd136076136129%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136077136126%_)))
                                          (_%tl136075136131%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136077136126%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136075136131%_))
                                          (let ((__tmp145982
                                                 (cons _%hd136076136129%_
                                                       _%eid136068136105%_))
                                                (__tmp145981
                                                 (cons _%hd136073136121%_
                                                       _%id136069136107%_)))
                                            (declare (not safe))
                                            (_%loop136064136100%_
                                             _%lp-tl136067136115%_
                                             __tmp145982
                                             __tmp145981))
                                          (let ()
                                            (declare (not safe))
                                            (_%g136054136082%_
                                             _%g136055136085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g136054136082%_ _%g136055136085%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g136054136082%_ _%g136055136085%_)))))
                  (let ((_%eid136070136134%_ (reverse _%eid136068136105%_))
                        (_%id136071136136%_ (reverse _%id136069136107%_)))
                    ((lambda (_%L136139%_ _%L136140%_)
                       (cons '%#extern
                             (map _%generate1136052%_
                                  (let ((__tmp145983
                                         (lambda (_%g136155136158%_
                                                  _%g136156136160%_)
                                           (cons _%g136155136158%_
                                                 _%g136156136160%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145983 '() _%L136140%_))
                                  (let ((__tmp145984
                                         (lambda (_%g136162136165%_
                                                  _%g136163136167%_)
                                           (cons _%g136162136165%_
                                                 _%g136163136167%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145984 '() _%L136139%_)))))
                     _%eid136070136134%_
                     _%id136071136136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop136064136100%_
                                               _%target136061136095%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g136054136082%_
                                             _%g136055136085%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136054136082%_ _%g136055136085%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136054136082%_ _%g136055136085%_))))))
            (declare (not safe))
            (_%g136053136170%_ _%stx136050%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135839%_ _%stx135840%_)
        (letrec ((_%generate1135842%_
                  (lambda (_%id136044%_)
                    (let ((_%eid136046%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id136044%_)))
                          (_%ident136047%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id136044%_))))
                      (cons '%#define-runtime
                            (cons _%ident136047%_ (cons _%eid136046%_ '()))))))
                 (_%generate*135843%_
                  (lambda (_%all136012%_)
                    (let* ((_%all136013136021%_ _%all136012%_)
                           (_%else136015136029%_
                            (lambda () (cons '%#begin _%all136012%_)))
                           (_%K136017136034%_
                            (lambda (_%one136032%_) _%one136032%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all136013136021%_))
                          (let ((_%hd136018136037%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all136013136021%_)))
                                (_%tl136019136039%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all136013136021%_))))
                            (let ((_%one136042%_ _%hd136018136037%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl136019136039%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K136017136034%_ _%one136042%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else136015136029%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else136015136029%_)))))))
          (let* ((_%g135845135862%_
                  (lambda (_%g135846135859%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135846135859%_))))
                 (_%g135844136009%_
                  (lambda (_%g135846135865%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135846135865%_))
                        (let ((_%e135851135867%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135846135865%_))))
                          (let ((_%hd135850135870%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135851135867%_)))
                                (_%tl135849135872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135851135867%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135849135872%_))
                                (let ((_%e135854135875%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135849135872%_))))
                                  (let ((_%hd135853135878%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135854135875%_)))
                                        (_%tl135852135880%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135854135875%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135852135880%_))
                                        (let ((_%e135857135883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135852135880%_))))
                                          (let ((_%hd135856135886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135857135883%_)))
                                                (_%tl135855135888%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135857135883%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135855135888%_))
                                                ((lambda (_%L135891%_
                                                          _%L135892%_)
                                                   (let _%lp135908%_ ((_%rest135910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135892%_)
                              (_%r135911%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145600145601%_
                                                             _%rest135910%_)
                                                            (_%g135916135933%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145600145601%_)))))
               (let ((_%__kont145602145603%_
                      (lambda (_%L135996%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135908%_ _%L135996%_ _%r135911%_))))
                     (_%__kont145604145605%_
                      (lambda (_%L135969%_ _%L135970%_)
                        (let ((__tmp145985
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135842%_ _%L135970%_))
                                     _%r135911%_)))
                          (declare (not safe))
                          (_%lp135908%_ _%L135969%_ __tmp145985))))
                     (_%__kont145606145607%_
                      (lambda (_%L135945%_)
                        (let ((__tmp145986
                               (let ((__tmp145987
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135842%_
                                               _%L135945%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145987 _%r135911%_))))
                          (declare (not safe))
                          (_%generate*135843%_ __tmp145986))))
                     (_%__kont145608145609%_
                      (lambda ()
                        (let ((__tmp145988 (reverse _%r135911%_)))
                          (declare (not safe))
                          (_%generate*135843%_ __tmp145988)))))
                 (let ((_%g135914135956%_
                        (lambda ()
                          (let ((_%L135945%_ _%__stx145600145601%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135945%_))
                                (_%__kont145606145607%_ _%L135945%_)
                                (_%__kont145608145609%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145600145601%_))
                       (let ((_%e135921135985%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145600145601%_))))
                         (let ((_%tl135919135990%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135921135985%_)))
                               (_%hd135920135988%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135921135985%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135920135988%_))
                               (let ((_%e135922135993%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135920135988%_))))
                                 (if (equal? _%e135922135993%_ '#f)
                                     (_%__kont145602145603%_
                                      _%tl135919135990%_)
                                     (_%__kont145604145605%_
                                      _%tl135919135990%_
                                      _%hd135920135988%_)))
                               (_%__kont145604145605%_
                                _%tl135919135990%_
                                _%hd135920135988%_))))
                       (let () (declare (not safe)) (_%g135914135956%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135856135886%_
                                                 _%hd135853135878%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135845135862%_
                                                   _%g135846135865%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135845135862%_
                                           _%g135846135865%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135845135862%_ _%g135846135865%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135845135862%_ _%g135846135865%_))))))
            (declare (not safe))
            (_%g135844136009%_ _%stx135840%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135736%_ _%stx135737%_)
        (let* ((_%g135739135756%_
                (lambda (_%g135740135753%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135740135753%_))))
               (_%g135738135836%_
                (lambda (_%g135740135759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135740135759%_))
                      (let ((_%e135745135761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135740135759%_))))
                        (let ((_%hd135744135764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135745135761%_)))
                              (_%tl135743135766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135745135761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135743135766%_))
                              (let ((_%e135748135769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135743135766%_))))
                                (let ((_%hd135747135772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135748135769%_)))
                                      (_%tl135746135774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135748135769%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135746135774%_))
                                      (let ((_%e135751135777%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135746135774%_))))
                                        (let ((_%hd135750135780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135751135777%_)))
                                              (_%tl135749135782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135751135777%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135749135782%_))
                                              ((lambda (_%L135785%_
                                                        _%L135786%_)
                                                 (let* ((_%eid135801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135786%_)))
                                                        (_%phi135803%_
                                                         (let ((__tmp145989
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145989 '1)))
                (_%block135805%_
                 (let ((__tmp145990
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135736%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145990 _%phi135803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135808135815%_
                                                           (lambda (_%g135809135812%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135809135812%_))))
                  (_%g135807135833%_
                   (lambda (_%g135809135818%_)
                     ((lambda (_%L135820%_)
                        (let ((__tmp145992
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self135736%_ 'state)))
                              (__tmp145991
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        '%#define-runtime))
                                     (cons _%L135820%_
                                           (cons _%L135785%_ '())))))
                          (declare (not safe))
                          (gxc#meta-state-add-phi!
                           __tmp145992
                           _%phi135803%_
                           __tmp145991)))
                      _%g135809135818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135807135833%_
                                                      _%eid135801%_))
                                                   (if _%block135805%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135786%_))
                                             (cons _%eid135801%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135786%_))
                           (cons _%eid135801%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135750135780%_
                                               _%hd135747135772%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135739135756%_
                                                 _%g135740135759%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135739135756%_
                                         _%g135740135759%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135739135756%_ _%g135740135759%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135739135756%_ _%g135740135759%_))))))
          (declare (not safe))
          (_%g135738135836%_ _%stx135737%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135668%_ _%stx135669%_)
        (let* ((_%g135671135688%_
                (lambda (_%g135672135685%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135672135685%_))))
               (_%g135670135733%_
                (lambda (_%g135672135691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135672135691%_))
                      (let ((_%e135677135693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135672135691%_))))
                        (let ((_%hd135676135696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135677135693%_)))
                              (_%tl135675135698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135677135693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135675135698%_))
                              (let ((_%e135680135701%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135675135698%_))))
                                (let ((_%hd135679135704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135680135701%_)))
                                      (_%tl135678135706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135680135701%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135678135706%_))
                                      (let ((_%e135683135709%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135678135706%_))))
                                        (let ((_%hd135682135712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135683135709%_)))
                                              (_%tl135681135714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135683135709%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135681135714%_))
                                              ((lambda (_%L135717%_
                                                        _%L135718%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135718%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135717%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135682135712%_
                                               _%hd135679135704%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135671135688%_
                                                 _%g135672135691%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135671135688%_
                                         _%g135672135691%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135671135688%_ _%g135672135691%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135671135688%_ _%g135672135691%_))))))
          (declare (not safe))
          (_%g135670135733%_ _%stx135669%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135665%_ _%stx135666%_)
        (let ((__tmp145994
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135665%_ 'state)))
              (__tmp145993
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145994 __tmp145993 _%stx135666%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135665%_ _%stx135666%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135662%_ _%stx135663%_)
        (let ((__tmp145996
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135662%_ 'state)))
              (__tmp145995
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145996 __tmp145995 _%stx135663%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145998 (list)) (__tmp145997 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145998
         '(src n open blocks)
         __tmp145997
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135659%_
        (apply make-instance gxc#meta-state::t _%$args135659%_)))
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
      (lambda (_%self135645%_ _%ctx135646%_)
        (let ((_%self135649%_ _%self135645%_))
          (if (let ((__tmp145999
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135649%_))))
                (declare (not safe))
                (##fx< '4 __tmp145999))
              (begin
                (let ((__tmp146000
                       (let ((__tmp146001
                              (##structure-ref
                               _%ctx135646%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp146001))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135649%_
                   __tmp146000
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135649%_ '1 '2 '#f '#f))
                (let ((__tmp146002
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135649%_
                   __tmp146002
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135649%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp146003
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135649%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135649%_
                       '4
                       __tmp146003))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp146005 (list)) (__tmp146004 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp146005
         '(ctx phi n code)
         __tmp146004
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135520%_
        (apply make-instance gxc#meta-state-block::t _%$args135520%_)))
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
      (lambda (_%state135479%_ _%phi135480%_)
        (let* ((_%state135481135489%_ _%state135479%_)
               (_%E135483135493%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state135481135489%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K135484135502%_
                (lambda (_%open135496%_ _%n135497%_ _%src135498%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open135496%_ _%phi135480%_))
                      '#f
                      (let ((_%block-ref135500%_
                             (let ((__tmp146006 (number->string _%n135497%_)))
                               (declare (not safe))
                               (##string-append
                                _%src135498%_
                                '"~"
                                __tmp146006))))
                        (##structure-set!
                         _%state135479%_
                         (let () (declare (not safe)) (##fx+ _%n135497%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp146007
                               (let ((__tmp146008
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp146008
                                  _%phi135480%_
                                  _%n135497%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open135496%_ _%phi135480%_ __tmp146007))
                        _%block-ref135500%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state135481135489%_
                 'gxc#meta-state::t))
              (let* ((_%e135485135505%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135481135489%_
                         '1
                         '#f
                         '#f)))
                     (_%src135508%_ _%e135485135505%_)
                     (_%e135486135510%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135481135489%_
                         '2
                         '#f
                         '#f)))
                     (_%n135513%_ _%e135486135510%_)
                     (_%e135487135515%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135481135489%_
                         '3
                         '#f
                         '#f)))
                     (_%open135518%_ _%e135487135515%_))
                (declare (not safe))
                (_%K135484135502%_ _%open135518%_ _%n135513%_ _%src135508%_))
              (let () (declare (not safe)) (_%E135483135493%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state135473%_ _%phi135474%_ _%stx135475%_)
        (let ((_%block135477%_
               (let ((__tmp146009
                      (##structure-ref
                       _%state135473%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp146009 _%phi135474%_))))
          (##structure-set!
           _%block135477%_
           (cons _%stx135475%_
                 (##structure-ref
                  _%block135477%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state135467%_)
        (##structure-set!
         _%state135467%_
         (let ((__tmp146012
                (lambda (_%_135469%_ _%block135470%_ _%r135471%_)
                  (cons _%block135470%_ _%r135471%_)))
               (__tmp146011
                (##structure-ref _%state135467%_ '4 gxc#meta-state::t '#f))
               (__tmp146010
                (##structure-ref _%state135467%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp146012 __tmp146011 __tmp146010))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state135467%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state135419%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state135419%_))
        (let ((__tmp146014
               (lambda (_%block135421%_ _%r135422%_)
                 (let* ((_%block135423135432%_ _%block135421%_)
                        (_%E135425135436%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block135423135432%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K135426135444%_
                         (lambda (_%code135439%_
                                  _%n135440%_
                                  _%phi135441%_
                                  _%ctx135442%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code135439%_))
                               _%r135422%_
                               (cons (cons _%ctx135442%_
                                           (cons _%phi135441%_
                                                 (cons _%n135440%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code135439%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r135422%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block135423135432%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e135427135447%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135423135432%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx135450%_ _%e135427135447%_)
                              (_%e135428135452%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135423135432%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi135455%_ _%e135428135452%_)
                              (_%e135429135457%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135423135432%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n135460%_ _%e135429135457%_)
                              (_%e135430135462%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135423135432%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code135465%_ _%e135430135462%_))
                         (declare (not safe))
                         (_%K135426135444%_
                          _%code135465%_
                          _%n135460%_
                          _%phi135455%_
                          _%ctx135450%_))
                       (let () (declare (not safe)) (_%E135425135436%_))))))
              (__tmp146013
               (##structure-ref _%state135419%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp146014 '() __tmp146013))))
    (define gxc#collect-expression-refs
      (lambda (_%stx135415%_)
        (let ((_%ht135417%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs__%
             '#f
             _%ht135417%_
             _%stx135415%_))
          _%ht135417%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135358%_ _%stx135359%_)
        (let* ((_%g135361135374%_
                (lambda (_%g135362135371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135362135371%_))))
               (_%g135360135412%_
                (lambda (_%g135362135377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135362135377%_))
                      (let ((_%e135366135379%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135362135377%_))))
                        (let ((_%hd135365135382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135366135379%_)))
                              (_%tl135364135384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135366135379%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135364135384%_))
                              (let ((_%e135369135387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135364135384%_))))
                                (let ((_%hd135368135390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135369135387%_)))
                                      (_%tl135367135392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135369135387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135367135392%_))
                                      ((lambda (_%L135395%_)
                                         (let* ((_%bind135407%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L135395%_)))
                                                (_%eid135409%_
                                                 (if _%bind135407%_
                                                     (##structure-ref
                                                      _%bind135407%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L135395%_))))
                                                (__tmp146015
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135358%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp146015
                                            _%eid135409%_
                                            _%eid135409%_)))
                                       _%hd135368135390%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g135361135374%_
                                         _%g135362135377%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135361135374%_ _%g135362135377%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135361135374%_ _%g135362135377%_))))))
          (declare (not safe))
          (_%g135360135412%_ _%stx135359%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135285%_ _%stx135286%_)
        (let* ((_%g135288135305%_
                (lambda (_%g135289135302%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135289135302%_))))
               (_%g135287135355%_
                (lambda (_%g135289135308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135289135308%_))
                      (let ((_%e135294135310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135289135308%_))))
                        (let ((_%hd135293135313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135294135310%_)))
                              (_%tl135292135315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135294135310%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135292135315%_))
                              (let ((_%e135297135318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135292135315%_))))
                                (let ((_%hd135296135321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135297135318%_)))
                                      (_%tl135295135323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135297135318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135295135323%_))
                                      (let ((_%e135300135326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135295135323%_))))
                                        (let ((_%hd135299135329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135300135326%_)))
                                              (_%tl135298135331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135300135326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135298135331%_))
                                              ((lambda (_%L135334%_
                                                        _%L135335%_)
                                                 (let* ((_%bind135350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135335%_)))
                                                        (_%eid135352%_
                                                         (if _%bind135350%_
                                                             (##structure-ref
                                                              _%bind135350%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135335%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp146016
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135285%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp146016
                                                      _%eid135352%_
                                                      _%eid135352%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135285%_
                                                      _%L135334%_))))
                                               _%hd135299135329%_
                                               _%hd135296135321%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135288135305%_
                                                 _%g135289135308%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135288135305%_
                                         _%g135289135308%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135288135305%_ _%g135289135308%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135288135305%_ _%g135289135308%_))))))
          (declare (not safe))
          (_%g135287135355%_ _%stx135286%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135242%_ _%stx135243%_)
        (let* ((_%g135245135255%_
                (lambda (_%g135246135252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135246135252%_))))
               (_%g135244135282%_
                (lambda (_%g135246135258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135246135258%_))
                      (let ((_%e135250135260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135246135258%_))))
                        (let ((_%hd135249135263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135250135260%_)))
                              (_%tl135248135265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135250135260%_))))
                          ((lambda (_%L135268%_)
                             (let ((__tmp146017
                                    (lambda (_%g135277135279%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135242%_
                                         _%g135277135279%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp146017 _%L135268%_)))
                           _%tl135248135265%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135245135255%_ _%g135246135258%_))))))
          (declare (not safe))
          (_%g135244135282%_ _%stx135243%_))))
    (define gxc#count-values-single%
      (lambda (_%self135239%_ _%stx135240%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self135105%_ _%stx135106%_)
        (let* ((_%__stx145630145631%_ _%stx135106%_)
               (_%g135109135138%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145630145631%_)))))
          (let ((_%__kont145632145633%_
                 (lambda (_%L135206%_ _%L135207%_)
                   (length (let ((__tmp146018
                                  (lambda (_%g135228135231%_ _%g135229135233%_)
                                    (cons _%g135228135231%_
                                          _%g135229135233%_))))
                             (declare (not safe))
                             (__foldr1 __tmp146018 '() _%L135206%_)))))
                (_%__kont145636145637%_ (lambda () '#f)))
            (let ((_%__match145675145676%_
                   (lambda (_%e135115135150%_
                            _%hd135114135153%_
                            _%tl135113135155%_
                            _%e135118135158%_
                            _%hd135117135161%_
                            _%tl135116135163%_
                            _%e135121135166%_
                            _%hd135120135169%_
                            _%tl135119135171%_
                            _%e135124135174%_
                            _%hd135123135177%_
                            _%tl135122135179%_
                            _%__splice145634145635%_
                            _%target135125135182%_
                            _%tl135127135184%_)
                     (letrec ((_%loop135128135187%_
                               (lambda (_%hd135126135190%_
                                        _%rand135132135192%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd135126135190%_))
                                     (let ((_%e135129135195%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd135126135190%_))))
                                       (let ((_%lp-tl135131135200%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e135129135195%_)))
                                             (_%lp-hd135130135198%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e135129135195%_))))
                                         (let ((__tmp146019
                                                (cons _%lp-hd135130135198%_
                                                      _%rand135132135192%_)))
                                           (declare (not safe))
                                           (_%loop135128135187%_
                                            _%lp-tl135131135200%_
                                            __tmp146019))))
                                     (let ((_%rand135133135203%_
                                            (reverse _%rand135132135192%_)))
                                       (let ((_%L135206%_ _%rand135133135203%_)
                                             (_%L135207%_ _%hd135123135177%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135207%_
                                                'values))
                                             (_%__kont145632145633%_
                                              _%L135206%_
                                              _%L135207%_)
                                             (_%__kont145636145637%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop135128135187%_ _%target135125135182%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145630145631%_))
                  (let ((_%e135115135150%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145630145631%_))))
                    (let ((_%tl135113135155%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135115135150%_)))
                          (_%hd135114135153%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135115135150%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl135113135155%_))
                          (let ((_%e135118135158%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl135113135155%_))))
                            (let ((_%tl135116135163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135118135158%_)))
                                  (_%hd135117135161%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135118135158%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd135117135161%_))
                                  (let ((_%e135121135166%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd135117135161%_))))
                                    (let ((_%tl135119135171%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135121135166%_)))
                                          (_%hd135120135169%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135121135166%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd135120135169%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd135120135169%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl135119135171%_))
                                                  (let ((_%e135124135174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl135119135171%_))))
                                                    (let ((_%tl135122135179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e135124135174%_)))
                                                          (_%hd135123135177%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e135124135174%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl135122135179%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl135116135163%_))
                      (let ((_%__splice145634145635%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl135116135163%_
                                '0))))
                        (let ((_%tl135127135184%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145634145635%_ '1)))
                              (_%target135125135182%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145634145635%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl135127135184%_))
                              (_%__match145675145676%_
                               _%e135115135150%_
                               _%hd135114135153%_
                               _%tl135113135155%_
                               _%e135118135158%_
                               _%hd135117135161%_
                               _%tl135116135163%_
                               _%e135121135166%_
                               _%hd135120135169%_
                               _%tl135119135171%_
                               _%e135124135174%_
                               _%hd135123135177%_
                               _%tl135122135179%_
                               _%__splice145634145635%_
                               _%target135125135182%_
                               _%tl135127135184%_)
                              (_%__kont145636145637%_))))
                      (_%__kont145636145637%_))
                  (_%__kont145636145637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145636145637%_))
                                              (_%__kont145636145637%_))
                                          (_%__kont145636145637%_))))
                                  (_%__kont145636145637%_))))
                          (_%__kont145636145637%_))))
                  (_%__kont145636145637%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self135008%_ _%stx135009%_)
        (let* ((_%g135011135032%_
                (lambda (_%g135012135029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135012135029%_))))
               (_%g135010135102%_
                (lambda (_%g135012135035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135012135035%_))
                      (let ((_%e135018135037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135012135035%_))))
                        (let ((_%hd135017135040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135018135037%_)))
                              (_%tl135016135042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135018135037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135016135042%_))
                              (let ((_%e135021135045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135016135042%_))))
                                (let ((_%hd135020135048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135021135045%_)))
                                      (_%tl135019135050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135021135045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135019135050%_))
                                      (let ((_%e135024135053%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135019135050%_))))
                                        (let ((_%hd135023135056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135024135053%_)))
                                              (_%tl135022135058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135024135053%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl135022135058%_))
                                              (let ((_%e135027135061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl135022135058%_))))
                                                (let ((_%hd135026135064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e135027135061%_)))
                                                      (_%tl135025135066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e135027135061%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl135025135066%_))
                                                      ((lambda (_%L135069%_
                                                                _%L135070%_
                                                                _%L135071%_)
                                                         (let ((_%c1135088135090%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self135008%_ _%L135070%_))))
                   (if _%c1135088135090%_
                       (let* ((_%c1135093%_ _%c1135088135090%_)
                              (_%c2135094135096%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self135008%_
                                  _%L135069%_))))
                         (if _%c2135094135096%_
                             (let ((_%c2135099%_ _%c2135094135096%_))
                               (if (fx= _%c1135093%_ _%c2135099%_)
                                   _%c1135093%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd135026135064%_
               _%hd135023135056%_
               _%hd135020135048%_)
              (let ()
                (declare (not safe))
                (_%g135011135032%_ _%g135012135035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g135011135032%_
                                                 _%g135012135035%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135011135032%_
                                         _%g135012135035%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135011135032%_ _%g135012135035%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135011135032%_ _%g135012135035%_))))))
          (declare (not safe))
          (_%g135010135102%_ _%stx135009%_))))))
