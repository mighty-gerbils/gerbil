(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1771037610)
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
      (let ((__tmp214733 (list gxc#::void::t))
            (__tmp214732 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp214733
         '()
         __tmp214732
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args213347%_
        (apply make-instance gxc#::collect-bindings::t _%$args213347%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp214734
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
        (__make-atomic-promise __tmp214734)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx213339%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self213342%_
                (let ((__obj214708
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj214708))
               (__tmp214735
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213342%_ _%stx213339%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214735
           gxc#current-compile-method
           _%self213342%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp214737 (list gxc#::void::t))
            (__tmp214736 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp214737
         '(modules)
         __tmp214736
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args213336%_
        (apply make-instance gxc#::lift-modules::t _%$args213336%_)))
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
      (let ((__tmp214738
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
        (__make-atomic-promise __tmp214738)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords213311%_ _%modules213308213312%_ _%stx213313%_)
        (let ((_%modules213316%_
               (if (eq? _%modules213308213312%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules213308213312%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self213318%_
                  (let ((__obj214710
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj214710
                       _%modules213316%_
                       '1
                       '#f
                       '#f))
                    __obj214710))
                 (__tmp214739
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213318%_ _%stx213313%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214739
             gxc#current-compile-method
             _%self213318%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords213325%_ . _%args213326%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords213325%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213325%_
                  'modules:
                  absent-value))
               _%args213326%_)))
    (define gxc#apply-lift-modules
      (lambda _%args213309213332%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args213309213332%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp214741 (list)) (__tmp214740 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp214741
         '()
         __tmp214740
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args213304%_
        (apply make-instance gxc#::find-runtime-code::t _%$args213304%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp214742
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
        (__make-atomic-promise __tmp214742)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx213296%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self213299%_
                (let ((__obj214712
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj214712))
               (__tmp214743
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213299%_ _%stx213296%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214743
           gxc#current-compile-method
           _%self213299%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp214745 (list gxc#::false::t))
            (__tmp214744 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp214745
         '()
         __tmp214744
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args213293%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args213293%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp214746
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
        (__make-atomic-promise __tmp214746)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx213285%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self213288%_
                (let ((__obj214714
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj214714))
               (__tmp214747
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213288%_ _%stx213285%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214747
           gxc#current-compile-method
           _%self213288%_))))
    (define gxc#::count-values::t
      (let ((__tmp214749 (list gxc#::false-expression::t))
            (__tmp214748 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp214749
         '()
         __tmp214748
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args213282%_
        (apply make-instance gxc#::count-values::t _%$args213282%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp214750
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
        (__make-atomic-promise __tmp214750)))
    (define gxc#apply-count-values
      (lambda (_%stx213274%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self213277%_
                (let ((__obj214716
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj214716))
               (__tmp214751
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213277%_ _%stx213274%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214751
           gxc#current-compile-method
           _%self213277%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp214752 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp214752
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args213271%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args213271%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp214753
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
        (__make-atomic-promise __tmp214753)))
    (define gxc#::generate-loader::t
      (let ((__tmp214755 (list gxc#::generate-runtime-empty::t))
            (__tmp214754 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp214755
         '()
         __tmp214754
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args213267%_
        (apply make-instance gxc#::generate-loader::t _%$args213267%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp214756
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
        (__make-atomic-promise __tmp214756)))
    (define gxc#apply-generate-loader
      (lambda (_%stx213259%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self213262%_
                (let ((__obj214719
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj214719))
               (__tmp214757
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213262%_ _%stx213259%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214757
           gxc#current-compile-method
           _%self213262%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp214758 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp214758
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args213256%_
        (apply make-instance gxc#::generate-runtime::t _%$args213256%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp214759
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
        (__make-atomic-promise __tmp214759)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx213248%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self213251%_
                (let ((__obj214721
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj214721))
               (__tmp214760
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213251%_ _%stx213248%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214760
           gxc#current-compile-method
           _%self213251%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp214762 (list gxc#::generate-runtime::t))
            (__tmp214761 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp214762
         '()
         __tmp214761
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args213245%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args213245%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp214763
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
        (__make-atomic-promise __tmp214763)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx213237%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self213240%_
                (let ((__obj214723
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj214723))
               (__tmp214764
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213240%_ _%stx213237%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214764
           gxc#current-compile-method
           _%self213240%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp214765 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp214765
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args213234%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args213234%_)))
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
      (let ((__tmp214766
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
        (__make-atomic-promise __tmp214766)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords213209%_ _%table213206213210%_ _%stx213211%_)
        (let ((_%table213214%_
               (if (eq? _%table213206213210%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table213206213210%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self213216%_
                  (let ((__obj214725
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj214725
                       _%table213214%_
                       '1
                       '#f
                       '#f))
                    __obj214725))
                 (__tmp214767
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213216%_ _%stx213211%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214767
             gxc#current-compile-method
             _%self213216%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords213223%_ . _%args213224%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords213223%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213223%_
                  'table:
                  absent-value))
               _%args213224%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args213207213230%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args213207213230%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp214769 (list gxc#::void-expression::t))
            (__tmp214768 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp214769
         '(state)
         __tmp214768
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args213202%_
        (apply make-instance gxc#::generate-meta::t _%$args213202%_)))
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
      (let ((__tmp214770
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
        (__make-atomic-promise __tmp214770)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords213177%_ _%state213174213178%_ _%stx213179%_)
        (let ((_%state213182%_
               (if (eq? _%state213174213178%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state213174213178%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self213184%_
                  (let ((__obj214727
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj214727
                       _%state213182%_
                       '1
                       '#f
                       '#f))
                    __obj214727))
                 (__tmp214771
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213184%_ _%stx213179%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214771
             gxc#current-compile-method
             _%self213184%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords213191%_ . _%args213192%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords213191%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213191%_
                  'state:
                  absent-value))
               _%args213192%_)))
    (define gxc#apply-generate-meta
      (lambda _%args213175213198%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args213175213198%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp214773 (list)) (__tmp214772 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp214773
         '(state)
         __tmp214772
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args213170%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args213170%_)))
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
      (let ((__tmp214774
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
        (__make-atomic-promise __tmp214774)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords213145%_ _%state213142213146%_ _%stx213147%_)
        (let ((_%state213150%_
               (if (eq? _%state213142213146%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state213142213146%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self213152%_
                  (let ((__obj214729
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj214729
                       _%state213150%_
                       '1
                       '#f
                       '#f))
                    __obj214729))
                 (__tmp214775
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213152%_ _%stx213147%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214775
             gxc#current-compile-method
             _%self213152%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords213159%_ . _%args213160%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords213159%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213159%_
                  'state:
                  absent-value))
               _%args213160%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args213143213166%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args213143213166%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self213071%_ _%stx213072%_)
        (let* ((_%g213074213091%_
                (lambda (_%g213075213088%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213075213088%_))))
               (_%g213073213138%_
                (lambda (_%g213075213094%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213075213094%_))
                      (let ((_%e213078213096%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213075213094%_))))
                        (let ((_%hd213079213099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213078213096%_)))
                              (_%tl213080213101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213078213096%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213080213101%_))
                              (let ((_%e213081213104%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213080213101%_))))
                                (let ((_%hd213082213107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213081213104%_)))
                                      (_%tl213083213109%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213081213104%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213083213109%_))
                                      (let ((_%e213084213112%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl213083213109%_))))
                                        (let ((_%hd213085213115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213084213112%_)))
                                              (_%tl213086213117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213084213112%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213086213117%_))
                                              ((lambda (_%g213076213120%_
                                                        _%g213077213121%_)
                                                 (let ((__tmp214776
                                                        (lambda (_%bind213136%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind213136%_))
                      (gxc#add-module-binding! _%bind213136%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp214776
                                                    _%g213077213121%_)))
                                               _%hd213085213115%_
                                               _%hd213082213107%_)
                                              (_%g213074213091%_
                                               _%g213075213094%_))))
                                      (_%g213074213091%_ _%g213075213094%_))))
                              (_%g213074213091%_ _%g213075213094%_))))
                      (_%g213074213091%_ _%g213075213094%_)))))
          (_%g213073213138%_ _%stx213072%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self213003%_ _%stx213004%_)
        (let* ((_%g213006213023%_
                (lambda (_%g213007213020%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213007213020%_))))
               (_%g213005213068%_
                (lambda (_%g213007213026%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213007213026%_))
                      (let ((_%e213010213028%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g213007213026%_))))
                        (let ((_%hd213011213031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213010213028%_)))
                              (_%tl213012213033%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213010213028%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213012213033%_))
                              (let ((_%e213013213036%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl213012213033%_))))
                                (let ((_%hd213014213039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213013213036%_)))
                                      (_%tl213015213041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213013213036%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213015213041%_))
                                      (let ((_%e213016213044%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl213015213041%_))))
                                        (let ((_%hd213017213047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213016213044%_)))
                                              (_%tl213018213049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213016213044%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213018213049%_))
                                              ((lambda (_%g213008213052%_
                                                        _%g213009213053%_)
                                                 (gxc#add-module-binding!
                                                  _%g213009213053%_
                                                  '#t))
                                               _%hd213017213047%_
                                               _%hd213014213039%_)
                                              (_%g213006213023%_
                                               _%g213007213026%_))))
                                      (_%g213006213023%_ _%g213007213026%_))))
                              (_%g213006213023%_ _%g213007213026%_))))
                      (_%g213006213023%_ _%g213007213026%_)))))
          (_%g213005213068%_ _%stx213004%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self212945%_ _%stx212946%_)
        (let* ((_%g212948212962%_
                (lambda (_%g212949212959%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212949212959%_))))
               (_%g212947213000%_
                (lambda (_%g212949212965%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212949212965%_))
                      (let ((_%e212952212967%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212949212965%_))))
                        (let ((_%hd212953212970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212952212967%_)))
                              (_%tl212954212972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212952212967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212954212972%_))
                              (let ((_%e212955212975%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212954212972%_))))
                                (let ((_%hd212956212978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212955212975%_)))
                                      (_%tl212957212980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212955212975%_))))
                                  ((lambda (_%g212950212983%_
                                            _%g212951212984%_)
                                     (let ((_%ctx212997%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g212951212984%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self212945%_
                                           'modules))
                                        (cons _%ctx212997%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self212945%_
                                                        'modules)))))
                                       (let ((__tmp214777
                                              (lambda ()
                                                (let ((__tmp214778
                                                       (##structure-ref
                                                        _%ctx212997%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self212945%_
                                                   __tmp214778)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp214777
                                          gx#current-expander-context
                                          _%ctx212997%_))))
                                   _%tl212957212980%_
                                   _%hd212956212978%_)))
                              (_%g212948212962%_ _%g212949212965%_))))
                      (_%g212948212962%_ _%g212949212965%_)))))
          (_%g212947213000%_ _%stx212946%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls212899212901%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls212899212901%_
              (let ((_%decls212903%_ _%decls212899212901%_))
                (let _%lp212905%_ ((_%rest212907%_ _%decls212903%_))
                  (let* ((_%rest212908212916%_ _%rest212907%_)
                         (_%else212910212924%_ (lambda () '#f))
                         (_%K212912212933%_
                          (lambda (_%decls212927%_ _%decl212928%_)
                            (if (equal? _%decl212928%_ '(not safe))
                                '#t
                                (if (equal? _%decl212928%_ '(safe))
                                    '#f
                                    (_%lp212905%_ _%decls212927%_))))))
                    (if (pair? _%rest212908212916%_)
                        (let ((_%hd212913212936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest212908212916%_)))
                              (_%tl212914212938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest212908212916%_))))
                          (let* ((_%decl212941%_ _%hd212913212936%_)
                                 (_%decls212943%_ _%tl212914212938%_))
                            (_%K212912212933%_
                             _%decls212943%_
                             _%decl212941%_)))
                        (_%else212910212924%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id212893%_ _%syntax?212894%_)
        (let ((_%eid212896%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id212893%_))
                '1
                gx#binding::t
                '#f))
              (_%ht212897%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid212896%_))
              '#!void
              (let ((__tmp214779
                     (let ((__tmp214780
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid212896%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp214780 _%syntax?212894%_))))
                (declare (not safe))
                (hash-put! _%ht212897%_ _%eid212896%_ __tmp214779))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self212890%_ _%stx212891%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self212737%_ _%stx212738%_)
        (letrec ((_%simplify212740%_
                  (lambda (_%body212788%_)
                    (let _%lp212790%_ ((_%rest212792%_ _%body212788%_)
                                       (_%r212793%_ '()))
                      (let* ((_%rest212794212802%_ _%rest212792%_)
                             (_%else212796212810%_
                              (lambda () (reverse _%r212793%_)))
                             (_%K212798212878%_
                              (lambda (_%rest212813%_ _%hd212814%_)
                                (let* ((_%hd212815212831%_ _%hd212814%_)
                                       (_%else212819212839%_
                                        (lambda ()
                                          (_%lp212790%_
                                           _%rest212813%_
                                           (cons _%hd212814%_ _%r212793%_)))))
                                  (let ((_%K212827212868%_
                                         (lambda (_%exprs212866%_)
                                           (_%lp212790%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest212813%_
                                               _%exprs212866%_))
                                            _%r212793%_)))
                                        (_%K212822212852%_
                                         (lambda ()
                                           (if (null? _%rest212813%_)
                                               (_%lp212790%_
                                                _%rest212813%_
                                                (cons _%hd212814%_
                                                      _%r212793%_))
                                               (_%lp212790%_
                                                _%rest212813%_
                                                _%r212793%_))))
                                        (_%K212821212844%_
                                         (lambda ()
                                           (if (null? _%rest212813%_)
                                               (_%lp212790%_
                                                _%rest212813%_
                                                (cons _%hd212814%_
                                                      _%r212793%_))
                                               (_%lp212790%_
                                                _%rest212813%_
                                                _%r212793%_)))))
                                    (let ((_%try-match212818212847%_
                                           (lambda ()
                                             (if (symbol? _%hd212815212831%_)
                                                 (_%K212821212844%_)
                                                 (_%else212819212839%_)))))
                                      (if (pair? _%hd212815212831%_)
                                          (let ((_%tl212829212873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd212815212831%_)))
                                                (_%hd212828212871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd212815212831%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd212828212871%_
                                                         'begin))
                                                (let ((_%exprs212876%_
                                                       _%tl212829212873%_))
                                                  (_%K212827212868%_
                                                   _%exprs212876%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd212828212871%_
                                                             'quote))
                                                    (if (pair? _%tl212829212873%_)
                                                        (let ((_%tl212826212860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl212829212873%_))))
                  (if (null? _%tl212826212860%_)
                      (_%K212822212852%_)
                      (_%try-match212818212847%_)))
                (_%try-match212818212847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match212818212847%_))))
                                          (_%try-match212818212847%_))))))))
                        (if (pair? _%rest212794212802%_)
                            (let ((_%hd212799212881%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest212794212802%_)))
                                  (_%tl212800212883%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest212794212802%_))))
                              (let* ((_%hd212886%_ _%hd212799212881%_)
                                     (_%rest212888%_ _%tl212800212883%_))
                                (_%K212798212878%_
                                 _%rest212888%_
                                 _%hd212886%_)))
                            (_%else212796212810%_)))))))
          (let* ((_%g212742212752%_
                  (lambda (_%g212743212749%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g212743212749%_))))
                 (_%g212741212785%_
                  (lambda (_%g212743212755%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g212743212755%_))
                        (let ((_%e212745212757%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g212743212755%_))))
                          (let ((_%hd212746212760%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212745212757%_)))
                                (_%tl212747212762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212745212757%_))))
                            ((lambda (_%g212744212765%_)
                               (let* ((_%body212780%_
                                       (map (lambda (_%g212775212777%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self212737%_
                                                 _%g212775212777%_)))
                                            _%g212744212765%_))
                                      (_%body212782%_
                                       (_%simplify212740%_ _%body212780%_)))
                                 (if (let ((__tmp214781
                                            (length _%body212782%_)))
                                       (declare (not safe))
                                       (##fx= __tmp214781 '1))
                                     (car _%body212782%_)
                                     (cons 'begin _%body212782%_))))
                             _%tl212747212762%_)))
                        (_%g212742212752%_ _%g212743212755%_)))))
            (_%g212741212785%_ _%stx212738%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self212698%_ _%stx212699%_)
        (let* ((_%g212701212711%_
                (lambda (_%g212702212708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212702212708%_))))
               (_%g212700212734%_
                (lambda (_%g212702212714%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212702212714%_))
                      (let ((_%e212704212716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212702212714%_))))
                        (let ((_%hd212705212719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212704212716%_)))
                              (_%tl212706212721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212704212716%_))))
                          ((lambda (_%g212703212724%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g212703212724%_))))
                           _%tl212706212721%_)))
                      (_%g212701212711%_ _%g212702212714%_)))))
          (_%g212700212734%_ _%stx212699%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self212464%_ _%stx212465%_)
        (let* ((_%__stx213371213372%_ _%stx212465%_)
               (_%g212469212521%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213371213372%_)))))
          (let ((_%__kont213373213374%_
                 (lambda (_%g212471212680%_ _%g212472212681%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self212464%_ _%g212471212680%_))))
                (_%__kont213375213376%_
                 (lambda (_%g212482212628%_
                          _%g212483212629%_
                          _%g212484212630%_)
                   (if (let ((__tmp214782
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g212484212630%_))))
                         (declare (not safe))
                         (##memq __tmp214782 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self212464%_
                          _%g212482212628%_)))))
                (_%__kont213379213380%_
                 (lambda (_%g212506212550%_ _%g212507212551%_)
                   (let ((_%decls212566%_
                          (map gx#syntax->datum _%g212507212551%_)))
                     (let ((__tmp214785
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls212566%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self212464%_
                                                   _%g212506212550%_))
                                                '())))))
                           (__tmp214783
                            (let ((__tmp214784
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp214784 _%decls212566%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp214785
                        gxc#current-compile-decls
                        __tmp214783))))))
            (let* ((_%__match213426213427%_
                    (lambda (_%e212485212574%_
                             _%hd212486212577%_
                             _%tl212487212579%_
                             _%e212488212582%_
                             _%hd212489212585%_
                             _%tl212490212587%_
                             _%e212491212590%_
                             _%hd212492212593%_
                             _%tl212493212595%_
                             _%__splice213377213378%_
                             _%target212494212598%_
                             _%tl212496212600%_)
                      (letrec ((_%loop212497212603%_
                                (lambda (_%hd212495212606%_
                                         _%param212501212608%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd212495212606%_))
                                      (let ((_%e212498212610%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd212495212606%_))))
                                        (let ((_%lp-tl212500212615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212498212610%_)))
                                              (_%lp-hd212499212613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212498212610%_))))
                                          (_%loop212497212603%_
                                           _%lp-tl212500212615%_
                                           (cons _%lp-hd212499212613%_
                                                 _%param212501212608%_))))
                                      (let ((_%param212502212618%_
                                             (reverse _%param212501212608%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl212490212587%_))
                                            (let ((_%e212503212620%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl212490212587%_))))
                                              (let ((_%tl212505212625%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e212503212620%_)))
                                                    (_%hd212504212623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e212503212620%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl212505212625%_))
                                                    (let ((_%g212482212628%_
                                                           _%hd212504212623%_)
                                                          (_%g212483212629%_
                                                           _%param212502212618%_)
                                                          (_%g212484212630%_
                                                           _%hd212492212593%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g212484212630%_))
                       (not (let ((__tmp214786
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g212484212630%_))))
                              (declare (not safe))
                              (##memq __tmp214786 gxc#gambit-annotations))))
                  (_%__kont213375213376%_
                   _%g212482212628%_
                   _%g212483212629%_
                   _%g212484212630%_)
                  (_%__kont213379213380%_
                   _%hd212504212623%_
                   _%hd212489212585%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g212469212521%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g212469212521%_))))))))
                        (_%loop212497212603%_ _%target212494212598%_ '()))))
                   (_%__match213400213401%_
                    (lambda (_%e212473212656%_
                             _%hd212474212659%_
                             _%tl212475212661%_
                             _%e212476212664%_
                             _%hd212477212667%_
                             _%tl212478212669%_
                             _%e212479212672%_
                             _%hd212480212675%_
                             _%tl212481212677%_)
                      (let ((_%g212471212680%_ _%hd212480212675%_)
                            (_%g212472212681%_ _%hd212477212667%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g212472212681%_))
                            (_%__kont213373213374%_
                             _%g212471212680%_
                             _%g212472212681%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd212477212667%_))
                                (let ((_%e212491212590%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd212477212667%_))))
                                  (let ((_%tl212493212595%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212491212590%_)))
                                        (_%hd212492212593%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212491212590%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl212493212595%_))
                                        (let ((_%__splice213377213378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl212493212595%_
                                                  '0))))
                                          (let ((_%tl212496212600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice213377213378%_
                                                    '1)))
                                                (_%target212494212598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice213377213378%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212496212600%_))
                                                (_%__match213426213427%_
                                                 _%e212473212656%_
                                                 _%hd212474212659%_
                                                 _%tl212475212661%_
                                                 _%e212476212664%_
                                                 _%hd212477212667%_
                                                 _%tl212478212669%_
                                                 _%e212491212590%_
                                                 _%hd212492212593%_
                                                 _%tl212493212595%_
                                                 _%__splice213377213378%_
                                                 _%target212494212598%_
                                                 _%tl212496212600%_)
                                                (_%__kont213379213380%_
                                                 _%hd212480212675%_
                                                 _%hd212477212667%_))))
                                        (_%__kont213379213380%_
                                         _%hd212480212675%_
                                         _%hd212477212667%_))))
                                (_%__kont213379213380%_
                                 _%hd212480212675%_
                                 _%hd212477212667%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx213371213372%_))
                  (let ((_%e212473212656%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx213371213372%_))))
                    (let ((_%tl212475212661%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212473212656%_)))
                          (_%hd212474212659%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212473212656%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl212475212661%_))
                          (let ((_%e212476212664%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl212475212661%_))))
                            (let ((_%tl212478212669%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e212476212664%_)))
                                  (_%hd212477212667%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e212476212664%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl212478212669%_))
                                  (let ((_%e212479212672%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl212478212669%_))))
                                    (let ((_%tl212481212677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e212479212672%_)))
                                          (_%hd212480212675%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e212479212672%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl212481212677%_))
                                          (_%__match213400213401%_
                                           _%e212473212656%_
                                           _%hd212474212659%_
                                           _%tl212475212661%_
                                           _%e212476212664%_
                                           _%hd212477212667%_
                                           _%tl212478212669%_
                                           _%e212479212672%_
                                           _%hd212480212675%_
                                           _%tl212481212677%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd212477212667%_))
                                              (let ((_%e212491212590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd212477212667%_))))
                                                (let ((_%tl212493212595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212491212590%_)))
                                                      (_%hd212492212593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212491212590%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl212493212595%_))
                                                      (let ((_%__splice213377213378%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl212493212595%_
                        '0))))
                (let ((_%tl212496212600%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice213377213378%_ '1)))
                      (_%target212494212598%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice213377213378%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl212496212600%_))
                      (_%__match213426213427%_
                       _%e212473212656%_
                       _%hd212474212659%_
                       _%tl212475212661%_
                       _%e212476212664%_
                       _%hd212477212667%_
                       _%tl212478212669%_
                       _%e212491212590%_
                       _%hd212492212593%_
                       _%tl212493212595%_
                       _%__splice213377213378%_
                       _%target212494212598%_
                       _%tl212496212600%_)
                      (let () (declare (not safe)) (_%g212469212521%_)))))
              (let () (declare (not safe)) (_%g212469212521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g212469212521%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd212477212667%_))
                                      (let ((_%e212491212590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd212477212667%_))))
                                        (let ((_%tl212493212595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212491212590%_)))
                                              (_%hd212492212593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212491212590%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl212493212595%_))
                                              (let ((_%__splice213377213378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl212493212595%_
                                                        '0))))
                                                (let ((_%tl212496212600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213377213378%_
                                                          '1)))
                                                      (_%target212494212598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213377213378%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212496212600%_))
                                                      (_%__match213426213427%_
                                                       _%e212473212656%_
                                                       _%hd212474212659%_
                                                       _%tl212475212661%_
                                                       _%e212476212664%_
                                                       _%hd212477212667%_
                                                       _%tl212478212669%_
                                                       _%e212491212590%_
                                                       _%hd212492212593%_
                                                       _%tl212493212595%_
                                                       _%__splice213377213378%_
                                                       _%target212494212598%_
                                                       _%tl212496212600%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g212469212521%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g212469212521%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g212469212521%_))))))
                          (let () (declare (not safe)) (_%g212469212521%_)))))
                  (let () (declare (not safe)) (_%g212469212521%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self212423%_ _%stx212424%_)
        (let* ((_%g212426212436%_
                (lambda (_%g212427212433%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212427212433%_))))
               (_%g212425212461%_
                (lambda (_%g212427212439%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212427212439%_))
                      (let ((_%e212429212441%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212427212439%_))))
                        (let ((_%hd212430212444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212429212441%_)))
                              (_%tl212431212446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212429212441%_))))
                          ((lambda (_%g212428212449%_)
                             (let ((_%decls212459%_
                                    (map gx#syntax->datum _%g212428212449%_)))
                               (let ((__tmp214787
                                      (let ((__tmp214788
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp214788
                                         _%decls212459%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp214787))
                               (cons 'declare _%decls212459%_)))
                           _%tl212431212446%_)))
                      (_%g212426212436%_ _%g212427212439%_)))))
          (_%g212425212461%_ _%stx212424%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self212170%_ _%stx212171%_)
        (let* ((_%g212173212190%_
                (lambda (_%g212174212187%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212174212187%_))))
               (_%g212172212420%_
                (lambda (_%g212174212193%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212174212193%_))
                      (let ((_%e212177212195%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212174212193%_))))
                        (let ((_%hd212178212198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212177212195%_)))
                              (_%tl212179212200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212177212195%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212179212200%_))
                              (let ((_%e212180212203%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212179212200%_))))
                                (let ((_%hd212181212206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212180212203%_)))
                                      (_%tl212182212208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212180212203%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212182212208%_))
                                      (let ((_%e212183212211%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212182212208%_))))
                                        (let ((_%hd212184212214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212183212211%_)))
                                              (_%tl212185212216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212183212211%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212185212216%_))
                                              ((lambda (_%g212175212219%_
                                                        _%g212176212220%_)
                                                 (let* ((_%__stx213479213480%_
                                                         _%g212176212220%_)
                                                        (_%g212237212251%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx213479213480%_)))))
                                                   (let ((_%__kont213481213482%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self212170%_
                                                               _%g212175212219%_))))
                                                         (_%__kont213483213484%_
                                                          (lambda (_%g212243212383%_)
                                                            (let ((_%eid212392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g212243212383%_))))
                      (let ((_%lambda-expr212393212395%_
                             (gxc#apply-find-lambda-expression
                              _%g212175212219%_)))
                        (if _%lambda-expr212393212395%_
                            (let* ((_%lambda-expr212397%_
                                    _%lambda-expr212393212395%_)
                                   (__tmp214789
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp214789
                               _%lambda-expr212397%_
                               _%eid212392%_))
                            '#f))
                      (cons 'define
                            (cons _%eid212392%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self212170%_
                                           _%g212175212219%_))
                                        '()))))))
                 (_%__kont213485213486%_
                  (lambda ()
                    (let* ((_%tmp212258%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body212367%_
                            (let _%lp212260%_ ((_%rest212262%_
                                                _%g212176212220%_)
                                               (_%k212263%_ '0)
                                               (_%r212264%_ '()))
                              (let* ((_%__stx213449213450%_ _%rest212262%_)
                                     (_%g212269212286%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx213449213450%_)))))
                                (let ((_%__kont213451213452%_
                                       (lambda (_%g212271212354%_)
                                         (_%lp212260%_
                                          _%g212271212354%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k212263%_ '1))
                                          _%r212264%_)))
                                      (_%__kont213453213454%_
                                       (lambda (_%g212276212327%_
                                                _%g212277212328%_)
                                         (_%lp212260%_
                                          _%g212276212327%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k212263%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g212277212328%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp212258%_
                           _%k212263%_
                           _%g212276212327%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r212264%_))))
                                      (_%__kont213455213456%_
                                       (lambda (_%g212281212298%_)
                                         (let ((__tmp214790
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g212281212298%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp212258%_
                                 _%k212263%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp214790
                                            _%r212264%_))))
                                      (_%__kont213457213458%_
                                       (lambda () (reverse _%r212264%_))))
                                  (let ((_%g212267212314%_
                                         (lambda ()
                                           (let ((_%g212281212298%_
                                                  _%__stx213449213450%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g212281212298%_))
                                                 (_%__kont213455213456%_
                                                  _%g212281212298%_)
                                                 (_%__kont213457213458%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx213449213450%_))
                                        (let ((_%e212272212343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx213449213450%_))))
                                          (let ((_%tl212274212348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e212272212343%_)))
                                                (_%hd212273212346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e212272212343%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd212273212346%_))
                                                (let ((_%e212275212351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd212273212346%_))))
                                                  (if (equal? _%e212275212351%_
                                                              '#f)
                                                      (_%__kont213451213452%_
                                                       _%tl212274212348%_)
                                                      (_%__kont213453213454%_
                                                       _%tl212274212348%_
                                                       _%hd212273212346%_)))
                                                (_%__kont213453213454%_
                                                 _%tl212274212348%_
                                                 _%hd212273212346%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g212267212314%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp212258%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self212170%_
                                                       _%g212175212219%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp212258%_
                                         _%g212176212220%_
                                         _%g212175212219%_)
                                        _%body212367%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx213479213480%_))
                                                         (let ((_%e212239212404%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx213479213480%_))))
                   (let ((_%tl212241212409%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e212239212404%_)))
                         (_%hd212240212407%_
                          (let ()
                            (declare (not safe))
                            (##car _%e212239212404%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd212240212407%_))
                         (let ((_%e212242212412%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd212240212407%_))))
                           (if (equal? _%e212242212412%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl212241212409%_))
                                   (_%__kont213481213482%_)
                                   (_%__kont213485213486%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl212241212409%_))
                                   (_%__kont213483213484%_ _%hd212240212407%_)
                                   (_%__kont213485213486%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl212241212409%_))
                             (_%__kont213483213484%_ _%hd212240212407%_)
                             (_%__kont213485213486%_)))))
                 (_%__kont213485213486%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd212184212214%_
                                               _%hd212181212206%_)
                                              (_%g212173212190%_
                                               _%g212174212193%_))))
                                      (_%g212173212190%_ _%g212174212193%_))))
                              (_%g212173212190%_ _%g212174212193%_))))
                      (_%g212173212190%_ _%g212174212193%_)))))
          (_%g212172212420%_ _%stx212171%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals212145%_ _%hd212146%_ _%expr212147%_)
        (let ((_%$e212149%_ (gxc#apply-count-values _%expr212147%_)))
          (if _%$e212149%_
              ((lambda (_%count212152%_)
                 (let ((_%len212154%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd212146%_)))
                       (_%cmp212155%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd212146%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len212154%_ '0))
                           (_%cmp212155%_ _%count212152%_ _%len212154%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr212147%_
                          _%hd212146%_)))))
               _%$e212149%_)
              (let* ((_%len212161%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd212146%_)))
                     (_%cmp212163%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd212146%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg212165%_
                      (let ((__tmp214792
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd212146%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp214791 (number->string _%len212161%_)))
                        (declare (not safe))
                        (##string-append __tmp214792 __tmp214791 '" values")))
                     (_%count212167%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd212146%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len212161%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count212167%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals212145%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp212163%_
                                (cons _%count212167%_
                                      (cons _%len212161%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp212163%_
                                                        (cons _%count212167%_
                                                              (cons _%len212161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg212165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count212167%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var212140%_)
        (letrec ((_%generate-inline212142%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var212140%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var212140%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline212142%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline212142%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var212133%_ _%i212134%_ _%rest212135%_)
        (letrec ((_%generate-inline212137%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i212134%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest212135%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var212133%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var212133%_
                                                      (cons '0 '())))
                                          (cons _%var212133%_ '()))))
                        (cons '##values-ref
                              (cons _%var212133%_ (cons _%i212134%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline212137%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline212137%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var212127%_ _%i212128%_)
        (if (let () (declare (not safe)) (##fx= _%i212128%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var212127%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var212127%_ '()))
                                  (cons (cons 'list (cons _%var212127%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var212127%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var212127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var212127%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i212128%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var212127%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var212127%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var212127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var212127%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var212127%_ '()))
                                (cons _%i212128%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var212127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i212128%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self212059%_ _%stx212060%_)
        (let* ((_%g212062212079%_
                (lambda (_%g212063212076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212063212076%_))))
               (_%g212061212124%_
                (lambda (_%g212063212082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212063212082%_))
                      (let ((_%e212066212084%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212063212082%_))))
                        (let ((_%hd212067212087%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212066212084%_)))
                              (_%tl212068212089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212066212084%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212068212089%_))
                              (let ((_%e212069212092%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212068212089%_))))
                                (let ((_%hd212070212095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212069212092%_)))
                                      (_%tl212071212097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212069212092%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212071212097%_))
                                      (let ((_%e212072212100%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212071212097%_))))
                                        (let ((_%hd212073212103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212072212100%_)))
                                              (_%tl212074212105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212072212100%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212074212105%_))
                                              ((lambda (_%g212064212108%_
                                                        _%g212065212109%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self212059%_
                                                  _%g212065212109%_
                                                  _%g212064212108%_))
                                               _%hd212073212103%_
                                               _%hd212070212095%_)
                                              (_%g212062212079%_
                                               _%g212063212082%_))))
                                      (_%g212062212079%_ _%g212063212082%_))))
                              (_%g212062212079%_ _%g212063212082%_))))
                      (_%g212062212079%_ _%g212063212082%_)))))
          (_%g212061212124%_ _%stx212060%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self212018%_ _%hd212019%_ _%body212020%_)
        (let* ((_%hd212022%_ (gxc#generate-runtime-lambda-head _%hd212019%_))
               (_%body212024%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self212018%_ _%body212020%_)))
               (_%body212056%_
                (let* ((_%body212025212033%_ _%body212024%_)
                       (_%else212027212041%_
                        (lambda () (cons _%body212024%_ '())))
                       (_%K212029212046%_
                        (lambda (_%exprs212044%_) _%exprs212044%_)))
                  (if (pair? _%body212025212033%_)
                      (let ((_%hd212030212049%_
                             (let ()
                               (declare (not safe))
                               (##car _%body212025212033%_)))
                            (_%tl212031212051%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body212025212033%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd212030212049%_ 'begin))
                            (let ((_%exprs212054%_ _%tl212031212051%_))
                              (_%K212029212046%_ _%exprs212054%_))
                            (_%else212027212041%_)))
                      (_%else212027212041%_)))))
          (cons 'lambda (cons _%hd212022%_ _%body212056%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd212016%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd212016%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self210573%_ _%stx210574%_)
        (letrec ((_%dispatch-case?210576%_
                  (lambda (_%hd211254%_ _%body211255%_)
                    (let* ((_%form211257%_
                            (cons _%hd211254%_ (cons _%body211255%_ '())))
                           (_%__stx213511213512%_ _%form211257%_)
                           (_%g211262211419%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx213511213512%_)))))
                      (let ((_%__kont213513213514%_
                             (lambda (_%g211264211936%_
                                      _%g211265211937%_
                                      _%g211266211938%_)
                               '#t))
                            (_%__kont213519213520%_
                             (lambda (_%g211309211728%_
                                      _%g211310211729%_
                                      _%g211311211730%_
                                      _%g211312211731%_
                                      _%g211313211732%_
                                      _%g211314211733%_)
                               '#t))
                            (_%__kont213525213526%_
                             (lambda (_%g211375211527%_
                                      _%g211376211528%_
                                      _%g211377211529%_
                                      _%g211378211530%_)
                               '#t))
                            (_%__kont213527213528%_ (lambda () '#f)))
                        (let* ((_%__match213652213653%_
                                (lambda (_%e211379211431%_
                                         _%hd211380211434%_
                                         _%tl211381211436%_
                                         _%e211382211439%_
                                         _%hd211383211442%_
                                         _%tl211384211444%_
                                         _%e211385211447%_
                                         _%hd211386211450%_
                                         _%tl211387211452%_
                                         _%e211388211455%_
                                         _%hd211389211458%_
                                         _%tl211390211460%_
                                         _%e211391211463%_
                                         _%hd211392211466%_
                                         _%tl211393211468%_
                                         _%e211394211471%_
                                         _%hd211395211474%_
                                         _%tl211396211476%_
                                         _%e211397211479%_
                                         _%hd211398211482%_
                                         _%tl211399211484%_
                                         _%e211400211487%_
                                         _%hd211401211490%_
                                         _%tl211402211492%_
                                         _%e211403211495%_
                                         _%hd211404211498%_
                                         _%tl211405211500%_
                                         _%e211406211503%_
                                         _%hd211407211506%_
                                         _%tl211408211508%_
                                         _%e211409211511%_
                                         _%hd211410211514%_
                                         _%tl211411211516%_
                                         _%e211412211519%_
                                         _%hd211413211522%_
                                         _%tl211414211524%_)
                                  (let ((_%g211375211527%_ _%hd211413211522%_)
                                        (_%g211376211528%_ _%hd211404211498%_)
                                        (_%g211377211529%_ _%hd211395211474%_)
                                        (_%g211378211530%_ _%hd211380211434%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g211378211530%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g211377211529%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g211378211530%_
                                                _%g211375211527%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g211376211528%_
                                                     _%g211378211530%_))))
                                        (_%__kont213525213526%_
                                         _%g211375211527%_
                                         _%g211376211528%_
                                         _%g211377211529%_
                                         _%g211378211530%_)
                                        (_%__kont213527213528%_)))))
                               (_%__match213624213625%_
                                (lambda (_%e211379211431%_
                                         _%hd211380211434%_
                                         _%tl211381211436%_
                                         _%e211382211439%_
                                         _%hd211383211442%_
                                         _%tl211384211444%_
                                         _%e211385211447%_
                                         _%hd211386211450%_
                                         _%tl211387211452%_
                                         _%e211388211455%_
                                         _%hd211389211458%_
                                         _%tl211390211460%_
                                         _%e211391211463%_
                                         _%hd211392211466%_
                                         _%tl211393211468%_
                                         _%e211394211471%_
                                         _%hd211395211474%_
                                         _%tl211396211476%_
                                         _%e211397211479%_
                                         _%hd211398211482%_
                                         _%tl211399211484%_
                                         _%e211400211487%_
                                         _%hd211401211490%_
                                         _%tl211402211492%_
                                         _%e211403211495%_
                                         _%hd211404211498%_
                                         _%tl211405211500%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211399211484%_))
                                      (let ((_%e211406211503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211399211484%_))))
                                        (let ((_%tl211408211508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211406211503%_)))
                                              (_%hd211407211506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211406211503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd211407211506%_))
                                              (let ((_%e211409211511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd211407211506%_))))
                                                (let ((_%tl211411211516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211409211511%_)))
                                                      (_%hd211410211514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211409211511%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd211410211514%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd211410211514%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl211411211516%_))
                      (let ((_%e211412211519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl211411211516%_))))
                        (let ((_%tl211414211524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211412211519%_)))
                              (_%hd211413211522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211412211519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl211414211524%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl211408211508%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211384211444%_))
                                      (_%__match213652213653%_
                                       _%e211379211431%_
                                       _%hd211380211434%_
                                       _%tl211381211436%_
                                       _%e211382211439%_
                                       _%hd211383211442%_
                                       _%tl211384211444%_
                                       _%e211385211447%_
                                       _%hd211386211450%_
                                       _%tl211387211452%_
                                       _%e211388211455%_
                                       _%hd211389211458%_
                                       _%tl211390211460%_
                                       _%e211391211463%_
                                       _%hd211392211466%_
                                       _%tl211393211468%_
                                       _%e211394211471%_
                                       _%hd211395211474%_
                                       _%tl211396211476%_
                                       _%e211397211479%_
                                       _%hd211398211482%_
                                       _%tl211399211484%_
                                       _%e211400211487%_
                                       _%hd211401211490%_
                                       _%tl211402211492%_
                                       _%e211403211495%_
                                       _%hd211404211498%_
                                       _%tl211405211500%_
                                       _%e211406211503%_
                                       _%hd211407211506%_
                                       _%tl211408211508%_
                                       _%e211409211511%_
                                       _%hd211410211514%_
                                       _%tl211411211516%_
                                       _%e211412211519%_
                                       _%hd211413211522%_
                                       _%tl211414211524%_)
                                      (_%__kont213527213528%_))
                                  (_%__kont213527213528%_))
                              (_%__kont213527213528%_))))
                      (_%__kont213527213528%_))
                  (_%__kont213527213528%_))
              (_%__kont213527213528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont213527213528%_))))
                                      (_%__kont213527213528%_))))
                               (_%__match213554213555%_
                                (lambda (_%e211315211572%_
                                         _%hd211316211575%_
                                         _%tl211317211577%_
                                         _%__splice213521213522%_
                                         _%target211318211580%_
                                         _%tl211320211582%_)
                                  (letrec ((_%loop211321211585%_
                                            (lambda (_%hd211319211588%_
                                                     _%arg211325211590%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd211319211588%_))
                                                  (let ((_%e211322211592%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd211319211588%_))))
                                                    (let ((_%lp-tl211324211597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211322211592%_)))
                                                          (_%lp-hd211323211595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211322211592%_))))
                                                      (_%loop211321211585%_
                                                       _%lp-tl211324211597%_
                                                       (cons _%lp-hd211323211595%_
                                                             _%arg211325211590%_))))
                                                  (let ((_%arg211326211600%_
                                                         (reverse _%arg211325211590%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl211317211577%_))
                                                        (let ((_%e211327211602%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl211317211577%_))))
                  (let ((_%tl211329211607%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211327211602%_)))
                        (_%hd211328211605%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211327211602%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211328211605%_))
                        (let ((_%e211330211610%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd211328211605%_))))
                          (let ((_%tl211332211615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211330211610%_)))
                                (_%hd211331211613%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211330211610%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd211331211613%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd211331211613%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211332211615%_))
                                        (let ((_%e211333211618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl211332211615%_))))
                                          (let ((_%tl211335211623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211333211618%_)))
                                                (_%hd211334211621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211333211618%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd211334211621%_))
                                                (let ((_%e211336211626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd211334211621%_))))
                                                  (let ((_%tl211338211631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211336211626%_)))
                                                        (_%hd211337211629%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211336211626%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd211337211629%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd211337211629%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl211338211631%_))
                        (let ((_%e211339211634%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl211338211631%_))))
                          (let ((_%tl211341211639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211339211634%_)))
                                (_%hd211340211637%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211339211634%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl211341211639%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl211335211623%_))
                                    (let ((_%e211342211642%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl211335211623%_))))
                                      (let ((_%tl211344211647%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211342211642%_)))
                                            (_%hd211343211645%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211342211642%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd211343211645%_))
                                            (let ((_%e211345211650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd211343211645%_))))
                                              (let ((_%tl211347211655%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211345211650%_)))
                                                    (_%hd211346211653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211345211650%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd211346211653%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd211346211653%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl211347211655%_))
                                                            (let ((_%e211348211658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211347211655%_))))
                      (let ((_%tl211350211663%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211348211658%_)))
                            (_%hd211349211661%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211348211658%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211350211663%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl211344211647%_))
                                (if (let ((__tmp214793
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl211344211647%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp214793 '1))
                                    (let ((_%__splice213523213524%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl211344211647%_
                                              '1))))
                                      (let ((_%tl211353211668%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213523213524%_
                                                '1)))
                                            (_%target211351211666%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213523213524%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211353211668%_))
                                            (let ((_%e211360211671%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211353211668%_))))
                                              (let ((_%tl211362211676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211360211671%_)))
                                                    (_%hd211361211674%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211360211671%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd211361211674%_))
                                                    (let ((_%e211363211679%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd211361211674%_))))
                                                      (let ((_%tl211365211684%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e211363211679%_)))
                    (_%hd211364211682%_
                     (let () (declare (not safe)) (##car _%e211363211679%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd211364211682%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd211364211682%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl211365211684%_))
                            (let ((_%e211366211687%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl211365211684%_))))
                              (let ((_%tl211368211692%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211366211687%_)))
                                    (_%hd211367211690%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211366211687%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl211368211692%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211362211676%_))
                                        (letrec ((_%loop211354211695%_
                                                  (lambda (_%hd211352211698%_
                                                           _%xarg211358211700%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211352211698%_))
                                                        (let ((_%e211355211702%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd211352211698%_))))
                  (let ((_%lp-tl211357211707%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211355211702%_)))
                        (_%lp-hd211356211705%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211355211702%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211356211705%_))
                        (let ((_%e211369211710%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd211356211705%_))))
                          (let ((_%tl211371211715%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211369211710%_)))
                                (_%hd211370211713%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211369211710%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd211370211713%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd211370211713%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211371211715%_))
                                        (let ((_%e211372211718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl211371211715%_))))
                                          (let ((_%tl211374211723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211372211718%_)))
                                                (_%hd211373211721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211372211718%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211374211723%_))
                                                (_%loop211354211695%_
                                                 _%lp-tl211357211707%_
                                                 (cons _%hd211373211721%_
                                                       _%xarg211358211700%_))
                                                (_%__match213624213625%_
                                                 _%e211315211572%_
                                                 _%hd211316211575%_
                                                 _%tl211317211577%_
                                                 _%e211327211602%_
                                                 _%hd211328211605%_
                                                 _%tl211329211607%_
                                                 _%e211330211610%_
                                                 _%hd211331211613%_
                                                 _%tl211332211615%_
                                                 _%e211333211618%_
                                                 _%hd211334211621%_
                                                 _%tl211335211623%_
                                                 _%e211336211626%_
                                                 _%hd211337211629%_
                                                 _%tl211338211631%_
                                                 _%e211339211634%_
                                                 _%hd211340211637%_
                                                 _%tl211341211639%_
                                                 _%e211342211642%_
                                                 _%hd211343211645%_
                                                 _%tl211344211647%_
                                                 _%e211345211650%_
                                                 _%hd211346211653%_
                                                 _%tl211347211655%_
                                                 _%e211348211658%_
                                                 _%hd211349211661%_
                                                 _%tl211350211663%_))))
                                        (_%__match213624213625%_
                                         _%e211315211572%_
                                         _%hd211316211575%_
                                         _%tl211317211577%_
                                         _%e211327211602%_
                                         _%hd211328211605%_
                                         _%tl211329211607%_
                                         _%e211330211610%_
                                         _%hd211331211613%_
                                         _%tl211332211615%_
                                         _%e211333211618%_
                                         _%hd211334211621%_
                                         _%tl211335211623%_
                                         _%e211336211626%_
                                         _%hd211337211629%_
                                         _%tl211338211631%_
                                         _%e211339211634%_
                                         _%hd211340211637%_
                                         _%tl211341211639%_
                                         _%e211342211642%_
                                         _%hd211343211645%_
                                         _%tl211344211647%_
                                         _%e211345211650%_
                                         _%hd211346211653%_
                                         _%tl211347211655%_
                                         _%e211348211658%_
                                         _%hd211349211661%_
                                         _%tl211350211663%_))
                                    (_%__match213624213625%_
                                     _%e211315211572%_
                                     _%hd211316211575%_
                                     _%tl211317211577%_
                                     _%e211327211602%_
                                     _%hd211328211605%_
                                     _%tl211329211607%_
                                     _%e211330211610%_
                                     _%hd211331211613%_
                                     _%tl211332211615%_
                                     _%e211333211618%_
                                     _%hd211334211621%_
                                     _%tl211335211623%_
                                     _%e211336211626%_
                                     _%hd211337211629%_
                                     _%tl211338211631%_
                                     _%e211339211634%_
                                     _%hd211340211637%_
                                     _%tl211341211639%_
                                     _%e211342211642%_
                                     _%hd211343211645%_
                                     _%tl211344211647%_
                                     _%e211345211650%_
                                     _%hd211346211653%_
                                     _%tl211347211655%_
                                     _%e211348211658%_
                                     _%hd211349211661%_
                                     _%tl211350211663%_))
                                (_%__match213624213625%_
                                 _%e211315211572%_
                                 _%hd211316211575%_
                                 _%tl211317211577%_
                                 _%e211327211602%_
                                 _%hd211328211605%_
                                 _%tl211329211607%_
                                 _%e211330211610%_
                                 _%hd211331211613%_
                                 _%tl211332211615%_
                                 _%e211333211618%_
                                 _%hd211334211621%_
                                 _%tl211335211623%_
                                 _%e211336211626%_
                                 _%hd211337211629%_
                                 _%tl211338211631%_
                                 _%e211339211634%_
                                 _%hd211340211637%_
                                 _%tl211341211639%_
                                 _%e211342211642%_
                                 _%hd211343211645%_
                                 _%tl211344211647%_
                                 _%e211345211650%_
                                 _%hd211346211653%_
                                 _%tl211347211655%_
                                 _%e211348211658%_
                                 _%hd211349211661%_
                                 _%tl211350211663%_))))
                        (_%__match213624213625%_
                         _%e211315211572%_
                         _%hd211316211575%_
                         _%tl211317211577%_
                         _%e211327211602%_
                         _%hd211328211605%_
                         _%tl211329211607%_
                         _%e211330211610%_
                         _%hd211331211613%_
                         _%tl211332211615%_
                         _%e211333211618%_
                         _%hd211334211621%_
                         _%tl211335211623%_
                         _%e211336211626%_
                         _%hd211337211629%_
                         _%tl211338211631%_
                         _%e211339211634%_
                         _%hd211340211637%_
                         _%tl211341211639%_
                         _%e211342211642%_
                         _%hd211343211645%_
                         _%tl211344211647%_
                         _%e211345211650%_
                         _%hd211346211653%_
                         _%tl211347211655%_
                         _%e211348211658%_
                         _%hd211349211661%_
                         _%tl211350211663%_))))
                (let ((_%xarg211359211726%_ (reverse _%xarg211358211700%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl211329211607%_))
                      (let ((_%g211309211728%_ _%hd211367211690%_)
                            (_%g211310211729%_ _%xarg211359211726%_)
                            (_%g211311211730%_ _%hd211349211661%_)
                            (_%g211312211731%_ _%hd211340211637%_)
                            (_%g211313211732%_ _%tl211320211582%_)
                            (_%g211314211733%_ _%arg211326211600%_))
                        (if (and (let ((__tmp214794
                                        (let ((__tmp214795
                                               (lambda (_%g211776211779%_
                                                        _%g211777211781%_)
                                                 (cons _%g211776211779%_
                                                       _%g211777211781%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp214795
                                           '()
                                           _%g211314211733%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp214794))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g211313211732%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g211312211731%_
                                    'apply))
                                 (let ((__tmp214798
                                        (length (let ((__tmp214799
                                                       (lambda (_%g211783211786%_
                                                                _%g211784211788%_)
                                                         (cons _%g211783211786%_
                                                               _%g211784211788%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp214799
                                                   '()
                                                   _%g211314211733%_))))
                                       (__tmp214796
                                        (length (let ((__tmp214797
                                                       (lambda (_%g211790211793%_
                                                                _%g211791211795%_)
                                                         (cons _%g211790211793%_
                                                               _%g211791211795%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp214797
                                                   '()
                                                   _%g211310211729%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp214798 __tmp214796))
                                 (let ((__tmp214802
                                        (let ((__tmp214803
                                               (lambda (_%g211797211800%_
                                                        _%g211798211802%_)
                                                 (cons _%g211797211800%_
                                                       _%g211798211802%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp214803
                                           '()
                                           _%g211314211733%_)))
                                       (__tmp214800
                                        (let ((__tmp214801
                                               (lambda (_%g211804211807%_
                                                        _%g211805211809%_)
                                                 (cons _%g211804211807%_
                                                       _%g211805211809%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp214801
                                           '()
                                           _%g211310211729%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp214802
                                    __tmp214800))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g211313211732%_
                                    _%g211309211728%_))
                                 (not (let ((__tmp214807
                                             (lambda (_%g211811211813%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g211811211813%_
                                                  _%g211311211730%_))))
                                            (__tmp214804
                                             (let ((__tmp214806
                                                    (lambda (_%g211815211818%_
                                                             _%g211816211820%_)
                                                      (cons _%g211815211818%_
                                                            _%g211816211820%_)))
                                                   (__tmp214805
                                                    (cons _%g211313211732%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp214806
                                                __tmp214805
                                                _%g211314211733%_))))
                                        (declare (not safe))
                                        (__find __tmp214807 __tmp214804))))
                            (_%__kont213519213520%_
                             _%g211309211728%_
                             _%g211310211729%_
                             _%g211311211730%_
                             _%g211312211731%_
                             _%g211313211732%_
                             _%g211314211733%_)
                            (_%__match213624213625%_
                             _%e211315211572%_
                             _%hd211316211575%_
                             _%tl211317211577%_
                             _%e211327211602%_
                             _%hd211328211605%_
                             _%tl211329211607%_
                             _%e211330211610%_
                             _%hd211331211613%_
                             _%tl211332211615%_
                             _%e211333211618%_
                             _%hd211334211621%_
                             _%tl211335211623%_
                             _%e211336211626%_
                             _%hd211337211629%_
                             _%tl211338211631%_
                             _%e211339211634%_
                             _%hd211340211637%_
                             _%tl211341211639%_
                             _%e211342211642%_
                             _%hd211343211645%_
                             _%tl211344211647%_
                             _%e211345211650%_
                             _%hd211346211653%_
                             _%tl211347211655%_
                             _%e211348211658%_
                             _%hd211349211661%_
                             _%tl211350211663%_)))
                      (_%__match213624213625%_
                       _%e211315211572%_
                       _%hd211316211575%_
                       _%tl211317211577%_
                       _%e211327211602%_
                       _%hd211328211605%_
                       _%tl211329211607%_
                       _%e211330211610%_
                       _%hd211331211613%_
                       _%tl211332211615%_
                       _%e211333211618%_
                       _%hd211334211621%_
                       _%tl211335211623%_
                       _%e211336211626%_
                       _%hd211337211629%_
                       _%tl211338211631%_
                       _%e211339211634%_
                       _%hd211340211637%_
                       _%tl211341211639%_
                       _%e211342211642%_
                       _%hd211343211645%_
                       _%tl211344211647%_
                       _%e211345211650%_
                       _%hd211346211653%_
                       _%tl211347211655%_
                       _%e211348211658%_
                       _%hd211349211661%_
                       _%tl211350211663%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211354211695%_
                                           _%target211351211666%_
                                           '()))
                                        (_%__match213624213625%_
                                         _%e211315211572%_
                                         _%hd211316211575%_
                                         _%tl211317211577%_
                                         _%e211327211602%_
                                         _%hd211328211605%_
                                         _%tl211329211607%_
                                         _%e211330211610%_
                                         _%hd211331211613%_
                                         _%tl211332211615%_
                                         _%e211333211618%_
                                         _%hd211334211621%_
                                         _%tl211335211623%_
                                         _%e211336211626%_
                                         _%hd211337211629%_
                                         _%tl211338211631%_
                                         _%e211339211634%_
                                         _%hd211340211637%_
                                         _%tl211341211639%_
                                         _%e211342211642%_
                                         _%hd211343211645%_
                                         _%tl211344211647%_
                                         _%e211345211650%_
                                         _%hd211346211653%_
                                         _%tl211347211655%_
                                         _%e211348211658%_
                                         _%hd211349211661%_
                                         _%tl211350211663%_))
                                    (_%__match213624213625%_
                                     _%e211315211572%_
                                     _%hd211316211575%_
                                     _%tl211317211577%_
                                     _%e211327211602%_
                                     _%hd211328211605%_
                                     _%tl211329211607%_
                                     _%e211330211610%_
                                     _%hd211331211613%_
                                     _%tl211332211615%_
                                     _%e211333211618%_
                                     _%hd211334211621%_
                                     _%tl211335211623%_
                                     _%e211336211626%_
                                     _%hd211337211629%_
                                     _%tl211338211631%_
                                     _%e211339211634%_
                                     _%hd211340211637%_
                                     _%tl211341211639%_
                                     _%e211342211642%_
                                     _%hd211343211645%_
                                     _%tl211344211647%_
                                     _%e211345211650%_
                                     _%hd211346211653%_
                                     _%tl211347211655%_
                                     _%e211348211658%_
                                     _%hd211349211661%_
                                     _%tl211350211663%_))))
                            (_%__match213624213625%_
                             _%e211315211572%_
                             _%hd211316211575%_
                             _%tl211317211577%_
                             _%e211327211602%_
                             _%hd211328211605%_
                             _%tl211329211607%_
                             _%e211330211610%_
                             _%hd211331211613%_
                             _%tl211332211615%_
                             _%e211333211618%_
                             _%hd211334211621%_
                             _%tl211335211623%_
                             _%e211336211626%_
                             _%hd211337211629%_
                             _%tl211338211631%_
                             _%e211339211634%_
                             _%hd211340211637%_
                             _%tl211341211639%_
                             _%e211342211642%_
                             _%hd211343211645%_
                             _%tl211344211647%_
                             _%e211345211650%_
                             _%hd211346211653%_
                             _%tl211347211655%_
                             _%e211348211658%_
                             _%hd211349211661%_
                             _%tl211350211663%_))
                        (_%__match213624213625%_
                         _%e211315211572%_
                         _%hd211316211575%_
                         _%tl211317211577%_
                         _%e211327211602%_
                         _%hd211328211605%_
                         _%tl211329211607%_
                         _%e211330211610%_
                         _%hd211331211613%_
                         _%tl211332211615%_
                         _%e211333211618%_
                         _%hd211334211621%_
                         _%tl211335211623%_
                         _%e211336211626%_
                         _%hd211337211629%_
                         _%tl211338211631%_
                         _%e211339211634%_
                         _%hd211340211637%_
                         _%tl211341211639%_
                         _%e211342211642%_
                         _%hd211343211645%_
                         _%tl211344211647%_
                         _%e211345211650%_
                         _%hd211346211653%_
                         _%tl211347211655%_
                         _%e211348211658%_
                         _%hd211349211661%_
                         _%tl211350211663%_))
                    (_%__match213624213625%_
                     _%e211315211572%_
                     _%hd211316211575%_
                     _%tl211317211577%_
                     _%e211327211602%_
                     _%hd211328211605%_
                     _%tl211329211607%_
                     _%e211330211610%_
                     _%hd211331211613%_
                     _%tl211332211615%_
                     _%e211333211618%_
                     _%hd211334211621%_
                     _%tl211335211623%_
                     _%e211336211626%_
                     _%hd211337211629%_
                     _%tl211338211631%_
                     _%e211339211634%_
                     _%hd211340211637%_
                     _%tl211341211639%_
                     _%e211342211642%_
                     _%hd211343211645%_
                     _%tl211344211647%_
                     _%e211345211650%_
                     _%hd211346211653%_
                     _%tl211347211655%_
                     _%e211348211658%_
                     _%hd211349211661%_
                     _%tl211350211663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match213624213625%_
                                                     _%e211315211572%_
                                                     _%hd211316211575%_
                                                     _%tl211317211577%_
                                                     _%e211327211602%_
                                                     _%hd211328211605%_
                                                     _%tl211329211607%_
                                                     _%e211330211610%_
                                                     _%hd211331211613%_
                                                     _%tl211332211615%_
                                                     _%e211333211618%_
                                                     _%hd211334211621%_
                                                     _%tl211335211623%_
                                                     _%e211336211626%_
                                                     _%hd211337211629%_
                                                     _%tl211338211631%_
                                                     _%e211339211634%_
                                                     _%hd211340211637%_
                                                     _%tl211341211639%_
                                                     _%e211342211642%_
                                                     _%hd211343211645%_
                                                     _%tl211344211647%_
                                                     _%e211345211650%_
                                                     _%hd211346211653%_
                                                     _%tl211347211655%_
                                                     _%e211348211658%_
                                                     _%hd211349211661%_
                                                     _%tl211350211663%_))))
                                            (_%__match213624213625%_
                                             _%e211315211572%_
                                             _%hd211316211575%_
                                             _%tl211317211577%_
                                             _%e211327211602%_
                                             _%hd211328211605%_
                                             _%tl211329211607%_
                                             _%e211330211610%_
                                             _%hd211331211613%_
                                             _%tl211332211615%_
                                             _%e211333211618%_
                                             _%hd211334211621%_
                                             _%tl211335211623%_
                                             _%e211336211626%_
                                             _%hd211337211629%_
                                             _%tl211338211631%_
                                             _%e211339211634%_
                                             _%hd211340211637%_
                                             _%tl211341211639%_
                                             _%e211342211642%_
                                             _%hd211343211645%_
                                             _%tl211344211647%_
                                             _%e211345211650%_
                                             _%hd211346211653%_
                                             _%tl211347211655%_
                                             _%e211348211658%_
                                             _%hd211349211661%_
                                             _%tl211350211663%_))))
                                    (_%__match213624213625%_
                                     _%e211315211572%_
                                     _%hd211316211575%_
                                     _%tl211317211577%_
                                     _%e211327211602%_
                                     _%hd211328211605%_
                                     _%tl211329211607%_
                                     _%e211330211610%_
                                     _%hd211331211613%_
                                     _%tl211332211615%_
                                     _%e211333211618%_
                                     _%hd211334211621%_
                                     _%tl211335211623%_
                                     _%e211336211626%_
                                     _%hd211337211629%_
                                     _%tl211338211631%_
                                     _%e211339211634%_
                                     _%hd211340211637%_
                                     _%tl211341211639%_
                                     _%e211342211642%_
                                     _%hd211343211645%_
                                     _%tl211344211647%_
                                     _%e211345211650%_
                                     _%hd211346211653%_
                                     _%tl211347211655%_
                                     _%e211348211658%_
                                     _%hd211349211661%_
                                     _%tl211350211663%_))
                                (_%__match213624213625%_
                                 _%e211315211572%_
                                 _%hd211316211575%_
                                 _%tl211317211577%_
                                 _%e211327211602%_
                                 _%hd211328211605%_
                                 _%tl211329211607%_
                                 _%e211330211610%_
                                 _%hd211331211613%_
                                 _%tl211332211615%_
                                 _%e211333211618%_
                                 _%hd211334211621%_
                                 _%tl211335211623%_
                                 _%e211336211626%_
                                 _%hd211337211629%_
                                 _%tl211338211631%_
                                 _%e211339211634%_
                                 _%hd211340211637%_
                                 _%tl211341211639%_
                                 _%e211342211642%_
                                 _%hd211343211645%_
                                 _%tl211344211647%_
                                 _%e211345211650%_
                                 _%hd211346211653%_
                                 _%tl211347211655%_
                                 _%e211348211658%_
                                 _%hd211349211661%_
                                 _%tl211350211663%_))
                            (_%__kont213527213528%_))))
                    (_%__kont213527213528%_))
                (_%__kont213527213528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont213527213528%_))))
                                            (_%__kont213527213528%_))))
                                    (_%__kont213527213528%_))
                                (_%__kont213527213528%_))))
                        (_%__kont213527213528%_))
                    (_%__kont213527213528%_))
                (_%__kont213527213528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont213527213528%_))))
                                        (_%__kont213527213528%_))
                                    (_%__kont213527213528%_))
                                (_%__kont213527213528%_))))
                        (_%__kont213527213528%_))))
                (_%__kont213527213528%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop211321211585%_
                                     _%target211318211580%_
                                     '()))))
                               (_%__match213542213543%_
                                (lambda (_%e211267211828%_
                                         _%hd211268211831%_
                                         _%tl211269211833%_
                                         _%__splice213515213516%_
                                         _%target211270211836%_
                                         _%tl211272211838%_)
                                  (letrec ((_%loop211273211841%_
                                            (lambda (_%hd211271211844%_
                                                     _%arg211277211846%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd211271211844%_))
                                                  (let ((_%e211274211848%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd211271211844%_))))
                                                    (let ((_%lp-tl211276211853%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211274211848%_)))
                                                          (_%lp-hd211275211851%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211274211848%_))))
                                                      (_%loop211273211841%_
                                                       _%lp-tl211276211853%_
                                                       (cons _%lp-hd211275211851%_
                                                             _%arg211277211846%_))))
                                                  (let ((_%arg211278211856%_
                                                         (reverse _%arg211277211846%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl211269211833%_))
                                                        (let ((_%e211279211858%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl211269211833%_))))
                  (let ((_%tl211281211863%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211279211858%_)))
                        (_%hd211280211861%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211279211858%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211280211861%_))
                        (let ((_%e211282211866%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd211280211861%_))))
                          (let ((_%tl211284211871%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211282211866%_)))
                                (_%hd211283211869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211282211866%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd211283211869%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd211283211869%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211284211871%_))
                                        (let ((_%e211285211874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl211284211871%_))))
                                          (let ((_%tl211287211879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211285211874%_)))
                                                (_%hd211286211877%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211285211874%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd211286211877%_))
                                                (let ((_%e211288211882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd211286211877%_))))
                                                  (let ((_%tl211290211887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211288211882%_)))
                                                        (_%hd211289211885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211288211882%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd211289211885%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd211289211885%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl211290211887%_))
                        (let ((_%e211291211890%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl211290211887%_))))
                          (let ((_%tl211293211895%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211291211890%_)))
                                (_%hd211292211893%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211291211890%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl211293211895%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl211287211879%_))
                                    (let ((_%__splice213517213518%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl211287211879%_
                                              '0))))
                                      (let ((_%tl211296211900%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213517213518%_
                                                '1)))
                                            (_%target211294211898%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213517213518%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211296211900%_))
                                            (letrec ((_%loop211297211903%_
                                                      (lambda (_%hd211295211906%_
                                                               _%xarg211301211908%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd211295211906%_))
                                                            (let ((_%e211298211910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd211295211906%_))))
                      (let ((_%lp-tl211300211915%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211298211910%_)))
                            (_%lp-hd211299211913%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211298211910%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd211299211913%_))
                            (let ((_%e211303211918%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd211299211913%_))))
                              (let ((_%tl211305211923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211303211918%_)))
                                    (_%hd211304211921%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211303211918%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd211304211921%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd211304211921%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211305211923%_))
                                            (let ((_%e211306211926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211305211923%_))))
                                              (let ((_%tl211308211931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211306211926%_)))
                                                    (_%hd211307211929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211306211926%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211308211931%_))
                                                    (_%loop211297211903%_
                                                     _%lp-tl211300211915%_
                                                     (cons _%hd211307211929%_
                                                           _%xarg211301211908%_))
                                                    (_%__match213554213555%_
                                                     _%e211267211828%_
                                                     _%hd211268211831%_
                                                     _%tl211269211833%_
                                                     _%__splice213515213516%_
                                                     _%target211270211836%_
                                                     _%tl211272211838%_))))
                                            (_%__match213554213555%_
                                             _%e211267211828%_
                                             _%hd211268211831%_
                                             _%tl211269211833%_
                                             _%__splice213515213516%_
                                             _%target211270211836%_
                                             _%tl211272211838%_))
                                        (_%__match213554213555%_
                                         _%e211267211828%_
                                         _%hd211268211831%_
                                         _%tl211269211833%_
                                         _%__splice213515213516%_
                                         _%target211270211836%_
                                         _%tl211272211838%_))
                                    (_%__match213554213555%_
                                     _%e211267211828%_
                                     _%hd211268211831%_
                                     _%tl211269211833%_
                                     _%__splice213515213516%_
                                     _%target211270211836%_
                                     _%tl211272211838%_))))
                            (_%__match213554213555%_
                             _%e211267211828%_
                             _%hd211268211831%_
                             _%tl211269211833%_
                             _%__splice213515213516%_
                             _%target211270211836%_
                             _%tl211272211838%_))))
                    (let ((_%xarg211302211934%_
                           (reverse _%xarg211301211908%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl211281211863%_))
                          (let ((_%g211264211936%_ _%xarg211302211934%_)
                                (_%g211265211937%_ _%hd211292211893%_)
                                (_%g211266211938%_ _%arg211278211856%_))
                            (if (and (let ((__tmp214808
                                            (let ((__tmp214809
                                                   (lambda (_%g211966211969%_
                                                            _%g211967211971%_)
                                                     (cons _%g211966211969%_
                                                           _%g211967211971%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp214809
                                               '()
                                               _%g211266211938%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp214808))
                                     (let ((__tmp214812
                                            (length (let ((__tmp214813
                                                           (lambda (_%g211973211976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g211974211978%_)
                     (cons _%g211973211976%_ _%g211974211978%_))))
              (declare (not safe))
              (foldr__0 __tmp214813 '() _%g211266211938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp214810
                                            (length (let ((__tmp214811
                                                           (lambda (_%g211980211983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g211981211985%_)
                     (cons _%g211980211983%_ _%g211981211985%_))))
              (declare (not safe))
              (foldr__0 __tmp214811 '() _%g211264211936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp214812 __tmp214810))
                                     (let ((__tmp214816
                                            (let ((__tmp214817
                                                   (lambda (_%g211987211990%_
                                                            _%g211988211992%_)
                                                     (cons _%g211987211990%_
                                                           _%g211988211992%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp214817
                                               '()
                                               _%g211266211938%_)))
                                           (__tmp214814
                                            (let ((__tmp214815
                                                   (lambda (_%g211994211997%_
                                                            _%g211995211999%_)
                                                     (cons _%g211994211997%_
                                                           _%g211995211999%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp214815
                                               '()
                                               _%g211264211936%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp214816
                                        __tmp214814))
                                     (not (let ((__tmp214820
                                                 (lambda (_%g212001212003%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g212001212003%_
                                                      _%g211265211937%_))))
                                                (__tmp214818
                                                 (let ((__tmp214819
                                                        (lambda (_%g212005212008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g212006212010%_)
                  (cons _%g212005212008%_ _%g212006212010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp214819
                                                    '()
                                                    _%g211266211938%_))))
                                            (declare (not safe))
                                            (__find __tmp214820 __tmp214818))))
                                (_%__kont213513213514%_
                                 _%g211264211936%_
                                 _%g211265211937%_
                                 _%g211266211938%_)
                                (_%__match213554213555%_
                                 _%e211267211828%_
                                 _%hd211268211831%_
                                 _%tl211269211833%_
                                 _%__splice213515213516%_
                                 _%target211270211836%_
                                 _%tl211272211838%_)))
                          (_%__match213554213555%_
                           _%e211267211828%_
                           _%hd211268211831%_
                           _%tl211269211833%_
                           _%__splice213515213516%_
                           _%target211270211836%_
                           _%tl211272211838%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop211297211903%_
                                               _%target211294211898%_
                                               '()))
                                            (_%__match213554213555%_
                                             _%e211267211828%_
                                             _%hd211268211831%_
                                             _%tl211269211833%_
                                             _%__splice213515213516%_
                                             _%target211270211836%_
                                             _%tl211272211838%_))))
                                    (_%__match213554213555%_
                                     _%e211267211828%_
                                     _%hd211268211831%_
                                     _%tl211269211833%_
                                     _%__splice213515213516%_
                                     _%target211270211836%_
                                     _%tl211272211838%_))
                                (_%__match213554213555%_
                                 _%e211267211828%_
                                 _%hd211268211831%_
                                 _%tl211269211833%_
                                 _%__splice213515213516%_
                                 _%target211270211836%_
                                 _%tl211272211838%_))))
                        (_%__match213554213555%_
                         _%e211267211828%_
                         _%hd211268211831%_
                         _%tl211269211833%_
                         _%__splice213515213516%_
                         _%target211270211836%_
                         _%tl211272211838%_))
                    (_%__match213554213555%_
                     _%e211267211828%_
                     _%hd211268211831%_
                     _%tl211269211833%_
                     _%__splice213515213516%_
                     _%target211270211836%_
                     _%tl211272211838%_))
                (_%__match213554213555%_
                 _%e211267211828%_
                 _%hd211268211831%_
                 _%tl211269211833%_
                 _%__splice213515213516%_
                 _%target211270211836%_
                 _%tl211272211838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match213554213555%_
                                                 _%e211267211828%_
                                                 _%hd211268211831%_
                                                 _%tl211269211833%_
                                                 _%__splice213515213516%_
                                                 _%target211270211836%_
                                                 _%tl211272211838%_))))
                                        (_%__match213554213555%_
                                         _%e211267211828%_
                                         _%hd211268211831%_
                                         _%tl211269211833%_
                                         _%__splice213515213516%_
                                         _%target211270211836%_
                                         _%tl211272211838%_))
                                    (_%__match213554213555%_
                                     _%e211267211828%_
                                     _%hd211268211831%_
                                     _%tl211269211833%_
                                     _%__splice213515213516%_
                                     _%target211270211836%_
                                     _%tl211272211838%_))
                                (_%__match213554213555%_
                                 _%e211267211828%_
                                 _%hd211268211831%_
                                 _%tl211269211833%_
                                 _%__splice213515213516%_
                                 _%target211270211836%_
                                 _%tl211272211838%_))))
                        (_%__match213554213555%_
                         _%e211267211828%_
                         _%hd211268211831%_
                         _%tl211269211833%_
                         _%__splice213515213516%_
                         _%target211270211836%_
                         _%tl211272211838%_))))
                (_%__match213554213555%_
                 _%e211267211828%_
                 _%hd211268211831%_
                 _%tl211269211833%_
                 _%__splice213515213516%_
                 _%target211270211836%_
                 _%tl211272211838%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop211273211841%_
                                     _%target211270211836%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx213511213512%_))
                              (let ((_%e211267211828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx213511213512%_))))
                                (let ((_%tl211269211833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211267211828%_)))
                                      (_%hd211268211831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211267211828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd211268211831%_))
                                      (let ((_%__splice213515213516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd211268211831%_
                                                '0))))
                                        (let ((_%tl211272211838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice213515213516%_
                                                  '1)))
                                              (_%target211270211836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice213515213516%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211272211838%_))
                                              (_%__match213542213543%_
                                               _%e211267211828%_
                                               _%hd211268211831%_
                                               _%tl211269211833%_
                                               _%__splice213515213516%_
                                               _%target211270211836%_
                                               _%tl211272211838%_)
                                              (_%__match213554213555%_
                                               _%e211267211828%_
                                               _%hd211268211831%_
                                               _%tl211269211833%_
                                               _%__splice213515213516%_
                                               _%target211270211836%_
                                               _%tl211272211838%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211269211833%_))
                                          (let ((_%e211382211439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl211269211833%_))))
                                            (let ((_%tl211384211444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211382211439%_)))
                                                  (_%hd211383211442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211382211439%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd211383211442%_))
                                                  (let ((_%e211385211447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd211383211442%_))))
                                                    (let ((_%tl211387211452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211385211447%_)))
                                                          (_%hd211386211450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211385211447%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd211386211450%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd211386211450%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211387211452%_))
                          (let ((_%e211388211455%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl211387211452%_))))
                            (let ((_%tl211390211460%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211388211455%_)))
                                  (_%hd211389211458%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211388211455%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd211389211458%_))
                                  (let ((_%e211391211463%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd211389211458%_))))
                                    (let ((_%tl211393211468%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211391211463%_)))
                                          (_%hd211392211466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211391211463%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd211392211466%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd211392211466%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211393211468%_))
                                                  (let ((_%e211394211471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211393211468%_))))
                                                    (let ((_%tl211396211476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211394211471%_)))
                                                          (_%hd211395211474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211394211471%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211396211476%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl211390211460%_))
                      (let ((_%e211397211479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl211390211460%_))))
                        (let ((_%tl211399211484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211397211479%_)))
                              (_%hd211398211482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211397211479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd211398211482%_))
                              (let ((_%e211400211487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd211398211482%_))))
                                (let ((_%tl211402211492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211400211487%_)))
                                      (_%hd211401211490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211400211487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd211401211490%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd211401211490%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211402211492%_))
                                              (let ((_%e211403211495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl211402211492%_))))
                                                (let ((_%tl211405211500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211403211495%_)))
                                                      (_%hd211404211498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211403211495%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211405211500%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl211399211484%_))
                                                          (let ((_%e211406211503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl211399211484%_))))
                    (let ((_%tl211408211508%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211406211503%_)))
                          (_%hd211407211506%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211406211503%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd211407211506%_))
                          (let ((_%e211409211511%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd211407211506%_))))
                            (let ((_%tl211411211516%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211409211511%_)))
                                  (_%hd211410211514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211409211511%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd211410211514%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd211410211514%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211411211516%_))
                                          (let ((_%e211412211519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl211411211516%_))))
                                            (let ((_%tl211414211524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211412211519%_)))
                                                  (_%hd211413211522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211412211519%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl211414211524%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211408211508%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211384211444%_))
                                                          (_%__match213652213653%_
                                                           _%e211267211828%_
                                                           _%hd211268211831%_
                                                           _%tl211269211833%_
                                                           _%e211382211439%_
                                                           _%hd211383211442%_
                                                           _%tl211384211444%_
                                                           _%e211385211447%_
                                                           _%hd211386211450%_
                                                           _%tl211387211452%_
                                                           _%e211388211455%_
                                                           _%hd211389211458%_
                                                           _%tl211390211460%_
                                                           _%e211391211463%_
                                                           _%hd211392211466%_
                                                           _%tl211393211468%_
                                                           _%e211394211471%_
                                                           _%hd211395211474%_
                                                           _%tl211396211476%_
                                                           _%e211397211479%_
                                                           _%hd211398211482%_
                                                           _%tl211399211484%_
                                                           _%e211400211487%_
                                                           _%hd211401211490%_
                                                           _%tl211402211492%_
                                                           _%e211403211495%_
                                                           _%hd211404211498%_
                                                           _%tl211405211500%_
                                                           _%e211406211503%_
                                                           _%hd211407211506%_
                                                           _%tl211408211508%_
                                                           _%e211409211511%_
                                                           _%hd211410211514%_
                                                           _%tl211411211516%_
                                                           _%e211412211519%_
                                                           _%hd211413211522%_
                                                           _%tl211414211524%_)
                                                          (_%__kont213527213528%_))
                                                      (_%__kont213527213528%_))
                                                  (_%__kont213527213528%_))))
                                          (_%__kont213527213528%_))
                                      (_%__kont213527213528%_))
                                  (_%__kont213527213528%_))))
                          (_%__kont213527213528%_))))
                  (_%__kont213527213528%_))
              (_%__kont213527213528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont213527213528%_))
                                          (_%__kont213527213528%_))
                                      (_%__kont213527213528%_))))
                              (_%__kont213527213528%_))))
                      (_%__kont213527213528%_))
                  (_%__kont213527213528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont213527213528%_))
                                              (_%__kont213527213528%_))
                                          (_%__kont213527213528%_))))
                                  (_%__kont213527213528%_))))
                          (_%__kont213527213528%_))
                      (_%__kont213527213528%_))
                  (_%__kont213527213528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont213527213528%_))))
                                          (_%__kont213527213528%_)))))
                              (_%__kont213527213528%_)))))))
                 (_%dispatch-case-e210577%_
                  (lambda (_%hd210724%_ _%body210725%_)
                    (let* ((_%form210727%_
                            (cons _%hd210724%_ (cons _%body210725%_ '())))
                           (_%__stx213655213656%_ _%form210727%_)
                           (_%g210731210855%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx213655213656%_)))))
                      (let ((_%__kont213657213658%_
                             (lambda (_%g210733211220%_
                                      _%g210734211221%_
                                      _%g210735211222%_)
                               (let ((__tmp214821
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g210734211221%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self210573%_
                                  __tmp214821))))
                            (_%__kont213663213664%_
                             (lambda (_%g210778211072%_
                                      _%g210779211073%_
                                      _%g210780211074%_
                                      _%g210781211075%_)
                               (let ((__tmp214822
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g210778211072%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self210573%_
                                  __tmp214822))))
                            (_%__kont213667213668%_
                             (lambda (_%g210818210940%_
                                      _%g210819210941%_
                                      _%g210820210942%_)
                               (let ((__tmp214823
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g210818210940%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self210573%_
                                  __tmp214823)))))
                        (let* ((_%__match213764213765%_
                                (lambda (_%e210821210860%_
                                         _%hd210822210863%_
                                         _%tl210823210865%_
                                         _%e210824210868%_
                                         _%hd210825210871%_
                                         _%tl210826210873%_
                                         _%e210827210876%_
                                         _%hd210828210879%_
                                         _%tl210829210881%_
                                         _%e210830210884%_
                                         _%hd210831210887%_
                                         _%tl210832210889%_
                                         _%e210833210892%_
                                         _%hd210834210895%_
                                         _%tl210835210897%_
                                         _%e210836210900%_
                                         _%hd210837210903%_
                                         _%tl210838210905%_
                                         _%e210839210908%_
                                         _%hd210840210911%_
                                         _%tl210841210913%_
                                         _%e210842210916%_
                                         _%hd210843210919%_
                                         _%tl210844210921%_
                                         _%e210845210924%_
                                         _%hd210846210927%_
                                         _%tl210847210929%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210841210913%_))
                                      (let ((_%e210848210932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210841210913%_))))
                                        (let ((_%tl210850210937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210848210932%_)))
                                              (_%hd210849210935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210848210932%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210850210937%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl210826210873%_))
                                                  (_%__kont213667213668%_
                                                   _%hd210846210927%_
                                                   _%hd210837210903%_
                                                   _%hd210822210863%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g210731210855%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g210731210855%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g210731210855%_)))))
                               (_%__match213694213695%_
                                (lambda (_%e210782210978%_
                                         _%hd210783210981%_
                                         _%tl210784210983%_
                                         _%__splice213665213666%_
                                         _%target210785210986%_
                                         _%tl210787210988%_)
                                  (letrec ((_%loop210788210991%_
                                            (lambda (_%hd210786210994%_
                                                     _%arg210792210996%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd210786210994%_))
                                                  (let ((_%e210789210998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd210786210994%_))))
                                                    (let ((_%lp-tl210791211003%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e210789210998%_)))
                                                          (_%lp-hd210790211001%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e210789210998%_))))
                                                      (_%loop210788210991%_
                                                       _%lp-tl210791211003%_
                                                       (cons _%lp-hd210790211001%_
                                                             _%arg210792210996%_))))
                                                  (let ((_%arg210793211006%_
                                                         (reverse _%arg210792210996%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl210784210983%_))
                                                        (let ((_%e210794211008%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl210784210983%_))))
                  (let ((_%tl210796211013%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e210794211008%_)))
                        (_%hd210795211011%_
                         (let ()
                           (declare (not safe))
                           (##car _%e210794211008%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd210795211011%_))
                        (let ((_%e210797211016%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd210795211011%_))))
                          (let ((_%tl210799211021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210797211016%_)))
                                (_%hd210798211019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210797211016%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd210798211019%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd210798211019%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210799211021%_))
                                        (let ((_%e210800211024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl210799211021%_))))
                                          (let ((_%tl210802211029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210800211024%_)))
                                                (_%hd210801211027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210800211024%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd210801211027%_))
                                                (let ((_%e210803211032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd210801211027%_))))
                                                  (let ((_%tl210805211037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e210803211032%_)))
                                                        (_%hd210804211035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e210803211032%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd210804211035%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd210804211035%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl210805211037%_))
                        (let ((_%e210806211040%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl210805211037%_))))
                          (let ((_%tl210808211045%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210806211040%_)))
                                (_%hd210807211043%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210806211040%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl210808211045%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl210802211029%_))
                                    (let ((_%e210809211048%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl210802211029%_))))
                                      (let ((_%tl210811211053%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e210809211048%_)))
                                            (_%hd210810211051%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e210809211048%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd210810211051%_))
                                            (let ((_%e210812211056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd210810211051%_))))
                                              (let ((_%tl210814211061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e210812211056%_)))
                                                    (_%hd210813211059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e210812211056%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd210813211059%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd210813211059%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl210814211061%_))
                                                            (let ((_%e210815211064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl210814211061%_))))
                      (let ((_%tl210817211069%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e210815211064%_)))
                            (_%hd210816211067%_
                             (let ()
                               (declare (not safe))
                               (##car _%e210815211064%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl210817211069%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl210796211013%_))
                                (_%__kont213663213664%_
                                 _%hd210816211067%_
                                 _%hd210807211043%_
                                 _%tl210787210988%_
                                 _%arg210793211006%_)
                                (_%__match213764213765%_
                                 _%e210782210978%_
                                 _%hd210783210981%_
                                 _%tl210784210983%_
                                 _%e210794211008%_
                                 _%hd210795211011%_
                                 _%tl210796211013%_
                                 _%e210797211016%_
                                 _%hd210798211019%_
                                 _%tl210799211021%_
                                 _%e210800211024%_
                                 _%hd210801211027%_
                                 _%tl210802211029%_
                                 _%e210803211032%_
                                 _%hd210804211035%_
                                 _%tl210805211037%_
                                 _%e210806211040%_
                                 _%hd210807211043%_
                                 _%tl210808211045%_
                                 _%e210809211048%_
                                 _%hd210810211051%_
                                 _%tl210811211053%_
                                 _%e210812211056%_
                                 _%hd210813211059%_
                                 _%tl210814211061%_
                                 _%e210815211064%_
                                 _%hd210816211067%_
                                 _%tl210817211069%_))
                            (let ()
                              (declare (not safe))
                              (_%g210731210855%_)))))
                    (let () (declare (not safe)) (_%g210731210855%_)))
                (let () (declare (not safe)) (_%g210731210855%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g210731210855%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g210731210855%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g210731210855%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g210731210855%_)))))
                        (let () (declare (not safe)) (_%g210731210855%_)))
                    (let () (declare (not safe)) (_%g210731210855%_)))
                (let () (declare (not safe)) (_%g210731210855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g210731210855%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g210731210855%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g210731210855%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g210731210855%_)))))
                        (let () (declare (not safe)) (_%g210731210855%_)))))
                (let () (declare (not safe)) (_%g210731210855%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop210788210991%_
                                     _%target210785210986%_
                                     '()))))
                               (_%__match213682213683%_
                                (lambda (_%e210736211112%_
                                         _%hd210737211115%_
                                         _%tl210738211117%_
                                         _%__splice213659213660%_
                                         _%target210739211120%_
                                         _%tl210741211122%_)
                                  (letrec ((_%loop210742211125%_
                                            (lambda (_%hd210740211128%_
                                                     _%arg210746211130%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd210740211128%_))
                                                  (let ((_%e210743211132%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd210740211128%_))))
                                                    (let ((_%lp-tl210745211137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e210743211132%_)))
                                                          (_%lp-hd210744211135%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e210743211132%_))))
                                                      (_%loop210742211125%_
                                                       _%lp-tl210745211137%_
                                                       (cons _%lp-hd210744211135%_
                                                             _%arg210746211130%_))))
                                                  (let ((_%arg210747211140%_
                                                         (reverse _%arg210746211130%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl210738211117%_))
                                                        (let ((_%e210748211142%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl210738211117%_))))
                  (let ((_%tl210750211147%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e210748211142%_)))
                        (_%hd210749211145%_
                         (let ()
                           (declare (not safe))
                           (##car _%e210748211142%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd210749211145%_))
                        (let ((_%e210751211150%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd210749211145%_))))
                          (let ((_%tl210753211155%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210751211150%_)))
                                (_%hd210752211153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210751211150%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd210752211153%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd210752211153%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210753211155%_))
                                        (let ((_%e210754211158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl210753211155%_))))
                                          (let ((_%tl210756211163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210754211158%_)))
                                                (_%hd210755211161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210754211158%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd210755211161%_))
                                                (let ((_%e210757211166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd210755211161%_))))
                                                  (let ((_%tl210759211171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e210757211166%_)))
                                                        (_%hd210758211169%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e210757211166%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd210758211169%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd210758211169%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl210759211171%_))
                        (let ((_%e210760211174%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl210759211171%_))))
                          (let ((_%tl210762211179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210760211174%_)))
                                (_%hd210761211177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210760211174%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl210762211179%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl210756211163%_))
                                    (let ((_%__splice213661213662%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl210756211163%_
                                              '0))))
                                      (let ((_%tl210765211184%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213661213662%_
                                                '1)))
                                            (_%target210763211182%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice213661213662%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl210765211184%_))
                                            (letrec ((_%loop210766211187%_
                                                      (lambda (_%hd210764211190%_
                                                               _%xarg210770211192%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd210764211190%_))
                                                            (let ((_%e210767211194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd210764211190%_))))
                      (let ((_%lp-tl210769211199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e210767211194%_)))
                            (_%lp-hd210768211197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e210767211194%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd210768211197%_))
                            (let ((_%e210772211202%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd210768211197%_))))
                              (let ((_%tl210774211207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e210772211202%_)))
                                    (_%hd210773211205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e210772211202%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd210773211205%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd210773211205%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl210774211207%_))
                                            (let ((_%e210775211210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl210774211207%_))))
                                              (let ((_%tl210777211215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e210775211210%_)))
                                                    (_%hd210776211213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e210775211210%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl210777211215%_))
                                                    (_%loop210766211187%_
                                                     _%lp-tl210769211199%_
                                                     (cons _%hd210776211213%_
                                                           _%xarg210770211192%_))
                                                    (_%__match213694213695%_
                                                     _%e210736211112%_
                                                     _%hd210737211115%_
                                                     _%tl210738211117%_
                                                     _%__splice213659213660%_
                                                     _%target210739211120%_
                                                     _%tl210741211122%_))))
                                            (_%__match213694213695%_
                                             _%e210736211112%_
                                             _%hd210737211115%_
                                             _%tl210738211117%_
                                             _%__splice213659213660%_
                                             _%target210739211120%_
                                             _%tl210741211122%_))
                                        (_%__match213694213695%_
                                         _%e210736211112%_
                                         _%hd210737211115%_
                                         _%tl210738211117%_
                                         _%__splice213659213660%_
                                         _%target210739211120%_
                                         _%tl210741211122%_))
                                    (_%__match213694213695%_
                                     _%e210736211112%_
                                     _%hd210737211115%_
                                     _%tl210738211117%_
                                     _%__splice213659213660%_
                                     _%target210739211120%_
                                     _%tl210741211122%_))))
                            (_%__match213694213695%_
                             _%e210736211112%_
                             _%hd210737211115%_
                             _%tl210738211117%_
                             _%__splice213659213660%_
                             _%target210739211120%_
                             _%tl210741211122%_))))
                    (let ((_%xarg210771211218%_
                           (reverse _%xarg210770211192%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl210750211147%_))
                          (_%__kont213657213658%_
                           _%xarg210771211218%_
                           _%hd210761211177%_
                           _%arg210747211140%_)
                          (_%__match213694213695%_
                           _%e210736211112%_
                           _%hd210737211115%_
                           _%tl210738211117%_
                           _%__splice213659213660%_
                           _%target210739211120%_
                           _%tl210741211122%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop210766211187%_
                                               _%target210763211182%_
                                               '()))
                                            (_%__match213694213695%_
                                             _%e210736211112%_
                                             _%hd210737211115%_
                                             _%tl210738211117%_
                                             _%__splice213659213660%_
                                             _%target210739211120%_
                                             _%tl210741211122%_))))
                                    (_%__match213694213695%_
                                     _%e210736211112%_
                                     _%hd210737211115%_
                                     _%tl210738211117%_
                                     _%__splice213659213660%_
                                     _%target210739211120%_
                                     _%tl210741211122%_))
                                (_%__match213694213695%_
                                 _%e210736211112%_
                                 _%hd210737211115%_
                                 _%tl210738211117%_
                                 _%__splice213659213660%_
                                 _%target210739211120%_
                                 _%tl210741211122%_))))
                        (_%__match213694213695%_
                         _%e210736211112%_
                         _%hd210737211115%_
                         _%tl210738211117%_
                         _%__splice213659213660%_
                         _%target210739211120%_
                         _%tl210741211122%_))
                    (_%__match213694213695%_
                     _%e210736211112%_
                     _%hd210737211115%_
                     _%tl210738211117%_
                     _%__splice213659213660%_
                     _%target210739211120%_
                     _%tl210741211122%_))
                (_%__match213694213695%_
                 _%e210736211112%_
                 _%hd210737211115%_
                 _%tl210738211117%_
                 _%__splice213659213660%_
                 _%target210739211120%_
                 _%tl210741211122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match213694213695%_
                                                 _%e210736211112%_
                                                 _%hd210737211115%_
                                                 _%tl210738211117%_
                                                 _%__splice213659213660%_
                                                 _%target210739211120%_
                                                 _%tl210741211122%_))))
                                        (_%__match213694213695%_
                                         _%e210736211112%_
                                         _%hd210737211115%_
                                         _%tl210738211117%_
                                         _%__splice213659213660%_
                                         _%target210739211120%_
                                         _%tl210741211122%_))
                                    (_%__match213694213695%_
                                     _%e210736211112%_
                                     _%hd210737211115%_
                                     _%tl210738211117%_
                                     _%__splice213659213660%_
                                     _%target210739211120%_
                                     _%tl210741211122%_))
                                (_%__match213694213695%_
                                 _%e210736211112%_
                                 _%hd210737211115%_
                                 _%tl210738211117%_
                                 _%__splice213659213660%_
                                 _%target210739211120%_
                                 _%tl210741211122%_))))
                        (_%__match213694213695%_
                         _%e210736211112%_
                         _%hd210737211115%_
                         _%tl210738211117%_
                         _%__splice213659213660%_
                         _%target210739211120%_
                         _%tl210741211122%_))))
                (_%__match213694213695%_
                 _%e210736211112%_
                 _%hd210737211115%_
                 _%tl210738211117%_
                 _%__splice213659213660%_
                 _%target210739211120%_
                 _%tl210741211122%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop210742211125%_
                                     _%target210739211120%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx213655213656%_))
                              (let ((_%e210736211112%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx213655213656%_))))
                                (let ((_%tl210738211117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210736211112%_)))
                                      (_%hd210737211115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210736211112%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd210737211115%_))
                                      (let ((_%__splice213659213660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd210737211115%_
                                                '0))))
                                        (let ((_%tl210741211122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice213659213660%_
                                                  '1)))
                                              (_%target210739211120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice213659213660%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210741211122%_))
                                              (_%__match213682213683%_
                                               _%e210736211112%_
                                               _%hd210737211115%_
                                               _%tl210738211117%_
                                               _%__splice213659213660%_
                                               _%target210739211120%_
                                               _%tl210741211122%_)
                                              (_%__match213694213695%_
                                               _%e210736211112%_
                                               _%hd210737211115%_
                                               _%tl210738211117%_
                                               _%__splice213659213660%_
                                               _%target210739211120%_
                                               _%tl210741211122%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl210738211117%_))
                                          (let ((_%e210824210868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl210738211117%_))))
                                            (let ((_%tl210826210873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e210824210868%_)))
                                                  (_%hd210825210871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e210824210868%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd210825210871%_))
                                                  (let ((_%e210827210876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd210825210871%_))))
                                                    (let ((_%tl210829210881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e210827210876%_)))
                                                          (_%hd210828210879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e210827210876%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd210828210879%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd210828210879%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl210829210881%_))
                          (let ((_%e210830210884%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl210829210881%_))))
                            (let ((_%tl210832210889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e210830210884%_)))
                                  (_%hd210831210887%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e210830210884%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd210831210887%_))
                                  (let ((_%e210833210892%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd210831210887%_))))
                                    (let ((_%tl210835210897%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e210833210892%_)))
                                          (_%hd210834210895%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e210833210892%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd210834210895%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd210834210895%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl210835210897%_))
                                                  (let ((_%e210836210900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl210835210897%_))))
                                                    (let ((_%tl210838210905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e210836210900%_)))
                                                          (_%hd210837210903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e210836210900%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl210838210905%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl210832210889%_))
                      (let ((_%e210839210908%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl210832210889%_))))
                        (let ((_%tl210841210913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210839210908%_)))
                              (_%hd210840210911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210839210908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd210840210911%_))
                              (let ((_%e210842210916%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd210840210911%_))))
                                (let ((_%tl210844210921%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210842210916%_)))
                                      (_%hd210843210919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210842210916%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd210843210919%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd210843210919%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl210844210921%_))
                                              (let ((_%e210845210924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl210844210921%_))))
                                                (let ((_%tl210847210929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e210845210924%_)))
                                                      (_%hd210846210927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e210845210924%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl210847210929%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl210841210913%_))
                                                          (let ((_%e210848210932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl210841210913%_))))
                    (let ((_%tl210850210937%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e210848210932%_)))
                          (_%hd210849210935%_
                           (let ()
                             (declare (not safe))
                             (##car _%e210848210932%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl210850210937%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl210826210873%_))
                              (_%__kont213667213668%_
                               _%hd210846210927%_
                               _%hd210837210903%_
                               _%hd210737211115%_)
                              (let ()
                                (declare (not safe))
                                (_%g210731210855%_)))
                          (let () (declare (not safe)) (_%g210731210855%_)))))
                  (let () (declare (not safe)) (_%g210731210855%_)))
              (let () (declare (not safe)) (_%g210731210855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g210731210855%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g210731210855%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g210731210855%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g210731210855%_)))))
                      (let () (declare (not safe)) (_%g210731210855%_)))
                  (let () (declare (not safe)) (_%g210731210855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g210731210855%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g210731210855%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g210731210855%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g210731210855%_)))))
                          (let () (declare (not safe)) (_%g210731210855%_)))
                      (let () (declare (not safe)) (_%g210731210855%_)))
                  (let () (declare (not safe)) (_%g210731210855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g210731210855%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g210731210855%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g210731210855%_))))))))
                 (_%generate1210578%_
                  (lambda (_%args210709%_
                           _%arglen210710%_
                           _%hd210711%_
                           _%body210712%_)
                    (let* ((_%len210714%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd210711%_)))
                           (_%condition210719%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd210711%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen210710%_
                                                (cons _%len210714%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen210710%_ (cons _%len210714%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len210714%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen210710%_
                                                    (cons _%len210714%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen210710%_ (cons _%len210714%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch210721%_
                            (if (_%dispatch-case?210576%_
                                 _%hd210711%_
                                 _%body210712%_)
                                (_%dispatch-case-e210577%_
                                 _%hd210711%_
                                 _%body210712%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self210573%_
                                 _%hd210711%_
                                 _%body210712%_))))
                      (cons _%condition210719%_
                            (cons (cons 'apply
                                        (cons _%dispatch210721%_
                                              (cons _%args210709%_ '())))
                                  '()))))))
          (let* ((_%g210580210608%_
                  (lambda (_%g210581210605%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g210581210605%_))))
                 (_%g210579210706%_
                  (lambda (_%g210581210611%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g210581210611%_))
                        (let ((_%e210584210613%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g210581210611%_))))
                          (let ((_%hd210585210616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210584210613%_)))
                                (_%tl210586210618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210584210613%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl210586210618%_))
                                (let ((_g214824_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl210586210618%_
                                          '0))))
                                  (begin
                                    (let ((_g214825_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g214824_)
                                                 (##values-length _g214824_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g214825_ 2)))
                                          (error "Context expects 2 values"
                                                 _g214825_)))
                                    (let ((_%target210587210621%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g214824_ 0)))
                                          (_%tl210589210623%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g214824_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl210589210623%_))
                                          (letrec ((_%loop210590210626%_
                                                    (lambda (_%hd210588210629%_
                                                             _%body210594210631%_
                                                             _%hd210595210632%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd210588210629%_))
                                                          (let ((_%e210591210634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd210588210629%_))))
                    (let ((_%lp-hd210592210637%_
                           (let ()
                             (declare (not safe))
                             (##car _%e210591210634%_)))
                          (_%lp-tl210593210639%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e210591210634%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd210592210637%_))
                          (let ((_%e210598210642%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd210592210637%_))))
                            (let ((_%hd210599210645%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e210598210642%_)))
                                  (_%tl210600210647%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e210598210642%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl210600210647%_))
                                  (let ((_%e210601210650%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl210600210647%_))))
                                    (let ((_%hd210602210653%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e210601210650%_)))
                                          (_%tl210603210655%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e210601210650%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl210603210655%_))
                                          (_%loop210590210626%_
                                           _%lp-tl210593210639%_
                                           (cons _%hd210602210653%_
                                                 _%body210594210631%_)
                                           (cons _%hd210599210645%_
                                                 _%hd210595210632%_))
                                          (_%g210580210608%_
                                           _%g210581210611%_))))
                                  (_%g210580210608%_ _%g210581210611%_))))
                          (_%g210580210608%_ _%g210581210611%_))))
                  (let ((_%body210596210658%_ (reverse _%body210594210631%_))
                        (_%hd210597210659%_ (reverse _%hd210595210632%_)))
                    ((lambda (_%g210582210661%_ _%g210583210662%_)
                       (let ((_%args210681%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen210682%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name210683%_
                              (let ((_%$e210678%_
                                     (let ((__tmp214826
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp214826 _%stx210574%_))))
                                (if _%$e210678%_
                                    _%$e210678%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args210681%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen210682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args210681%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args210681%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp214830
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name210683%_
                                                                (cons _%args210681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp214827
                                  (map (lambda (_%g210684210687%_
                                                _%g210685210689%_)
                                         (_%generate1210578%_
                                          _%args210681%_
                                          _%arglen210682%_
                                          _%g210684210687%_
                                          _%g210685210689%_))
                                       (let ((__tmp214828
                                              (lambda (_%g210691210694%_
                                                       _%g210692210696%_)
                                                (cons _%g210691210694%_
                                                      _%g210692210696%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp214828
                                          '()
                                          _%g210583210662%_))
                                       (let ((__tmp214829
                                              (lambda (_%g210698210701%_
                                                       _%g210699210703%_)
                                                (cons _%g210698210701%_
                                                      _%g210699210703%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp214829
                                          '()
                                          _%g210582210661%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp214830 __tmp214827)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body210596210658%_
                     _%hd210597210659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop210590210626%_
                                             _%target210587210621%_
                                             '()
                                             '()))
                                          (_%g210580210608%_
                                           _%g210581210611%_)))))
                                (_%g210580210608%_ _%g210581210611%_))))
                        (_%g210580210608%_ _%g210581210611%_)))))
            (_%g210579210706%_ _%stx210574%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self209810%_ _%stx209811%_ _%compiled-body?209812%_)
        (letrec ((_%generate-simple209814%_
                  (lambda (_%hd210558%_ _%body210559%_)
                    (_%coalesce-boolean209815%_
                     (_%simplify-let209816%_
                      (gxc#generate-runtime-simple-let
                       _%self209810%_
                       'let
                       _%hd210558%_
                       _%body210559%_
                       _%compiled-body?209812%_)))))
                 (_%coalesce-boolean209815%_
                  (lambda (_%code210419%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code210420210446%_ _%code210419%_)
                               (_%else210422210454%_
                                (lambda () _%code210419%_))
                               (_%K210424210491%_
                                (lambda (_%expr2210457%_
                                         _%expr1210458%_
                                         _%id210459%_)
                                  (let* ((_%expr2210460210468%_
                                          _%expr2210457%_)
                                         (_%else210462210476%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1210458%_
                                                        (cons _%expr2210457%_
                                                              '())))))
                                         (_%K210464210481%_
                                          (lambda (_%exprs210479%_)
                                            (cons 'or
                                                  (cons _%expr1210458%_
                                                        _%exprs210479%_)))))
                                    (if (pair? _%expr2210460210468%_)
                                        (let ((_%hd210465210484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2210460210468%_)))
                                              (_%tl210466210486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2210460210468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd210465210484%_ 'or))
                                              (let ((_%exprs210489%_
                                                     _%tl210466210486%_))
                                                (_%K210464210481%_
                                                 _%exprs210489%_))
                                              (_%else210462210476%_)))
                                        (_%else210462210476%_))))))
                          (if (pair? _%code210420210446%_)
                              (let ((_%hd210425210494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code210420210446%_)))
                                    (_%tl210426210496%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code210420210446%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd210425210494%_ 'let))
                                    (if (pair? _%tl210426210496%_)
                                        (let ((_%hd210427210499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl210426210496%_)))
                                              (_%tl210428210501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl210426210496%_))))
                                          (if (pair? _%hd210427210499%_)
                                              (let ((_%hd210439210504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd210427210499%_)))
                                                    (_%tl210440210506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd210427210499%_))))
                                                (if (pair? _%hd210439210504%_)
                                                    (let ((_%hd210441210509%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd210439210504%_)))
                                                          (_%tl210442210511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd210439210504%_))))
                                                      (let ((_%id210514%_
                                                             _%hd210441210509%_))
                                                        (if (pair? _%tl210442210511%_)
                                                            (let ((_%hd210443210516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl210442210511%_)))
                          (_%tl210444210518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl210442210511%_))))
                      (let ((_%expr1210521%_ _%hd210443210516%_))
                        (if (null? _%tl210444210518%_)
                            (if (null? _%tl210440210506%_)
                                (if (pair? _%tl210428210501%_)
                                    (let ((_%hd210429210523%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl210428210501%_)))
                                          (_%tl210430210525%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl210428210501%_))))
                                      (if (pair? _%hd210429210523%_)
                                          (let ((_%hd210431210528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd210429210523%_)))
                                                (_%tl210432210530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd210429210523%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd210431210528%_
                                                         'if))
                                                (if (pair? _%tl210432210530%_)
                                                    (let ((_%hd210433210533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl210432210530%_)))
                                                          (_%tl210434210535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl210432210530%_))))
                                                      (if ((lambda (_%g210537210539%_)
                                                             (eq? _%g210537210539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id210514%_))
                   _%hd210433210533%_)
                  (if (pair? _%tl210434210535%_)
                      (let ((_%hd210435210542%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl210434210535%_)))
                            (_%tl210436210544%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl210434210535%_))))
                        (if ((lambda (_%g210546210548%_)
                               (eq? _%g210546210548%_ _%id210514%_))
                             _%hd210435210542%_)
                            (if (pair? _%tl210436210544%_)
                                (let ((_%hd210437210551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl210436210544%_)))
                                      (_%tl210438210553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl210436210544%_))))
                                  (let ((_%expr2210556%_ _%hd210437210551%_))
                                    (if (null? _%tl210438210553%_)
                                        (if (null? _%tl210430210525%_)
                                            (_%K210424210491%_
                                             _%expr2210556%_
                                             _%expr1210521%_
                                             _%id210514%_)
                                            (_%else210422210454%_))
                                        (_%else210422210454%_))))
                                (_%else210422210454%_))
                            (_%else210422210454%_)))
                      (_%else210422210454%_))
                  (_%else210422210454%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else210422210454%_))
                                                (_%else210422210454%_)))
                                          (_%else210422210454%_)))
                                    (_%else210422210454%_))
                                (_%else210422210454%_))
                            (_%else210422210454%_))))
                    (_%else210422210454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else210422210454%_)))
                                              (_%else210422210454%_)))
                                        (_%else210422210454%_))
                                    (_%else210422210454%_)))
                              (_%else210422210454%_)))
                        _%code210419%_)))
                 (_%simplify-let209816%_
                  (lambda (_%code210118%_)
                    (let* ((_%code210119210191%_ _%code210118%_)
                           (_%else210124210199%_ (lambda () _%code210118%_)))
                      (let ((_%K210183210399%_
                             (lambda (_%expr210397%_) _%expr210397%_))
                            (_%K210166210345%_
                             (lambda (_%body210341%_
                                      _%expr210342%_
                                      _%id210343%_)
                               (cons 'let
                                     (cons (cons (cons _%id210343%_
                                                       (cons _%expr210342%_
                                                             '()))
                                                 '())
                                           _%body210341%_))))
                            (_%K210143210269%_
                             (lambda (_%body210263%_
                                      _%expr2210264%_
                                      _%id2210265%_
                                      _%expr1210266%_
                                      _%id1210267%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1210267%_
                                                       (cons _%expr1210266%_
                                                             '()))
                                                 (cons (cons _%id2210265%_
                                                             (cons _%expr2210264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body210263%_))))
                            (_%K210126210208%_
                             (lambda (_%body210203%_
                                      _%bind210204%_
                                      _%expr1210205%_
                                      _%id1210206%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1210206%_
                                                       (cons _%expr1210205%_
                                                             '()))
                                                 _%bind210204%_)
                                           _%body210203%_)))))
                        (if (pair? _%code210119210191%_)
                            (let ((_%tl210185210404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code210119210191%_)))
                                  (_%hd210184210402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code210119210191%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd210184210402%_ 'let))
                                  (if (pair? _%tl210185210404%_)
                                      (let ((_%tl210187210409%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl210185210404%_)))
                                            (_%hd210186210407%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl210185210404%_))))
                                        (if (null? _%hd210186210407%_)
                                            (if (pair? _%tl210187210409%_)
                                                (let ((_%tl210189210414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl210187210409%_)))
                                                      (_%hd210188210412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl210187210409%_))))
                                                  (if (null? _%tl210189210414%_)
                                                      (let ((_%expr210417%_
                                                             _%hd210188210412%_))
                                                        (_%K210183210399%_
                                                         _%expr210417%_))
                                                      (_%else210124210199%_)))
                                                (_%else210124210199%_))
                                            (if (pair? _%hd210186210407%_)
                                                (let ((_%tl210178210360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd210186210407%_)))
                                                      (_%hd210177210358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd210186210407%_))))
                                                  (if (pair? _%hd210177210358%_)
                                                      (let ((_%tl210180210365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd210177210358%_)))
                    (_%hd210179210363%_
                     (let () (declare (not safe)) (##car _%hd210177210358%_))))
                (if (pair? _%tl210180210365%_)
                    (let ((_%tl210182210372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl210180210365%_)))
                          (_%hd210181210370%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl210180210365%_))))
                      (if (null? _%tl210182210372%_)
                          (if (null? _%tl210178210360%_)
                              (if (pair? _%tl210187210409%_)
                                  (let ((_%tl210172210379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl210187210409%_)))
                                        (_%hd210171210377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl210187210409%_))))
                                    (if (pair? _%hd210171210377%_)
                                        (let ((_%tl210174210384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd210171210377%_)))
                                              (_%hd210173210382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd210171210377%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd210173210382%_
                                                       'let))
                                              (if (pair? _%tl210174210384%_)
                                                  (let ((_%tl210176210389%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl210174210384%_)))
                                                        (_%hd210175210387%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl210174210384%_))))
                                                    (if (null? _%hd210175210387%_)
                                                        (if (null? _%tl210172210379%_)
                                                            (let ((_%id210368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd210179210363%_)
                          (_%expr210375%_ _%hd210181210370%_)
                          (_%body210392%_ _%tl210176210389%_))
                      (_%K210166210345%_
                       _%body210392%_
                       _%expr210375%_
                       _%id210368%_))
                    (_%else210124210199%_))
                (if (pair? _%hd210175210387%_)
                    (let ((_%tl210155210318%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd210175210387%_)))
                          (_%hd210154210316%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd210175210387%_))))
                      (if (pair? _%hd210154210316%_)
                          (let ((_%tl210157210323%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd210154210316%_)))
                                (_%hd210156210321%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd210154210316%_))))
                            (if (pair? _%tl210157210323%_)
                                (let ((_%tl210159210330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl210157210323%_)))
                                      (_%hd210158210328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl210157210323%_))))
                                  (if (null? _%tl210159210330%_)
                                      (if (null? _%tl210155210318%_)
                                          (if (null? _%tl210172210379%_)
                                              (let ((_%id1210292%_
                                                     _%hd210179210363%_)
                                                    (_%expr1210299%_
                                                     _%hd210181210370%_)
                                                    (_%id2210326%_
                                                     _%hd210156210321%_)
                                                    (_%expr2210333%_
                                                     _%hd210158210328%_)
                                                    (_%body210335%_
                                                     _%tl210176210389%_))
                                                (_%K210143210269%_
                                                 _%body210335%_
                                                 _%expr2210333%_
                                                 _%id2210326%_
                                                 _%expr1210299%_
                                                 _%id1210292%_))
                                              (_%else210124210199%_))
                                          (_%else210124210199%_))
                                      (_%else210124210199%_)))
                                (_%else210124210199%_)))
                          (_%else210124210199%_)))
                    (_%else210124210199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else210124210199%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd210173210382%_
                                                           'let*))
                                                  (if (pair? _%tl210174210384%_)
                                                      (let ((_%tl210136210252%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl210174210384%_)))
                    (_%hd210135210250%_
                     (let () (declare (not safe)) (##car _%tl210174210384%_))))
                (if (null? _%tl210172210379%_)
                    (let ((_%id1210231%_ _%hd210179210363%_)
                          (_%expr1210238%_ _%hd210181210370%_)
                          (_%bind210255%_ _%hd210135210250%_)
                          (_%body210257%_ _%tl210136210252%_))
                      (_%K210126210208%_
                       _%body210257%_
                       _%bind210255%_
                       _%expr1210238%_
                       _%id1210231%_))
                    (_%else210124210199%_)))
              (_%else210124210199%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else210124210199%_))))
                                        (_%else210124210199%_)))
                                  (_%else210124210199%_))
                              (_%else210124210199%_))
                          (_%else210124210199%_)))
                    (_%else210124210199%_)))
              (_%else210124210199%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else210124210199%_))))
                                      (_%else210124210199%_))
                                  (_%else210124210199%_)))
                            (_%else210124210199%_))))))
                 (_%generate-values209817%_
                  (lambda (_%hd209931%_ _%body209932%_)
                    (let _%lp209934%_ ((_%rest209936%_ _%hd209931%_)
                                       (_%bind209937%_ '())
                                       (_%check209938%_ '())
                                       (_%post209939%_ '()))
                      (let* ((_%__stx213984213985%_ _%rest209936%_)
                             (_%g209942209953%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx213984213985%_)))))
                        (let ((_%__kont213986213987%_
                               (lambda (_%g209944209980%_ _%g209945209981%_)
                                 (let* ((_%__stx213940213941%_
                                         _%g209945209981%_)
                                        (_%g209996210021%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx213940213941%_)))))
                                   (let ((_%__kont213942213943%_
                                          (lambda (_%g209998210094%_
                                                   _%g209999210095%_)
                                            (let ((_%eid210109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g209999210095%_)))
                                                  (_%expr210110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209810%_
                                                      _%g209998210094%_))))
                                              (_%lp209934%_
                                               _%g209944209980%_
                                               (cons (cons _%eid210109%_
                                                           (cons _%expr210110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind209937%_)
                                               _%check209938%_
                                               _%post209939%_))))
                                         (_%__kont213944213945%_
                                          (lambda (_%g210009210042%_
                                                   _%g210010210043%_)
                                            (let* ((_%vals210056%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values210058%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals210056%_
                                                     _%g210010210043%_
                                                     _%g210009210042%_))
                                                   (_%refs210060%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals210056%_
                                                     _%g210010210043%_))
                                                   (_%expr210062%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self209810%_
                                                       _%g210009210042%_))))
                                              (_%lp209934%_
                                               _%g209944209980%_
                                               (cons (cons _%vals210056%_
                                                           (cons _%expr210062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind209937%_)
                                               (cons _%check-values210058%_
                                                     _%check209938%_)
                                               (cons _%refs210060%_
                                                     _%post209939%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx213940213941%_))
                                         (let ((_%e210000210070%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx213940213941%_))))
                                           (let ((_%tl210002210075%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e210000210070%_)))
                                                 (_%hd210001210073%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e210000210070%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd210001210073%_))
                                                 (let ((_%e210003210078%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd210001210073%_))))
                                                   (let ((_%tl210005210083%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e210003210078%_)))
                                                         (_%hd210004210081%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e210003210078%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl210005210083%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl210002210075%_))
                     (let ((_%e210006210086%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl210002210075%_))))
                       (let ((_%tl210008210091%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e210006210086%_)))
                             (_%hd210007210089%_
                              (let ()
                                (declare (not safe))
                                (##car _%e210006210086%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl210008210091%_))
                             (_%__kont213942213943%_
                              _%hd210007210089%_
                              _%hd210004210081%_)
                             (let ()
                               (declare (not safe))
                               (_%g209996210021%_)))))
                     (let () (declare (not safe)) (_%g209996210021%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl210002210075%_))
                     (let ((_%e210014210034%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl210002210075%_))))
                       (let ((_%tl210016210039%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e210014210034%_)))
                             (_%hd210015210037%_
                              (let ()
                                (declare (not safe))
                                (##car _%e210014210034%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl210016210039%_))
                             (_%__kont213944213945%_
                              _%hd210015210037%_
                              _%hd210001210073%_)
                             (let ()
                               (declare (not safe))
                               (_%g209996210021%_)))))
                     (let () (declare (not safe)) (_%g209996210021%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl210002210075%_))
                                                     (let ((_%e210014210034%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl210002210075%_))))
                                                       (let ((_%tl210016210039%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e210014210034%_)))
                     (_%hd210015210037%_
                      (let () (declare (not safe)) (##car _%e210014210034%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl210016210039%_))
                     (_%__kont213944213945%_
                      _%hd210015210037%_
                      _%hd210001210073%_)
                     (let () (declare (not safe)) (_%g209996210021%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g209996210021%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g209996210021%_)))))))
                              (_%__kont213988213989%_
                               (lambda ()
                                 (let* ((_%body209960%_
                                         (if _%compiled-body?209812%_
                                             _%body209932%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self209810%_
                                                _%body209932%_))))
                                        (_%body209962%_
                                         (_%generate-values-post209818%_
                                          _%post209939%_
                                          _%body209960%_))
                                        (_%body209964%_
                                         (_%generate-values-check209819%_
                                          _%check209938%_
                                          _%body209962%_)))
                                   (cons 'let
                                         (cons (reverse _%bind209937%_)
                                               (cons _%body209964%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx213984213985%_))
                              (let ((_%e209946209972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx213984213985%_))))
                                (let ((_%tl209948209977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209946209972%_)))
                                      (_%hd209947209975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209946209972%_))))
                                  (_%__kont213986213987%_
                                   _%tl209948209977%_
                                   _%hd209947209975%_)))
                              (_%__kont213988213989%_)))))))
                 (_%generate-values-post209818%_
                  (lambda (_%post209890%_ _%body209891%_)
                    (let _%lp209893%_ ((_%rest209895%_ _%post209890%_)
                                       (_%body209896%_ _%body209891%_))
                      (let* ((_%rest209897209905%_ _%rest209895%_)
                             (_%else209899209913%_ (lambda () _%body209896%_))
                             (_%K209901209919%_
                              (lambda (_%rest209916%_ _%bind209917%_)
                                (_%lp209893%_
                                 _%rest209916%_
                                 (cons 'let
                                       (cons _%bind209917%_
                                             (cons _%body209896%_ '())))))))
                        (if (pair? _%rest209897209905%_)
                            (let ((_%hd209902209922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest209897209905%_)))
                                  (_%tl209903209924%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest209897209905%_))))
                              (let* ((_%bind209927%_ _%hd209902209922%_)
                                     (_%rest209929%_ _%tl209903209924%_))
                                (_%K209901209919%_
                                 _%rest209929%_
                                 _%bind209927%_)))
                            (_%else209899209913%_))))))
                 (_%generate-values-check209819%_
                  (lambda (_%check209887%_ _%body209888%_)
                    (cons 'begin
                          (let ((__tmp214832 (cons _%body209888%_ '()))
                                (__tmp214831 (reverse _%check209887%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp214832 __tmp214831))))))
          (let* ((_%g209821209838%_
                  (lambda (_%g209822209835%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g209822209835%_))))
                 (_%g209820209884%_
                  (lambda (_%g209822209841%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g209822209841%_))
                        (let ((_%e209825209843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g209822209841%_))))
                          (let ((_%hd209826209846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209825209843%_)))
                                (_%tl209827209848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209825209843%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl209827209848%_))
                                (let ((_%e209828209851%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl209827209848%_))))
                                  (let ((_%hd209829209854%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e209828209851%_)))
                                        (_%tl209830209856%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e209828209851%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl209830209856%_))
                                        (let ((_%e209831209859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl209830209856%_))))
                                          (let ((_%hd209832209862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209831209859%_)))
                                                (_%tl209833209864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209831209859%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl209833209864%_))
                                                ((lambda (_%g209823209867%_
                                                          _%g209824209868%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g209824209868%_)
                                                       (_%generate-simple209814%_
                                                        _%g209824209868%_
                                                        _%g209823209867%_)
                                                       (_%generate-values209817%_
                                                        _%g209824209868%_
                                                        _%g209823209867%_)))
                                                 _%hd209832209862%_
                                                 _%hd209829209854%_)
                                                (_%g209821209838%_
                                                 _%g209822209841%_))))
                                        (_%g209821209838%_
                                         _%g209822209841%_))))
                                (_%g209821209838%_ _%g209822209841%_))))
                        (_%g209821209838%_ _%g209822209841%_)))))
            (_%g209820209884%_ _%stx209811%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self210564%_ _%stx210565%_)
        (let ((_%compiled-body?210567%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self210564%_
           _%stx210565%_
           _%compiled-body?210567%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g214833_
        (let ((_g214834_ (let () (declare (not safe)) (##length _g214833_))))
          (cond ((let () (declare (not safe)) (##fx= _g214834_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g214833_))
                ((let () (declare (not safe)) (##fx= _g214834_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g214833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g214833_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals209704%_ _%hd209705%_)
        (let _%lp209707%_ ((_%rest209709%_ _%hd209705%_)
                           (_%k209710%_ '0)
                           (_%r209711%_ '()))
          (let* ((_%__stx213998213999%_ _%rest209709%_)
                 (_%g209716209733%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx213998213999%_)))))
            (let ((_%__kont214000214001%_
                   (lambda (_%g209718209796%_)
                     (_%lp209707%_
                      _%g209718209796%_
                      (let () (declare (not safe)) (##fx+ _%k209710%_ '1))
                      _%r209711%_)))
                  (_%__kont214002214003%_
                   (lambda (_%g209723209769%_ _%g209724209770%_)
                     (_%lp209707%_
                      _%g209723209769%_
                      (let () (declare (not safe)) (##fx+ _%k209710%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g209724209770%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals209704%_
                                         _%k209710%_
                                         _%g209723209769%_)
                                        '()))
                            _%r209711%_))))
                  (_%__kont214004214005%_
                   (lambda (_%g209728209745%_)
                     (let ((__tmp214835
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g209728209745%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals209704%_
                                               _%k209710%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp214835 _%r209711%_))))
                  (_%__kont214006214007%_ (lambda () (reverse _%r209711%_))))
              (let ((_%g209714209756%_
                     (lambda ()
                       (let ((_%g209728209745%_ _%__stx213998213999%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g209728209745%_))
                             (_%__kont214004214005%_ _%g209728209745%_)
                             (_%__kont214006214007%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx213998213999%_))
                    (let ((_%e209719209785%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx213998213999%_))))
                      (let ((_%tl209721209790%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e209719209785%_)))
                            (_%hd209720209788%_
                             (let ()
                               (declare (not safe))
                               (##car _%e209719209785%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd209720209788%_))
                            (let ((_%e209722209793%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd209720209788%_))))
                              (if (equal? _%e209722209793%_ '#f)
                                  (_%__kont214000214001%_ _%tl209721209790%_)
                                  (_%__kont214002214003%_
                                   _%tl209721209790%_
                                   _%hd209720209788%_)))
                            (_%__kont214002214003%_
                             _%tl209721209790%_
                             _%hd209720209788%_))))
                    (let () (declare (not safe)) (_%g209714209756%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self209383%_ _%stx209384%_ _%compiled-body?209385%_)
        (letrec ((_%generate-simple209387%_
                  (lambda (_%hd209689%_ _%body209690%_)
                    (gxc#generate-runtime-simple-let
                     _%self209383%_
                     'letrec
                     _%hd209689%_
                     _%body209690%_
                     _%compiled-body?209385%_)))
                 (_%generate-values209388%_
                  (lambda (_%hd209468%_ _%body209469%_)
                    (let _%lp209471%_ ((_%rest209473%_ _%hd209468%_)
                                       (_%bind209474%_ '())
                                       (_%check209475%_ '())
                                       (_%post209476%_ '()))
                      (let* ((_%__stx214072214073%_ _%rest209473%_)
                             (_%g209479209490%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214072214073%_)))))
                        (let ((_%__kont214074214075%_
                               (lambda (_%g209481209517%_ _%g209482209518%_)
                                 (let* ((_%__stx214028214029%_
                                         _%g209482209518%_)
                                        (_%g209533209558%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx214028214029%_)))))
                                   (let ((_%__kont214030214031%_
                                          (lambda (_%g209535209665%_
                                                   _%g209536209666%_)
                                            (let ((_%eid209680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g209536209666%_)))
                                                  (_%expr209681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209383%_
                                                      _%g209535209665%_))))
                                              (_%lp209471%_
                                               _%g209481209517%_
                                               (cons (cons _%eid209680%_
                                                           (cons _%expr209681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind209474%_)
                                               _%check209475%_
                                               _%post209476%_))))
                                         (_%__kont214032214033%_
                                          (lambda (_%g209546209579%_
                                                   _%g209547209580%_)
                                            (let* ((_%vals209593%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values209595%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals209593%_
                                                     _%g209547209580%_
                                                     _%g209546209579%_))
                                                   (_%refs209597%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals209593%_
                                                     _%g209547209580%_))
                                                   (_%expr209599%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self209383%_
                                                       _%g209546209579%_))))
                                              (_%lp209471%_
                                               _%g209481209517%_
                                               (let ((__tmp214837
                                                      (cons (cons _%vals209593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr209599%_ '()))
                    _%bind209474%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp214836
                                                      (map (lambda (_%e209601209603%_)
                                                             (let* ((_%e209601209605209614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e209601209603%_)
                            (_%E209607209618%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e209601209605209614%_
                                        '([eid _])))
                               '#!void))
                            (_%K209608209623%_
                             (lambda (_%eid209621%_)
                               (cons _%eid209621%_ (cons '#!void '())))))
                       (if (pair? _%e209601209605209614%_)
                           (let ((_%hd209609209626%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e209601209605209614%_)))
                                 (_%tl209610209628%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e209601209605209614%_))))
                             (let ((_%eid209631%_ _%hd209609209626%_))
                               (if (pair? _%tl209610209628%_)
                                   (let ((_%tl209612209633%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl209610209628%_))))
                                     (if (null? _%tl209612209633%_)
                                         (_%K209608209623%_ _%eid209631%_)
                                         (_%E209607209618%_)))
                                   (_%E209607209618%_))))
                           (_%E209607209618%_))))
                   _%refs209597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp214837
                                                  __tmp214836))
                                               (cons _%check-values209595%_
                                                     _%check209475%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs209597%_
                                                  _%post209476%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx214028214029%_))
                                         (let ((_%e209537209641%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx214028214029%_))))
                                           (let ((_%tl209539209646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e209537209641%_)))
                                                 (_%hd209538209644%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e209537209641%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd209538209644%_))
                                                 (let ((_%e209540209649%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd209538209644%_))))
                                                   (let ((_%tl209542209654%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e209540209649%_)))
                                                         (_%hd209541209652%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e209540209649%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl209542209654%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl209539209646%_))
                     (let ((_%e209543209657%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl209539209646%_))))
                       (let ((_%tl209545209662%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e209543209657%_)))
                             (_%hd209544209660%_
                              (let ()
                                (declare (not safe))
                                (##car _%e209543209657%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl209545209662%_))
                             (_%__kont214030214031%_
                              _%hd209544209660%_
                              _%hd209541209652%_)
                             (let ()
                               (declare (not safe))
                               (_%g209533209558%_)))))
                     (let () (declare (not safe)) (_%g209533209558%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl209539209646%_))
                     (let ((_%e209551209571%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl209539209646%_))))
                       (let ((_%tl209553209576%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e209551209571%_)))
                             (_%hd209552209574%_
                              (let ()
                                (declare (not safe))
                                (##car _%e209551209571%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl209553209576%_))
                             (_%__kont214032214033%_
                              _%hd209552209574%_
                              _%hd209538209644%_)
                             (let ()
                               (declare (not safe))
                               (_%g209533209558%_)))))
                     (let () (declare (not safe)) (_%g209533209558%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl209539209646%_))
                                                     (let ((_%e209551209571%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl209539209646%_))))
                                                       (let ((_%tl209553209576%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e209551209571%_)))
                     (_%hd209552209574%_
                      (let () (declare (not safe)) (##car _%e209551209571%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl209553209576%_))
                     (_%__kont214032214033%_
                      _%hd209552209574%_
                      _%hd209538209644%_)
                     (let () (declare (not safe)) (_%g209533209558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g209533209558%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g209533209558%_)))))))
                              (_%__kont214076214077%_
                               (lambda ()
                                 (let* ((_%body209497%_
                                         (if _%compiled-body?209385%_
                                             _%body209469%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self209383%_
                                                _%body209469%_))))
                                        (_%body209499%_
                                         (_%generate-values-post209390%_
                                          _%post209476%_
                                          _%body209497%_))
                                        (_%body209501%_
                                         (_%generate-values-check209389%_
                                          _%check209475%_
                                          _%body209499%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind209474%_)
                                               (cons _%body209501%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214072214073%_))
                              (let ((_%e209483209509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214072214073%_))))
                                (let ((_%tl209485209514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209483209509%_)))
                                      (_%hd209484209512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209483209509%_))))
                                  (_%__kont214074214075%_
                                   _%tl209485209514%_
                                   _%hd209484209512%_)))
                              (_%__kont214076214077%_)))))))
                 (_%generate-values-check209389%_
                  (lambda (_%check209465%_ _%body209466%_)
                    (cons 'begin
                          (let ((__tmp214839 (cons _%body209466%_ '()))
                                (__tmp214838 (reverse _%check209465%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp214839 __tmp214838)))))
                 (_%generate-values-post209390%_
                  (lambda (_%post209458%_ _%body209459%_)
                    (cons 'begin
                          (let ((__tmp214843 (cons _%body209459%_ '()))
                                (__tmp214840
                                 (let ((__tmp214842
                                        (lambda (_%g209460209462%_)
                                          (cons 'set! _%g209460209462%_)))
                                       (__tmp214841 (reverse _%post209458%_)))
                                   (declare (not safe))
                                   (##map __tmp214842 __tmp214841))))
                            (declare (not safe))
                            (foldr__0 cons __tmp214843 __tmp214840))))))
          (let* ((_%g209392209409%_
                  (lambda (_%g209393209406%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g209393209406%_))))
                 (_%g209391209455%_
                  (lambda (_%g209393209412%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g209393209412%_))
                        (let ((_%e209396209414%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g209393209412%_))))
                          (let ((_%hd209397209417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209396209414%_)))
                                (_%tl209398209419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209396209414%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl209398209419%_))
                                (let ((_%e209399209422%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl209398209419%_))))
                                  (let ((_%hd209400209425%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e209399209422%_)))
                                        (_%tl209401209427%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e209399209422%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl209401209427%_))
                                        (let ((_%e209402209430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl209401209427%_))))
                                          (let ((_%hd209403209433%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209402209430%_)))
                                                (_%tl209404209435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209402209430%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl209404209435%_))
                                                ((lambda (_%g209394209438%_
                                                          _%g209395209439%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g209395209439%_)
                                                       (_%generate-simple209387%_
                                                        _%g209395209439%_
                                                        _%g209394209438%_)
                                                       (_%generate-values209388%_
                                                        _%g209395209439%_
                                                        _%g209394209438%_)))
                                                 _%hd209403209433%_
                                                 _%hd209400209425%_)
                                                (_%g209392209409%_
                                                 _%g209393209412%_))))
                                        (_%g209392209409%_
                                         _%g209393209412%_))))
                                (_%g209392209409%_ _%g209393209412%_))))
                        (_%g209392209409%_ _%g209393209412%_)))))
            (_%g209391209455%_ _%stx209384%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self209695%_ _%stx209696%_)
        (let ((_%compiled-body?209698%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self209695%_
           _%stx209696%_
           _%compiled-body?209698%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g214844_
        (let ((_g214845_ (let () (declare (not safe)) (##length _g214844_))))
          (cond ((let () (declare (not safe)) (##fx= _g214845_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g214844_))
                ((let () (declare (not safe)) (##fx= _g214845_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g214844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g214844_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self208964%_ _%stx208965%_)
        (letrec ((_%generate-values208967%_
                  (lambda (_%hd209210%_ _%body209211%_)
                    (let _%lp209213%_ ((_%rest209215%_ _%hd209210%_)
                                       (_%bind209216%_ '()))
                      (let* ((_%rest209217209225%_ _%rest209215%_)
                             (_%else209219209236%_
                              (lambda ()
                                (let ((_%bind209233%_ (reverse _%bind209216%_))
                                      (_%body209234%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self208964%_
                                          _%body209211%_))))
                                  (cons 'letrec*
                                        (cons _%bind209233%_
                                              (cons _%body209234%_ '()))))))
                             (_%K209221209370%_
                              (lambda (_%rest209239%_ _%hd-bind209240%_)
                                (let* ((_%__stx214086214087%_
                                        _%hd-bind209240%_)
                                       (_%g209243209268%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx214086214087%_)))))
                                  (let ((_%__kont214088214089%_
                                         (lambda (_%g209245209349%_
                                                  _%g209246209350%_)
                                           (let ((_%eid209364%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g209246209350%_)))
                                                 (_%expr209365%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self208964%_
                                                     _%g209245209349%_))))
                                             (_%lp209213%_
                                              _%rest209239%_
                                              (cons (cons _%eid209364%_
                                                          (cons _%expr209365%_
                                                                '()))
                                                    _%bind209216%_)))))
                                        (_%__kont214090214091%_
                                         (lambda (_%g209256209289%_
                                                  _%g209257209290%_)
                                           (let* ((_%vals209309%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp209311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values209313%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp209311%_
                                                    _%g209257209290%_
                                                    _%g209256209289%_))
                                                  (_%refs209315%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals209309%_
                                                    _%g209257209290%_))
                                                  (_%expr209317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208964%_
                                                      _%g209256209289%_))))
                                             (_%lp209213%_
                                              _%rest209239%_
                                              (let ((__tmp214846
                                                     (cons (cons _%vals209309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp209311%_
                                                       (cons _%expr209317%_
                                                             '()))
                                                 '())
                                           (cons _%check-values209313%_
                                                 (cons _%tmp209311%_ '()))))
                               '()))
                   _%bind209216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp214846
                                                 _%refs209315%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx214086214087%_))
                                        (let ((_%e209247209325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx214086214087%_))))
                                          (let ((_%tl209249209330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209247209325%_)))
                                                (_%hd209248209328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209247209325%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd209248209328%_))
                                                (let ((_%e209250209333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd209248209328%_))))
                                                  (let ((_%tl209252209338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e209250209333%_)))
                                                        (_%hd209251209336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e209250209333%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl209252209338%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl209249209330%_))
                                                            (let ((_%e209253209341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl209249209330%_))))
                      (let ((_%tl209255209346%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e209253209341%_)))
                            (_%hd209254209344%_
                             (let ()
                               (declare (not safe))
                               (##car _%e209253209341%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl209255209346%_))
                            (_%__kont214088214089%_
                             _%hd209254209344%_
                             _%hd209251209336%_)
                            (let ()
                              (declare (not safe))
                              (_%g209243209268%_)))))
                    (let () (declare (not safe)) (_%g209243209268%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl209249209330%_))
                    (let ((_%e209261209281%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl209249209330%_))))
                      (let ((_%tl209263209286%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e209261209281%_)))
                            (_%hd209262209284%_
                             (let ()
                               (declare (not safe))
                               (##car _%e209261209281%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl209263209286%_))
                            (_%__kont214090214091%_
                             _%hd209262209284%_
                             _%hd209248209328%_)
                            (let ()
                              (declare (not safe))
                              (_%g209243209268%_)))))
                    (let () (declare (not safe)) (_%g209243209268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl209249209330%_))
                                                    (let ((_%e209261209281%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl209249209330%_))))
                                                      (let ((_%tl209263209286%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e209261209281%_)))
                    (_%hd209262209284%_
                     (let () (declare (not safe)) (##car _%e209261209281%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl209263209286%_))
                    (_%__kont214090214091%_
                     _%hd209262209284%_
                     _%hd209248209328%_)
                    (let () (declare (not safe)) (_%g209243209268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g209243209268%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g209243209268%_))))))))
                        (if (pair? _%rest209217209225%_)
                            (let ((_%hd209222209373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest209217209225%_)))
                                  (_%tl209223209375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest209217209225%_))))
                              (let* ((_%hd-bind209378%_ _%hd209222209373%_)
                                     (_%rest209380%_ _%tl209223209375%_))
                                (_%K209221209370%_
                                 _%rest209380%_
                                 _%hd-bind209378%_)))
                            (_%else209219209236%_))))))
                 (_%generate-letrec?208968%_
                  (lambda (_%hd209100%_)
                    (let _%lp209102%_ ((_%rest209104%_ _%hd209100%_))
                      (let* ((_%rest209105209113%_ _%rest209104%_)
                             (_%else209107209121%_ (lambda () '#t))
                             (_%K209109209198%_
                              (lambda (_%rest209124%_ _%hd-bind209125%_)
                                (let* ((_%g209127209144%_
                                        (lambda (_%g209128209141%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g209128209141%_))))
                                       (_%g209126209195%_
                                        (lambda (_%g209128209147%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g209128209147%_))
                                              (let ((_%e209131209149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g209128209147%_))))
                                                (let ((_%hd209132209152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209131209149%_)))
                                                      (_%tl209133209154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209131209149%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd209132209152%_))
                                                      (let ((_%e209134209157%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd209132209152%_))))
                (let ((_%hd209135209160%_
                       (let () (declare (not safe)) (##car _%e209134209157%_)))
                      (_%tl209136209162%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e209134209157%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl209136209162%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209133209154%_))
                          (let ((_%e209137209165%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl209133209154%_))))
                            (let ((_%hd209138209168%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209137209165%_)))
                                  (_%tl209139209170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209137209165%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209139209170%_))
                                  ((lambda (_%g209129209173%_
                                            _%g209130209174%_)
                                     (if (_%is-lambda-expr?208969%_
                                          _%g209129209173%_)
                                         (_%lp209102%_ _%rest209124%_)
                                         '#f))
                                   _%hd209138209168%_
                                   _%hd209135209160%_)
                                  (_%g209127209144%_ _%g209128209147%_))))
                          (_%g209127209144%_ _%g209128209147%_))
                      (_%g209127209144%_ _%g209128209147%_))))
              (_%g209127209144%_ _%g209128209147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g209127209144%_
                                               _%g209128209147%_)))))
                                  (_%g209126209195%_ _%hd-bind209125%_)))))
                        (if (pair? _%rest209105209113%_)
                            (let ((_%hd209110209201%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest209105209113%_)))
                                  (_%tl209111209203%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest209105209113%_))))
                              (let* ((_%hd-bind209206%_ _%hd209110209201%_)
                                     (_%rest209208%_ _%tl209111209203%_))
                                (_%K209109209198%_
                                 _%rest209208%_
                                 _%hd-bind209206%_)))
                            (_%else209107209121%_))))))
                 (_%is-lambda-expr?208969%_
                  (lambda (_%expr209037%_)
                    (let* ((_%__stx214130214131%_ _%expr209037%_)
                           (_%g209040209054%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214130214131%_)))))
                      (let ((_%__kont214132214133%_
                             (lambda (_%g209042209082%_ _%g209043209083%_)
                               '#t))
                            (_%__kont214134214135%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx214130214131%_))
                            (let ((_%e209044209066%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx214130214131%_))))
                              (let ((_%tl209046209071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e209044209066%_)))
                                    (_%hd209045209069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e209044209066%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd209045209069%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd209045209069%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl209046209071%_))
                                            (let ((_%e209047209074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl209046209071%_))))
                                              (let ((_%tl209049209079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e209047209074%_)))
                                                    (_%hd209048209077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e209047209074%_))))
                                                (_%__kont214132214133%_
                                                 _%tl209049209079%_
                                                 _%hd209048209077%_)))
                                            (_%__kont214134214135%_))
                                        (_%__kont214134214135%_))
                                    (_%__kont214134214135%_))))
                            (_%__kont214134214135%_)))))))
          (let* ((_%g208971208988%_
                  (lambda (_%g208972208985%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g208972208985%_))))
                 (_%g208970209034%_
                  (lambda (_%g208972208991%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g208972208991%_))
                        (let ((_%e208975208993%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g208972208991%_))))
                          (let ((_%hd208976208996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208975208993%_)))
                                (_%tl208977208998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208975208993%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl208977208998%_))
                                (let ((_%e208978209001%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl208977208998%_))))
                                  (let ((_%hd208979209004%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208978209001%_)))
                                        (_%tl208980209006%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208978209001%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl208980209006%_))
                                        (let ((_%e208981209009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl208980209006%_))))
                                          (let ((_%hd208982209012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e208981209009%_)))
                                                (_%tl208983209014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e208981209009%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208983209014%_))
                                                ((lambda (_%g208973209017%_
                                                          _%g208974209018%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g208974209018%_)
                                                       (if (_%generate-letrec?208968%_
                                                            _%g208974209018%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self208964%_
                                                            'letrec
                                                            _%g208974209018%_
                                                            _%g208973209017%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self208964%_
                                                            'letrec*
                                                            _%g208974209018%_
                                                            _%g208973209017%_
                                                            '#f))
                                                       (_%generate-values208967%_
                                                        _%g208974209018%_
                                                        _%g208973209017%_)))
                                                 _%hd208982209012%_
                                                 _%hd208979209004%_)
                                                (_%g208971208988%_
                                                 _%g208972208991%_))))
                                        (_%g208971208988%_
                                         _%g208972208991%_))))
                                (_%g208971208988%_ _%g208972208991%_))))
                        (_%g208971208988%_ _%g208972208991%_)))))
            (_%g208970209034%_ _%stx208965%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd208901%_)
        (let _%lp208903%_ ((_%rest208905%_ _%hd208901%_))
          (let* ((_%rest208906208922%_ _%rest208905%_)
                 (_%else208909208930%_ (lambda () '#f)))
            (let ((_%K208912208943%_
                   (lambda (_%rest208941%_) (_%lp208903%_ _%rest208941%_)))
                  (_%K208911208935%_ (lambda () '#t)))
              (let ((_%try-match208908208938%_
                     (lambda ()
                       (if (null? _%rest208906208922%_)
                           (_%K208911208935%_)
                           (_%else208909208930%_)))))
                (if (pair? _%rest208906208922%_)
                    (let ((_%tl208914208948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest208906208922%_)))
                          (_%hd208913208946%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest208906208922%_))))
                      (if (pair? _%hd208913208946%_)
                          (let ((_%tl208916208953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd208913208946%_)))
                                (_%hd208915208951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd208913208946%_))))
                            (if (pair? _%hd208915208951%_)
                                (let ((_%tl208920208956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd208915208951%_))))
                                  (if (null? _%tl208920208956%_)
                                      (if (pair? _%tl208916208953%_)
                                          (let ((_%tl208918208959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl208916208953%_))))
                                            (if (null? _%tl208918208959%_)
                                                (let ((_%rest208962%_
                                                       _%tl208914208948%_))
                                                  (_%lp208903%_
                                                   _%rest208962%_))
                                                (_%else208909208930%_)))
                                          (_%else208909208930%_))
                                      (_%else208909208930%_)))
                                (_%else208909208930%_)))
                          (_%else208909208930%_)))
                    (_%try-match208908208938%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self208813%_
               _%form208814%_
               _%hd208815%_
               _%body208816%_
               _%compiled-body?208817%_)
        (letrec ((_%generate1208819%_
                  (lambda (_%bind208858%_)
                    (let* ((_%bind208859208870%_ _%bind208858%_)
                           (_%E208861208873%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind208859208870%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K208862208879%_
                            (lambda (_%expr208876%_ _%id208877%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id208877%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self208813%_
                                             _%expr208876%_))
                                          '())))))
                      (if (pair? _%bind208859208870%_)
                          (let ((_%hd208863208882%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind208859208870%_)))
                                (_%tl208864208884%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind208859208870%_))))
                            (if (pair? _%hd208863208882%_)
                                (let ((_%hd208867208887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd208863208882%_)))
                                      (_%tl208868208889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd208863208882%_))))
                                  (let ((_%id208892%_ _%hd208867208887%_))
                                    (if (null? _%tl208868208889%_)
                                        (if (pair? _%tl208864208884%_)
                                            (let ((_%hd208865208894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl208864208884%_)))
                                                  (_%tl208866208896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl208864208884%_))))
                                              (let ((_%expr208899%_
                                                     _%hd208865208894%_))
                                                (if (null? _%tl208866208896%_)
                                                    (_%K208862208879%_
                                                     _%expr208899%_
                                                     _%id208892%_)
                                                    (_%E208861208873%_))))
                                            (_%E208861208873%_))
                                        (_%E208861208873%_))))
                                (_%E208861208873%_)))
                          (_%E208861208873%_))))))
          (let* ((_%bind208821%_ (map _%generate1208819%_ _%hd208815%_))
                 (_%body208823%_
                  (if _%compiled-body?208817%_
                      _%body208816%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self208813%_ _%body208816%_))))
                 (_%body208855%_
                  (let* ((_%body208824208832%_ _%body208823%_)
                         (_%else208826208840%_
                          (lambda () (cons _%body208823%_ '())))
                         (_%K208828208845%_
                          (lambda (_%exprs208843%_) _%exprs208843%_)))
                    (if (pair? _%body208824208832%_)
                        (let ((_%hd208829208848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body208824208832%_)))
                              (_%tl208830208850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body208824208832%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd208829208848%_ 'begin))
                              (let ((_%exprs208853%_ _%tl208830208850%_))
                                (_%K208828208845%_ _%exprs208853%_))
                              (_%else208826208840%_)))
                        (_%else208826208840%_)))))
            (cons _%form208814%_ (cons _%bind208821%_ _%body208855%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self208713%_ _%stx208714%_)
        (letrec ((_%generate1208716%_
                  (lambda (_%datum208768%_)
                    (if (or (null? _%datum208768%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum208768%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum208768%_))
                            (eof-object? _%datum208768%_))
                        _%datum208768%_
                        (if (uninterned-symbol? _%datum208768%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum208768%_
                               '#t))
                            (if (pair? _%datum208768%_)
                                (cons (_%generate1208716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum208768%_)))
                                      (_%generate1208716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum208768%_))))
                                (if (box? _%datum208768%_)
                                    (box (_%generate1208716%_
                                          (unbox _%datum208768%_)))
                                    (if (vector? _%datum208768%_)
                                        (vector-map
                                         _%generate1208716%_
                                         _%datum208768%_)
                                        (if (or (s8vector? _%datum208768%_)
                                                (u8vector? _%datum208768%_)
                                                (s16vector? _%datum208768%_)
                                                (u16vector? _%datum208768%_)
                                                (s32vector? _%datum208768%_)
                                                (u32vector? _%datum208768%_)
                                                (s64vector? _%datum208768%_)
                                                (u64vector? _%datum208768%_)
                                                (f32vector? _%datum208768%_)
                                                (f64vector? _%datum208768%_))
                                            _%datum208768%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx208714%_)))))))))))
          (let* ((_%g208718208731%_
                  (lambda (_%g208719208728%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g208719208728%_))))
                 (_%g208717208765%_
                  (lambda (_%g208719208734%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g208719208734%_))
                        (let ((_%e208721208736%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g208719208734%_))))
                          (let ((_%hd208722208739%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208721208736%_)))
                                (_%tl208723208741%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208721208736%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl208723208741%_))
                                (let ((_%e208724208744%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl208723208741%_))))
                                  (let ((_%hd208725208747%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208724208744%_)))
                                        (_%tl208726208749%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208724208744%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208726208749%_))
                                        ((lambda (_%g208720208752%_)
                                           (cons 'quote
                                                 (cons (_%generate1208716%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g208720208752%_)))
                                                       '())))
                                         _%hd208725208747%_)
                                        (_%g208718208731%_
                                         _%g208719208734%_))))
                                (_%g208718208731%_ _%g208719208734%_))))
                        (_%g208718208731%_ _%g208719208734%_)))))
            (_%g208717208765%_ _%stx208714%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self208160%_ _%stx208161%_)
        (letrec ((_%compile-call208163%_
                  (lambda (_%rator208450%_ _%rands208451%_)
                    (let ((_%rator208457%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self208160%_
                              _%rator208450%_)))
                          (_%rands208458%_
                           (map (lambda (_%g208452208454%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self208160%_
                                     _%g208452208454%_)))
                                _%rands208451%_)))
                      (let* ((_%__stx214177214178%_ _%rator208457%_)
                             (_%g208461208513%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214177214178%_)))))
                        (let ((_%__kont214179214180%_
                               (lambda (_%g208463208633%_
                                        _%g208464208634%_
                                        _%g208465208635%_
                                        _%g208466208636%_)
                                 (if (let ((__tmp214849
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands208458%_)))
                                           (__tmp214847
                                            (length (let ((__tmp214848
                                                           (lambda (_%g208672208675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g208673208677%_)
                     (cons _%g208672208675%_ _%g208673208677%_))))
              (declare (not safe))
              (foldr__0 __tmp214848 '() _%g208465208635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp214849 __tmp214847))
                                     (let* ((_%id208680%_ _%g208466208636%_)
                                            (_%args208689%_
                                             (let ((__tmp214850
                                                    (lambda (_%g208681208684%_
                                                             _%g208682208686%_)
                                                      (cons _%g208681208684%_
                                                            _%g208682208686%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp214850
                                                '()
                                                _%g208465208635%_)))
                                            (_%body208698%_
                                             (let ((__tmp214851
                                                    (lambda (_%g208690208693%_
                                                             _%g208691208695%_)
                                                      (cons _%g208690208693%_
                                                            _%g208691208695%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp214851
                                                '()
                                                _%g208464208634%_)))
                                            (_%init208700%_
                                             (map list
                                                  _%args208689%_
                                                  _%rands208458%_)))
                                       (cons 'let
                                             (cons _%id208680%_
                                                   (cons _%init208700%_
                                                         _%body208698%_))))
                                     (let ((__tmp214852
                                            (let ((__tmp214853
                                                   (lambda (_%g208702208705%_
                                                            _%g208703208707%_)
                                                     (cons _%g208702208705%_
                                                           _%g208703208707%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp214853
                                               '()
                                               _%g208465208635%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx208161%_
                                        __tmp214852
                                        _%rands208458%_)))))
                              (_%__kont214185214186%_
                               (lambda ()
                                 (cons _%rator208457%_ _%rands208458%_))))
                          (let ((_%__match214244214245%_
                                 (lambda (_%e208467208525%_
                                          _%hd208468208528%_
                                          _%tl208469208530%_
                                          _%e208470208533%_
                                          _%hd208471208536%_
                                          _%tl208472208538%_
                                          _%e208473208541%_
                                          _%hd208474208544%_
                                          _%tl208475208546%_
                                          _%e208476208549%_
                                          _%hd208477208552%_
                                          _%tl208478208554%_
                                          _%e208479208557%_
                                          _%hd208480208560%_
                                          _%tl208481208562%_
                                          _%e208482208565%_
                                          _%hd208483208568%_
                                          _%tl208484208570%_
                                          _%e208485208573%_
                                          _%hd208486208576%_
                                          _%tl208487208578%_
                                          _%__splice214181214182%_
                                          _%target208488208581%_
                                          _%tl208490208583%_)
                                   (letrec ((_%loop208491208586%_
                                             (lambda (_%hd208489208589%_
                                                      _%arg208495208591%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd208489208589%_))
                                                   (let ((_%e208492208593%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd208489208589%_))))
                                                     (let ((_%lp-tl208494208598%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e208492208593%_)))
                                                           (_%lp-hd208493208596%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e208492208593%_))))
                                                       (_%loop208491208586%_
                                                        _%lp-tl208494208598%_
                                                        (cons _%lp-hd208493208596%_
                                                              _%arg208495208591%_))))
                                                   (let ((_%arg208496208601%_
                                                          (reverse _%arg208495208591%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl208487208578%_))
                                                         (let ((_%__splice214183214184%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl208487208578%_
                           '0))))
                   (let ((_%tl208499208605%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice214183214184%_ '1)))
                         (_%target208497208603%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice214183214184%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl208499208605%_))
                         (letrec ((_%loop208500208608%_
                                   (lambda (_%hd208498208611%_
                                            _%body208504208613%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd208498208611%_))
                                         (let ((_%e208501208615%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd208498208611%_))))
                                           (let ((_%lp-tl208503208620%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208501208615%_)))
                                                 (_%lp-hd208502208618%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208501208615%_))))
                                             (_%loop208500208608%_
                                              _%lp-tl208503208620%_
                                              (cons _%lp-hd208502208618%_
                                                    _%body208504208613%_))))
                                         (let ((_%body208505208623%_
                                                (reverse _%body208504208613%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl208481208562%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl208475208546%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208472208538%_))
                                                       (let ((_%e208506208625%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl208472208538%_))))
                 (let ((_%tl208508208630%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208506208625%_)))
                       (_%hd208507208628%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208506208625%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl208508208630%_))
                       (let ((_%g208463208633%_ _%hd208507208628%_)
                             (_%g208464208634%_ _%body208505208623%_)
                             (_%g208465208635%_ _%arg208496208601%_)
                             (_%g208466208636%_ _%hd208477208552%_))
                         (if (eq? _%g208466208636%_ _%g208463208633%_)
                             (_%__kont214179214180%_
                              _%g208463208633%_
                              _%g208464208634%_
                              _%g208465208635%_
                              _%g208466208636%_)
                             (_%__kont214185214186%_)))
                       (_%__kont214185214186%_))))
               (_%__kont214185214186%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont214185214186%_))
                                               (_%__kont214185214186%_)))))))
                           (_%loop208500208608%_ _%target208497208603%_ '()))
                         (_%__kont214185214186%_))))
                 (_%__kont214185214186%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop208491208586%_
                                      _%target208488208581%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx214177214178%_))
                                (let ((_%e208467208525%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx214177214178%_))))
                                  (let ((_%tl208469208530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208467208525%_)))
                                        (_%hd208468208528%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208467208525%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd208468208528%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd208468208528%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl208469208530%_))
                                                (let ((_%e208470208533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl208469208530%_))))
                                                  (let ((_%tl208472208538%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e208470208533%_)))
                                                        (_%hd208471208536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e208470208533%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd208471208536%_))
                                                        (let ((_%e208473208541%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd208471208536%_))))
                  (let ((_%tl208475208546%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208473208541%_)))
                        (_%hd208474208544%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208473208541%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208474208544%_))
                        (let ((_%e208476208549%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd208474208544%_))))
                          (let ((_%tl208478208554%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208476208549%_)))
                                (_%hd208477208552%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208476208549%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl208478208554%_))
                                (let ((_%e208479208557%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl208478208554%_))))
                                  (let ((_%tl208481208562%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208479208557%_)))
                                        (_%hd208480208560%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208479208557%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd208480208560%_))
                                        (let ((_%e208482208565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd208480208560%_))))
                                          (let ((_%tl208484208570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e208482208565%_)))
                                                (_%hd208483208568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e208482208565%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd208483208568%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd208483208568%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl208484208570%_))
                                                        (let ((_%e208485208573%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl208484208570%_))))
                  (let ((_%tl208487208578%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208485208573%_)))
                        (_%hd208486208576%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208485208573%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd208486208576%_))
                        (let ((_%__splice214181214182%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd208486208576%_
                                  '0))))
                          (let ((_%tl208490208583%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice214181214182%_ '1)))
                                (_%target208488208581%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice214181214182%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl208490208583%_))
                                (_%__match214244214245%_
                                 _%e208467208525%_
                                 _%hd208468208528%_
                                 _%tl208469208530%_
                                 _%e208470208533%_
                                 _%hd208471208536%_
                                 _%tl208472208538%_
                                 _%e208473208541%_
                                 _%hd208474208544%_
                                 _%tl208475208546%_
                                 _%e208476208549%_
                                 _%hd208477208552%_
                                 _%tl208478208554%_
                                 _%e208479208557%_
                                 _%hd208480208560%_
                                 _%tl208481208562%_
                                 _%e208482208565%_
                                 _%hd208483208568%_
                                 _%tl208484208570%_
                                 _%e208485208573%_
                                 _%hd208486208576%_
                                 _%tl208487208578%_
                                 _%__splice214181214182%_
                                 _%target208488208581%_
                                 _%tl208490208583%_)
                                (_%__kont214185214186%_))))
                        (_%__kont214185214186%_))))
                (_%__kont214185214186%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214185214186%_))
                                                (_%__kont214185214186%_))))
                                        (_%__kont214185214186%_))))
                                (_%__kont214185214186%_))))
                        (_%__kont214185214186%_))))
                (_%__kont214185214186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont214185214186%_))
                                            (_%__kont214185214186%_))
                                        (_%__kont214185214186%_))))
                                (_%__kont214185214186%_)))))))))
          (let* ((_%g208165208188%_
                  (lambda (_%g208166208185%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g208166208185%_))))
                 (_%g208164208447%_
                  (lambda (_%g208166208191%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g208166208191%_))
                        (let ((_%e208169208193%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g208166208191%_))))
                          (let ((_%hd208170208196%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208169208193%_)))
                                (_%tl208171208198%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208169208193%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl208171208198%_))
                                (let ((_%e208172208201%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl208171208198%_))))
                                  (let ((_%hd208173208204%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208172208201%_)))
                                        (_%tl208174208206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208172208201%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl208174208206%_))
                                        (let ((_g214854_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl208174208206%_
                                                  '0))))
                                          (begin
                                            (let ((_g214855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g214854_)
                                                         (##values-length
                                                          _g214854_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g214855_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g214855_)))
                                            (let ((_%target208175208209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g214854_
                                                      0)))
                                                  (_%tl208177208211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g214854_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl208177208211%_))
                                                  (letrec ((_%loop208178208214%_
                                                            (lambda (_%hd208176208217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand208182208219%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd208176208217%_))
                          (let ((_%e208179208221%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd208176208217%_))))
                            (let ((_%lp-hd208180208224%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208179208221%_)))
                                  (_%lp-tl208181208226%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208179208221%_))))
                              (_%loop208178208214%_
                               _%lp-tl208181208226%_
                               (cons _%lp-hd208180208224%_
                                     _%rand208182208219%_))))
                          (let ((_%rand208183208229%_
                                 (reverse _%rand208182208219%_)))
                            ((lambda (_%g208167208231%_ _%g208168208232%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call208163%_
                                    _%g208168208232%_
                                    (let ((__tmp214856
                                           (lambda (_%g208249208252%_
                                                    _%g208250208254%_)
                                             (cons _%g208249208252%_
                                                   _%g208250208254%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp214856
                                       '()
                                       _%g208167208231%_)))
                                   (let* ((_%__stx214293214294%_
                                           _%g208168208232%_)
                                          (_%g208258208270%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx214293214294%_)))))
                                     (let ((_%__kont214295214296%_
                                            (lambda ()
                                              (let ((_%f208307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self208160%_
                                                        _%g208168208232%_))))
                                                (if (and (let ((__tmp214857
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f208307%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp214857))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f208307%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp208309%_ ((_%rest208312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp214859
                                                (lambda (_%g208429208432%_
                                                         _%g208430208434%_)
                                                  (cons _%g208429208432%_
                                                        _%g208430208434%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp214859
                                            '()
                                            _%g208167208231%_))))
                               (_%bind208314%_ '())
                               (_%args208315%_ '()))
              (let* ((_%rest208316208324%_ _%rest208312%_)
                     (_%else208318208332%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind208314%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f208307%_
                                                      _%args208315%_)
                                                '()))))))
                     (_%K208320208418%_
                      (lambda (_%rest208335%_ _%e208336%_)
                        (let* ((_%__stx214247214248%_ _%e208336%_)
                               (_%g208341208359%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx214247214248%_)))))
                          (let ((_%__kont214249214250%_
                                 (lambda ()
                                   (_%lp208309%_
                                    _%rest208335%_
                                    _%bind208314%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e208336%_))
                                          _%args208315%_))))
                                (_%__kont214251214252%_
                                 (lambda ()
                                   (_%lp208309%_
                                    _%rest208335%_
                                    _%bind208314%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e208336%_))
                                          _%args208315%_))))
                                (_%__kont214253214254%_
                                 (lambda ()
                                   (let ((_%tmp208366%_
                                          (let ((__tmp214858
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp214858))))
                                     (_%lp208309%_
                                      _%rest208335%_
                                      (cons (cons _%tmp208366%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e208336%_))
                                                        '()))
                                            _%bind208314%_)
                                      (cons _%tmp208366%_ _%args208315%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx214247214248%_))
                                (let ((_%e208343208397%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx214247214248%_))))
                                  (let ((_%tl208345208402%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208343208397%_)))
                                        (_%hd208344208400%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208343208397%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd208344208400%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd208344208400%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl208345208402%_))
                                                (let ((_%e208346208405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl208345208402%_))))
                                                  (let ((_%tl208348208410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e208346208405%_)))
                                                        (_%hd208347208408%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e208346208405%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208348208410%_))
                                                        (_%__kont214249214250%_)
                                                        (_%__kont214253214254%_))))
                                                (_%__kont214253214254%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd208344208400%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl208345208402%_))
                                                    (let ((_%e208352208382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl208345208402%_))))
                                                      (let ((_%tl208354208387%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e208352208382%_)))
                    (_%hd208353208385%_
                     (let () (declare (not safe)) (##car _%e208352208382%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl208354208387%_))
                    (_%__kont214251214252%_)
                    (_%__kont214253214254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214253214254%_))
                                                (_%__kont214253214254%_)))
                                        (_%__kont214253214254%_))))
                                (_%__kont214253214254%_)))))))
                (if (pair? _%rest208316208324%_)
                    (let ((_%hd208321208421%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest208316208324%_)))
                          (_%tl208322208423%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest208316208324%_))))
                      (let* ((_%e208426%_ _%hd208321208421%_)
                             (_%rest208428%_ _%tl208322208423%_))
                        (_%K208320208418%_ _%rest208428%_ _%e208426%_)))
                    (_%else208318208332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call208163%_
                                                     _%g208168208232%_
                                                     (let ((__tmp214860
                                                            (lambda (_%g208436208439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g208437208441%_)
                      (cons _%g208436208439%_ _%g208437208441%_))))
               (declare (not safe))
               (foldr__0 __tmp214860 '() _%g208167208231%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont214297214298%_
                                            (lambda ()
                                              (_%compile-call208163%_
                                               _%g208168208232%_
                                               (let ((__tmp214861
                                                      (lambda (_%g208276208279%_
                                                               _%g208277208281%_)
                                                        (cons _%g208276208279%_
                                                              _%g208277208281%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp214861
                                                  '()
                                                  _%g208167208231%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx214293214294%_))
                                           (let ((_%e208260208289%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx214293214294%_))))
                                             (let ((_%tl208262208294%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e208260208289%_)))
                                                   (_%hd208261208292%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e208260208289%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd208261208292%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd208261208292%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl208262208294%_))
                                                           (let ((_%e208263208297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl208262208294%_))))
                     (let ((_%tl208265208302%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208263208297%_)))
                           (_%hd208264208300%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208263208297%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl208265208302%_))
                           (_%__kont214295214296%_)
                           (_%__kont214297214298%_))))
                   (_%__kont214297214298%_))
               (_%__kont214297214298%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont214297214298%_))))
                                           (_%__kont214297214298%_))))))
                             _%rand208183208229%_
                             _%hd208173208204%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop208178208214%_
                                                     _%target208175208209%_
                                                     '()))
                                                  (_%g208165208188%_
                                                   _%g208166208191%_)))))
                                        (_%g208165208188%_
                                         _%g208166208191%_))))
                                (_%g208165208188%_ _%g208166208191%_))))
                        (_%g208165208188%_ _%g208166208191%_)))))
            (_%g208164208447%_ _%stx208161%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self207905%_ _%stx207906%_)
        (let* ((_%__stx214365214366%_ _%stx207906%_)
               (_%g207909207938%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx214365214366%_)))))
          (let ((_%__kont214367214368%_
                 (lambda (_%g207911208004%_ _%g207912208005%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self207905%_
                        _%stx207906%_)
                       (let ((_%f208027%_
                              (let ((__tmp214862
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g207912208005%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207905%_
                                 __tmp214862))))
                         (let _%lp208029%_ ((_%rest208032%_
                                             (reverse (let ((__tmp214864
                                                             (lambda (_%g208149208152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g208150208154%_)
                       (cons _%g208149208152%_ _%g208150208154%_))))
                (declare (not safe))
                (foldr__0 __tmp214864 '() _%g207911208004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind208034%_ '())
                                            (_%args208035%_ '()))
                           (let* ((_%rest208036208044%_ _%rest208032%_)
                                  (_%else208038208052%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind208034%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f208027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args208035%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K208040208138%_
                                   (lambda (_%rest208055%_ _%e208056%_)
                                     (let* ((_%__stx214319214320%_ _%e208056%_)
                                            (_%g208061208079%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx214319214320%_)))))
                                       (let ((_%__kont214321214322%_
                                              (lambda ()
                                                (_%lp208029%_
                                                 _%rest208055%_
                                                 _%bind208034%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e208056%_))
                                                       _%args208035%_))))
                                             (_%__kont214323214324%_
                                              (lambda ()
                                                (_%lp208029%_
                                                 _%rest208055%_
                                                 _%bind208034%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e208056%_))
                                                       _%args208035%_))))
                                             (_%__kont214325214326%_
                                              (lambda ()
                                                (let ((_%tmp208086%_
                                                       (let ((__tmp214863
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp214863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp208029%_
                                                   _%rest208055%_
                                                   (cons (cons _%tmp208086%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e208056%_))
                             '()))
                 _%bind208034%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp208086%_
                                                         _%args208035%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx214319214320%_))
                                             (let ((_%e208063208117%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx214319214320%_))))
                                               (let ((_%tl208065208122%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208063208117%_)))
                                                     (_%hd208064208120%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208063208117%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd208064208120%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd208064208120%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl208065208122%_))
                     (let ((_%e208066208125%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl208065208122%_))))
                       (let ((_%tl208068208130%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e208066208125%_)))
                             (_%hd208067208128%_
                              (let ()
                                (declare (not safe))
                                (##car _%e208066208125%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl208068208130%_))
                             (_%__kont214321214322%_)
                             (_%__kont214325214326%_))))
                     (_%__kont214325214326%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd208064208120%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl208065208122%_))
                         (let ((_%e208072208102%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl208065208122%_))))
                           (let ((_%tl208074208107%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208072208102%_)))
                                 (_%hd208073208105%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208072208102%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl208074208107%_))
                                 (_%__kont214323214324%_)
                                 (_%__kont214325214326%_))))
                         (_%__kont214325214326%_))
                     (_%__kont214325214326%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont214325214326%_))))
                                             (_%__kont214325214326%_)))))))
                             (if (pair? _%rest208036208044%_)
                                 (let ((_%hd208041208141%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest208036208044%_)))
                                       (_%tl208042208143%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest208036208044%_))))
                                   (let* ((_%e208146%_ _%hd208041208141%_)
                                          (_%rest208148%_ _%tl208042208143%_))
                                     (_%K208040208138%_
                                      _%rest208148%_
                                      _%e208146%_)))
                                 (_%else208038208052%_))))))))
                (_%__kont214371214372%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self207905%_ _%stx207906%_))))
            (let ((_%__match214410214411%_
                   (lambda (_%e207913207950%_
                            _%hd207914207953%_
                            _%tl207915207955%_
                            _%e207916207958%_
                            _%hd207917207961%_
                            _%tl207918207963%_
                            _%e207919207966%_
                            _%hd207920207969%_
                            _%tl207921207971%_
                            _%e207922207974%_
                            _%hd207923207977%_
                            _%tl207924207979%_
                            _%__splice214369214370%_
                            _%target207925207982%_
                            _%tl207927207984%_)
                     (letrec ((_%loop207928207987%_
                               (lambda (_%hd207926207990%_
                                        _%rand207932207992%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd207926207990%_))
                                     (let ((_%e207929207994%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd207926207990%_))))
                                       (let ((_%lp-tl207931207999%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207929207994%_)))
                                             (_%lp-hd207930207997%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207929207994%_))))
                                         (_%loop207928207987%_
                                          _%lp-tl207931207999%_
                                          (cons _%lp-hd207930207997%_
                                                _%rand207932207992%_))))
                                     (let ((_%rand207933208002%_
                                            (reverse _%rand207932207992%_)))
                                       (_%__kont214367214368%_
                                        _%rand207933208002%_
                                        _%hd207923207977%_))))))
                       (_%loop207928207987%_ _%target207925207982%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx214365214366%_))
                  (let ((_%e207913207950%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx214365214366%_))))
                    (let ((_%tl207915207955%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207913207950%_)))
                          (_%hd207914207953%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207913207950%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207915207955%_))
                          (let ((_%e207916207958%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl207915207955%_))))
                            (let ((_%tl207918207963%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207916207958%_)))
                                  (_%hd207917207961%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207916207958%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd207917207961%_))
                                  (let ((_%e207919207966%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd207917207961%_))))
                                    (let ((_%tl207921207971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207919207966%_)))
                                          (_%hd207920207969%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207919207966%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd207920207969%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd207920207969%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207921207971%_))
                                                  (let ((_%e207922207974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl207921207971%_))))
                                                    (let ((_%tl207924207979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207922207974%_)))
                                                          (_%hd207923207977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207922207974%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207924207979%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl207918207963%_))
                      (let ((_%__splice214369214370%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl207918207963%_
                                '0))))
                        (let ((_%tl207927207984%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice214369214370%_ '1)))
                              (_%target207925207982%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice214369214370%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207927207984%_))
                              (_%__match214410214411%_
                               _%e207913207950%_
                               _%hd207914207953%_
                               _%tl207915207955%_
                               _%e207916207958%_
                               _%hd207917207961%_
                               _%tl207918207963%_
                               _%e207919207966%_
                               _%hd207920207969%_
                               _%tl207921207971%_
                               _%e207922207974%_
                               _%hd207923207977%_
                               _%tl207924207979%_
                               _%__splice214369214370%_
                               _%target207925207982%_
                               _%tl207927207984%_)
                              (_%__kont214371214372%_))))
                      (_%__kont214371214372%_))
                  (_%__kont214371214372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214371214372%_))
                                              (_%__kont214371214372%_))
                                          (_%__kont214371214372%_))))
                                  (_%__kont214371214372%_))))
                          (_%__kont214371214372%_))))
                  (_%__kont214371214372%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self207717%_ _%stx207718%_)
        (letrec ((_%simplify207720%_
                  (lambda (_%code207805%_)
                    (let* ((_%code207806207824%_ _%code207805%_)
                           (_%else207808207832%_ (lambda () _%code207805%_))
                           (_%K207810207868%_
                            (lambda (_%expr207835%_ _%test207836%_)
                              (let* ((_%expr207837207845%_ _%expr207835%_)
                                     (_%else207839207853%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test207836%_
                                                    (cons _%expr207835%_
                                                          '())))))
                                     (_%K207841207858%_
                                      (lambda (_%exprs207856%_)
                                        (cons 'and
                                              (cons _%test207836%_
                                                    _%exprs207856%_)))))
                                (if (pair? _%expr207837207845%_)
                                    (let ((_%hd207842207861%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr207837207845%_)))
                                          (_%tl207843207863%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr207837207845%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd207842207861%_ 'and))
                                          (let ((_%exprs207866%_
                                                 _%tl207843207863%_))
                                            (_%K207841207858%_
                                             _%exprs207866%_))
                                          (_%else207839207853%_)))
                                    (_%else207839207853%_))))))
                      (if (pair? _%code207806207824%_)
                          (let ((_%hd207811207871%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code207806207824%_)))
                                (_%tl207812207873%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code207806207824%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd207811207871%_ 'if))
                                (if (pair? _%tl207812207873%_)
                                    (let ((_%hd207813207876%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl207812207873%_)))
                                          (_%tl207814207878%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl207812207873%_))))
                                      (let ((_%test207881%_
                                             _%hd207813207876%_))
                                        (if (pair? _%tl207814207878%_)
                                            (let ((_%hd207815207883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl207814207878%_)))
                                                  (_%tl207816207885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl207814207878%_))))
                                              (let ((_%expr207888%_
                                                     _%hd207815207883%_))
                                                (if (pair? _%tl207816207885%_)
                                                    (let ((_%hd207817207890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl207816207885%_)))
                                                          (_%tl207818207892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl207816207885%_))))
                                                      (if (pair? _%hd207817207890%_)
                                                          (let ((_%hd207819207895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd207817207890%_)))
                        (_%tl207820207897%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd207817207890%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd207819207895%_ 'quote))
                        (if (pair? _%tl207820207897%_)
                            (let ((_%hd207821207900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl207820207897%_)))
                                  (_%tl207822207902%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl207820207897%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd207821207900%_ '#f))
                                  (if (null? _%tl207822207902%_)
                                      (if (null? _%tl207818207892%_)
                                          (_%K207810207868%_
                                           _%expr207888%_
                                           _%test207881%_)
                                          (_%else207808207832%_))
                                      (_%else207808207832%_))
                                  (_%else207808207832%_)))
                            (_%else207808207832%_))
                        (_%else207808207832%_)))
                  (_%else207808207832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else207808207832%_))))
                                            (_%else207808207832%_))))
                                    (_%else207808207832%_))
                                (_%else207808207832%_)))
                          (_%else207808207832%_))))))
          (let* ((_%g207722207743%_
                  (lambda (_%g207723207740%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g207723207740%_))))
                 (_%g207721207802%_
                  (lambda (_%g207723207746%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g207723207746%_))
                        (let ((_%e207727207748%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g207723207746%_))))
                          (let ((_%hd207728207751%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207727207748%_)))
                                (_%tl207729207753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207727207748%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207729207753%_))
                                (let ((_%e207730207756%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl207729207753%_))))
                                  (let ((_%hd207731207759%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207730207756%_)))
                                        (_%tl207732207761%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207730207756%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl207732207761%_))
                                        (let ((_%e207733207764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl207732207761%_))))
                                          (let ((_%hd207734207767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e207733207764%_)))
                                                (_%tl207735207769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e207733207764%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207735207769%_))
                                                (let ((_%e207736207772%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207735207769%_))))
                                                  (let ((_%hd207737207775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207736207772%_)))
                                                        (_%tl207738207777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207736207772%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207738207777%_))
                                                        ((lambda (_%g207724207780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g207725207781%_
                          _%g207726207782%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify207720%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self207717%_
                                       _%g207726207782%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self207717%_
                                             _%g207725207781%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self207717%_
                                                   _%g207724207780%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp214865
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self207717%_
                                               _%g207726207782%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp214865
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self207717%_
                                            _%g207725207781%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self207717%_
                                                  _%g207724207780%_))
                                               '()))))))
                 _%hd207737207775%_
                 _%hd207734207767%_
                 _%hd207731207759%_)
                (_%g207722207743%_ _%g207723207746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207722207743%_
                                                 _%g207723207746%_))))
                                        (_%g207722207743%_
                                         _%g207723207746%_))))
                                (_%g207722207743%_ _%g207723207746%_))))
                        (_%g207722207743%_ _%g207723207746%_)))))
            (_%g207721207802%_ _%stx207718%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self207665%_ _%stx207666%_)
        (let* ((_%g207668207681%_
                (lambda (_%g207669207678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207669207678%_))))
               (_%g207667207714%_
                (lambda (_%g207669207684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207669207684%_))
                      (let ((_%e207671207686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207669207684%_))))
                        (let ((_%hd207672207689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207671207686%_)))
                              (_%tl207673207691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207671207686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207673207691%_))
                              (let ((_%e207674207694%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207673207691%_))))
                                (let ((_%hd207675207697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207674207694%_)))
                                      (_%tl207676207699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207674207694%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207676207699%_))
                                      ((lambda (_%g207670207702%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g207670207702%_)))
                                       _%hd207675207697%_)
                                      (_%g207668207681%_ _%g207669207684%_))))
                              (_%g207668207681%_ _%g207669207684%_))))
                      (_%g207668207681%_ _%g207669207684%_)))))
          (_%g207667207714%_ _%stx207666%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self207597%_ _%stx207598%_)
        (let* ((_%g207600207617%_
                (lambda (_%g207601207614%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207601207614%_))))
               (_%g207599207662%_
                (lambda (_%g207601207620%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207601207620%_))
                      (let ((_%e207604207622%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207601207620%_))))
                        (let ((_%hd207605207625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207604207622%_)))
                              (_%tl207606207627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207604207622%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207606207627%_))
                              (let ((_%e207607207630%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207606207627%_))))
                                (let ((_%hd207608207633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207607207630%_)))
                                      (_%tl207609207635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207607207630%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207609207635%_))
                                      (let ((_%e207610207638%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207609207635%_))))
                                        (let ((_%hd207611207641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207610207638%_)))
                                              (_%tl207612207643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207610207638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207612207643%_))
                                              ((lambda (_%g207602207646%_
                                                        _%g207603207647%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g207603207647%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self207597%_
                              _%g207602207646%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd207611207641%_
                                               _%hd207608207633%_)
                                              (_%g207600207617%_
                                               _%g207601207620%_))))
                                      (_%g207600207617%_ _%g207601207620%_))))
                              (_%g207600207617%_ _%g207601207620%_))))
                      (_%g207600207617%_ _%g207601207620%_)))))
          (_%g207599207662%_ _%stx207598%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self207408%_ _%stx207409%_)
        (let* ((_%g207411207428%_
                (lambda (_%g207412207425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207412207425%_))))
               (_%g207410207594%_
                (lambda (_%g207412207431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207412207431%_))
                      (let ((_%e207415207433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207412207431%_))))
                        (let ((_%hd207416207436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207415207433%_)))
                              (_%tl207417207438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207415207433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207417207438%_))
                              (let ((_%e207418207441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207417207438%_))))
                                (let ((_%hd207419207444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207418207441%_)))
                                      (_%tl207420207446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207418207441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207420207446%_))
                                      (let ((_%e207421207449%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207420207446%_))))
                                        (let ((_%hd207422207452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207421207449%_)))
                                              (_%tl207423207454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207421207449%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207423207454%_))
                                              ((lambda (_%g207413207457%_
                                                        _%g207414207458%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self207408%_ _%g207413207457%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self207408%_
                                  _%g207414207458%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp207473%_ ((_%rest207476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g207414207458%_
                                       (cons _%g207413207457%_ '())))
                                (_%bind207478%_ '())
                                (_%args207479%_ '()))
               (let* ((_%rest207480207488%_ _%rest207476%_)
                      (_%else207482207496%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind207478%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args207479%_)
                                                 '()))))))
                      (_%K207484207582%_
                       (lambda (_%rest207499%_ _%e207500%_)
                         (let* ((_%__stx214413214414%_ _%e207500%_)
                                (_%g207505207523%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx214413214414%_)))))
                           (let ((_%__kont214415214416%_
                                  (lambda ()
                                    (_%lp207473%_
                                     _%rest207499%_
                                     _%bind207478%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e207500%_))
                                           _%args207479%_))))
                                 (_%__kont214417214418%_
                                  (lambda ()
                                    (_%lp207473%_
                                     _%rest207499%_
                                     _%bind207478%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e207500%_))
                                           _%args207479%_))))
                                 (_%__kont214419214420%_
                                  (lambda ()
                                    (let ((_%tmp207530%_
                                           (let ((__tmp214866
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp214866))))
                                      (_%lp207473%_
                                       _%rest207499%_
                                       (cons (cons _%tmp207530%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e207500%_))
                                                         '()))
                                             _%bind207478%_)
                                       (cons _%tmp207530%_ _%args207479%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx214413214414%_))
                                 (let ((_%e207507207561%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx214413214414%_))))
                                   (let ((_%tl207509207566%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207507207561%_)))
                                         (_%hd207508207564%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207507207561%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd207508207564%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd207508207564%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207509207566%_))
                                                 (let ((_%e207510207569%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl207509207566%_))))
                                                   (let ((_%tl207512207574%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207510207569%_)))
                                                         (_%hd207511207572%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207510207569%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207512207574%_))
                                                         (_%__kont214415214416%_)
                                                         (_%__kont214419214420%_))))
                                                 (_%__kont214419214420%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd207508207564%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl207509207566%_))
                                                     (let ((_%e207516207546%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl207509207566%_))))
                                                       (let ((_%tl207518207551%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e207516207546%_)))
                     (_%hd207517207549%_
                      (let () (declare (not safe)) (##car _%e207516207546%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl207518207551%_))
                     (_%__kont214417214418%_)
                     (_%__kont214419214420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont214419214420%_))
                                                 (_%__kont214419214420%_)))
                                         (_%__kont214419214420%_))))
                                 (_%__kont214419214420%_)))))))
                 (if (pair? _%rest207480207488%_)
                     (let ((_%hd207485207585%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest207480207488%_)))
                           (_%tl207486207587%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest207480207488%_))))
                       (let* ((_%e207590%_ _%hd207485207585%_)
                              (_%rest207592%_ _%tl207486207587%_))
                         (_%K207484207582%_ _%rest207592%_ _%e207590%_)))
                     (_%else207482207496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd207422207452%_
                                               _%hd207419207444%_)
                                              (_%g207411207428%_
                                               _%g207412207431%_))))
                                      (_%g207411207428%_ _%g207412207431%_))))
                              (_%g207411207428%_ _%g207412207431%_))))
                      (_%g207411207428%_ _%g207412207431%_)))))
          (_%g207410207594%_ _%stx207409%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self207219%_ _%stx207220%_)
        (let* ((_%g207222207239%_
                (lambda (_%g207223207236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207223207236%_))))
               (_%g207221207405%_
                (lambda (_%g207223207242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207223207242%_))
                      (let ((_%e207226207244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207223207242%_))))
                        (let ((_%hd207227207247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207226207244%_)))
                              (_%tl207228207249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207226207244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207228207249%_))
                              (let ((_%e207229207252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207228207249%_))))
                                (let ((_%hd207230207255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207229207252%_)))
                                      (_%tl207231207257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207229207252%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207231207257%_))
                                      (let ((_%e207232207260%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207231207257%_))))
                                        (let ((_%hd207233207263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207232207260%_)))
                                              (_%tl207234207265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207232207260%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207234207265%_))
                                              ((lambda (_%g207224207268%_
                                                        _%g207225207269%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self207219%_ _%g207224207268%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self207219%_
                                  _%g207225207269%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp207284%_ ((_%rest207287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g207225207269%_
                                       (cons _%g207224207268%_ '())))
                                (_%bind207289%_ '())
                                (_%args207290%_ '()))
               (let* ((_%rest207291207299%_ _%rest207287%_)
                      (_%else207293207307%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind207289%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args207290%_)
                                                 '()))))))
                      (_%K207295207393%_
                       (lambda (_%rest207310%_ _%e207311%_)
                         (let* ((_%__stx214459214460%_ _%e207311%_)
                                (_%g207316207334%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx214459214460%_)))))
                           (let ((_%__kont214461214462%_
                                  (lambda ()
                                    (_%lp207284%_
                                     _%rest207310%_
                                     _%bind207289%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e207311%_))
                                           _%args207290%_))))
                                 (_%__kont214463214464%_
                                  (lambda ()
                                    (_%lp207284%_
                                     _%rest207310%_
                                     _%bind207289%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e207311%_))
                                           _%args207290%_))))
                                 (_%__kont214465214466%_
                                  (lambda ()
                                    (let ((_%tmp207341%_
                                           (let ((__tmp214867
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp214867))))
                                      (_%lp207284%_
                                       _%rest207310%_
                                       (cons (cons _%tmp207341%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e207311%_))
                                                         '()))
                                             _%bind207289%_)
                                       (cons _%tmp207341%_ _%args207290%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx214459214460%_))
                                 (let ((_%e207318207372%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx214459214460%_))))
                                   (let ((_%tl207320207377%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207318207372%_)))
                                         (_%hd207319207375%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207318207372%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd207319207375%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd207319207375%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207320207377%_))
                                                 (let ((_%e207321207380%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl207320207377%_))))
                                                   (let ((_%tl207323207385%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207321207380%_)))
                                                         (_%hd207322207383%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207321207380%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207323207385%_))
                                                         (_%__kont214461214462%_)
                                                         (_%__kont214465214466%_))))
                                                 (_%__kont214465214466%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd207319207375%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl207320207377%_))
                                                     (let ((_%e207327207357%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl207320207377%_))))
                                                       (let ((_%tl207329207362%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e207327207357%_)))
                     (_%hd207328207360%_
                      (let () (declare (not safe)) (##car _%e207327207357%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl207329207362%_))
                     (_%__kont214463214464%_)
                     (_%__kont214465214466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont214465214466%_))
                                                 (_%__kont214465214466%_)))
                                         (_%__kont214465214466%_))))
                                 (_%__kont214465214466%_)))))))
                 (if (pair? _%rest207291207299%_)
                     (let ((_%hd207296207396%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest207291207299%_)))
                           (_%tl207297207398%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest207291207299%_))))
                       (let* ((_%e207401%_ _%hd207296207396%_)
                              (_%rest207403%_ _%tl207297207398%_))
                         (_%K207295207393%_ _%rest207403%_ _%e207401%_)))
                     (_%else207293207307%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd207233207263%_
                                               _%hd207230207255%_)
                                              (_%g207222207239%_
                                               _%g207223207242%_))))
                                      (_%g207222207239%_ _%g207223207242%_))))
                              (_%g207222207239%_ _%g207223207242%_))))
                      (_%g207222207239%_ _%g207223207242%_)))))
          (_%g207221207405%_ _%stx207220%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self207135%_ _%stx207136%_)
        (let* ((_%g207138207159%_
                (lambda (_%g207139207156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207139207156%_))))
               (_%g207137207216%_
                (lambda (_%g207139207162%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207139207162%_))
                      (let ((_%e207143207164%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207139207162%_))))
                        (let ((_%hd207144207167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207143207164%_)))
                              (_%tl207145207169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207143207164%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207145207169%_))
                              (let ((_%e207146207172%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207145207169%_))))
                                (let ((_%hd207147207175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207146207172%_)))
                                      (_%tl207148207177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207146207172%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207148207177%_))
                                      (let ((_%e207149207180%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207148207177%_))))
                                        (let ((_%hd207150207183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207149207180%_)))
                                              (_%tl207151207185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207149207180%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207151207185%_))
                                              (let ((_%e207152207188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl207151207185%_))))
                                                (let ((_%hd207153207191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207152207188%_)))
                                                      (_%tl207154207193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207152207188%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl207154207193%_))
                                                      ((lambda (_%g207140207196%_
                                                                _%g207141207197%_
                                                                _%g207142207198%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self207135%_
                                _%g207140207196%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self207135%_
                                      _%g207141207197%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self207135%_
                                            _%g207142207198%_))
                                         (cons ''#f '()))))))
               _%hd207153207191%_
               _%hd207150207183%_
               _%hd207147207175%_)
              (_%g207138207159%_ _%g207139207162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g207138207159%_
                                               _%g207139207162%_))))
                                      (_%g207138207159%_ _%g207139207162%_))))
                              (_%g207138207159%_ _%g207139207162%_))))
                      (_%g207138207159%_ _%g207139207162%_)))))
          (_%g207137207216%_ _%stx207136%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self207035%_ _%stx207036%_)
        (let* ((_%g207038207063%_
                (lambda (_%g207039207060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207039207060%_))))
               (_%g207037207132%_
                (lambda (_%g207039207066%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207039207066%_))
                      (let ((_%e207044207068%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207039207066%_))))
                        (let ((_%hd207045207071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207044207068%_)))
                              (_%tl207046207073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207044207068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207046207073%_))
                              (let ((_%e207047207076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207046207073%_))))
                                (let ((_%hd207048207079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207047207076%_)))
                                      (_%tl207049207081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207047207076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207049207081%_))
                                      (let ((_%e207050207084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207049207081%_))))
                                        (let ((_%hd207051207087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207050207084%_)))
                                              (_%tl207052207089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207050207084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207052207089%_))
                                              (let ((_%e207053207092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl207052207089%_))))
                                                (let ((_%hd207054207095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207053207092%_)))
                                                      (_%tl207055207097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207053207092%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl207055207097%_))
                                                      (let ((_%e207056207100%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl207055207097%_))))
                (let ((_%hd207057207103%_
                       (let () (declare (not safe)) (##car _%e207056207100%_)))
                      (_%tl207058207105%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e207056207100%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl207058207105%_))
                      ((lambda (_%g207040207108%_
                                _%g207041207109%_
                                _%g207042207110%_
                                _%g207043207111%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self207035%_
                                        _%g207041207109%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self207035%_
                                              _%g207040207108%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self207035%_
                                                    _%g207042207110%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self207035%_
                                                          _%g207043207111%_))
                                                       (cons ''#f '())))))))
                       _%hd207057207103%_
                       _%hd207054207095%_
                       _%hd207051207087%_
                       _%hd207048207079%_)
                      (_%g207038207063%_ _%g207039207066%_))))
              (_%g207038207063%_ _%g207039207066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g207038207063%_
                                               _%g207039207066%_))))
                                      (_%g207038207063%_ _%g207039207066%_))))
                              (_%g207038207063%_ _%g207039207066%_))))
                      (_%g207038207063%_ _%g207039207066%_)))))
          (_%g207037207132%_ _%stx207036%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self206951%_ _%stx206952%_)
        (let* ((_%g206954206975%_
                (lambda (_%g206955206972%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206955206972%_))))
               (_%g206953207032%_
                (lambda (_%g206955206978%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206955206978%_))
                      (let ((_%e206959206980%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206955206978%_))))
                        (let ((_%hd206960206983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206959206980%_)))
                              (_%tl206961206985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206959206980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206961206985%_))
                              (let ((_%e206962206988%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206961206985%_))))
                                (let ((_%hd206963206991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206962206988%_)))
                                      (_%tl206964206993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206962206988%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206964206993%_))
                                      (let ((_%e206965206996%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl206964206993%_))))
                                        (let ((_%hd206966206999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206965206996%_)))
                                              (_%tl206967207001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206965206996%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206967207001%_))
                                              (let ((_%e206968207004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl206967207001%_))))
                                                (let ((_%hd206969207007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206968207004%_)))
                                                      (_%tl206970207009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206968207004%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206970207009%_))
                                                      ((lambda (_%g206956207012%_
                                                                _%g206957207013%_
                                                                _%g206958207014%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self206951%_
                                _%g206956207012%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self206951%_
                                      _%g206957207013%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self206951%_
                                            _%g206958207014%_))
                                         (cons ''#f '()))))))
               _%hd206969207007%_
               _%hd206966206999%_
               _%hd206963206991%_)
              (_%g206954206975%_ _%g206955206978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206954206975%_
                                               _%g206955206978%_))))
                                      (_%g206954206975%_ _%g206955206978%_))))
                              (_%g206954206975%_ _%g206955206978%_))))
                      (_%g206954206975%_ _%g206955206978%_)))))
          (_%g206953207032%_ _%stx206952%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self206851%_ _%stx206852%_)
        (let* ((_%g206854206879%_
                (lambda (_%g206855206876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206855206876%_))))
               (_%g206853206948%_
                (lambda (_%g206855206882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206855206882%_))
                      (let ((_%e206860206884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206855206882%_))))
                        (let ((_%hd206861206887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206860206884%_)))
                              (_%tl206862206889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206860206884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206862206889%_))
                              (let ((_%e206863206892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206862206889%_))))
                                (let ((_%hd206864206895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206863206892%_)))
                                      (_%tl206865206897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206863206892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206865206897%_))
                                      (let ((_%e206866206900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl206865206897%_))))
                                        (let ((_%hd206867206903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206866206900%_)))
                                              (_%tl206868206905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206866206900%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206868206905%_))
                                              (let ((_%e206869206908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl206868206905%_))))
                                                (let ((_%hd206870206911%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206869206908%_)))
                                                      (_%tl206871206913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206869206908%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206871206913%_))
                                                      (let ((_%e206872206916%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl206871206913%_))))
                (let ((_%hd206873206919%_
                       (let () (declare (not safe)) (##car _%e206872206916%_)))
                      (_%tl206874206921%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e206872206916%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206874206921%_))
                      ((lambda (_%g206856206924%_
                                _%g206857206925%_
                                _%g206858206926%_
                                _%g206859206927%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self206851%_
                                        _%g206857206925%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self206851%_
                                              _%g206856206924%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self206851%_
                                                    _%g206858206926%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self206851%_
                                                          _%g206859206927%_))
                                                       (cons ''#f '())))))))
                       _%hd206873206919%_
                       _%hd206870206911%_
                       _%hd206867206903%_
                       _%hd206864206895%_)
                      (_%g206854206879%_ _%g206855206882%_))))
              (_%g206854206879%_ _%g206855206882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206854206879%_
                                               _%g206855206882%_))))
                                      (_%g206854206879%_ _%g206855206882%_))))
                              (_%g206854206879%_ _%g206855206882%_))))
                      (_%g206854206879%_ _%g206855206882%_)))))
          (_%g206853206948%_ _%stx206852%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self206646%_ _%stx206647%_)
        (let* ((_%g206649206670%_
                (lambda (_%g206650206667%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206650206667%_))))
               (_%g206648206848%_
                (lambda (_%g206650206673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206650206673%_))
                      (let ((_%e206654206675%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206650206673%_))))
                        (let ((_%hd206655206678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206654206675%_)))
                              (_%tl206656206680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206654206675%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206656206680%_))
                              (let ((_%e206657206683%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206656206680%_))))
                                (let ((_%hd206658206686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206657206683%_)))
                                      (_%tl206659206688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206657206683%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206659206688%_))
                                      (let ((_%e206660206691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl206659206688%_))))
                                        (let ((_%hd206661206694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206660206691%_)))
                                              (_%tl206662206696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206660206691%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206662206696%_))
                                              (let ((_%e206663206699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl206662206696%_))))
                                                (let ((_%hd206664206702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206663206699%_)))
                                                      (_%tl206665206704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206663206699%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206665206704%_))
                                                      ((lambda (_%g206651206707%_
                                                                _%g206652206708%_
                                                                _%g206653206709%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self206646%_
                                    _%g206651206707%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self206646%_
                                          _%g206652206708%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp206727%_ ((_%rest206730%_
                                         (cons _%g206652206708%_
                                               (cons _%g206651206707%_ '())))
                                        (_%bind206732%_ '())
                                        (_%args206733%_ '()))
                       (let* ((_%rest206734206742%_ _%rest206730%_)
                              (_%else206736206750%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind206732%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp214868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp214868 _%args206733%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K206738206836%_
                               (lambda (_%rest206753%_ _%e206754%_)
                                 (let* ((_%__stx214505214506%_ _%e206754%_)
                                        (_%g206759206777%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx214505214506%_)))))
                                   (let ((_%__kont214507214508%_
                                          (lambda ()
                                            (_%lp206727%_
                                             _%rest206753%_
                                             _%bind206732%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e206754%_))
                                                   _%args206733%_))))
                                         (_%__kont214509214510%_
                                          (lambda ()
                                            (_%lp206727%_
                                             _%rest206753%_
                                             _%bind206732%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e206754%_))
                                                   _%args206733%_))))
                                         (_%__kont214511214512%_
                                          (lambda ()
                                            (let ((_%tmp206784%_
                                                   (let ((__tmp214869
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp214869))))
                                              (_%lp206727%_
                                               _%rest206753%_
                                               (cons (cons _%tmp206784%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e206754%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind206732%_)
                                               (cons _%tmp206784%_
                                                     _%args206733%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx214505214506%_))
                                         (let ((_%e206761206815%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx214505214506%_))))
                                           (let ((_%tl206763206820%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e206761206815%_)))
                                                 (_%hd206762206818%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e206761206815%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd206762206818%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd206762206818%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl206763206820%_))
                                                         (let ((_%e206764206823%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl206763206820%_))))
                   (let ((_%tl206766206828%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e206764206823%_)))
                         (_%hd206765206826%_
                          (let ()
                            (declare (not safe))
                            (##car _%e206764206823%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl206766206828%_))
                         (_%__kont214507214508%_)
                         (_%__kont214511214512%_))))
                 (_%__kont214511214512%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd206762206818%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl206763206820%_))
                     (let ((_%e206770206800%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl206763206820%_))))
                       (let ((_%tl206772206805%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e206770206800%_)))
                             (_%hd206771206803%_
                              (let ()
                                (declare (not safe))
                                (##car _%e206770206800%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl206772206805%_))
                             (_%__kont214509214510%_)
                             (_%__kont214511214512%_))))
                     (_%__kont214511214512%_))
                 (_%__kont214511214512%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont214511214512%_))))
                                         (_%__kont214511214512%_)))))))
                         (if (pair? _%rest206734206742%_)
                             (let ((_%hd206739206839%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest206734206742%_)))
                                   (_%tl206740206841%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest206734206742%_))))
                               (let* ((_%e206844%_ _%hd206739206839%_)
                                      (_%rest206846%_ _%tl206740206841%_))
                                 (_%K206738206836%_
                                  _%rest206846%_
                                  _%e206844%_)))
                             (_%else206736206750%_))))))
               _%hd206664206702%_
               _%hd206661206694%_
               _%hd206658206686%_)
              (_%g206649206670%_ _%g206650206673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206649206670%_
                                               _%g206650206673%_))))
                                      (_%g206649206670%_ _%g206650206673%_))))
                              (_%g206649206670%_ _%g206650206673%_))))
                      (_%g206649206670%_ _%g206650206673%_)))))
          (_%g206648206848%_ _%stx206647%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self206425%_ _%stx206426%_)
        (let* ((_%g206428206453%_
                (lambda (_%g206429206450%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206429206450%_))))
               (_%g206427206643%_
                (lambda (_%g206429206456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206429206456%_))
                      (let ((_%e206434206458%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206429206456%_))))
                        (let ((_%hd206435206461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206434206458%_)))
                              (_%tl206436206463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206434206458%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206436206463%_))
                              (let ((_%e206437206466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206436206463%_))))
                                (let ((_%hd206438206469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206437206466%_)))
                                      (_%tl206439206471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206437206466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206439206471%_))
                                      (let ((_%e206440206474%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl206439206471%_))))
                                        (let ((_%hd206441206477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206440206474%_)))
                                              (_%tl206442206479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206440206474%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206442206479%_))
                                              (let ((_%e206443206482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl206442206479%_))))
                                                (let ((_%hd206444206485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206443206482%_)))
                                                      (_%tl206445206487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206443206482%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206445206487%_))
                                                      (let ((_%e206446206490%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl206445206487%_))))
                (let ((_%hd206447206493%_
                       (let () (declare (not safe)) (##car _%e206446206490%_)))
                      (_%tl206448206495%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e206446206490%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206448206495%_))
                      ((lambda (_%g206430206498%_
                                _%g206431206499%_
                                _%g206432206500%_
                                _%g206433206501%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self206425%_
                                            _%g206431206499%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self206425%_
                                                  _%g206430206498%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self206425%_
                                                        _%g206432206500%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp206522%_ ((_%rest206525%_
                                                 (cons _%g206432206500%_
                                                       (cons _%g206430206498%_
                                                             (cons _%g206431206499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind206527%_ '())
                                                (_%args206528%_ '()))
                               (let* ((_%rest206529206537%_ _%rest206525%_)
                                      (_%else206531206545%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind206527%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp214870 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp214870 _%args206528%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K206533206631%_
                                       (lambda (_%rest206548%_ _%e206549%_)
                                         (let* ((_%__stx214551214552%_
                                                 _%e206549%_)
                                                (_%g206554206572%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx214551214552%_)))))
                                           (let ((_%__kont214553214554%_
                                                  (lambda ()
                                                    (_%lp206522%_
                                                     _%rest206548%_
                                                     _%bind206527%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e206549%_))
                                                           _%args206528%_))))
                                                 (_%__kont214555214556%_
                                                  (lambda ()
                                                    (_%lp206522%_
                                                     _%rest206548%_
                                                     _%bind206527%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e206549%_))
                                                           _%args206528%_))))
                                                 (_%__kont214557214558%_
                                                  (lambda ()
                                                    (let ((_%tmp206579%_
                                                           (let ((__tmp214871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp214871))))
              (_%lp206522%_
               _%rest206548%_
               (cons (cons _%tmp206579%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e206549%_))
                                 '()))
                     _%bind206527%_)
               (cons _%tmp206579%_ _%args206528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx214551214552%_))
                                                 (let ((_%e206556206610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx214551214552%_))))
                                                   (let ((_%tl206558206615%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206556206610%_)))
                                                         (_%hd206557206613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206556206610%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd206557206613%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd206557206613%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl206558206615%_))
                         (let ((_%e206559206618%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl206558206615%_))))
                           (let ((_%tl206561206623%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e206559206618%_)))
                                 (_%hd206560206621%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e206559206618%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl206561206623%_))
                                 (_%__kont214553214554%_)
                                 (_%__kont214557214558%_))))
                         (_%__kont214557214558%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd206557206613%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl206558206615%_))
                             (let ((_%e206565206595%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl206558206615%_))))
                               (let ((_%tl206567206600%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e206565206595%_)))
                                     (_%hd206566206598%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e206565206595%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl206567206600%_))
                                     (_%__kont214555214556%_)
                                     (_%__kont214557214558%_))))
                             (_%__kont214557214558%_))
                         (_%__kont214557214558%_)))
                 (_%__kont214557214558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont214557214558%_)))))))
                                 (if (pair? _%rest206529206537%_)
                                     (let ((_%hd206534206634%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest206529206537%_)))
                                           (_%tl206535206636%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest206529206537%_))))
                                       (let* ((_%e206639%_ _%hd206534206634%_)
                                              (_%rest206641%_
                                               _%tl206535206636%_))
                                         (_%K206533206631%_
                                          _%rest206641%_
                                          _%e206639%_)))
                                     (_%else206531206545%_))))))
                       _%hd206447206493%_
                       _%hd206444206485%_
                       _%hd206441206477%_
                       _%hd206438206469%_)
                      (_%g206428206453%_ _%g206429206456%_))))
              (_%g206428206453%_ _%g206429206456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206428206453%_
                                               _%g206429206456%_))))
                                      (_%g206428206453%_ _%g206429206456%_))))
                              (_%g206428206453%_ _%g206429206456%_))))
                      (_%g206428206453%_ _%g206429206456%_)))))
          (_%g206427206643%_ _%stx206426%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self206264%_ _%stx206265%_)
        (letrec ((_%import-set-template206267%_
                  (lambda (_%in206370%_ _%phi206371%_)
                    (let ((_%iphi206373%_
                           (fx+ _%phi206371%_
                                (##direct-structure-ref
                                 _%in206370%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports206374%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in206370%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp206376%_ ((_%rest206378%_ _%imports206374%_)
                                         (_%r206379%_ '()))
                        (let* ((_%rest206380206388%_ _%rest206378%_)
                               (_%else206382206396%_ (lambda () _%r206379%_))
                               (_%K206384206413%_
                                (lambda (_%rest206399%_ _%in206400%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in206400%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi206373%_))
                                          (_%lp206376%_
                                           _%rest206399%_
                                           (cons _%in206400%_ _%r206379%_))
                                          (_%lp206376%_
                                           _%rest206399%_
                                           _%r206379%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in206400%_
                                             'gx#module-import::t))
                                          (let ((_%iphi206404%_
                                                 (fx+ _%phi206371%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in206400%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi206404%_))
                                                (_%lp206376%_
                                                 _%rest206399%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206400%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r206379%_))
                                                (_%lp206376%_
                                                 _%rest206399%_
                                                 _%r206379%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in206400%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi206407%_
                                                     (fx+ _%iphi206373%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in206400%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi206407%_))
                                                    (_%lp206376%_
                                                     _%rest206399%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in206400%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r206379%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi206407%_))
                                                        (_%lp206376%_
                                                         _%rest206399%_
                                                         (let ((__tmp214872
                                                                (_%import-set-template206267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in206400%_
                         _%iphi206373%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r206379%_ __tmp214872)))
                (_%lp206376%_ _%rest206399%_ _%r206379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp206376%_
                                               _%rest206399%_
                                               _%r206379%_)))))))
                          (if (pair? _%rest206380206388%_)
                              (let ((_%hd206385206416%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest206380206388%_)))
                                    (_%tl206386206418%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest206380206388%_))))
                                (let* ((_%in206421%_ _%hd206385206416%_)
                                       (_%rest206423%_ _%tl206386206418%_))
                                  (_%K206384206413%_
                                   _%rest206423%_
                                   _%in206421%_)))
                              (_%else206382206396%_))))))))
          (let* ((_%g206269206279%_
                  (lambda (_%g206270206276%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g206270206276%_))))
                 (_%g206268206367%_
                  (lambda (_%g206270206282%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g206270206282%_))
                        (let ((_%e206272206284%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g206270206282%_))))
                          (let ((_%hd206273206287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206272206284%_)))
                                (_%tl206274206289%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206272206284%_))))
                            ((lambda (_%g206271206292%_)
                               (let ((_%ht206303%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp206305%_ ((_%rest206307%_
                                                     _%g206271206292%_)
                                                    (_%loads206308%_ '()))
                                   (letrec ((_%K206310%_
                                             (lambda (_%ctx206360%_
                                                      _%rest206361%_)
                                               (let ((_%id206363%_
                                                      (##structure-ref
                                                       _%ctx206360%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht206303%_
                                                        _%id206363%_))
                                                     (_%lp206305%_
                                                      _%rest206361%_
                                                      _%loads206308%_)
                                                     (let ((_%rt206365%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id206363%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht206303%_
                                                          _%id206363%_
                                                          _%rt206365%_))
                                                       (_%lp206305%_
                                                        _%rest206361%_
                                                        (cons _%rt206365%_
                                                              _%loads206308%_))))))))
                                     (let* ((_%rest206311206319%_
                                             _%rest206307%_)
                                            (_%else206313206331%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp214874
                                                            (lambda (_%g206326206328%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g206326206328%_)))
                   (__tmp214873 (reverse _%loads206308%_)))
               (declare (not safe))
               (##map __tmp214874 __tmp214873)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K206315206348%_
                                             (lambda (_%rest206334%_
                                                      _%in206335%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in206335%_
                                                      'gx#module-context::t))
                                                   (_%K206310%_
                                                    _%in206335%_
                                                    _%rest206334%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in206335%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in206335%_
                               '3
                               '#f
                               '#f)))
                   (_%K206310%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in206335%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest206334%_)
                   (_%lp206305%_ _%rest206334%_ _%loads206308%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in206335%_
                      'gx#import-set::t))
                   (let ((_%phi206340%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in206335%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi206340%_)
                         (_%K206310%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in206335%_
                             '1
                             '#f
                             '#f))
                          _%rest206334%_)
                         (if (fxpositive? _%phi206340%_)
                             (let ((_%deps206344%_
                                    (_%import-set-template206267%_
                                     _%in206335%_
                                     '0)))
                               (_%lp206305%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest206334%_
                                   _%deps206344%_))
                                _%loads206308%_))
                             (_%lp206305%_ _%rest206334%_ _%loads206308%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx206265%_
                      _%in206335%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest206311206319%_)
                                           (let ((_%hd206316206351%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest206311206319%_)))
                                                 (_%tl206317206353%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest206311206319%_))))
                                             (let* ((_%in206356%_
                                                     _%hd206316206351%_)
                                                    (_%rest206358%_
                                                     _%tl206317206353%_))
                                               (_%K206315206348%_
                                                _%rest206358%_
                                                _%in206356%_)))
                                           (_%else206313206331%_)))))))
                             _%tl206274206289%_)))
                        (_%g206269206279%_ _%g206270206282%_)))))
            (_%g206268206367%_ _%stx206265%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self206078%_ _%stx206079%_)
        (letrec ((_%add-lift!206081%_
                  (lambda (_%expr206262%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr206262%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote206082%_
                  (lambda (_%id206259%_ _%marks206260%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id206259%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks206260%_
                                                        '()))))))))
                 (_%generate-simple206083%_
                  (lambda (_%stxq206254%_)
                    (let ((_%gid206256%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid206257%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq206254%_))))
                      (_%add-lift!206081%_
                       (cons 'define
                             (cons _%gid206256%_
                                   (cons (_%generate-syntax-quote206082%_
                                          _%qid206257%_
                                          ''())
                                         '()))))
                      (let ((__tmp214875
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp214875 _%stxq206254%_ _%gid206256%_))
                      _%gid206256%_)))
                 (_%generate-serialized206084%_
                  (lambda (_%stxq206244%_ _%marks206245%_)
                    (let* ((_%mark-refs206247%_
                            (map _%generate-mark206085%_ _%marks206245%_))
                           (_%gid206249%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid206251%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq206244%_))))
                      (_%add-lift!206081%_
                       (cons 'define
                             (cons _%gid206249%_
                                   (cons (_%generate-syntax-quote206082%_
                                          _%qid206251%_
                                          (cons 'list _%mark-refs206247%_))
                                         '()))))
                      (let ((__tmp214876
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp214876 _%stxq206244%_ _%gid206249%_))
                      _%gid206249%_)))
                 (_%generate-mark206085%_
                  (lambda (_%mark206229%_)
                    (let ((_%$e206231%_
                           (let ((__tmp214877
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp214877 _%mark206229%_))))
                      (if _%$e206231%_
                          _%$e206231%_
                          (let* ((_%gid206235%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr206237%_
                                  (_%serialize-mark206086%_ _%mark206229%_))
                                 (_%ctx206239%_
                                  (let ((__tmp214878
                                         (##structure-ref
                                          _%mark206229%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp214878)))
                                 (_%ctx-ref206241%_
                                  (if (eq? _%ctx206239%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref206087%_
                                                               _%ctx206239%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp214879
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp214879
                               _%mark206229%_
                               _%gid206235%_))
                            (_%add-lift!206081%_
                             (cons 'define
                                   (cons _%gid206235%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr206237%_ '()))
                   (cons _%ctx-ref206241%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid206235%_)))))
                 (_%serialize-mark206086%_
                  (lambda (_%mark206177%_)
                    (letrec ((_%quote-e206179%_
                              (lambda (_%sym206227%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym206227%_))
                                    _%sym206227%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym206227%_))))))
                      (let* ((_%mark206180206189%_ _%mark206177%_)
                             (_%E206182206192%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark206180206189%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K206183206204%_
                              (lambda (_%trace206195%_
                                       _%phi206196%_
                                       _%ctx206197%_
                                       _%subst206198%_)
                                (let ((_%subs206200%_
                                       (if _%subst206198%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst206198%_))
                                           '())))
                                  (cons _%phi206196%_
                                        (let ((__tmp214880
                                               (lambda (_%pair206202%_)
                                                 (cons (_%quote-e206179%_
                                                        (car _%pair206202%_))
                                                       (_%quote-e206179%_
                                                        (cdr _%pair206202%_))))))
                                          (declare (not safe))
                                          (##map __tmp214880
                                                 _%subs206200%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark206180206189%_
                               'gx#expander-mark::t))
                            (let* ((_%e206184206207%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark206180206189%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst206210%_ _%e206184206207%_)
                                   (_%e206185206212%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark206180206189%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx206215%_ _%e206185206212%_)
                                   (_%e206186206217%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark206180206189%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi206220%_ _%e206186206217%_)
                                   (_%e206187206222%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark206180206189%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace206225%_ _%e206187206222%_))
                              (_%K206183206204%_
                               _%trace206225%_
                               _%phi206220%_
                               _%ctx206215%_
                               _%subst206210%_))
                            (_%E206182206192%_))))))
                 (_%context-ref206087%_
                  (lambda (_%ctx206164%_)
                    (if (let ((__tmp214881
                               (##structure-ref
                                _%ctx206164%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp214881
                           'gx#module-context::t))
                        (let ((_%ctx-ref206166%_
                               (_%context-ref-nested206089%_ _%ctx206164%_))
                              (_%ctx-origin206167%_
                               (_%context-ref-origin206088%_ _%ctx206164%_))
                              (_%origin206168%_
                               (_%context-ref-origin206088%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin206168%_ _%ctx-origin206167%_)
                              (let ((_%ref206170%_
                                     (_%context-ref-nested206089%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp206172%_ ((_%ref206174%_
                                                    (cdr _%ref206170%_))
                                                   (_%ctx-ref206175%_
                                                    (cdr _%ctx-ref206166%_)))
                                  (if (and (pair? _%ref206174%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref206174%_))
                                                (car _%ctx-ref206175%_)))
                                      (_%lp206172%_
                                       (cdr _%ref206174%_)
                                       (cdr _%ctx-ref206175%_))
                                      (cons '#f _%ctx-ref206175%_))))
                              _%ctx-ref206166%_))
                        (let ((__tmp214882
                               (##structure-ref
                                _%ctx206164%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp214882)))))
                 (_%context-ref-origin206088%_
                  (lambda (_%ctx206156%_)
                    (let _%lp206158%_ ((_%ctx206160%_ _%ctx206156%_))
                      (let ((_%super206162%_
                             (##structure-ref
                              _%ctx206160%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super206162%_
                               'gx#module-context::t))
                            (_%lp206158%_ _%super206162%_)
                            _%ctx206160%_)))))
                 (_%context-ref-nested206089%_
                  (lambda (_%ctx206147%_)
                    (let _%lp206149%_ ((_%ctx206151%_ _%ctx206147%_)
                                       (_%r206152%_ '()))
                      (let ((_%super206154%_
                             (##structure-ref
                              _%ctx206151%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super206154%_
                               'gx#module-context::t))
                            (_%lp206149%_
                             _%super206154%_
                             (cons (car (##structure-ref
                                         _%ctx206151%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r206152%_))
                            (cons (let ((__tmp214883
                                         (##structure-ref
                                          _%ctx206151%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp214883))
                                  _%r206152%_)))))))
          (let* ((_%g206091206104%_
                  (lambda (_%g206092206101%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g206092206101%_))))
                 (_%g206090206144%_
                  (lambda (_%g206092206107%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g206092206107%_))
                        (let ((_%e206094206109%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g206092206107%_))))
                          (let ((_%hd206095206112%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206094206109%_)))
                                (_%tl206096206114%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206094206109%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206096206114%_))
                                (let ((_%e206097206117%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl206096206114%_))))
                                  (let ((_%hd206098206120%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206097206117%_)))
                                        (_%tl206099206122%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206097206117%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206099206122%_))
                                        ((lambda (_%g206093206125%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g206093206125%_))
                                               (let ((_%$e206138%_
                                                      (let ((__tmp214884
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp214884 _%g206093206125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e206138%_
                                                     _%$e206138%_
                                                     (let ((_%marks206142%_
                                                            (##direct-structure-ref
                                                             _%g206093206125%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks206142%_)
                                                           (_%generate-simple206083%_
                                                            _%g206093206125%_)
                                                           (_%generate-serialized206084%_
                                                            _%g206093206125%_
                                                            _%marks206142%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g206093206125%_))))
                                         _%hd206098206120%_)
                                        (_%g206091206104%_
                                         _%g206092206107%_))))
                                (_%g206091206104%_ _%g206092206107%_))))
                        (_%g206091206104%_ _%g206092206107%_)))))
            (_%g206090206144%_ _%stx206079%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self206010%_ _%stx206011%_)
        (let* ((_%g206013206030%_
                (lambda (_%g206014206027%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206014206027%_))))
               (_%g206012206075%_
                (lambda (_%g206014206033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206014206033%_))
                      (let ((_%e206017206035%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206014206033%_))))
                        (let ((_%hd206018206038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206017206035%_)))
                              (_%tl206019206040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206017206035%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206019206040%_))
                              (let ((_%e206020206043%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206019206040%_))))
                                (let ((_%hd206021206046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206020206043%_)))
                                      (_%tl206022206048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206020206043%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206022206048%_))
                                      (let ((_%e206023206051%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl206022206048%_))))
                                        (let ((_%hd206024206054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206023206051%_)))
                                              (_%tl206025206056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206023206051%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206025206056%_))
                                              ((lambda (_%g206015206059%_
                                                        _%g206016206060%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g206016206060%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self206010%_
                              _%g206015206059%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206024206054%_
                                               _%hd206021206046%_)
                                              (_%g206013206030%_
                                               _%g206014206033%_))))
                                      (_%g206013206030%_ _%g206014206033%_))))
                              (_%g206013206030%_ _%g206014206033%_))))
                      (_%g206013206030%_ _%g206014206033%_)))))
          (_%g206012206075%_ _%stx206011%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self205959%_ _%stx205960%_)
        (let* ((_%g205962205972%_
                (lambda (_%g205963205969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205963205969%_))))
               (_%g205961206007%_
                (lambda (_%g205963205975%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205963205975%_))
                      (let ((_%e205965205977%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205963205975%_))))
                        (let ((_%hd205966205980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205965205977%_)))
                              (_%tl205967205982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205965205977%_))))
                          ((lambda (_%g205964205985%_)
                             (let* ((_%c-body205999%_
                                     (map (lambda (_%g205994205996%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self205959%_
                                               _%g205994205996%_)))
                                          _%g205964205985%_))
                                    (_%c-body206004%_
                                     (let ((__tmp214885
                                            (lambda (_%$obj206001%_)
                                              (not (eq? _%$obj206001%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp214885
                                        _%c-body205999%_))))
                               (cons '%#begin _%c-body206004%_)))
                           _%tl205967205982%_)))
                      (_%g205962205972%_ _%g205963205975%_)))))
          (_%g205961206007%_ _%stx205960%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self205864%_ _%stx205865%_)
        (let* ((_%g205867205877%_
                (lambda (_%g205868205874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205868205874%_))))
               (_%g205866205956%_
                (lambda (_%g205868205880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205868205880%_))
                      (let ((_%e205870205882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205868205880%_))))
                        (let ((_%hd205871205885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205870205882%_)))
                              (_%tl205872205887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205870205882%_))))
                          ((lambda (_%g205869205890%_)
                             (let* ((_%phi205900%_
                                     (let ((__tmp214886
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp214886 '1)))
                                    (_%block205902%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self205864%_ 'state))
                                      _%phi205900%_))
                                    (_%compiled205905%_
                                     (let ((__tmp214887
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self205864%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g205869205890%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214887
                                        gx#current-expander-phi
                                        _%phi205900%_)))
                                    (_%g205908205918%_
                                     (lambda (_%g205909205915%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g205909205915%_))))
                                    (_%g205907205953%_
                                     (lambda (_%g205909205921%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g205909205921%_))
                                           (let ((_%e205911205923%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g205909205921%_))))
                                             (let ((_%hd205912205926%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e205911205923%_)))
                                                   (_%tl205913205928%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e205911205923%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd205912205926%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd205912205926%_))
                                                       ((lambda (_%g205910205931%_)
                                                          (let ((_%c-body205948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj205945%_)
                                   (not (eq? _%$obj205945%_ '#!void)))
                                 _%g205910205931%_)))
                    (if _%block205902%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block205902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body205948%_))
                        (if (null? _%c-body205948%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body205948%_)))))
                _%tl205913205928%_)
               (_%g205908205918%_ _%g205909205921%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g205908205918%_
                                                    _%g205909205921%_))))
                                           (_%g205908205918%_
                                            _%g205909205921%_)))))
                               (_%g205907205953%_ _%compiled205905%_)))
                           _%tl205872205887%_)))
                      (_%g205867205877%_ _%g205868205880%_)))))
          (_%g205866205956%_ _%stx205865%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self205795%_ _%stx205796%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205795%_ 'state)))
        (let* ((_%g205798205812%_
                (lambda (_%g205799205809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205799205809%_))))
               (_%g205797205861%_
                (lambda (_%g205799205815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205799205815%_))
                      (let ((_%e205802205817%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205799205815%_))))
                        (let ((_%hd205803205820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205802205817%_)))
                              (_%tl205804205822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205802205817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205804205822%_))
                              (let ((_%e205805205825%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205804205822%_))))
                                (let ((_%hd205806205828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205805205825%_)))
                                      (_%tl205807205830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205805205825%_))))
                                  ((lambda (_%g205800205833%_
                                            _%g205801205834%_)
                                     (let ((_%key205847%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g205801205834%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key205847%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx205796%_
                                              _%g205801205834%_
                                              _%key205847%_)))
                                       (let* ((_%ctx205849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g205801205834%_)))
                                              (_%code205852%_
                                               (let ((__tmp214888
                                                      (lambda ()
                                                        (let ((__tmp214889
                                                               (##structure-ref
                                                                _%ctx205849%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self205795%_
                                                           __tmp214889)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp214888
                                                  gx#current-expander-context
                                                  _%ctx205849%_)))
                                              (_%rt205854%_
                                               (let ((__tmp214890
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp214890
                                                  _%ctx205849%_)))
                                              (_%loader205856%_
                                               (if _%rt205854%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt205854%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid205858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g205801205834%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self205795%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid205858%_
                                                     (cons _%code205852%_
                                                           _%loader205856%_))))))
                                   _%tl205807205830%_
                                   _%hd205806205828%_)))
                              (_%g205798205812%_ _%g205799205815%_))))
                      (_%g205798205812%_ _%g205799205815%_)))))
          (_%g205797205861%_ _%stx205796%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx205782%_ _%context-chain205783%_)
        (let _%lp205785%_ ((_%ctx205787%_ _%ctx205782%_) (_%path205788%_ '()))
          (let ((_%super205790%_
                 (##structure-ref _%ctx205787%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super205790%_ _%context-chain205783%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx205787%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path205788%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super205790%_
                       'gx#module-context::t))
                    (_%lp205785%_
                     _%super205790%_
                     (cons (car (##structure-ref
                                 _%ctx205787%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path205788%_))
                    (cons (let ((__tmp214891
                                 (##structure-ref
                                  _%ctx205787%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp214891))
                          _%path205788%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp205775%_ ((_%ctx205777%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r205778%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx205777%_ 'gx#module-context::t))
              (_%lp205775%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx205777%_ '3 '#f '#f))
               (cons _%ctx205777%_ _%r205778%_))
              _%r205778%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self205540%_ _%stx205541%_)
        (letrec* ((_%context-chain205543%_ (gxc#current-context-chain))
                  (_%make-import-spec205544%_
                   (lambda (_%in205712%_)
                     (let* ((_%in205713205725%_ _%in205712%_)
                            (_%E205715205728%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in205713205725%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K205716205738%_
                             (lambda (_%phi205731%_
                                      _%name205732%_
                                      _%src-name205733%_
                                      _%src-phi205734%_
                                      _%src-key205735%_
                                      _%src-ctx205736%_)
                               (cons _%phi205731%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name205732%_))
                                           (cons _%src-phi205734%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name205733%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in205713205725%_
                              'gx#module-import::t))
                           (let ((_%e205717205741%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in205713205725%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e205717205741%_
                                    'gx#module-export::t))
                                 (let* ((_%e205720205744%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e205717205741%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx205747%_ _%e205720205744%_)
                                        (_%e205721205749%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e205717205741%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key205752%_ _%e205721205749%_)
                                        (_%e205722205754%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e205717205741%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi205757%_ _%e205722205754%_)
                                        (_%e205723205759%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e205717205741%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name205762%_ _%e205723205759%_)
                                        (_%e205718205764%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in205713205725%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name205767%_ _%e205718205764%_)
                                        (_%e205719205769%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in205713205725%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi205772%_ _%e205719205769%_))
                                   (_%K205716205738%_
                                    _%phi205772%_
                                    _%name205767%_
                                    _%src-name205762%_
                                    _%src-phi205757%_
                                    _%src-key205752%_
                                    _%src-ctx205747%_))
                                 (_%E205715205728%_)))
                           (_%E205715205728%_)))))
                  (_%make-import-path205545%_
                   (lambda (_%ctx205710%_)
                     (gxc#generate-meta-import-path
                      _%ctx205710%_
                      _%context-chain205543%_)))
                  (_%make-import-spec-in205546%_
                   (lambda (_%ctx205707%_ _%in205708%_)
                     (cons 'spec:
                           (cons (_%make-import-path205545%_ _%ctx205707%_)
                                 (reverse _%in205708%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self205540%_ 'state)))
          (let* ((_%g205548205558%_
                  (lambda (_%g205549205555%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g205549205555%_))))
                 (_%g205547205704%_
                  (lambda (_%g205549205561%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g205549205561%_))
                        (let ((_%e205551205563%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g205549205561%_))))
                          (let ((_%hd205552205566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205551205563%_)))
                                (_%tl205553205568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205551205563%_))))
                            ((lambda (_%g205550205571%_)
                               (let _%lp205582%_ ((_%rest205584%_
                                                   _%g205550205571%_)
                                                  (_%current-src205585%_ '#f)
                                                  (_%current-in205586%_ '())
                                                  (_%r205587%_ '()))
                                 (let* ((_%rest205588205596%_ _%rest205584%_)
                                        (_%else205590205606%_
                                         (lambda ()
                                           (let ((_%r205604%_
                                                  (if _%current-src205585%_
                                                      (cons (_%make-import-spec-in205546%_
                                                             _%current-src205585%_
                                                             _%current-in205586%_)
                                                            _%r205587%_)
                                                      _%r205587%_)))
                                             (cons '%#import
                                                   (reverse _%r205604%_)))))
                                        (_%K205592205692%_
                                         (lambda (_%rest205609%_ _%in205610%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in205610%_
                                                  'gx#module-import::t))
                                               (let* ((_%in205612205619%_
                                                       _%in205610%_)
                                                      (_%E205614205622%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in205612205619%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K205615205630%_
               (lambda (_%src-ctx205625%_)
                 (if (eq? _%current-src205585%_ _%src-ctx205625%_)
                     (_%lp205582%_
                      _%rest205609%_
                      _%current-src205585%_
                      (cons (_%make-import-spec205544%_ _%in205610%_)
                            _%current-in205586%_)
                      _%r205587%_)
                     (if _%current-src205585%_
                         (_%lp205582%_
                          _%rest205609%_
                          _%src-ctx205625%_
                          (cons (_%make-import-spec205544%_ _%in205610%_) '())
                          (cons (_%make-import-spec-in205546%_
                                 _%current-src205585%_
                                 _%current-in205586%_)
                                _%r205587%_))
                         (_%lp205582%_
                          _%rest205609%_
                          _%src-ctx205625%_
                          (cons (_%make-import-spec205544%_ _%in205610%_) '())
                          _%r205587%_)))))
              (_%e205616205633%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in205612205619%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e205616205633%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e205617205636%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e205616205633%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx205639%_ _%e205617205636%_))
               (_%K205615205630%_ _%src-ctx205639%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E205614205622%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in205610%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi205642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in205610%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src205644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in205610%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in205684%_
                                                           (let* ((_%g205645205654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path205545%_ _%src205644%_))
                          (_%E205648205658%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g205645205654%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K205650205674%_
                            (lambda (_%path205672%_) _%path205672%_))
                           (_%K205649205664%_
                            (lambda (_%path205662%_)
                              (cons 'in: _%path205662%_))))
                       (if (pair? _%g205645205654%_)
                           (let ((_%tl205652205679%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g205645205654%_)))
                                 (_%hd205651205677%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g205645205654%_))))
                             (if (null? _%tl205652205679%_)
                                 (let ((_%path205682%_ _%hd205651205677%_))
                                   (_%K205650205674%_ _%path205682%_))
                                 (let ((_%path205667%_ _%g205645205654%_))
                                   (_%K205649205664%_ _%path205667%_))))
                           (let ((_%path205667%_ _%g205645205654%_))
                             (_%K205649205664%_ _%path205667%_))))))
                  (_%r205686%_
                   (if _%current-src205585%_
                       (cons (_%make-import-spec-in205546%_
                              _%current-src205585%_
                              _%current-in205586%_)
                             _%r205587%_)
                       _%r205587%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp205582%_
                                                      _%rest205609%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi205642%_)
                                                                _%src-in205684%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi205642%_
                                    (cons _%src-in205684%_ '()))))
                    _%r205686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in205610%_
                                                          'gx#module-context::t))
                                                       (let ((_%r205690%_
                                                              (if _%current-src205585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in205546%_
                                 _%current-src205585%_
                                 _%current-in205586%_)
                                _%r205587%_)
                          _%r205587%_)))
                 (_%lp205582%_
                  _%rest205609%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path205545%_ _%in205610%_))
                        _%r205690%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest205588205596%_)
                                       (let ((_%hd205593205695%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest205588205596%_)))
                                             (_%tl205594205697%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest205588205596%_))))
                                         (let* ((_%in205700%_
                                                 _%hd205593205695%_)
                                                (_%rest205702%_
                                                 _%tl205594205697%_))
                                           (_%K205592205692%_
                                            _%rest205702%_
                                            _%in205700%_)))
                                       (_%else205590205606%_)))))
                             _%tl205553205568%_)))
                        (_%g205548205558%_ _%g205549205561%_)))))
            (_%g205547205704%_ _%stx205541%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self205350%_ _%stx205351%_)
        (letrec* ((_%context-chain205353%_ (gxc#current-context-chain))
                  (_%make-import-path205354%_
                   (lambda (_%ctx205538%_)
                     (gxc#generate-meta-import-path
                      _%ctx205538%_
                      _%context-chain205353%_))))
          (let* ((_%g205356205366%_
                  (lambda (_%g205357205363%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g205357205363%_))))
                 (_%g205355205535%_
                  (lambda (_%g205357205369%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g205357205369%_))
                        (let ((_%e205359205371%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g205357205369%_))))
                          (let ((_%hd205360205374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205359205371%_)))
                                (_%tl205361205376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205359205371%_))))
                            ((lambda (_%g205358205379%_)
                               (let _%lp205390%_ ((_%rest205392%_
                                                   _%g205358205379%_)
                                                  (_%r205393%_ '()))
                                 (let* ((_%rest205394205402%_ _%rest205392%_)
                                        (_%else205396205410%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r205393%_))))
                                        (_%K205398205523%_
                                         (lambda (_%rest205413%_ _%out205414%_)
                                           (let* ((_%out205415205428%_
                                                   _%out205414%_)
                                                  (_%E205418205432%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out205415205428%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K205422205502%_
                                                    (lambda (_%name205498%_
                                                             _%phi205499%_
                                                             _%key205500%_)
                                                      (_%lp205390%_
                                                       _%rest205413%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi205499%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key205500%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name205498%_))
                                             '()))))
                     _%r205393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K205419205482%_
                                                    (lambda (_%phi205436%_
                                                             _%src205437%_)
                                                      (let* ((_%out205477%_
                                                              (if _%src205437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g205438205447%_
                                              (_%make-import-path205354%_
                                               _%src205437%_))
                                             (_%E205441205451%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g205438205447%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K205443205467%_
                                               (lambda (_%path205465%_)
                                                 _%path205465%_))
                                              (_%K205442205457%_
                                               (lambda (_%path205455%_)
                                                 (cons 'in: _%path205455%_))))
                                          (if (pair? _%g205438205447%_)
                                              (let ((_%tl205445205472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g205438205447%_)))
                                                    (_%hd205444205470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g205438205447%_))))
                                                (if (null? _%tl205445205472%_)
                                                    (let ((_%path205475%_
                                                           _%hd205444205470%_))
                                                      (_%K205443205467%_
                                                       _%path205475%_))
                                                    (let ((_%path205460%_
                                                           _%g205438205447%_))
                                                      (_%K205442205457%_
                                                       _%path205460%_))))
                                              (let ((_%path205460%_
                                                     _%g205438205447%_))
                                                (_%K205442205457%_
                                                 _%path205460%_)))))
                                      '()))
                          '#t))
                     (_%out205479%_
                      (if (fxzero? _%phi205436%_)
                          _%out205477%_
                          (cons 'phi:
                                (cons _%phi205436%_
                                      (cons _%out205477%_ '()))))))
                (_%lp205390%_
                 _%rest205413%_
                 (cons _%out205479%_ _%r205393%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match205417205495%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out205415205428%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e205420205485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out205415205428%_
                               '1
                               '#f
                               '#f)))
                           (_%e205421205490%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out205415205428%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src205488%_ _%e205420205485%_)
                            (_%phi205493%_ _%e205421205490%_))
                        (_%K205419205482%_ _%phi205493%_ _%src205488%_)))
                    (_%E205418205432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out205415205428%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e205423205505%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out205415205428%_
                        '1
                        '#f
                        '#f)))
                    (_%e205424205508%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out205415205428%_
                        '2
                        '#f
                        '#f)))
                    (_%e205425205513%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out205415205428%_
                        '3
                        '#f
                        '#f)))
                    (_%e205426205518%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out205415205428%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key205511%_ _%e205424205508%_)
                     (_%phi205516%_ _%e205425205513%_)
                     (_%name205521%_ _%e205426205518%_))
                 (_%K205422205502%_
                  _%name205521%_
                  _%phi205516%_
                  _%key205511%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match205417205495%_))))))))
                                   (if (pair? _%rest205394205402%_)
                                       (let ((_%hd205399205526%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest205394205402%_)))
                                             (_%tl205400205528%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest205394205402%_))))
                                         (let* ((_%out205531%_
                                                 _%hd205399205526%_)
                                                (_%rest205533%_
                                                 _%tl205400205528%_))
                                           (_%K205398205523%_
                                            _%rest205533%_
                                            _%out205531%_)))
                                       (_%else205396205410%_)))))
                             _%tl205361205376%_)))
                        (_%g205356205366%_ _%g205357205369%_)))))
            (_%g205355205535%_ _%stx205351%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self205311%_ _%stx205312%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205311%_ 'state)))
        (let* ((_%g205314205324%_
                (lambda (_%g205315205321%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205315205321%_))))
               (_%g205313205347%_
                (lambda (_%g205315205327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205315205327%_))
                      (let ((_%e205317205329%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205315205327%_))))
                        (let ((_%hd205318205332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205317205329%_)))
                              (_%tl205319205334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205317205329%_))))
                          ((lambda (_%g205316205337%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g205316205337%_)))
                           _%tl205319205334%_)))
                      (_%g205314205324%_ _%g205315205327%_)))))
          (_%g205313205347%_ _%stx205312%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self205186%_ _%stx205187%_)
        (letrec ((_%generate1205189%_
                  (lambda (_%id205306%_ _%eid205307%_)
                    (let ((_%eid205309%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid205307%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid205309%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx205187%_
                             _%eid205309%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id205306%_))
                            (cons _%eid205309%_ '()))))))
          (let* ((_%g205191205219%_
                  (lambda (_%g205192205216%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g205192205216%_))))
                 (_%g205190205303%_
                  (lambda (_%g205192205222%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g205192205222%_))
                        (let ((_%e205195205224%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g205192205222%_))))
                          (let ((_%hd205196205227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205195205224%_)))
                                (_%tl205197205229%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205195205224%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl205197205229%_))
                                (let ((_g214892_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl205197205229%_
                                          '0))))
                                  (begin
                                    (let ((_g214893_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g214892_)
                                                 (##values-length _g214892_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g214893_ 2)))
                                          (error "Context expects 2 values"
                                                 _g214893_)))
                                    (let ((_%target205198205232%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g214892_ 0)))
                                          (_%tl205200205234%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g214892_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205200205234%_))
                                          (letrec ((_%loop205201205237%_
                                                    (lambda (_%hd205199205240%_
                                                             _%eid205205205242%_
                                                             _%id205206205243%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd205199205240%_))
                                                          (let ((_%e205202205245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd205199205240%_))))
                    (let ((_%lp-hd205203205248%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205202205245%_)))
                          (_%lp-tl205204205250%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205202205245%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd205203205248%_))
                          (let ((_%e205209205253%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd205203205248%_))))
                            (let ((_%hd205210205256%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205209205253%_)))
                                  (_%tl205211205258%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205209205253%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205211205258%_))
                                  (let ((_%e205212205261%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl205211205258%_))))
                                    (let ((_%hd205213205264%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205212205261%_)))
                                          (_%tl205214205266%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205212205261%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205214205266%_))
                                          (_%loop205201205237%_
                                           _%lp-tl205204205250%_
                                           (cons _%hd205213205264%_
                                                 _%eid205205205242%_)
                                           (cons _%hd205210205256%_
                                                 _%id205206205243%_))
                                          (_%g205191205219%_
                                           _%g205192205222%_))))
                                  (_%g205191205219%_ _%g205192205222%_))))
                          (_%g205191205219%_ _%g205192205222%_))))
                  (let ((_%eid205207205269%_ (reverse _%eid205205205242%_))
                        (_%id205208205270%_ (reverse _%id205206205243%_)))
                    ((lambda (_%g205193205272%_ _%g205194205273%_)
                       (cons '%#extern
                             (map _%generate1205189%_
                                  (let ((__tmp214894
                                         (lambda (_%g205288205291%_
                                                  _%g205289205293%_)
                                           (cons _%g205288205291%_
                                                 _%g205289205293%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp214894
                                     '()
                                     _%g205194205273%_))
                                  (let ((__tmp214895
                                         (lambda (_%g205295205298%_
                                                  _%g205296205300%_)
                                           (cons _%g205295205298%_
                                                 _%g205296205300%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp214895
                                     '()
                                     _%g205193205272%_)))))
                     _%eid205207205269%_
                     _%id205208205270%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop205201205237%_
                                             _%target205198205232%_
                                             '()
                                             '()))
                                          (_%g205191205219%_
                                           _%g205192205222%_)))))
                                (_%g205191205219%_ _%g205192205222%_))))
                        (_%g205191205219%_ _%g205192205222%_)))))
            (_%g205190205303%_ _%stx205187%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self204975%_ _%stx204976%_)
        (letrec ((_%generate1204978%_
                  (lambda (_%id205180%_)
                    (let ((_%eid205182%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id205180%_)))
                          (_%ident205183%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id205180%_)))
                          (_%props205184%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id205180%_))))
                      (cons '%#define-runtime
                            (cons _%ident205183%_
                                  (cons _%eid205182%_ _%props205184%_))))))
                 (_%generate*204979%_
                  (lambda (_%all205148%_)
                    (let* ((_%all205149205157%_ _%all205148%_)
                           (_%else205151205165%_
                            (lambda () (cons '%#begin _%all205148%_)))
                           (_%K205153205170%_
                            (lambda (_%one205168%_) _%one205168%_)))
                      (if (pair? _%all205149205157%_)
                          (let ((_%hd205154205173%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all205149205157%_)))
                                (_%tl205155205175%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all205149205157%_))))
                            (let ((_%one205178%_ _%hd205154205173%_))
                              (if (null? _%tl205155205175%_)
                                  (_%K205153205170%_ _%one205178%_)
                                  (_%else205151205165%_))))
                          (_%else205151205165%_))))))
          (let* ((_%g204981204998%_
                  (lambda (_%g204982204995%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g204982204995%_))))
                 (_%g204980205145%_
                  (lambda (_%g204982205001%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g204982205001%_))
                        (let ((_%e204985205003%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g204982205001%_))))
                          (let ((_%hd204986205006%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204985205003%_)))
                                (_%tl204987205008%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204985205003%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204987205008%_))
                                (let ((_%e204988205011%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl204987205008%_))))
                                  (let ((_%hd204989205014%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204988205011%_)))
                                        (_%tl204990205016%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204988205011%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204990205016%_))
                                        (let ((_%e204991205019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204990205016%_))))
                                          (let ((_%hd204992205022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204991205019%_)))
                                                (_%tl204993205024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204991205019%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204993205024%_))
                                                ((lambda (_%g204983205027%_
                                                          _%g204984205028%_)
                                                   (let _%lp205044%_ ((_%rest205046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g204984205028%_)
                              (_%r205047%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx214630214631%_
                                                             _%rest205046%_)
                                                            (_%g205052205069%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx214630214631%_)))))
               (let ((_%__kont214632214633%_
                      (lambda (_%g205054205132%_)
                        (_%lp205044%_ _%g205054205132%_ _%r205047%_)))
                     (_%__kont214634214635%_
                      (lambda (_%g205059205105%_ _%g205060205106%_)
                        (_%lp205044%_
                         _%g205059205105%_
                         (cons (_%generate1204978%_ _%g205060205106%_)
                               _%r205047%_))))
                     (_%__kont214636214637%_
                      (lambda (_%g205064205081%_)
                        (_%generate*204979%_
                         (let ((__tmp214896
                                (cons (_%generate1204978%_ _%g205064205081%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp214896 _%r205047%_)))))
                     (_%__kont214638214639%_
                      (lambda ()
                        (_%generate*204979%_ (reverse! _%r205047%_)))))
                 (let ((_%g205050205092%_
                        (lambda ()
                          (let ((_%g205064205081%_ _%__stx214630214631%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g205064205081%_))
                                (_%__kont214636214637%_ _%g205064205081%_)
                                (_%__kont214638214639%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx214630214631%_))
                       (let ((_%e205055205121%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx214630214631%_))))
                         (let ((_%tl205057205126%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205055205121%_)))
                               (_%hd205056205124%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205055205121%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd205056205124%_))
                               (let ((_%e205058205129%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd205056205124%_))))
                                 (if (equal? _%e205058205129%_ '#f)
                                     (_%__kont214632214633%_
                                      _%tl205057205126%_)
                                     (_%__kont214634214635%_
                                      _%tl205057205126%_
                                      _%hd205056205124%_)))
                               (_%__kont214634214635%_
                                _%tl205057205126%_
                                _%hd205056205124%_))))
                       (let () (declare (not safe)) (_%g205050205092%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd204992205022%_
                                                 _%hd204989205014%_)
                                                (_%g204981204998%_
                                                 _%g204982205001%_))))
                                        (_%g204981204998%_
                                         _%g204982205001%_))))
                                (_%g204981204998%_ _%g204982205001%_))))
                        (_%g204981204998%_ _%g204982205001%_)))))
            (_%g204980205145%_ _%stx204976%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self204872%_ _%stx204873%_)
        (let* ((_%g204875204892%_
                (lambda (_%g204876204889%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204876204889%_))))
               (_%g204874204972%_
                (lambda (_%g204876204895%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204876204895%_))
                      (let ((_%e204879204897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204876204895%_))))
                        (let ((_%hd204880204900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204879204897%_)))
                              (_%tl204881204902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204879204897%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204881204902%_))
                              (let ((_%e204882204905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204881204902%_))))
                                (let ((_%hd204883204908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204882204905%_)))
                                      (_%tl204884204910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204882204905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204884204910%_))
                                      (let ((_%e204885204913%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204884204910%_))))
                                        (let ((_%hd204886204916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204885204913%_)))
                                              (_%tl204887204918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204885204913%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204887204918%_))
                                              ((lambda (_%g204877204921%_
                                                        _%g204878204922%_)
                                                 (let* ((_%eid204937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g204878204922%_)))
                                                        (_%phi204939%_
                                                         (let ((__tmp214897
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp214897 '1)))
                (_%block204941%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self204872%_ 'state))
                  _%phi204939%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g204944204951%_
                                                           (lambda (_%g204945204948%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g204945204948%_))))
                  (_%g204943204969%_
                   (lambda (_%g204945204954%_)
                     ((lambda (_%g204946204956%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self204872%_ 'state))
                         _%phi204939%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g204946204956%_
                                     (cons _%g204877204921%_ '())))))
                      _%g204945204954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204943204969%_
                                                      _%eid204937%_))
                                                   (if _%block204941%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block204941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g204878204922%_))
                                             (cons _%eid204937%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g204878204922%_))
                           (cons _%eid204937%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204886204916%_
                                               _%hd204883204908%_)
                                              (_%g204875204892%_
                                               _%g204876204895%_))))
                                      (_%g204875204892%_ _%g204876204895%_))))
                              (_%g204875204892%_ _%g204876204895%_))))
                      (_%g204875204892%_ _%g204876204895%_)))))
          (_%g204874204972%_ _%stx204873%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self204804%_ _%stx204805%_)
        (let* ((_%g204807204824%_
                (lambda (_%g204808204821%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204808204821%_))))
               (_%g204806204869%_
                (lambda (_%g204808204827%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204808204827%_))
                      (let ((_%e204811204829%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204808204827%_))))
                        (let ((_%hd204812204832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204811204829%_)))
                              (_%tl204813204834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204811204829%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204813204834%_))
                              (let ((_%e204814204837%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204813204834%_))))
                                (let ((_%hd204815204840%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204814204837%_)))
                                      (_%tl204816204842%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204814204837%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204816204842%_))
                                      (let ((_%e204817204845%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204816204842%_))))
                                        (let ((_%hd204818204848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204817204845%_)))
                                              (_%tl204819204850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204817204845%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204819204850%_))
                                              ((lambda (_%g204809204853%_
                                                        _%g204810204854%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g204810204854%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g204809204853%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204818204848%_
                                               _%hd204815204840%_)
                                              (_%g204807204824%_
                                               _%g204808204827%_))))
                                      (_%g204807204824%_ _%g204808204827%_))))
                              (_%g204807204824%_ _%g204808204827%_))))
                      (_%g204807204824%_ _%g204808204827%_)))))
          (_%g204806204869%_ _%stx204805%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self204801%_ _%stx204802%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self204801%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx204802%_)
        (gxc#generate-meta-define-values% _%self204801%_ _%stx204802%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self204798%_ _%stx204799%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self204798%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx204799%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp214899 (list)) (__tmp214898 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp214899
         '(src n open blocks)
         __tmp214898
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args204795%_
        (apply make-instance gxc#meta-state::t _%$args204795%_)))
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
      (lambda (_%self204781%_ _%ctx204782%_)
        (let ((_%self204785%_ _%self204781%_))
          (if (let ((__tmp214900
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self204785%_))))
                (declare (not safe))
                (##fx< '4 __tmp214900))
              (begin
                (let ((__tmp214901
                       (let ((__tmp214902
                              (##structure-ref
                               _%ctx204782%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp214902))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self204785%_
                   __tmp214901
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self204785%_ '1 '2 '#f '#f))
                (let ((__tmp214903
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self204785%_
                   __tmp214903
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self204785%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp214904
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self204785%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self204785%_
                       '4
                       __tmp214904))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp214906 (list)) (__tmp214905 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp214906
         '(ctx phi n code)
         __tmp214905
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args204656%_
        (apply make-instance gxc#meta-state-block::t _%$args204656%_)))
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
      (lambda (_%state204616%_ _%phi204617%_)
        (let* ((_%state204618204626%_ _%state204616%_)
               (_%E204620204629%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state204618204626%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K204621204638%_
                (lambda (_%open204632%_ _%n204633%_ _%src204634%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open204632%_ _%phi204617%_))
                      '#f
                      (let ((_%block-ref204636%_
                             (let ((__tmp214907 (number->string _%n204633%_)))
                               (declare (not safe))
                               (##string-append
                                _%src204634%_
                                '"~"
                                __tmp214907))))
                        (##structure-set!
                         _%state204616%_
                         (let () (declare (not safe)) (##fx+ _%n204633%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp214908
                               (let ((__tmp214909
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp214909
                                  _%phi204617%_
                                  _%n204633%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open204632%_ _%phi204617%_ __tmp214908))
                        _%block-ref204636%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state204618204626%_
                 'gxc#meta-state::t))
              (let* ((_%e204622204641%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state204618204626%_
                         '1
                         '#f
                         '#f)))
                     (_%src204644%_ _%e204622204641%_)
                     (_%e204623204646%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state204618204626%_
                         '2
                         '#f
                         '#f)))
                     (_%n204649%_ _%e204623204646%_)
                     (_%e204624204651%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state204618204626%_
                         '3
                         '#f
                         '#f)))
                     (_%open204654%_ _%e204624204651%_))
                (_%K204621204638%_ _%open204654%_ _%n204649%_ _%src204644%_))
              (_%E204620204629%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state204610%_ _%phi204611%_ _%stx204612%_)
        (let ((_%block204614%_
               (let ((__tmp214910
                      (##structure-ref
                       _%state204610%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp214910 _%phi204611%_))))
          (##structure-set!
           _%block204614%_
           (cons _%stx204612%_
                 (##structure-ref
                  _%block204614%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state204604%_)
        (##structure-set!
         _%state204604%_
         (let ((__tmp214913
                (lambda (_%_204606%_ _%block204607%_ _%r204608%_)
                  (cons _%block204607%_ _%r204608%_)))
               (__tmp214912
                (##structure-ref _%state204604%_ '4 gxc#meta-state::t '#f))
               (__tmp214911
                (##structure-ref _%state204604%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp214913 __tmp214912 __tmp214911))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state204604%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state204557%_)
        (gxc#meta-state-end-phi! _%state204557%_)
        (let ((__tmp214915
               (lambda (_%block204559%_ _%r204560%_)
                 (let* ((_%block204561204570%_ _%block204559%_)
                        (_%E204563204573%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block204561204570%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K204564204581%_
                         (lambda (_%code204576%_
                                  _%n204577%_
                                  _%phi204578%_
                                  _%ctx204579%_)
                           (if (null? _%code204576%_)
                               _%r204560%_
                               (cons (cons _%ctx204579%_
                                           (cons _%phi204578%_
                                                 (cons _%n204577%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code204576%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r204560%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block204561204570%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e204565204584%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block204561204570%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx204587%_ _%e204565204584%_)
                              (_%e204566204589%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block204561204570%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi204592%_ _%e204566204589%_)
                              (_%e204567204594%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block204561204570%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n204597%_ _%e204567204594%_)
                              (_%e204568204599%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block204561204570%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code204602%_ _%e204568204599%_))
                         (_%K204564204581%_
                          _%code204602%_
                          _%n204597%_
                          _%phi204592%_
                          _%ctx204587%_))
                       (_%E204563204573%_)))))
              (__tmp214914
               (##structure-ref _%state204557%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp214915 '() __tmp214914))))
    (define gxc#collect-expression-refs
      (lambda (_%stx204553%_)
        (let ((_%ht204555%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht204555%_ _%stx204553%_)
          _%ht204555%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self204496%_ _%stx204497%_)
        (let* ((_%g204499204512%_
                (lambda (_%g204500204509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204500204509%_))))
               (_%g204498204550%_
                (lambda (_%g204500204515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204500204515%_))
                      (let ((_%e204502204517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204500204515%_))))
                        (let ((_%hd204503204520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204502204517%_)))
                              (_%tl204504204522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204502204517%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204504204522%_))
                              (let ((_%e204505204525%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204504204522%_))))
                                (let ((_%hd204506204528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204505204525%_)))
                                      (_%tl204507204530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204505204525%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204507204530%_))
                                      ((lambda (_%g204501204533%_)
                                         (let* ((_%bind204545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g204501204533%_)))
                                                (_%eid204547%_
                                                 (if _%bind204545%_
                                                     (##structure-ref
                                                      _%bind204545%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g204501204533%_))))
                                                (__tmp214916
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self204496%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp214916
                                            _%eid204547%_
                                            _%eid204547%_)))
                                       _%hd204506204528%_)
                                      (_%g204499204512%_ _%g204500204515%_))))
                              (_%g204499204512%_ _%g204500204515%_))))
                      (_%g204499204512%_ _%g204500204515%_)))))
          (_%g204498204550%_ _%stx204497%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self204423%_ _%stx204424%_)
        (let* ((_%g204426204443%_
                (lambda (_%g204427204440%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204427204440%_))))
               (_%g204425204493%_
                (lambda (_%g204427204446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204427204446%_))
                      (let ((_%e204430204448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204427204446%_))))
                        (let ((_%hd204431204451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204430204448%_)))
                              (_%tl204432204453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204430204448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204432204453%_))
                              (let ((_%e204433204456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204432204453%_))))
                                (let ((_%hd204434204459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204433204456%_)))
                                      (_%tl204435204461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204433204456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204435204461%_))
                                      (let ((_%e204436204464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204435204461%_))))
                                        (let ((_%hd204437204467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204436204464%_)))
                                              (_%tl204438204469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204436204464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204438204469%_))
                                              ((lambda (_%g204428204472%_
                                                        _%g204429204473%_)
                                                 (let* ((_%bind204488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g204429204473%_)))
                                                        (_%eid204490%_
                                                         (if _%bind204488%_
                                                             (##structure-ref
                                                              _%bind204488%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g204429204473%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp214917
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self204423%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp214917
                                                      _%eid204490%_
                                                      _%eid204490%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self204423%_
                                                      _%g204428204472%_))))
                                               _%hd204437204467%_
                                               _%hd204434204459%_)
                                              (_%g204426204443%_
                                               _%g204427204446%_))))
                                      (_%g204426204443%_ _%g204427204446%_))))
                              (_%g204426204443%_ _%g204427204446%_))))
                      (_%g204426204443%_ _%g204427204446%_)))))
          (_%g204425204493%_ _%stx204424%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self204380%_ _%stx204381%_)
        (let* ((_%g204383204393%_
                (lambda (_%g204384204390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204384204390%_))))
               (_%g204382204420%_
                (lambda (_%g204384204396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204384204396%_))
                      (let ((_%e204386204398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204384204396%_))))
                        (let ((_%hd204387204401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204386204398%_)))
                              (_%tl204388204403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204386204398%_))))
                          ((lambda (_%g204385204406%_)
                             (let ((__tmp214918
                                    (lambda (_%g204415204417%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self204380%_
                                         _%g204415204417%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp214918 _%g204385204406%_)))
                           _%tl204388204403%_)))
                      (_%g204383204393%_ _%g204384204396%_)))))
          (_%g204382204420%_ _%stx204381%_))))
    (define gxc#count-values-single%
      (lambda (_%self204377%_ _%stx204378%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self204245%_ _%stx204246%_)
        (let* ((_%__stx214660214661%_ _%stx204246%_)
               (_%g204249204278%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx214660214661%_)))))
          (let ((_%__kont214662214663%_
                 (lambda (_%g204251204344%_ _%g204252204345%_)
                   (length (let ((__tmp214919
                                  (lambda (_%g204366204369%_ _%g204367204371%_)
                                    (cons _%g204366204369%_
                                          _%g204367204371%_))))
                             (declare (not safe))
                             (foldr__0 __tmp214919 '() _%g204251204344%_)))))
                (_%__kont214666214667%_ (lambda () '#f)))
            (let ((_%__match214705214706%_
                   (lambda (_%e204253204290%_
                            _%hd204254204293%_
                            _%tl204255204295%_
                            _%e204256204298%_
                            _%hd204257204301%_
                            _%tl204258204303%_
                            _%e204259204306%_
                            _%hd204260204309%_
                            _%tl204261204311%_
                            _%e204262204314%_
                            _%hd204263204317%_
                            _%tl204264204319%_
                            _%__splice214664214665%_
                            _%target204265204322%_
                            _%tl204267204324%_)
                     (letrec ((_%loop204268204327%_
                               (lambda (_%hd204266204330%_
                                        _%rand204272204332%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd204266204330%_))
                                     (let ((_%e204269204334%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd204266204330%_))))
                                       (let ((_%lp-tl204271204339%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e204269204334%_)))
                                             (_%lp-hd204270204337%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e204269204334%_))))
                                         (_%loop204268204327%_
                                          _%lp-tl204271204339%_
                                          (cons _%lp-hd204270204337%_
                                                _%rand204272204332%_))))
                                     (let ((_%rand204273204342%_
                                            (reverse _%rand204272204332%_)))
                                       (let ((_%g204251204344%_
                                              _%rand204273204342%_)
                                             (_%g204252204345%_
                                              _%hd204263204317%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g204252204345%_
                                                'values))
                                             (_%__kont214662214663%_
                                              _%g204251204344%_
                                              _%g204252204345%_)
                                             (_%__kont214666214667%_))))))))
                       (_%loop204268204327%_ _%target204265204322%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx214660214661%_))
                  (let ((_%e204253204290%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx214660214661%_))))
                    (let ((_%tl204255204295%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204253204290%_)))
                          (_%hd204254204293%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204253204290%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204255204295%_))
                          (let ((_%e204256204298%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204255204295%_))))
                            (let ((_%tl204258204303%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204256204298%_)))
                                  (_%hd204257204301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204256204298%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204257204301%_))
                                  (let ((_%e204259204306%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204257204301%_))))
                                    (let ((_%tl204261204311%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204259204306%_)))
                                          (_%hd204260204309%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204259204306%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204260204309%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204260204309%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204261204311%_))
                                                  (let ((_%e204262204314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204261204311%_))))
                                                    (let ((_%tl204264204319%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204262204314%_)))
                                                          (_%hd204263204317%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204262204314%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204264204319%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl204258204303%_))
                      (let ((_%__splice214664214665%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204258204303%_
                                '0))))
                        (let ((_%tl204267204324%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice214664214665%_ '1)))
                              (_%target204265204322%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice214664214665%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204267204324%_))
                              (_%__match214705214706%_
                               _%e204253204290%_
                               _%hd204254204293%_
                               _%tl204255204295%_
                               _%e204256204298%_
                               _%hd204257204301%_
                               _%tl204258204303%_
                               _%e204259204306%_
                               _%hd204260204309%_
                               _%tl204261204311%_
                               _%e204262204314%_
                               _%hd204263204317%_
                               _%tl204264204319%_
                               _%__splice214664214665%_
                               _%target204265204322%_
                               _%tl204267204324%_)
                              (_%__kont214666214667%_))))
                      (_%__kont214666214667%_))
                  (_%__kont214666214667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214666214667%_))
                                              (_%__kont214666214667%_))
                                          (_%__kont214666214667%_))))
                                  (_%__kont214666214667%_))))
                          (_%__kont214666214667%_))))
                  (_%__kont214666214667%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self204150%_ _%stx204151%_)
        (let* ((_%g204153204174%_
                (lambda (_%g204154204171%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204154204171%_))))
               (_%g204152204242%_
                (lambda (_%g204154204177%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204154204177%_))
                      (let ((_%e204158204179%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204154204177%_))))
                        (let ((_%hd204159204182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204158204179%_)))
                              (_%tl204160204184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204158204179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204160204184%_))
                              (let ((_%e204161204187%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204160204184%_))))
                                (let ((_%hd204162204190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204161204187%_)))
                                      (_%tl204163204192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204161204187%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204163204192%_))
                                      (let ((_%e204164204195%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204163204192%_))))
                                        (let ((_%hd204165204198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204164204195%_)))
                                              (_%tl204166204200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204164204195%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204166204200%_))
                                              (let ((_%e204167204203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204166204200%_))))
                                                (let ((_%hd204168204206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204167204203%_)))
                                                      (_%tl204169204208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204167204203%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204169204208%_))
                                                      ((lambda (_%g204155204211%_
                                                                _%g204156204212%_
                                                                _%g204157204213%_)
                                                         (let ((_%c1204230204232%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self204150%_
                           _%g204156204212%_))))
                   (if _%c1204230204232%_
                       (let* ((_%c1204234%_ _%c1204230204232%_)
                              (_%c2204235204237%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self204150%_
                                  _%g204155204211%_))))
                         (if _%c2204235204237%_
                             (let ((_%c2204239%_ _%c2204235204237%_))
                               (if (fx= _%c1204234%_ _%c2204239%_)
                                   _%c1204234%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd204168204206%_
               _%hd204165204198%_
               _%hd204162204190%_)
              (_%g204153204174%_ _%g204154204177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204153204174%_
                                               _%g204154204177%_))))
                                      (_%g204153204174%_ _%g204154204177%_))))
                              (_%g204153204174%_ _%g204154204177%_))))
                      (_%g204153204174%_ _%g204154204177%_)))))
          (_%g204152204242%_ _%stx204151%_))))))
