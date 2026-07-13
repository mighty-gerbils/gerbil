(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1783939350)
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
      (let ((__tmp212570 (list gxc#::void::t))
            (__tmp212569 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp212570
         '()
         __tmp212569
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args211184%_
        (apply make-instance gxc#::collect-bindings::t _%$args211184%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp212571
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
        (__make-atomic-promise __tmp212571)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx211176%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self211179%_
                (let ((__obj212545
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj212545))
               (__tmp212572
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211179%_ _%stx211176%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212572
           gxc#current-compile-method
           _%self211179%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp212574 (list gxc#::void::t))
            (__tmp212573 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp212574
         '(modules)
         __tmp212573
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args211173%_
        (apply make-instance gxc#::lift-modules::t _%$args211173%_)))
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
      (let ((__tmp212575
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
        (__make-atomic-promise __tmp212575)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords211148%_ _%$%modules211145211149%_ _%stx211150%_)
        (let ((_%modules211153%_
               (if (eq? _%$%modules211145211149%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules211145211149%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self211155%_
                  (let ((__obj212547
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212547
                       _%modules211153%_
                       '1
                       '#f
                       '#f))
                    __obj212547))
                 (__tmp212576
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211155%_ _%stx211150%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212576
             gxc#current-compile-method
             _%self211155%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords211162%_ . _%args211163%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords211162%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211162%_
                  'modules:
                  absent-value))
               _%args211163%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args211146211169%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args211146211169%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp212578 (list)) (__tmp212577 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp212578
         '()
         __tmp212577
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args211141%_
        (apply make-instance gxc#::find-runtime-code::t _%$args211141%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp212579
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
        (__make-atomic-promise __tmp212579)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx211133%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self211136%_
                (let ((__obj212549
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj212549))
               (__tmp212580
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211136%_ _%stx211133%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212580
           gxc#current-compile-method
           _%self211136%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp212582 (list gxc#::false::t))
            (__tmp212581 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp212582
         '()
         __tmp212581
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args211130%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args211130%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp212583
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
        (__make-atomic-promise __tmp212583)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx211122%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self211125%_
                (let ((__obj212551
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj212551))
               (__tmp212584
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211125%_ _%stx211122%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212584
           gxc#current-compile-method
           _%self211125%_))))
    (define gxc#::count-values::t
      (let ((__tmp212586 (list gxc#::false-expression::t))
            (__tmp212585 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp212586
         '()
         __tmp212585
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args211119%_
        (apply make-instance gxc#::count-values::t _%$args211119%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp212587
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
        (__make-atomic-promise __tmp212587)))
    (define gxc#apply-count-values
      (lambda (_%stx211111%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self211114%_
                (let ((__obj212553
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj212553))
               (__tmp212588
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211114%_ _%stx211111%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212588
           gxc#current-compile-method
           _%self211114%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp212589 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp212589
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args211108%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args211108%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp212590
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
                  '%#define-runtime
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
        (__make-atomic-promise __tmp212590)))
    (define gxc#::generate-loader::t
      (let ((__tmp212592 (list gxc#::generate-runtime-empty::t))
            (__tmp212591 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp212592
         '()
         __tmp212591
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args211104%_
        (apply make-instance gxc#::generate-loader::t _%$args211104%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp212593
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
        (__make-atomic-promise __tmp212593)))
    (define gxc#apply-generate-loader
      (lambda (_%stx211096%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self211099%_
                (let ((__obj212556
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj212556))
               (__tmp212594
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211099%_ _%stx211096%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212594
           gxc#current-compile-method
           _%self211099%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp212595 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp212595
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args211093%_
        (apply make-instance gxc#::generate-runtime::t _%$args211093%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp212596
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
        (__make-atomic-promise __tmp212596)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx211085%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self211088%_
                (let ((__obj212558
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj212558))
               (__tmp212597
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211088%_ _%stx211085%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212597
           gxc#current-compile-method
           _%self211088%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp212599 (list gxc#::generate-runtime::t))
            (__tmp212598 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp212599
         '()
         __tmp212598
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args211082%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args211082%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp212600
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
        (__make-atomic-promise __tmp212600)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx211074%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self211077%_
                (let ((__obj212560
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj212560))
               (__tmp212601
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211077%_ _%stx211074%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212601
           gxc#current-compile-method
           _%self211077%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp212602 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp212602
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args211071%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args211071%_)))
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
      (let ((__tmp212603
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
        (__make-atomic-promise __tmp212603)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords211046%_ _%$%table211043211047%_ _%stx211048%_)
        (let ((_%table211051%_
               (if (eq? _%$%table211043211047%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table211043211047%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self211053%_
                  (let ((__obj212562
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212562
                       _%table211051%_
                       '1
                       '#f
                       '#f))
                    __obj212562))
                 (__tmp212604
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211053%_ _%stx211048%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212604
             gxc#current-compile-method
             _%self211053%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords211060%_ . _%args211061%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords211060%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211060%_
                  'table:
                  absent-value))
               _%args211061%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args211044211067%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args211044211067%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp212606 (list gxc#::void-expression::t))
            (__tmp212605 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp212606
         '(state)
         __tmp212605
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args211039%_
        (apply make-instance gxc#::generate-meta::t _%$args211039%_)))
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
      (let ((__tmp212607
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
                  '%#define-runtime
                  gxc#generate-meta-define-runtime%))
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
        (__make-atomic-promise __tmp212607)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords211014%_ _%$%state211011211015%_ _%stx211016%_)
        (let ((_%state211019%_
               (if (eq? _%$%state211011211015%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state211011211015%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self211021%_
                  (let ((__obj212564
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212564
                       _%state211019%_
                       '1
                       '#f
                       '#f))
                    __obj212564))
                 (__tmp212608
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211021%_ _%stx211016%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212608
             gxc#current-compile-method
             _%self211021%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords211028%_ . _%args211029%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords211028%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211028%_
                  'state:
                  absent-value))
               _%args211029%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args211012211035%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args211012211035%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp212610 (list)) (__tmp212609 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp212610
         '(state)
         __tmp212609
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args211007%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args211007%_)))
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
      (let ((__tmp212611
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
        (__make-atomic-promise __tmp212611)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords210982%_ _%$%state210979210983%_ _%stx210984%_)
        (let ((_%state210987%_
               (if (eq? _%$%state210979210983%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state210979210983%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self210989%_
                  (let ((__obj212566
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212566
                       _%state210987%_
                       '1
                       '#f
                       '#f))
                    __obj212566))
                 (__tmp212612
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self210989%_ _%stx210984%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212612
             gxc#current-compile-method
             _%self210989%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords210996%_ . _%args210997%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords210996%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210996%_
                  'state:
                  absent-value))
               _%args210997%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args210980211003%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args210980211003%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self210908%_ _%stx210909%_)
        (let* ((_%$%g210911210928%_
                (lambda (_%$%g210912210925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210912210925%_))))
               (_%$%g210910210975%_
                (lambda (_%$%g210912210931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210912210931%_))
                      (let ((_%$%e210915210933%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210912210931%_))))
                        (let ((_%$%hd210916210936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210915210933%_)))
                              (_%$%tl210917210938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210915210933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210917210938%_))
                              (let ((_%$%e210918210941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210917210938%_))))
                                (let ((_%$%hd210919210944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210918210941%_)))
                                      (_%$%tl210920210946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210918210941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210920210946%_))
                                      (let ((_%$%e210921210949%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210920210946%_))))
                                        (let ((_%$%hd210922210952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210921210949%_)))
                                              (_%$%tl210923210954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210921210949%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210923210954%_))
                                              (let ((__tmp212613
                                                     (lambda (_%bind210973%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind210973%_))
                                                           (gxc#add-module-binding!
                                                            _%bind210973%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp212613
                                                 _%$%hd210919210944%_))
                                              (_%$%g210911210928%_
                                               _%$%g210912210931%_))))
                                      (_%$%g210911210928%_
                                       _%$%g210912210931%_))))
                              (_%$%g210911210928%_ _%$%g210912210931%_))))
                      (_%$%g210911210928%_ _%$%g210912210931%_)))))
          (_%$%g210910210975%_ _%stx210909%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self210840%_ _%stx210841%_)
        (let* ((_%$%g210843210860%_
                (lambda (_%$%g210844210857%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210844210857%_))))
               (_%$%g210842210905%_
                (lambda (_%$%g210844210863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210844210863%_))
                      (let ((_%$%e210847210865%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210844210863%_))))
                        (let ((_%$%hd210848210868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210847210865%_)))
                              (_%$%tl210849210870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210847210865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210849210870%_))
                              (let ((_%$%e210850210873%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210849210870%_))))
                                (let ((_%$%hd210851210876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210850210873%_)))
                                      (_%$%tl210852210878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210850210873%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210852210878%_))
                                      (let ((_%$%e210853210881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210852210878%_))))
                                        (let ((_%$%hd210854210884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210853210881%_)))
                                              (_%$%tl210855210886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210853210881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210855210886%_))
                                              (gxc#add-module-binding!
                                               _%$%hd210851210876%_
                                               '#t)
                                              (_%$%g210843210860%_
                                               _%$%g210844210863%_))))
                                      (_%$%g210843210860%_
                                       _%$%g210844210863%_))))
                              (_%$%g210843210860%_ _%$%g210844210863%_))))
                      (_%$%g210843210860%_ _%$%g210844210863%_)))))
          (_%$%g210842210905%_ _%stx210841%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self210782%_ _%stx210783%_)
        (let* ((_%$%g210785210799%_
                (lambda (_%$%g210786210796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210786210796%_))))
               (_%$%g210784210837%_
                (lambda (_%$%g210786210802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210786210802%_))
                      (let ((_%$%e210789210804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210786210802%_))))
                        (let ((_%$%hd210790210807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210789210804%_)))
                              (_%$%tl210791210809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210789210804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210791210809%_))
                              (let ((_%$%e210792210812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210791210809%_))))
                                (let ((_%$%hd210793210815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210792210812%_)))
                                      (_%$%tl210794210817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210792210812%_))))
                                  (let ((_%ctx210834%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd210793210815%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self210782%_ 'modules))
                                     (cons _%ctx210834%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self210782%_
                                                     'modules)))))
                                    (let ((__tmp212614
                                           (lambda ()
                                             (let ((__tmp212615
                                                    (##structure-ref
                                                     _%ctx210834%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210782%_
                                                __tmp212615)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp212614
                                       gx#current-expander-context
                                       _%ctx210834%_)))))
                              (_%$%g210785210799%_ _%$%g210786210802%_))))
                      (_%$%g210785210799%_ _%$%g210786210802%_)))))
          (_%$%g210784210837%_ _%stx210783%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls210736210738%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls210736210738%_
              (let ((_%decls210740%_ _%$%decls210736210738%_))
                (let _%lp210742%_ ((_%rest210744%_ _%decls210740%_))
                  (let* ((_%$%rest210745210753%_ _%rest210744%_)
                         (_%$%else210747210761%_ (lambda () '#f))
                         (_%$%K210749210770%_
                          (lambda (_%decls210764%_ _%decl210765%_)
                            (if (equal? _%decl210765%_ '(not safe))
                                '#t
                                (if (equal? _%decl210765%_ '(safe))
                                    '#f
                                    (_%lp210742%_ _%decls210764%_))))))
                    (if (pair? _%$%rest210745210753%_)
                        (let ((_%$%hd210750210773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest210745210753%_)))
                              (_%$%tl210751210775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest210745210753%_))))
                          (let* ((_%decl210778%_ _%$%hd210750210773%_)
                                 (_%decls210780%_ _%$%tl210751210775%_))
                            (_%$%K210749210770%_
                             _%decls210780%_
                             _%decl210778%_)))
                        (_%$%else210747210761%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id210730%_ _%syntax?210731%_)
        (let ((_%eid210733%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id210730%_))
                '1
                gx#binding::t
                '#f))
              (_%ht210734%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid210733%_))
              '#!void
              (let ((__tmp212616
                     (let ((__tmp212617
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid210733%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp212617 _%syntax?210731%_))))
                (declare (not safe))
                (hash-put! _%ht210734%_ _%eid210733%_ __tmp212616))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self210727%_ _%stx210728%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self210574%_ _%stx210575%_)
        (letrec ((_%simplify210577%_
                  (lambda (_%body210625%_)
                    (let _%lp210627%_ ((_%rest210629%_ _%body210625%_)
                                       (_%r210630%_ '()))
                      (let* ((_%$%rest210631210639%_ _%rest210629%_)
                             (_%$%else210633210647%_
                              (lambda () (reverse _%r210630%_)))
                             (_%$%K210635210715%_
                              (lambda (_%rest210650%_ _%hd210651%_)
                                (let* ((_%$%hd210652210668%_ _%hd210651%_)
                                       (_%$%else210656210676%_
                                        (lambda ()
                                          (_%lp210627%_
                                           _%rest210650%_
                                           (cons _%hd210651%_ _%r210630%_)))))
                                  (let ((_%$%K210664210705%_
                                         (lambda (_%exprs210703%_)
                                           (_%lp210627%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest210650%_
                                               _%exprs210703%_))
                                            _%r210630%_)))
                                        (_%$%K210659210689%_
                                         (lambda ()
                                           (if (null? _%rest210650%_)
                                               (_%lp210627%_
                                                _%rest210650%_
                                                (cons _%hd210651%_
                                                      _%r210630%_))
                                               (_%lp210627%_
                                                _%rest210650%_
                                                _%r210630%_))))
                                        (_%$%K210658210681%_
                                         (lambda ()
                                           (if (null? _%rest210650%_)
                                               (_%lp210627%_
                                                _%rest210650%_
                                                (cons _%hd210651%_
                                                      _%r210630%_))
                                               (_%lp210627%_
                                                _%rest210650%_
                                                _%r210630%_)))))
                                    (let ((_%$%try-match210655210684%_
                                           (lambda ()
                                             (if (symbol? _%$%hd210652210668%_)
                                                 (_%$%K210658210681%_)
                                                 (_%$%else210656210676%_)))))
                                      (if (pair? _%$%hd210652210668%_)
                                          (let ((_%$%tl210666210710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd210652210668%_)))
                                                (_%$%hd210665210708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd210652210668%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd210665210708%_
                                                         'begin))
                                                (let ((_%exprs210713%_
                                                       _%$%tl210666210710%_))
                                                  (_%$%K210664210705%_
                                                   _%exprs210713%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd210665210708%_
                                                             'quote))
                                                    (if (pair? _%$%tl210666210710%_)
                                                        (let ((_%$%tl210663210697%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl210666210710%_))))
                  (if (null? _%$%tl210663210697%_)
                      (_%$%K210659210689%_)
                      (_%$%try-match210655210684%_)))
                (_%$%try-match210655210684%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match210655210684%_))))
                                          (_%$%try-match210655210684%_))))))))
                        (if (pair? _%$%rest210631210639%_)
                            (let ((_%$%hd210636210718%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210631210639%_)))
                                  (_%$%tl210637210720%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210631210639%_))))
                              (let* ((_%hd210723%_ _%$%hd210636210718%_)
                                     (_%rest210725%_ _%$%tl210637210720%_))
                                (_%$%K210635210715%_
                                 _%rest210725%_
                                 _%hd210723%_)))
                            (_%$%else210633210647%_)))))))
          (let* ((_%$%g210579210589%_
                  (lambda (_%$%g210580210586%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210580210586%_))))
                 (_%$%g210578210622%_
                  (lambda (_%$%g210580210592%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210580210592%_))
                        (let ((_%$%e210582210594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210580210592%_))))
                          (let ((_%$%hd210583210597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210582210594%_)))
                                (_%$%tl210584210599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210582210594%_))))
                            (let* ((_%body210617%_
                                    (map (lambda (_%$%g210612210614%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self210574%_
                                              _%$%g210612210614%_)))
                                         _%$%tl210584210599%_))
                                   (_%body210619%_
                                    (_%simplify210577%_ _%body210617%_)))
                              (if (let ((__tmp212618 (length _%body210619%_)))
                                    (declare (not safe))
                                    (##fx= __tmp212618 '1))
                                  (car _%body210619%_)
                                  (cons 'begin _%body210619%_)))))
                        (_%$%g210579210589%_ _%$%g210580210592%_)))))
            (_%$%g210578210622%_ _%stx210575%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self210535%_ _%stx210536%_)
        (let* ((_%$%g210538210548%_
                (lambda (_%$%g210539210545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210539210545%_))))
               (_%$%g210537210571%_
                (lambda (_%$%g210539210551%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210539210551%_))
                      (let ((_%$%e210541210553%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210539210551%_))))
                        (let ((_%$%hd210542210556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210541210553%_)))
                              (_%$%tl210543210558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210541210553%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl210543210558%_)))))
                      (_%$%g210538210548%_ _%$%g210539210551%_)))))
          (_%$%g210537210571%_ _%stx210536%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self210301%_ _%stx210302%_)
        (let* ((_%__stx211208211209%_ _%stx210302%_)
               (_%$%g210306210358%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx211208211209%_)))))
          (let ((_%__kont211210211211%_
                 (lambda (_%$%g210308210517%_ _%$%g210309210518%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self210301%_ _%$%g210308210517%_))))
                (_%__kont211212211213%_
                 (lambda (_%$%g210319210465%_
                          _%$%g210320210466%_
                          _%$%g210321210467%_)
                   (if (let ((__tmp212619
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g210321210467%_))))
                         (declare (not safe))
                         (##memq __tmp212619 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self210301%_
                          _%$%g210319210465%_)))))
                (_%__kont211216211217%_
                 (lambda (_%$%g210343210387%_ _%$%g210344210388%_)
                   (let ((_%decls210403%_
                          (map gx#syntax->datum _%$%g210344210388%_)))
                     (let ((__tmp212622
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls210403%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self210301%_
                                                   _%$%g210343210387%_))
                                                '())))))
                           (__tmp212620
                            (let ((__tmp212621
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp212621 _%decls210403%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp212622
                        gxc#current-compile-decls
                        __tmp212620))))))
            (let* ((_%__match211263211264%_
                    (lambda (_%$%e210322210411%_
                             _%$%hd210323210414%_
                             _%$%tl210324210416%_
                             _%$%e210325210419%_
                             _%$%hd210326210422%_
                             _%$%tl210327210424%_
                             _%$%e210328210427%_
                             _%$%hd210329210430%_
                             _%$%tl210330210432%_
                             _%__splice211214211215%_
                             _%$%target210331210435%_
                             _%$%tl210333210437%_)
                      (letrec ((_%$%loop210334210440%_
                                (lambda (_%$%hd210332210443%_
                                         _%$%param210338210445%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd210332210443%_))
                                      (let ((_%$%e210335210447%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd210332210443%_))))
                                        (let ((_%$%lp-tl210337210452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210335210447%_)))
                                              (_%$%lp-hd210336210450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210335210447%_))))
                                          (_%$%loop210334210440%_
                                           _%$%lp-tl210337210452%_
                                           (cons _%$%lp-hd210336210450%_
                                                 _%$%param210338210445%_))))
                                      (let ((_%$%param210339210455%_
                                             (reverse _%$%param210338210445%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl210327210424%_))
                                            (let ((_%$%e210340210457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl210327210424%_))))
                                              (let ((_%$%tl210342210462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e210340210457%_)))
                                                    (_%$%hd210341210460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e210340210457%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl210342210462%_))
                                                    (let ((_%$%g210319210465%_
                                                           _%$%hd210341210460%_)
                                                          (_%$%g210320210466%_
                                                           _%$%param210339210455%_)
                                                          (_%$%g210321210467%_
                                                           _%$%hd210329210430%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g210321210467%_))
                       (not (let ((__tmp212623
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g210321210467%_))))
                              (declare (not safe))
                              (##memq __tmp212623 gxc#gambit-annotations))))
                  (_%__kont211212211213%_
                   _%$%g210319210465%_
                   _%$%g210320210466%_
                   _%$%g210321210467%_)
                  (_%__kont211216211217%_
                   _%$%hd210341210460%_
                   _%$%hd210326210422%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g210306210358%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g210306210358%_))))))))
                        (_%$%loop210334210440%_
                         _%$%target210331210435%_
                         '()))))
                   (_%__match211237211238%_
                    (lambda (_%$%e210310210493%_
                             _%$%hd210311210496%_
                             _%$%tl210312210498%_
                             _%$%e210313210501%_
                             _%$%hd210314210504%_
                             _%$%tl210315210506%_
                             _%$%e210316210509%_
                             _%$%hd210317210512%_
                             _%$%tl210318210514%_)
                      (let ((_%$%g210308210517%_ _%$%hd210317210512%_)
                            (_%$%g210309210518%_ _%$%hd210314210504%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g210309210518%_))
                            (_%__kont211210211211%_
                             _%$%g210308210517%_
                             _%$%g210309210518%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd210314210504%_))
                                (let ((_%$%e210328210427%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd210314210504%_))))
                                  (let ((_%$%tl210330210432%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210328210427%_)))
                                        (_%$%hd210329210430%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210328210427%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl210330210432%_))
                                        (let ((_%__splice211214211215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl210330210432%_
                                                  '0))))
                                          (let ((_%$%tl210333210437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice211214211215%_
                                                    '1)))
                                                (_%$%target210331210435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice211214211215%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210333210437%_))
                                                (_%__match211263211264%_
                                                 _%$%e210310210493%_
                                                 _%$%hd210311210496%_
                                                 _%$%tl210312210498%_
                                                 _%$%e210313210501%_
                                                 _%$%hd210314210504%_
                                                 _%$%tl210315210506%_
                                                 _%$%e210328210427%_
                                                 _%$%hd210329210430%_
                                                 _%$%tl210330210432%_
                                                 _%__splice211214211215%_
                                                 _%$%target210331210435%_
                                                 _%$%tl210333210437%_)
                                                (_%__kont211216211217%_
                                                 _%$%hd210317210512%_
                                                 _%$%hd210314210504%_))))
                                        (_%__kont211216211217%_
                                         _%$%hd210317210512%_
                                         _%$%hd210314210504%_))))
                                (_%__kont211216211217%_
                                 _%$%hd210317210512%_
                                 _%$%hd210314210504%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx211208211209%_))
                  (let ((_%$%e210310210493%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx211208211209%_))))
                    (let ((_%$%tl210312210498%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e210310210493%_)))
                          (_%$%hd210311210496%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e210310210493%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl210312210498%_))
                          (let ((_%$%e210313210501%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl210312210498%_))))
                            (let ((_%$%tl210315210506%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e210313210501%_)))
                                  (_%$%hd210314210504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e210313210501%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl210315210506%_))
                                  (let ((_%$%e210316210509%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl210315210506%_))))
                                    (let ((_%$%tl210318210514%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e210316210509%_)))
                                          (_%$%hd210317210512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e210316210509%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl210318210514%_))
                                          (_%__match211237211238%_
                                           _%$%e210310210493%_
                                           _%$%hd210311210496%_
                                           _%$%tl210312210498%_
                                           _%$%e210313210501%_
                                           _%$%hd210314210504%_
                                           _%$%tl210315210506%_
                                           _%$%e210316210509%_
                                           _%$%hd210317210512%_
                                           _%$%tl210318210514%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd210314210504%_))
                                              (let ((_%$%e210328210427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd210314210504%_))))
                                                (let ((_%$%tl210330210432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210328210427%_)))
                                                      (_%$%hd210329210430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210328210427%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl210330210432%_))
                                                      (let ((_%__splice211214211215%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl210330210432%_
                        '0))))
                (let ((_%$%tl210333210437%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice211214211215%_ '1)))
                      (_%$%target210331210435%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice211214211215%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210333210437%_))
                      (_%__match211263211264%_
                       _%$%e210310210493%_
                       _%$%hd210311210496%_
                       _%$%tl210312210498%_
                       _%$%e210313210501%_
                       _%$%hd210314210504%_
                       _%$%tl210315210506%_
                       _%$%e210328210427%_
                       _%$%hd210329210430%_
                       _%$%tl210330210432%_
                       _%__splice211214211215%_
                       _%$%target210331210435%_
                       _%$%tl210333210437%_)
                      (let () (declare (not safe)) (_%$%g210306210358%_)))))
              (let () (declare (not safe)) (_%$%g210306210358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g210306210358%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd210314210504%_))
                                      (let ((_%$%e210328210427%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd210314210504%_))))
                                        (let ((_%$%tl210330210432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210328210427%_)))
                                              (_%$%hd210329210430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210328210427%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl210330210432%_))
                                              (let ((_%__splice211214211215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl210330210432%_
                                                        '0))))
                                                (let ((_%$%tl210333210437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice211214211215%_
                                                          '1)))
                                                      (_%$%target210331210435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice211214211215%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210333210437%_))
                                                      (_%__match211263211264%_
                                                       _%$%e210310210493%_
                                                       _%$%hd210311210496%_
                                                       _%$%tl210312210498%_
                                                       _%$%e210313210501%_
                                                       _%$%hd210314210504%_
                                                       _%$%tl210315210506%_
                                                       _%$%e210328210427%_
                                                       _%$%hd210329210430%_
                                                       _%$%tl210330210432%_
                                                       _%__splice211214211215%_
                                                       _%$%target210331210435%_
                                                       _%$%tl210333210437%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g210306210358%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g210306210358%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g210306210358%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g210306210358%_)))))
                  (let () (declare (not safe)) (_%$%g210306210358%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self210260%_ _%stx210261%_)
        (let* ((_%$%g210263210273%_
                (lambda (_%$%g210264210270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210264210270%_))))
               (_%$%g210262210298%_
                (lambda (_%$%g210264210276%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210264210276%_))
                      (let ((_%$%e210266210278%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210264210276%_))))
                        (let ((_%$%hd210267210281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210266210278%_)))
                              (_%$%tl210268210283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210266210278%_))))
                          (let ((_%decls210296%_
                                 (map gx#syntax->datum _%$%tl210268210283%_)))
                            (let ((__tmp212624
                                   (let ((__tmp212625
                                          (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls))))
                                     (declare (not safe))
                                     (foldr__0
                                      cons
                                      __tmp212625
                                      _%decls210296%_))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp212624))
                            (cons 'declare _%decls210296%_))))
                      (_%$%g210263210273%_ _%$%g210264210276%_)))))
          (_%$%g210262210298%_ _%stx210261%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self210007%_ _%stx210008%_)
        (let* ((_%$%g210010210027%_
                (lambda (_%$%g210011210024%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210011210024%_))))
               (_%$%g210009210257%_
                (lambda (_%$%g210011210030%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210011210030%_))
                      (let ((_%$%e210014210032%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210011210030%_))))
                        (let ((_%$%hd210015210035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210014210032%_)))
                              (_%$%tl210016210037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210014210032%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210016210037%_))
                              (let ((_%$%e210017210040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210016210037%_))))
                                (let ((_%$%hd210018210043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210017210040%_)))
                                      (_%$%tl210019210045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210017210040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210019210045%_))
                                      (let ((_%$%e210020210048%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210019210045%_))))
                                        (let ((_%$%hd210021210051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210020210048%_)))
                                              (_%$%tl210022210053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210020210048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210022210053%_))
                                              (let* ((_%__stx211316211317%_
                                                      _%$%hd210018210043%_)
                                                     (_%$%g210074210088%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx211316211317%_)))))
                                                (let ((_%__kont211318211319%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self210007%_
                                                            _%$%hd210021210051%_))))
                                                      (_%__kont211320211321%_
                                                       (lambda (_%$%g210080210220%_)
                                                         (let ((_%eid210229%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g210080210220%_))))
                   (let ((_%$%lambda-expr210230210232%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd210021210051%_)))
                     (if _%$%lambda-expr210230210232%_
                         (let* ((_%lambda-expr210234%_
                                 _%$%lambda-expr210230210232%_)
                                (__tmp212626
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp212626
                            _%lambda-expr210234%_
                            _%eid210229%_))
                         '#f))
                   (cons 'define
                         (cons _%eid210229%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self210007%_
                                        _%$%hd210021210051%_))
                                     '()))))))
              (_%__kont211322211323%_
               (lambda ()
                 (let* ((_%tmp210095%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body210204%_
                         (let _%lp210097%_ ((_%rest210099%_
                                             _%$%hd210018210043%_)
                                            (_%k210100%_ '0)
                                            (_%r210101%_ '()))
                           (let* ((_%__stx211286211287%_ _%rest210099%_)
                                  (_%$%g210106210123%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx211286211287%_)))))
                             (let ((_%__kont211288211289%_
                                    (lambda (_%$%g210108210191%_)
                                      (_%lp210097%_
                                       _%$%g210108210191%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k210100%_ '1))
                                       _%r210101%_)))
                                   (_%__kont211290211291%_
                                    (lambda (_%$%g210113210164%_
                                             _%$%g210114210165%_)
                                      (_%lp210097%_
                                       _%$%g210113210164%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k210100%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g210114210165%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp210095%_
                                                                _%k210100%_
                                                                _%$%g210113210164%_)
                                                               '())))
                                             _%r210101%_))))
                                   (_%__kont211292211293%_
                                    (lambda (_%$%g210118210135%_)
                                      (let ((__tmp212627
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g210118210135%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp210095%_
                              _%k210100%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp212627
                                         _%r210101%_))))
                                   (_%__kont211294211295%_
                                    (lambda () (reverse _%r210101%_))))
                               (let ((_%$%g210104210151%_
                                      (lambda ()
                                        (let ((_%$%g210118210135%_
                                               _%__stx211286211287%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g210118210135%_))
                                              (_%__kont211292211293%_
                                               _%$%g210118210135%_)
                                              (_%__kont211294211295%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx211286211287%_))
                                     (let ((_%$%e210109210180%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx211286211287%_))))
                                       (let ((_%$%tl210111210185%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e210109210180%_)))
                                             (_%$%hd210110210183%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e210109210180%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd210110210183%_))
                                             (let ((_%$%e210112210188%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd210110210183%_))))
                                               (if (equal? _%$%e210112210188%_
                                                           '#f)
                                                   (_%__kont211288211289%_
                                                    _%$%tl210111210185%_)
                                                   (_%__kont211290211291%_
                                                    _%$%tl210111210185%_
                                                    _%$%hd210110210183%_)))
                                             (_%__kont211290211291%_
                                              _%$%tl210111210185%_
                                              _%$%hd210110210183%_))))
                                     (_%$%g210104210151%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp210095%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self210007%_
                                                    _%$%hd210021210051%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp210095%_
                                      _%$%hd210018210043%_
                                      _%$%hd210021210051%_)
                                     _%body210204%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx211316211317%_))
                                                      (let ((_%$%e210076210241%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx211316211317%_))))
                (let ((_%$%tl210078210246%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210076210241%_)))
                      (_%$%hd210077210244%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210076210241%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd210077210244%_))
                      (let ((_%$%e210079210249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd210077210244%_))))
                        (if (equal? _%$%e210079210249%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl210078210246%_))
                                (_%__kont211318211319%_)
                                (_%__kont211322211323%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl210078210246%_))
                                (_%__kont211320211321%_ _%$%hd210077210244%_)
                                (_%__kont211322211323%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl210078210246%_))
                          (_%__kont211320211321%_ _%$%hd210077210244%_)
                          (_%__kont211322211323%_)))))
              (_%__kont211322211323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210010210027%_
                                               _%$%g210011210030%_))))
                                      (_%$%g210010210027%_
                                       _%$%g210011210030%_))))
                              (_%$%g210010210027%_ _%$%g210011210030%_))))
                      (_%$%g210010210027%_ _%$%g210011210030%_)))))
          (_%$%g210009210257%_ _%stx210008%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals209982%_ _%hd209983%_ _%expr209984%_)
        (let ((_%$e209986%_ (gxc#apply-count-values _%expr209984%_)))
          (if _%$e209986%_
              (let ((_%len209991%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd209983%_)))
                    (_%cmp209992%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd209983%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len209991%_ '0))
                        (_%cmp209992%_ _%$e209986%_ _%len209991%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr209984%_
                       _%hd209983%_))))
              (let* ((_%len209998%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd209983%_)))
                     (_%cmp210000%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd209983%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg210002%_
                      (let ((__tmp212629
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd209983%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp212628 (number->string _%len209998%_)))
                        (declare (not safe))
                        (##string-append __tmp212629 __tmp212628 '" values")))
                     (_%count210004%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd209983%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len209998%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count210004%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals209982%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp210000%_
                                (cons _%count210004%_
                                      (cons _%len209998%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp210000%_
                                                        (cons _%count210004%_
                                                              (cons _%len209998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg210002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count210004%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var209977%_)
        (letrec ((_%generate-inline209979%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var209977%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var209977%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline209979%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline209979%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var209970%_ _%i209971%_ _%rest209972%_)
        (letrec ((_%generate-inline209974%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i209971%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest209972%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var209970%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var209970%_
                                                      (cons '0 '())))
                                          (cons _%var209970%_ '()))))
                        (cons '##values-ref
                              (cons _%var209970%_ (cons _%i209971%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline209974%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline209974%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var209964%_ _%i209965%_)
        (if (let () (declare (not safe)) (##fx= _%i209965%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var209964%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var209964%_ '()))
                                  (cons (cons 'list (cons _%var209964%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var209964%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var209964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var209964%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i209965%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var209964%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var209964%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var209964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var209964%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var209964%_ '()))
                                (cons _%i209965%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var209964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i209965%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self209896%_ _%stx209897%_)
        (let* ((_%$%g209899209916%_
                (lambda (_%$%g209900209913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209900209913%_))))
               (_%$%g209898209961%_
                (lambda (_%$%g209900209919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209900209919%_))
                      (let ((_%$%e209903209921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209900209919%_))))
                        (let ((_%$%hd209904209924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209903209921%_)))
                              (_%$%tl209905209926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209903209921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209905209926%_))
                              (let ((_%$%e209906209929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209905209926%_))))
                                (let ((_%$%hd209907209932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209906209929%_)))
                                      (_%$%tl209908209934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209906209929%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209908209934%_))
                                      (let ((_%$%e209909209937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209908209934%_))))
                                        (let ((_%$%hd209910209940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209909209937%_)))
                                              (_%$%tl209911209942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209909209937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl209911209942%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self209896%_
                                               _%$%hd209907209932%_
                                               _%$%hd209910209940%_)
                                              (_%$%g209899209916%_
                                               _%$%g209900209919%_))))
                                      (_%$%g209899209916%_
                                       _%$%g209900209919%_))))
                              (_%$%g209899209916%_ _%$%g209900209919%_))))
                      (_%$%g209899209916%_ _%$%g209900209919%_)))))
          (_%$%g209898209961%_ _%stx209897%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self209855%_ _%hd209856%_ _%body209857%_)
        (let* ((_%hd209859%_ (gxc#generate-runtime-lambda-head _%hd209856%_))
               (_%body209861%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self209855%_ _%body209857%_)))
               (_%body209893%_
                (let* ((_%$%body209862209870%_ _%body209861%_)
                       (_%$%else209864209878%_
                        (lambda () (cons _%body209861%_ '())))
                       (_%$%K209866209883%_
                        (lambda (_%exprs209881%_) _%exprs209881%_)))
                  (if (pair? _%$%body209862209870%_)
                      (let ((_%$%hd209867209886%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body209862209870%_)))
                            (_%$%tl209868209888%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body209862209870%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd209867209886%_ 'begin))
                            (let ((_%exprs209891%_ _%$%tl209868209888%_))
                              (_%$%K209866209883%_ _%exprs209891%_))
                            (_%$%else209864209878%_)))
                      (_%$%else209864209878%_)))))
          (cons 'lambda (cons _%hd209859%_ _%body209893%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd209853%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd209853%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self208410%_ _%stx208411%_)
        (letrec ((_%dispatch-case?208413%_
                  (lambda (_%hd209091%_ _%body209092%_)
                    (let* ((_%form209094%_
                            (cons _%hd209091%_ (cons _%body209092%_ '())))
                           (_%__stx211348211349%_ _%form209094%_)
                           (_%$%g209099209256%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx211348211349%_)))))
                      (let ((_%__kont211350211351%_
                             (lambda (_%$%g209101209773%_
                                      _%$%g209102209774%_
                                      _%$%g209103209775%_)
                               '#t))
                            (_%__kont211356211357%_
                             (lambda (_%$%g209146209565%_
                                      _%$%g209147209566%_
                                      _%$%g209148209567%_
                                      _%$%g209149209568%_
                                      _%$%g209150209569%_
                                      _%$%g209151209570%_)
                               '#t))
                            (_%__kont211362211363%_
                             (lambda (_%$%g209212209364%_
                                      _%$%g209213209365%_
                                      _%$%g209214209366%_
                                      _%$%g209215209367%_)
                               '#t))
                            (_%__kont211364211365%_ (lambda () '#f)))
                        (let* ((_%__match211489211490%_
                                (lambda (_%$%e209216209268%_
                                         _%$%hd209217209271%_
                                         _%$%tl209218209273%_
                                         _%$%e209219209276%_
                                         _%$%hd209220209279%_
                                         _%$%tl209221209281%_
                                         _%$%e209222209284%_
                                         _%$%hd209223209287%_
                                         _%$%tl209224209289%_
                                         _%$%e209225209292%_
                                         _%$%hd209226209295%_
                                         _%$%tl209227209297%_
                                         _%$%e209228209300%_
                                         _%$%hd209229209303%_
                                         _%$%tl209230209305%_
                                         _%$%e209231209308%_
                                         _%$%hd209232209311%_
                                         _%$%tl209233209313%_
                                         _%$%e209234209316%_
                                         _%$%hd209235209319%_
                                         _%$%tl209236209321%_
                                         _%$%e209237209324%_
                                         _%$%hd209238209327%_
                                         _%$%tl209239209329%_
                                         _%$%e209240209332%_
                                         _%$%hd209241209335%_
                                         _%$%tl209242209337%_
                                         _%$%e209243209340%_
                                         _%$%hd209244209343%_
                                         _%$%tl209245209345%_
                                         _%$%e209246209348%_
                                         _%$%hd209247209351%_
                                         _%$%tl209248209353%_
                                         _%$%e209249209356%_
                                         _%$%hd209250209359%_
                                         _%$%tl209251209361%_)
                                  (let ((_%$%g209212209364%_
                                         _%$%hd209250209359%_)
                                        (_%$%g209213209365%_
                                         _%$%hd209241209335%_)
                                        (_%$%g209214209366%_
                                         _%$%hd209232209311%_)
                                        (_%$%g209215209367%_
                                         _%$%hd209217209271%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g209215209367%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g209214209366%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g209215209367%_
                                                _%$%g209212209364%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g209213209365%_
                                                     _%$%g209215209367%_))))
                                        (_%__kont211362211363%_
                                         _%$%g209212209364%_
                                         _%$%g209213209365%_
                                         _%$%g209214209366%_
                                         _%$%g209215209367%_)
                                        (_%__kont211364211365%_)))))
                               (_%__match211461211462%_
                                (lambda (_%$%e209216209268%_
                                         _%$%hd209217209271%_
                                         _%$%tl209218209273%_
                                         _%$%e209219209276%_
                                         _%$%hd209220209279%_
                                         _%$%tl209221209281%_
                                         _%$%e209222209284%_
                                         _%$%hd209223209287%_
                                         _%$%tl209224209289%_
                                         _%$%e209225209292%_
                                         _%$%hd209226209295%_
                                         _%$%tl209227209297%_
                                         _%$%e209228209300%_
                                         _%$%hd209229209303%_
                                         _%$%tl209230209305%_
                                         _%$%e209231209308%_
                                         _%$%hd209232209311%_
                                         _%$%tl209233209313%_
                                         _%$%e209234209316%_
                                         _%$%hd209235209319%_
                                         _%$%tl209236209321%_
                                         _%$%e209237209324%_
                                         _%$%hd209238209327%_
                                         _%$%tl209239209329%_
                                         _%$%e209240209332%_
                                         _%$%hd209241209335%_
                                         _%$%tl209242209337%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209236209321%_))
                                      (let ((_%$%e209243209340%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209236209321%_))))
                                        (let ((_%$%tl209245209345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209243209340%_)))
                                              (_%$%hd209244209343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209243209340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd209244209343%_))
                                              (let ((_%$%e209246209348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd209244209343%_))))
                                                (let ((_%$%tl209248209353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209246209348%_)))
                                                      (_%$%hd209247209351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209246209348%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd209247209351%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd209247209351%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl209248209353%_))
                      (let ((_%$%e209249209356%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl209248209353%_))))
                        (let ((_%$%tl209251209361%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209249209356%_)))
                              (_%$%hd209250209359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209249209356%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl209251209361%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl209245209345%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl209221209281%_))
                                      (_%__match211489211490%_
                                       _%$%e209216209268%_
                                       _%$%hd209217209271%_
                                       _%$%tl209218209273%_
                                       _%$%e209219209276%_
                                       _%$%hd209220209279%_
                                       _%$%tl209221209281%_
                                       _%$%e209222209284%_
                                       _%$%hd209223209287%_
                                       _%$%tl209224209289%_
                                       _%$%e209225209292%_
                                       _%$%hd209226209295%_
                                       _%$%tl209227209297%_
                                       _%$%e209228209300%_
                                       _%$%hd209229209303%_
                                       _%$%tl209230209305%_
                                       _%$%e209231209308%_
                                       _%$%hd209232209311%_
                                       _%$%tl209233209313%_
                                       _%$%e209234209316%_
                                       _%$%hd209235209319%_
                                       _%$%tl209236209321%_
                                       _%$%e209237209324%_
                                       _%$%hd209238209327%_
                                       _%$%tl209239209329%_
                                       _%$%e209240209332%_
                                       _%$%hd209241209335%_
                                       _%$%tl209242209337%_
                                       _%$%e209243209340%_
                                       _%$%hd209244209343%_
                                       _%$%tl209245209345%_
                                       _%$%e209246209348%_
                                       _%$%hd209247209351%_
                                       _%$%tl209248209353%_
                                       _%$%e209249209356%_
                                       _%$%hd209250209359%_
                                       _%$%tl209251209361%_)
                                      (_%__kont211364211365%_))
                                  (_%__kont211364211365%_))
                              (_%__kont211364211365%_))))
                      (_%__kont211364211365%_))
                  (_%__kont211364211365%_))
              (_%__kont211364211365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont211364211365%_))))
                                      (_%__kont211364211365%_))))
                               (_%__match211391211392%_
                                (lambda (_%$%e209152209409%_
                                         _%$%hd209153209412%_
                                         _%$%tl209154209414%_
                                         _%__splice211358211359%_
                                         _%$%target209155209417%_
                                         _%$%tl209157209419%_)
                                  (letrec ((_%$%loop209158209422%_
                                            (lambda (_%$%hd209156209425%_
                                                     _%$%arg209162209427%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd209156209425%_))
                                                  (let ((_%$%e209159209429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd209156209425%_))))
                                                    (let ((_%$%lp-tl209161209434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209159209429%_)))
                                                          (_%$%lp-hd209160209432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209159209429%_))))
                                                      (_%$%loop209158209422%_
                                                       _%$%lp-tl209161209434%_
                                                       (cons _%$%lp-hd209160209432%_
                                                             _%$%arg209162209427%_))))
                                                  (let ((_%$%arg209163209437%_
                                                         (reverse _%$%arg209162209427%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl209154209414%_))
                                                        (let ((_%$%e209164209439%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl209154209414%_))))
                  (let ((_%$%tl209166209444%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209164209439%_)))
                        (_%$%hd209165209442%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209164209439%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd209165209442%_))
                        (let ((_%$%e209167209447%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd209165209442%_))))
                          (let ((_%$%tl209169209452%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209167209447%_)))
                                (_%$%hd209168209450%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209167209447%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd209168209450%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd209168209450%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl209169209452%_))
                                        (let ((_%$%e209170209455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl209169209452%_))))
                                          (let ((_%$%tl209172209460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209170209455%_)))
                                                (_%$%hd209171209458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209170209455%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd209171209458%_))
                                                (let ((_%$%e209173209463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd209171209458%_))))
                                                  (let ((_%$%tl209175209468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e209173209463%_)))
                                                        (_%$%hd209174209466%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e209173209463%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd209174209466%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd209174209466%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl209175209468%_))
                        (let ((_%$%e209176209471%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl209175209468%_))))
                          (let ((_%$%tl209178209476%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209176209471%_)))
                                (_%$%hd209177209474%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209176209471%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl209178209476%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl209172209460%_))
                                    (let ((_%$%e209179209479%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl209172209460%_))))
                                      (let ((_%$%tl209181209484%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e209179209479%_)))
                                            (_%$%hd209180209482%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e209179209479%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd209180209482%_))
                                            (let ((_%$%e209182209487%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd209180209482%_))))
                                              (let ((_%$%tl209184209492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e209182209487%_)))
                                                    (_%$%hd209183209490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e209182209487%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd209183209490%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd209183209490%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl209184209492%_))
                                                            (let ((_%$%e209185209495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl209184209492%_))))
                      (let ((_%$%tl209187209500%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e209185209495%_)))
                            (_%$%hd209186209498%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e209185209495%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl209187209500%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl209181209484%_))
                                (if (let ((__tmp212630
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl209181209484%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp212630 '1))
                                    (let ((_%__splice211360211361%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl209181209484%_
                                              '1))))
                                      (let ((_%$%tl209190209505%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211360211361%_
                                                '1)))
                                            (_%$%target209188209503%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211360211361%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl209190209505%_))
                                            (let ((_%$%e209197209508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl209190209505%_))))
                                              (let ((_%$%tl209199209513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e209197209508%_)))
                                                    (_%$%hd209198209511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e209197209508%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd209198209511%_))
                                                    (let ((_%$%e209200209516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd209198209511%_))))
                                                      (let ((_%$%tl209202209521%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e209200209516%_)))
                    (_%$%hd209201209519%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e209200209516%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd209201209519%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd209201209519%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl209202209521%_))
                            (let ((_%$%e209203209524%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl209202209521%_))))
                              (let ((_%$%tl209205209529%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e209203209524%_)))
                                    (_%$%hd209204209527%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e209203209524%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl209205209529%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl209199209513%_))
                                        (letrec ((_%$%loop209191209532%_
                                                  (lambda (_%$%hd209189209535%_
                                                           _%$%xarg209195209537%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd209189209535%_))
                                                        (let ((_%$%e209192209539%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd209189209535%_))))
                  (let ((_%$%lp-tl209194209544%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209192209539%_)))
                        (_%$%lp-hd209193209542%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209192209539%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd209193209542%_))
                        (let ((_%$%e209206209547%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd209193209542%_))))
                          (let ((_%$%tl209208209552%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209206209547%_)))
                                (_%$%hd209207209550%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209206209547%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd209207209550%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd209207209550%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl209208209552%_))
                                        (let ((_%$%e209209209555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl209208209552%_))))
                                          (let ((_%$%tl209211209560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209209209555%_)))
                                                (_%$%hd209210209558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209209209555%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl209211209560%_))
                                                (_%$%loop209191209532%_
                                                 _%$%lp-tl209194209544%_
                                                 (cons _%$%hd209210209558%_
                                                       _%$%xarg209195209537%_))
                                                (_%__match211461211462%_
                                                 _%$%e209152209409%_
                                                 _%$%hd209153209412%_
                                                 _%$%tl209154209414%_
                                                 _%$%e209164209439%_
                                                 _%$%hd209165209442%_
                                                 _%$%tl209166209444%_
                                                 _%$%e209167209447%_
                                                 _%$%hd209168209450%_
                                                 _%$%tl209169209452%_
                                                 _%$%e209170209455%_
                                                 _%$%hd209171209458%_
                                                 _%$%tl209172209460%_
                                                 _%$%e209173209463%_
                                                 _%$%hd209174209466%_
                                                 _%$%tl209175209468%_
                                                 _%$%e209176209471%_
                                                 _%$%hd209177209474%_
                                                 _%$%tl209178209476%_
                                                 _%$%e209179209479%_
                                                 _%$%hd209180209482%_
                                                 _%$%tl209181209484%_
                                                 _%$%e209182209487%_
                                                 _%$%hd209183209490%_
                                                 _%$%tl209184209492%_
                                                 _%$%e209185209495%_
                                                 _%$%hd209186209498%_
                                                 _%$%tl209187209500%_))))
                                        (_%__match211461211462%_
                                         _%$%e209152209409%_
                                         _%$%hd209153209412%_
                                         _%$%tl209154209414%_
                                         _%$%e209164209439%_
                                         _%$%hd209165209442%_
                                         _%$%tl209166209444%_
                                         _%$%e209167209447%_
                                         _%$%hd209168209450%_
                                         _%$%tl209169209452%_
                                         _%$%e209170209455%_
                                         _%$%hd209171209458%_
                                         _%$%tl209172209460%_
                                         _%$%e209173209463%_
                                         _%$%hd209174209466%_
                                         _%$%tl209175209468%_
                                         _%$%e209176209471%_
                                         _%$%hd209177209474%_
                                         _%$%tl209178209476%_
                                         _%$%e209179209479%_
                                         _%$%hd209180209482%_
                                         _%$%tl209181209484%_
                                         _%$%e209182209487%_
                                         _%$%hd209183209490%_
                                         _%$%tl209184209492%_
                                         _%$%e209185209495%_
                                         _%$%hd209186209498%_
                                         _%$%tl209187209500%_))
                                    (_%__match211461211462%_
                                     _%$%e209152209409%_
                                     _%$%hd209153209412%_
                                     _%$%tl209154209414%_
                                     _%$%e209164209439%_
                                     _%$%hd209165209442%_
                                     _%$%tl209166209444%_
                                     _%$%e209167209447%_
                                     _%$%hd209168209450%_
                                     _%$%tl209169209452%_
                                     _%$%e209170209455%_
                                     _%$%hd209171209458%_
                                     _%$%tl209172209460%_
                                     _%$%e209173209463%_
                                     _%$%hd209174209466%_
                                     _%$%tl209175209468%_
                                     _%$%e209176209471%_
                                     _%$%hd209177209474%_
                                     _%$%tl209178209476%_
                                     _%$%e209179209479%_
                                     _%$%hd209180209482%_
                                     _%$%tl209181209484%_
                                     _%$%e209182209487%_
                                     _%$%hd209183209490%_
                                     _%$%tl209184209492%_
                                     _%$%e209185209495%_
                                     _%$%hd209186209498%_
                                     _%$%tl209187209500%_))
                                (_%__match211461211462%_
                                 _%$%e209152209409%_
                                 _%$%hd209153209412%_
                                 _%$%tl209154209414%_
                                 _%$%e209164209439%_
                                 _%$%hd209165209442%_
                                 _%$%tl209166209444%_
                                 _%$%e209167209447%_
                                 _%$%hd209168209450%_
                                 _%$%tl209169209452%_
                                 _%$%e209170209455%_
                                 _%$%hd209171209458%_
                                 _%$%tl209172209460%_
                                 _%$%e209173209463%_
                                 _%$%hd209174209466%_
                                 _%$%tl209175209468%_
                                 _%$%e209176209471%_
                                 _%$%hd209177209474%_
                                 _%$%tl209178209476%_
                                 _%$%e209179209479%_
                                 _%$%hd209180209482%_
                                 _%$%tl209181209484%_
                                 _%$%e209182209487%_
                                 _%$%hd209183209490%_
                                 _%$%tl209184209492%_
                                 _%$%e209185209495%_
                                 _%$%hd209186209498%_
                                 _%$%tl209187209500%_))))
                        (_%__match211461211462%_
                         _%$%e209152209409%_
                         _%$%hd209153209412%_
                         _%$%tl209154209414%_
                         _%$%e209164209439%_
                         _%$%hd209165209442%_
                         _%$%tl209166209444%_
                         _%$%e209167209447%_
                         _%$%hd209168209450%_
                         _%$%tl209169209452%_
                         _%$%e209170209455%_
                         _%$%hd209171209458%_
                         _%$%tl209172209460%_
                         _%$%e209173209463%_
                         _%$%hd209174209466%_
                         _%$%tl209175209468%_
                         _%$%e209176209471%_
                         _%$%hd209177209474%_
                         _%$%tl209178209476%_
                         _%$%e209179209479%_
                         _%$%hd209180209482%_
                         _%$%tl209181209484%_
                         _%$%e209182209487%_
                         _%$%hd209183209490%_
                         _%$%tl209184209492%_
                         _%$%e209185209495%_
                         _%$%hd209186209498%_
                         _%$%tl209187209500%_))))
                (let ((_%$%xarg209196209563%_
                       (reverse _%$%xarg209195209537%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl209166209444%_))
                      (let ((_%$%g209146209565%_ _%$%hd209204209527%_)
                            (_%$%g209147209566%_ _%$%xarg209196209563%_)
                            (_%$%g209148209567%_ _%$%hd209186209498%_)
                            (_%$%g209149209568%_ _%$%hd209177209474%_)
                            (_%$%g209150209569%_ _%$%tl209157209419%_)
                            (_%$%g209151209570%_ _%$%arg209163209437%_))
                        (if (and (let ((__tmp212631
                                        (let ((__tmp212632
                                               (lambda (_%$%g209613209616%_
                                                        _%$%g209614209618%_)
                                                 (cons _%$%g209613209616%_
                                                       _%$%g209614209618%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp212632
                                           '()
                                           _%$%g209151209570%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp212631))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g209150209569%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g209149209568%_
                                    'apply))
                                 (let ((__tmp212635
                                        (length (let ((__tmp212636
                                                       (lambda (_%$%g209620209623%_
                                                                _%$%g209621209625%_)
                                                         (cons _%$%g209620209623%_
                                                               _%$%g209621209625%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp212636
                                                   '()
                                                   _%$%g209151209570%_))))
                                       (__tmp212633
                                        (length (let ((__tmp212634
                                                       (lambda (_%$%g209627209630%_
                                                                _%$%g209628209632%_)
                                                         (cons _%$%g209627209630%_
                                                               _%$%g209628209632%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp212634
                                                   '()
                                                   _%$%g209147209566%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp212635 __tmp212633))
                                 (let ((__tmp212639
                                        (let ((__tmp212640
                                               (lambda (_%$%g209634209637%_
                                                        _%$%g209635209639%_)
                                                 (cons _%$%g209634209637%_
                                                       _%$%g209635209639%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp212640
                                           '()
                                           _%$%g209151209570%_)))
                                       (__tmp212637
                                        (let ((__tmp212638
                                               (lambda (_%$%g209641209644%_
                                                        _%$%g209642209646%_)
                                                 (cons _%$%g209641209644%_
                                                       _%$%g209642209646%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp212638
                                           '()
                                           _%$%g209147209566%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp212639
                                    __tmp212637))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g209150209569%_
                                    _%$%g209146209565%_))
                                 (not (let ((__tmp212644
                                             (lambda (_%$%g209648209650%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g209648209650%_
                                                  _%$%g209148209567%_))))
                                            (__tmp212641
                                             (let ((__tmp212643
                                                    (lambda (_%$%g209652209655%_
                                                             _%$%g209653209657%_)
                                                      (cons _%$%g209652209655%_
                                                            _%$%g209653209657%_)))
                                                   (__tmp212642
                                                    (cons _%$%g209150209569%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp212643
                                                __tmp212642
                                                _%$%g209151209570%_))))
                                        (declare (not safe))
                                        (__find __tmp212644 __tmp212641))))
                            (_%__kont211356211357%_
                             _%$%g209146209565%_
                             _%$%g209147209566%_
                             _%$%g209148209567%_
                             _%$%g209149209568%_
                             _%$%g209150209569%_
                             _%$%g209151209570%_)
                            (_%__match211461211462%_
                             _%$%e209152209409%_
                             _%$%hd209153209412%_
                             _%$%tl209154209414%_
                             _%$%e209164209439%_
                             _%$%hd209165209442%_
                             _%$%tl209166209444%_
                             _%$%e209167209447%_
                             _%$%hd209168209450%_
                             _%$%tl209169209452%_
                             _%$%e209170209455%_
                             _%$%hd209171209458%_
                             _%$%tl209172209460%_
                             _%$%e209173209463%_
                             _%$%hd209174209466%_
                             _%$%tl209175209468%_
                             _%$%e209176209471%_
                             _%$%hd209177209474%_
                             _%$%tl209178209476%_
                             _%$%e209179209479%_
                             _%$%hd209180209482%_
                             _%$%tl209181209484%_
                             _%$%e209182209487%_
                             _%$%hd209183209490%_
                             _%$%tl209184209492%_
                             _%$%e209185209495%_
                             _%$%hd209186209498%_
                             _%$%tl209187209500%_)))
                      (_%__match211461211462%_
                       _%$%e209152209409%_
                       _%$%hd209153209412%_
                       _%$%tl209154209414%_
                       _%$%e209164209439%_
                       _%$%hd209165209442%_
                       _%$%tl209166209444%_
                       _%$%e209167209447%_
                       _%$%hd209168209450%_
                       _%$%tl209169209452%_
                       _%$%e209170209455%_
                       _%$%hd209171209458%_
                       _%$%tl209172209460%_
                       _%$%e209173209463%_
                       _%$%hd209174209466%_
                       _%$%tl209175209468%_
                       _%$%e209176209471%_
                       _%$%hd209177209474%_
                       _%$%tl209178209476%_
                       _%$%e209179209479%_
                       _%$%hd209180209482%_
                       _%$%tl209181209484%_
                       _%$%e209182209487%_
                       _%$%hd209183209490%_
                       _%$%tl209184209492%_
                       _%$%e209185209495%_
                       _%$%hd209186209498%_
                       _%$%tl209187209500%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop209191209532%_
                                           _%$%target209188209503%_
                                           '()))
                                        (_%__match211461211462%_
                                         _%$%e209152209409%_
                                         _%$%hd209153209412%_
                                         _%$%tl209154209414%_
                                         _%$%e209164209439%_
                                         _%$%hd209165209442%_
                                         _%$%tl209166209444%_
                                         _%$%e209167209447%_
                                         _%$%hd209168209450%_
                                         _%$%tl209169209452%_
                                         _%$%e209170209455%_
                                         _%$%hd209171209458%_
                                         _%$%tl209172209460%_
                                         _%$%e209173209463%_
                                         _%$%hd209174209466%_
                                         _%$%tl209175209468%_
                                         _%$%e209176209471%_
                                         _%$%hd209177209474%_
                                         _%$%tl209178209476%_
                                         _%$%e209179209479%_
                                         _%$%hd209180209482%_
                                         _%$%tl209181209484%_
                                         _%$%e209182209487%_
                                         _%$%hd209183209490%_
                                         _%$%tl209184209492%_
                                         _%$%e209185209495%_
                                         _%$%hd209186209498%_
                                         _%$%tl209187209500%_))
                                    (_%__match211461211462%_
                                     _%$%e209152209409%_
                                     _%$%hd209153209412%_
                                     _%$%tl209154209414%_
                                     _%$%e209164209439%_
                                     _%$%hd209165209442%_
                                     _%$%tl209166209444%_
                                     _%$%e209167209447%_
                                     _%$%hd209168209450%_
                                     _%$%tl209169209452%_
                                     _%$%e209170209455%_
                                     _%$%hd209171209458%_
                                     _%$%tl209172209460%_
                                     _%$%e209173209463%_
                                     _%$%hd209174209466%_
                                     _%$%tl209175209468%_
                                     _%$%e209176209471%_
                                     _%$%hd209177209474%_
                                     _%$%tl209178209476%_
                                     _%$%e209179209479%_
                                     _%$%hd209180209482%_
                                     _%$%tl209181209484%_
                                     _%$%e209182209487%_
                                     _%$%hd209183209490%_
                                     _%$%tl209184209492%_
                                     _%$%e209185209495%_
                                     _%$%hd209186209498%_
                                     _%$%tl209187209500%_))))
                            (_%__match211461211462%_
                             _%$%e209152209409%_
                             _%$%hd209153209412%_
                             _%$%tl209154209414%_
                             _%$%e209164209439%_
                             _%$%hd209165209442%_
                             _%$%tl209166209444%_
                             _%$%e209167209447%_
                             _%$%hd209168209450%_
                             _%$%tl209169209452%_
                             _%$%e209170209455%_
                             _%$%hd209171209458%_
                             _%$%tl209172209460%_
                             _%$%e209173209463%_
                             _%$%hd209174209466%_
                             _%$%tl209175209468%_
                             _%$%e209176209471%_
                             _%$%hd209177209474%_
                             _%$%tl209178209476%_
                             _%$%e209179209479%_
                             _%$%hd209180209482%_
                             _%$%tl209181209484%_
                             _%$%e209182209487%_
                             _%$%hd209183209490%_
                             _%$%tl209184209492%_
                             _%$%e209185209495%_
                             _%$%hd209186209498%_
                             _%$%tl209187209500%_))
                        (_%__match211461211462%_
                         _%$%e209152209409%_
                         _%$%hd209153209412%_
                         _%$%tl209154209414%_
                         _%$%e209164209439%_
                         _%$%hd209165209442%_
                         _%$%tl209166209444%_
                         _%$%e209167209447%_
                         _%$%hd209168209450%_
                         _%$%tl209169209452%_
                         _%$%e209170209455%_
                         _%$%hd209171209458%_
                         _%$%tl209172209460%_
                         _%$%e209173209463%_
                         _%$%hd209174209466%_
                         _%$%tl209175209468%_
                         _%$%e209176209471%_
                         _%$%hd209177209474%_
                         _%$%tl209178209476%_
                         _%$%e209179209479%_
                         _%$%hd209180209482%_
                         _%$%tl209181209484%_
                         _%$%e209182209487%_
                         _%$%hd209183209490%_
                         _%$%tl209184209492%_
                         _%$%e209185209495%_
                         _%$%hd209186209498%_
                         _%$%tl209187209500%_))
                    (_%__match211461211462%_
                     _%$%e209152209409%_
                     _%$%hd209153209412%_
                     _%$%tl209154209414%_
                     _%$%e209164209439%_
                     _%$%hd209165209442%_
                     _%$%tl209166209444%_
                     _%$%e209167209447%_
                     _%$%hd209168209450%_
                     _%$%tl209169209452%_
                     _%$%e209170209455%_
                     _%$%hd209171209458%_
                     _%$%tl209172209460%_
                     _%$%e209173209463%_
                     _%$%hd209174209466%_
                     _%$%tl209175209468%_
                     _%$%e209176209471%_
                     _%$%hd209177209474%_
                     _%$%tl209178209476%_
                     _%$%e209179209479%_
                     _%$%hd209180209482%_
                     _%$%tl209181209484%_
                     _%$%e209182209487%_
                     _%$%hd209183209490%_
                     _%$%tl209184209492%_
                     _%$%e209185209495%_
                     _%$%hd209186209498%_
                     _%$%tl209187209500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match211461211462%_
                                                     _%$%e209152209409%_
                                                     _%$%hd209153209412%_
                                                     _%$%tl209154209414%_
                                                     _%$%e209164209439%_
                                                     _%$%hd209165209442%_
                                                     _%$%tl209166209444%_
                                                     _%$%e209167209447%_
                                                     _%$%hd209168209450%_
                                                     _%$%tl209169209452%_
                                                     _%$%e209170209455%_
                                                     _%$%hd209171209458%_
                                                     _%$%tl209172209460%_
                                                     _%$%e209173209463%_
                                                     _%$%hd209174209466%_
                                                     _%$%tl209175209468%_
                                                     _%$%e209176209471%_
                                                     _%$%hd209177209474%_
                                                     _%$%tl209178209476%_
                                                     _%$%e209179209479%_
                                                     _%$%hd209180209482%_
                                                     _%$%tl209181209484%_
                                                     _%$%e209182209487%_
                                                     _%$%hd209183209490%_
                                                     _%$%tl209184209492%_
                                                     _%$%e209185209495%_
                                                     _%$%hd209186209498%_
                                                     _%$%tl209187209500%_))))
                                            (_%__match211461211462%_
                                             _%$%e209152209409%_
                                             _%$%hd209153209412%_
                                             _%$%tl209154209414%_
                                             _%$%e209164209439%_
                                             _%$%hd209165209442%_
                                             _%$%tl209166209444%_
                                             _%$%e209167209447%_
                                             _%$%hd209168209450%_
                                             _%$%tl209169209452%_
                                             _%$%e209170209455%_
                                             _%$%hd209171209458%_
                                             _%$%tl209172209460%_
                                             _%$%e209173209463%_
                                             _%$%hd209174209466%_
                                             _%$%tl209175209468%_
                                             _%$%e209176209471%_
                                             _%$%hd209177209474%_
                                             _%$%tl209178209476%_
                                             _%$%e209179209479%_
                                             _%$%hd209180209482%_
                                             _%$%tl209181209484%_
                                             _%$%e209182209487%_
                                             _%$%hd209183209490%_
                                             _%$%tl209184209492%_
                                             _%$%e209185209495%_
                                             _%$%hd209186209498%_
                                             _%$%tl209187209500%_))))
                                    (_%__match211461211462%_
                                     _%$%e209152209409%_
                                     _%$%hd209153209412%_
                                     _%$%tl209154209414%_
                                     _%$%e209164209439%_
                                     _%$%hd209165209442%_
                                     _%$%tl209166209444%_
                                     _%$%e209167209447%_
                                     _%$%hd209168209450%_
                                     _%$%tl209169209452%_
                                     _%$%e209170209455%_
                                     _%$%hd209171209458%_
                                     _%$%tl209172209460%_
                                     _%$%e209173209463%_
                                     _%$%hd209174209466%_
                                     _%$%tl209175209468%_
                                     _%$%e209176209471%_
                                     _%$%hd209177209474%_
                                     _%$%tl209178209476%_
                                     _%$%e209179209479%_
                                     _%$%hd209180209482%_
                                     _%$%tl209181209484%_
                                     _%$%e209182209487%_
                                     _%$%hd209183209490%_
                                     _%$%tl209184209492%_
                                     _%$%e209185209495%_
                                     _%$%hd209186209498%_
                                     _%$%tl209187209500%_))
                                (_%__match211461211462%_
                                 _%$%e209152209409%_
                                 _%$%hd209153209412%_
                                 _%$%tl209154209414%_
                                 _%$%e209164209439%_
                                 _%$%hd209165209442%_
                                 _%$%tl209166209444%_
                                 _%$%e209167209447%_
                                 _%$%hd209168209450%_
                                 _%$%tl209169209452%_
                                 _%$%e209170209455%_
                                 _%$%hd209171209458%_
                                 _%$%tl209172209460%_
                                 _%$%e209173209463%_
                                 _%$%hd209174209466%_
                                 _%$%tl209175209468%_
                                 _%$%e209176209471%_
                                 _%$%hd209177209474%_
                                 _%$%tl209178209476%_
                                 _%$%e209179209479%_
                                 _%$%hd209180209482%_
                                 _%$%tl209181209484%_
                                 _%$%e209182209487%_
                                 _%$%hd209183209490%_
                                 _%$%tl209184209492%_
                                 _%$%e209185209495%_
                                 _%$%hd209186209498%_
                                 _%$%tl209187209500%_))
                            (_%__kont211364211365%_))))
                    (_%__kont211364211365%_))
                (_%__kont211364211365%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont211364211365%_))))
                                            (_%__kont211364211365%_))))
                                    (_%__kont211364211365%_))
                                (_%__kont211364211365%_))))
                        (_%__kont211364211365%_))
                    (_%__kont211364211365%_))
                (_%__kont211364211365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont211364211365%_))))
                                        (_%__kont211364211365%_))
                                    (_%__kont211364211365%_))
                                (_%__kont211364211365%_))))
                        (_%__kont211364211365%_))))
                (_%__kont211364211365%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop209158209422%_
                                     _%$%target209155209417%_
                                     '()))))
                               (_%__match211379211380%_
                                (lambda (_%$%e209104209665%_
                                         _%$%hd209105209668%_
                                         _%$%tl209106209670%_
                                         _%__splice211352211353%_
                                         _%$%target209107209673%_
                                         _%$%tl209109209675%_)
                                  (letrec ((_%$%loop209110209678%_
                                            (lambda (_%$%hd209108209681%_
                                                     _%$%arg209114209683%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd209108209681%_))
                                                  (let ((_%$%e209111209685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd209108209681%_))))
                                                    (let ((_%$%lp-tl209113209690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209111209685%_)))
                                                          (_%$%lp-hd209112209688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209111209685%_))))
                                                      (_%$%loop209110209678%_
                                                       _%$%lp-tl209113209690%_
                                                       (cons _%$%lp-hd209112209688%_
                                                             _%$%arg209114209683%_))))
                                                  (let ((_%$%arg209115209693%_
                                                         (reverse _%$%arg209114209683%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl209106209670%_))
                                                        (let ((_%$%e209116209695%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl209106209670%_))))
                  (let ((_%$%tl209118209700%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209116209695%_)))
                        (_%$%hd209117209698%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209116209695%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd209117209698%_))
                        (let ((_%$%e209119209703%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd209117209698%_))))
                          (let ((_%$%tl209121209708%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209119209703%_)))
                                (_%$%hd209120209706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209119209703%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd209120209706%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd209120209706%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl209121209708%_))
                                        (let ((_%$%e209122209711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl209121209708%_))))
                                          (let ((_%$%tl209124209716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209122209711%_)))
                                                (_%$%hd209123209714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209122209711%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd209123209714%_))
                                                (let ((_%$%e209125209719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd209123209714%_))))
                                                  (let ((_%$%tl209127209724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e209125209719%_)))
                                                        (_%$%hd209126209722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e209125209719%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd209126209722%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd209126209722%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl209127209724%_))
                        (let ((_%$%e209128209727%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl209127209724%_))))
                          (let ((_%$%tl209130209732%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209128209727%_)))
                                (_%$%hd209129209730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209128209727%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl209130209732%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl209124209716%_))
                                    (let ((_%__splice211354211355%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl209124209716%_
                                              '0))))
                                      (let ((_%$%tl209133209737%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211354211355%_
                                                '1)))
                                            (_%$%target209131209735%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211354211355%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl209133209737%_))
                                            (letrec ((_%$%loop209134209740%_
                                                      (lambda (_%$%hd209132209743%_
                                                               _%$%xarg209138209745%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd209132209743%_))
                                                            (let ((_%$%e209135209747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd209132209743%_))))
                      (let ((_%$%lp-tl209137209752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e209135209747%_)))
                            (_%$%lp-hd209136209750%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e209135209747%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd209136209750%_))
                            (let ((_%$%e209140209755%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd209136209750%_))))
                              (let ((_%$%tl209142209760%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e209140209755%_)))
                                    (_%$%hd209141209758%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e209140209755%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd209141209758%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd209141209758%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl209142209760%_))
                                            (let ((_%$%e209143209763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl209142209760%_))))
                                              (let ((_%$%tl209145209768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e209143209763%_)))
                                                    (_%$%hd209144209766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e209143209763%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl209145209768%_))
                                                    (_%$%loop209134209740%_
                                                     _%$%lp-tl209137209752%_
                                                     (cons _%$%hd209144209766%_
                                                           _%$%xarg209138209745%_))
                                                    (_%__match211391211392%_
                                                     _%$%e209104209665%_
                                                     _%$%hd209105209668%_
                                                     _%$%tl209106209670%_
                                                     _%__splice211352211353%_
                                                     _%$%target209107209673%_
                                                     _%$%tl209109209675%_))))
                                            (_%__match211391211392%_
                                             _%$%e209104209665%_
                                             _%$%hd209105209668%_
                                             _%$%tl209106209670%_
                                             _%__splice211352211353%_
                                             _%$%target209107209673%_
                                             _%$%tl209109209675%_))
                                        (_%__match211391211392%_
                                         _%$%e209104209665%_
                                         _%$%hd209105209668%_
                                         _%$%tl209106209670%_
                                         _%__splice211352211353%_
                                         _%$%target209107209673%_
                                         _%$%tl209109209675%_))
                                    (_%__match211391211392%_
                                     _%$%e209104209665%_
                                     _%$%hd209105209668%_
                                     _%$%tl209106209670%_
                                     _%__splice211352211353%_
                                     _%$%target209107209673%_
                                     _%$%tl209109209675%_))))
                            (_%__match211391211392%_
                             _%$%e209104209665%_
                             _%$%hd209105209668%_
                             _%$%tl209106209670%_
                             _%__splice211352211353%_
                             _%$%target209107209673%_
                             _%$%tl209109209675%_))))
                    (let ((_%$%xarg209139209771%_
                           (reverse _%$%xarg209138209745%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl209118209700%_))
                          (let ((_%$%g209101209773%_ _%$%xarg209139209771%_)
                                (_%$%g209102209774%_ _%$%hd209129209730%_)
                                (_%$%g209103209775%_ _%$%arg209115209693%_))
                            (if (and (let ((__tmp212645
                                            (let ((__tmp212646
                                                   (lambda (_%$%g209803209806%_
                                                            _%$%g209804209808%_)
                                                     (cons _%$%g209803209806%_
                                                           _%$%g209804209808%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212646
                                               '()
                                               _%$%g209103209775%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp212645))
                                     (let ((__tmp212649
                                            (length (let ((__tmp212650
                                                           (lambda (_%$%g209810209813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209811209815%_)
                     (cons _%$%g209810209813%_ _%$%g209811209815%_))))
              (declare (not safe))
              (foldr__0 __tmp212650 '() _%$%g209103209775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp212647
                                            (length (let ((__tmp212648
                                                           (lambda (_%$%g209817209820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209818209822%_)
                     (cons _%$%g209817209820%_ _%$%g209818209822%_))))
              (declare (not safe))
              (foldr__0 __tmp212648 '() _%$%g209101209773%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp212649 __tmp212647))
                                     (let ((__tmp212653
                                            (let ((__tmp212654
                                                   (lambda (_%$%g209824209827%_
                                                            _%$%g209825209829%_)
                                                     (cons _%$%g209824209827%_
                                                           _%$%g209825209829%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212654
                                               '()
                                               _%$%g209103209775%_)))
                                           (__tmp212651
                                            (let ((__tmp212652
                                                   (lambda (_%$%g209831209834%_
                                                            _%$%g209832209836%_)
                                                     (cons _%$%g209831209834%_
                                                           _%$%g209832209836%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212652
                                               '()
                                               _%$%g209101209773%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp212653
                                        __tmp212651))
                                     (not (let ((__tmp212657
                                                 (lambda (_%$%g209838209840%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g209838209840%_
                                                      _%$%g209102209774%_))))
                                                (__tmp212655
                                                 (let ((__tmp212656
                                                        (lambda (_%$%g209842209845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g209843209847%_)
                  (cons _%$%g209842209845%_ _%$%g209843209847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp212656
                                                    '()
                                                    _%$%g209103209775%_))))
                                            (declare (not safe))
                                            (__find __tmp212657 __tmp212655))))
                                (_%__kont211350211351%_
                                 _%$%g209101209773%_
                                 _%$%g209102209774%_
                                 _%$%g209103209775%_)
                                (_%__match211391211392%_
                                 _%$%e209104209665%_
                                 _%$%hd209105209668%_
                                 _%$%tl209106209670%_
                                 _%__splice211352211353%_
                                 _%$%target209107209673%_
                                 _%$%tl209109209675%_)))
                          (_%__match211391211392%_
                           _%$%e209104209665%_
                           _%$%hd209105209668%_
                           _%$%tl209106209670%_
                           _%__splice211352211353%_
                           _%$%target209107209673%_
                           _%$%tl209109209675%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop209134209740%_
                                               _%$%target209131209735%_
                                               '()))
                                            (_%__match211391211392%_
                                             _%$%e209104209665%_
                                             _%$%hd209105209668%_
                                             _%$%tl209106209670%_
                                             _%__splice211352211353%_
                                             _%$%target209107209673%_
                                             _%$%tl209109209675%_))))
                                    (_%__match211391211392%_
                                     _%$%e209104209665%_
                                     _%$%hd209105209668%_
                                     _%$%tl209106209670%_
                                     _%__splice211352211353%_
                                     _%$%target209107209673%_
                                     _%$%tl209109209675%_))
                                (_%__match211391211392%_
                                 _%$%e209104209665%_
                                 _%$%hd209105209668%_
                                 _%$%tl209106209670%_
                                 _%__splice211352211353%_
                                 _%$%target209107209673%_
                                 _%$%tl209109209675%_))))
                        (_%__match211391211392%_
                         _%$%e209104209665%_
                         _%$%hd209105209668%_
                         _%$%tl209106209670%_
                         _%__splice211352211353%_
                         _%$%target209107209673%_
                         _%$%tl209109209675%_))
                    (_%__match211391211392%_
                     _%$%e209104209665%_
                     _%$%hd209105209668%_
                     _%$%tl209106209670%_
                     _%__splice211352211353%_
                     _%$%target209107209673%_
                     _%$%tl209109209675%_))
                (_%__match211391211392%_
                 _%$%e209104209665%_
                 _%$%hd209105209668%_
                 _%$%tl209106209670%_
                 _%__splice211352211353%_
                 _%$%target209107209673%_
                 _%$%tl209109209675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match211391211392%_
                                                 _%$%e209104209665%_
                                                 _%$%hd209105209668%_
                                                 _%$%tl209106209670%_
                                                 _%__splice211352211353%_
                                                 _%$%target209107209673%_
                                                 _%$%tl209109209675%_))))
                                        (_%__match211391211392%_
                                         _%$%e209104209665%_
                                         _%$%hd209105209668%_
                                         _%$%tl209106209670%_
                                         _%__splice211352211353%_
                                         _%$%target209107209673%_
                                         _%$%tl209109209675%_))
                                    (_%__match211391211392%_
                                     _%$%e209104209665%_
                                     _%$%hd209105209668%_
                                     _%$%tl209106209670%_
                                     _%__splice211352211353%_
                                     _%$%target209107209673%_
                                     _%$%tl209109209675%_))
                                (_%__match211391211392%_
                                 _%$%e209104209665%_
                                 _%$%hd209105209668%_
                                 _%$%tl209106209670%_
                                 _%__splice211352211353%_
                                 _%$%target209107209673%_
                                 _%$%tl209109209675%_))))
                        (_%__match211391211392%_
                         _%$%e209104209665%_
                         _%$%hd209105209668%_
                         _%$%tl209106209670%_
                         _%__splice211352211353%_
                         _%$%target209107209673%_
                         _%$%tl209109209675%_))))
                (_%__match211391211392%_
                 _%$%e209104209665%_
                 _%$%hd209105209668%_
                 _%$%tl209106209670%_
                 _%__splice211352211353%_
                 _%$%target209107209673%_
                 _%$%tl209109209675%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop209110209678%_
                                     _%$%target209107209673%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211348211349%_))
                              (let ((_%$%e209104209665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211348211349%_))))
                                (let ((_%$%tl209106209670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209104209665%_)))
                                      (_%$%hd209105209668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209104209665%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd209105209668%_))
                                      (let ((_%__splice211352211353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd209105209668%_
                                                '0))))
                                        (let ((_%$%tl209109209675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice211352211353%_
                                                  '1)))
                                              (_%$%target209107209673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice211352211353%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl209109209675%_))
                                              (_%__match211379211380%_
                                               _%$%e209104209665%_
                                               _%$%hd209105209668%_
                                               _%$%tl209106209670%_
                                               _%__splice211352211353%_
                                               _%$%target209107209673%_
                                               _%$%tl209109209675%_)
                                              (_%__match211391211392%_
                                               _%$%e209104209665%_
                                               _%$%hd209105209668%_
                                               _%$%tl209106209670%_
                                               _%__splice211352211353%_
                                               _%$%target209107209673%_
                                               _%$%tl209109209675%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl209106209670%_))
                                          (let ((_%$%e209219209276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl209106209670%_))))
                                            (let ((_%$%tl209221209281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e209219209276%_)))
                                                  (_%$%hd209220209279%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e209219209276%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd209220209279%_))
                                                  (let ((_%$%e209222209284%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd209220209279%_))))
                                                    (let ((_%$%tl209224209289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209222209284%_)))
                                                          (_%$%hd209223209287%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209222209284%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd209223209287%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd209223209287%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl209224209289%_))
                          (let ((_%$%e209225209292%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl209224209289%_))))
                            (let ((_%$%tl209227209297%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209225209292%_)))
                                  (_%$%hd209226209295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209225209292%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd209226209295%_))
                                  (let ((_%$%e209228209300%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd209226209295%_))))
                                    (let ((_%$%tl209230209305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209228209300%_)))
                                          (_%$%hd209229209303%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209228209300%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd209229209303%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd209229209303%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl209230209305%_))
                                                  (let ((_%$%e209231209308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl209230209305%_))))
                                                    (let ((_%$%tl209233209313%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209231209308%_)))
                                                          (_%$%hd209232209311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209231209308%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl209233209313%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl209227209297%_))
                      (let ((_%$%e209234209316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl209227209297%_))))
                        (let ((_%$%tl209236209321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209234209316%_)))
                              (_%$%hd209235209319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209234209316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd209235209319%_))
                              (let ((_%$%e209237209324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd209235209319%_))))
                                (let ((_%$%tl209239209329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209237209324%_)))
                                      (_%$%hd209238209327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209237209324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd209238209327%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd209238209327%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl209239209329%_))
                                              (let ((_%$%e209240209332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl209239209329%_))))
                                                (let ((_%$%tl209242209337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209240209332%_)))
                                                      (_%$%hd209241209335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209240209332%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl209242209337%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl209236209321%_))
                                                          (let ((_%$%e209243209340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl209236209321%_))))
                    (let ((_%$%tl209245209345%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209243209340%_)))
                          (_%$%hd209244209343%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209243209340%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd209244209343%_))
                          (let ((_%$%e209246209348%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd209244209343%_))))
                            (let ((_%$%tl209248209353%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209246209348%_)))
                                  (_%$%hd209247209351%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209246209348%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd209247209351%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd209247209351%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl209248209353%_))
                                          (let ((_%$%e209249209356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl209248209353%_))))
                                            (let ((_%$%tl209251209361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e209249209356%_)))
                                                  (_%$%hd209250209359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e209249209356%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl209251209361%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl209245209345%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl209221209281%_))
                                                          (_%__match211489211490%_
                                                           _%$%e209104209665%_
                                                           _%$%hd209105209668%_
                                                           _%$%tl209106209670%_
                                                           _%$%e209219209276%_
                                                           _%$%hd209220209279%_
                                                           _%$%tl209221209281%_
                                                           _%$%e209222209284%_
                                                           _%$%hd209223209287%_
                                                           _%$%tl209224209289%_
                                                           _%$%e209225209292%_
                                                           _%$%hd209226209295%_
                                                           _%$%tl209227209297%_
                                                           _%$%e209228209300%_
                                                           _%$%hd209229209303%_
                                                           _%$%tl209230209305%_
                                                           _%$%e209231209308%_
                                                           _%$%hd209232209311%_
                                                           _%$%tl209233209313%_
                                                           _%$%e209234209316%_
                                                           _%$%hd209235209319%_
                                                           _%$%tl209236209321%_
                                                           _%$%e209237209324%_
                                                           _%$%hd209238209327%_
                                                           _%$%tl209239209329%_
                                                           _%$%e209240209332%_
                                                           _%$%hd209241209335%_
                                                           _%$%tl209242209337%_
                                                           _%$%e209243209340%_
                                                           _%$%hd209244209343%_
                                                           _%$%tl209245209345%_
                                                           _%$%e209246209348%_
                                                           _%$%hd209247209351%_
                                                           _%$%tl209248209353%_
                                                           _%$%e209249209356%_
                                                           _%$%hd209250209359%_
                                                           _%$%tl209251209361%_)
                                                          (_%__kont211364211365%_))
                                                      (_%__kont211364211365%_))
                                                  (_%__kont211364211365%_))))
                                          (_%__kont211364211365%_))
                                      (_%__kont211364211365%_))
                                  (_%__kont211364211365%_))))
                          (_%__kont211364211365%_))))
                  (_%__kont211364211365%_))
              (_%__kont211364211365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont211364211365%_))
                                          (_%__kont211364211365%_))
                                      (_%__kont211364211365%_))))
                              (_%__kont211364211365%_))))
                      (_%__kont211364211365%_))
                  (_%__kont211364211365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont211364211365%_))
                                              (_%__kont211364211365%_))
                                          (_%__kont211364211365%_))))
                                  (_%__kont211364211365%_))))
                          (_%__kont211364211365%_))
                      (_%__kont211364211365%_))
                  (_%__kont211364211365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont211364211365%_))))
                                          (_%__kont211364211365%_)))))
                              (_%__kont211364211365%_)))))))
                 (_%dispatch-case-e208414%_
                  (lambda (_%hd208561%_ _%body208562%_)
                    (let* ((_%form208564%_
                            (cons _%hd208561%_ (cons _%body208562%_ '())))
                           (_%__stx211492211493%_ _%form208564%_)
                           (_%$%g208568208692%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx211492211493%_)))))
                      (let ((_%__kont211494211495%_
                             (lambda (_%$%g208570209057%_
                                      _%$%g208571209058%_
                                      _%$%g208572209059%_)
                               (let ((__tmp212658
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g208571209058%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self208410%_
                                  __tmp212658))))
                            (_%__kont211500211501%_
                             (lambda (_%$%g208615208909%_
                                      _%$%g208616208910%_
                                      _%$%g208617208911%_
                                      _%$%g208618208912%_)
                               (let ((__tmp212659
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g208615208909%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self208410%_
                                  __tmp212659))))
                            (_%__kont211504211505%_
                             (lambda (_%$%g208655208777%_
                                      _%$%g208656208778%_
                                      _%$%g208657208779%_)
                               (let ((__tmp212660
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g208655208777%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self208410%_
                                  __tmp212660)))))
                        (let* ((_%__match211601211602%_
                                (lambda (_%$%e208658208697%_
                                         _%$%hd208659208700%_
                                         _%$%tl208660208702%_
                                         _%$%e208661208705%_
                                         _%$%hd208662208708%_
                                         _%$%tl208663208710%_
                                         _%$%e208664208713%_
                                         _%$%hd208665208716%_
                                         _%$%tl208666208718%_
                                         _%$%e208667208721%_
                                         _%$%hd208668208724%_
                                         _%$%tl208669208726%_
                                         _%$%e208670208729%_
                                         _%$%hd208671208732%_
                                         _%$%tl208672208734%_
                                         _%$%e208673208737%_
                                         _%$%hd208674208740%_
                                         _%$%tl208675208742%_
                                         _%$%e208676208745%_
                                         _%$%hd208677208748%_
                                         _%$%tl208678208750%_
                                         _%$%e208679208753%_
                                         _%$%hd208680208756%_
                                         _%$%tl208681208758%_
                                         _%$%e208682208761%_
                                         _%$%hd208683208764%_
                                         _%$%tl208684208766%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208678208750%_))
                                      (let ((_%$%e208685208769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208678208750%_))))
                                        (let ((_%$%tl208687208774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208685208769%_)))
                                              (_%$%hd208686208772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208685208769%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208687208774%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl208663208710%_))
                                                  (_%__kont211504211505%_
                                                   _%$%hd208683208764%_
                                                   _%$%hd208674208740%_
                                                   _%$%hd208659208700%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g208568208692%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g208568208692%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g208568208692%_)))))
                               (_%__match211531211532%_
                                (lambda (_%$%e208619208815%_
                                         _%$%hd208620208818%_
                                         _%$%tl208621208820%_
                                         _%__splice211502211503%_
                                         _%$%target208622208823%_
                                         _%$%tl208624208825%_)
                                  (letrec ((_%$%loop208625208828%_
                                            (lambda (_%$%hd208623208831%_
                                                     _%$%arg208629208833%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208623208831%_))
                                                  (let ((_%$%e208626208835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208623208831%_))))
                                                    (let ((_%$%lp-tl208628208840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208626208835%_)))
                                                          (_%$%lp-hd208627208838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208626208835%_))))
                                                      (_%$%loop208625208828%_
                                                       _%$%lp-tl208628208840%_
                                                       (cons _%$%lp-hd208627208838%_
                                                             _%$%arg208629208833%_))))
                                                  (let ((_%$%arg208630208843%_
                                                         (reverse _%$%arg208629208833%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208621208820%_))
                                                        (let ((_%$%e208631208845%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208621208820%_))))
                  (let ((_%$%tl208633208850%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208631208845%_)))
                        (_%$%hd208632208848%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208631208845%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd208632208848%_))
                        (let ((_%$%e208634208853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd208632208848%_))))
                          (let ((_%$%tl208636208858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208634208853%_)))
                                (_%$%hd208635208856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208634208853%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd208635208856%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd208635208856%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208636208858%_))
                                        (let ((_%$%e208637208861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208636208858%_))))
                                          (let ((_%$%tl208639208866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208637208861%_)))
                                                (_%$%hd208638208864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208637208861%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd208638208864%_))
                                                (let ((_%$%e208640208869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd208638208864%_))))
                                                  (let ((_%$%tl208642208874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208640208869%_)))
                                                        (_%$%hd208641208872%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208640208869%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd208641208872%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd208641208872%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl208642208874%_))
                        (let ((_%$%e208643208877%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl208642208874%_))))
                          (let ((_%$%tl208645208882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208643208877%_)))
                                (_%$%hd208644208880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208643208877%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208645208882%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl208639208866%_))
                                    (let ((_%$%e208646208885%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl208639208866%_))))
                                      (let ((_%$%tl208648208890%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e208646208885%_)))
                                            (_%$%hd208647208888%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e208646208885%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd208647208888%_))
                                            (let ((_%$%e208649208893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd208647208888%_))))
                                              (let ((_%$%tl208651208898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208649208893%_)))
                                                    (_%$%hd208650208896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208649208893%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd208650208896%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd208650208896%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl208651208898%_))
                                                            (let ((_%$%e208652208901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl208651208898%_))))
                      (let ((_%$%tl208654208906%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e208652208901%_)))
                            (_%$%hd208653208904%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e208652208901%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl208654208906%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208633208850%_))
                                (_%__kont211500211501%_
                                 _%$%hd208653208904%_
                                 _%$%hd208644208880%_
                                 _%$%tl208624208825%_
                                 _%$%arg208630208843%_)
                                (_%__match211601211602%_
                                 _%$%e208619208815%_
                                 _%$%hd208620208818%_
                                 _%$%tl208621208820%_
                                 _%$%e208631208845%_
                                 _%$%hd208632208848%_
                                 _%$%tl208633208850%_
                                 _%$%e208634208853%_
                                 _%$%hd208635208856%_
                                 _%$%tl208636208858%_
                                 _%$%e208637208861%_
                                 _%$%hd208638208864%_
                                 _%$%tl208639208866%_
                                 _%$%e208640208869%_
                                 _%$%hd208641208872%_
                                 _%$%tl208642208874%_
                                 _%$%e208643208877%_
                                 _%$%hd208644208880%_
                                 _%$%tl208645208882%_
                                 _%$%e208646208885%_
                                 _%$%hd208647208888%_
                                 _%$%tl208648208890%_
                                 _%$%e208649208893%_
                                 _%$%hd208650208896%_
                                 _%$%tl208651208898%_
                                 _%$%e208652208901%_
                                 _%$%hd208653208904%_
                                 _%$%tl208654208906%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g208568208692%_)))))
                    (let () (declare (not safe)) (_%$%g208568208692%_)))
                (let () (declare (not safe)) (_%$%g208568208692%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g208568208692%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g208568208692%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g208568208692%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g208568208692%_)))))
                        (let () (declare (not safe)) (_%$%g208568208692%_)))
                    (let () (declare (not safe)) (_%$%g208568208692%_)))
                (let () (declare (not safe)) (_%$%g208568208692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g208568208692%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g208568208692%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g208568208692%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g208568208692%_)))))
                        (let () (declare (not safe)) (_%$%g208568208692%_)))))
                (let () (declare (not safe)) (_%$%g208568208692%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop208625208828%_
                                     _%$%target208622208823%_
                                     '()))))
                               (_%__match211519211520%_
                                (lambda (_%$%e208573208949%_
                                         _%$%hd208574208952%_
                                         _%$%tl208575208954%_
                                         _%__splice211496211497%_
                                         _%$%target208576208957%_
                                         _%$%tl208578208959%_)
                                  (letrec ((_%$%loop208579208962%_
                                            (lambda (_%$%hd208577208965%_
                                                     _%$%arg208583208967%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208577208965%_))
                                                  (let ((_%$%e208580208969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208577208965%_))))
                                                    (let ((_%$%lp-tl208582208974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208580208969%_)))
                                                          (_%$%lp-hd208581208972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208580208969%_))))
                                                      (_%$%loop208579208962%_
                                                       _%$%lp-tl208582208974%_
                                                       (cons _%$%lp-hd208581208972%_
                                                             _%$%arg208583208967%_))))
                                                  (let ((_%$%arg208584208977%_
                                                         (reverse _%$%arg208583208967%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208575208954%_))
                                                        (let ((_%$%e208585208979%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208575208954%_))))
                  (let ((_%$%tl208587208984%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208585208979%_)))
                        (_%$%hd208586208982%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208585208979%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd208586208982%_))
                        (let ((_%$%e208588208987%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd208586208982%_))))
                          (let ((_%$%tl208590208992%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208588208987%_)))
                                (_%$%hd208589208990%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208588208987%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd208589208990%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd208589208990%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208590208992%_))
                                        (let ((_%$%e208591208995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208590208992%_))))
                                          (let ((_%$%tl208593209000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208591208995%_)))
                                                (_%$%hd208592208998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208591208995%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd208592208998%_))
                                                (let ((_%$%e208594209003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd208592208998%_))))
                                                  (let ((_%$%tl208596209008%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208594209003%_)))
                                                        (_%$%hd208595209006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208594209003%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd208595209006%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd208595209006%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl208596209008%_))
                        (let ((_%$%e208597209011%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl208596209008%_))))
                          (let ((_%$%tl208599209016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208597209011%_)))
                                (_%$%hd208598209014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208597209011%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208599209016%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl208593209000%_))
                                    (let ((_%__splice211498211499%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl208593209000%_
                                              '0))))
                                      (let ((_%$%tl208602209021%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211498211499%_
                                                '1)))
                                            (_%$%target208600209019%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice211498211499%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl208602209021%_))
                                            (letrec ((_%$%loop208603209024%_
                                                      (lambda (_%$%hd208601209027%_
                                                               _%$%xarg208607209029%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd208601209027%_))
                                                            (let ((_%$%e208604209031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd208601209027%_))))
                      (let ((_%$%lp-tl208606209036%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e208604209031%_)))
                            (_%$%lp-hd208605209034%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e208604209031%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd208605209034%_))
                            (let ((_%$%e208609209039%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd208605209034%_))))
                              (let ((_%$%tl208611209044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e208609209039%_)))
                                    (_%$%hd208610209042%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e208609209039%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd208610209042%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd208610209042%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl208611209044%_))
                                            (let ((_%$%e208612209047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl208611209044%_))))
                                              (let ((_%$%tl208614209052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208612209047%_)))
                                                    (_%$%hd208613209050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208612209047%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl208614209052%_))
                                                    (_%$%loop208603209024%_
                                                     _%$%lp-tl208606209036%_
                                                     (cons _%$%hd208613209050%_
                                                           _%$%xarg208607209029%_))
                                                    (_%__match211531211532%_
                                                     _%$%e208573208949%_
                                                     _%$%hd208574208952%_
                                                     _%$%tl208575208954%_
                                                     _%__splice211496211497%_
                                                     _%$%target208576208957%_
                                                     _%$%tl208578208959%_))))
                                            (_%__match211531211532%_
                                             _%$%e208573208949%_
                                             _%$%hd208574208952%_
                                             _%$%tl208575208954%_
                                             _%__splice211496211497%_
                                             _%$%target208576208957%_
                                             _%$%tl208578208959%_))
                                        (_%__match211531211532%_
                                         _%$%e208573208949%_
                                         _%$%hd208574208952%_
                                         _%$%tl208575208954%_
                                         _%__splice211496211497%_
                                         _%$%target208576208957%_
                                         _%$%tl208578208959%_))
                                    (_%__match211531211532%_
                                     _%$%e208573208949%_
                                     _%$%hd208574208952%_
                                     _%$%tl208575208954%_
                                     _%__splice211496211497%_
                                     _%$%target208576208957%_
                                     _%$%tl208578208959%_))))
                            (_%__match211531211532%_
                             _%$%e208573208949%_
                             _%$%hd208574208952%_
                             _%$%tl208575208954%_
                             _%__splice211496211497%_
                             _%$%target208576208957%_
                             _%$%tl208578208959%_))))
                    (let ((_%$%xarg208608209055%_
                           (reverse _%$%xarg208607209029%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl208587208984%_))
                          (_%__kont211494211495%_
                           _%$%xarg208608209055%_
                           _%$%hd208598209014%_
                           _%$%arg208584208977%_)
                          (_%__match211531211532%_
                           _%$%e208573208949%_
                           _%$%hd208574208952%_
                           _%$%tl208575208954%_
                           _%__splice211496211497%_
                           _%$%target208576208957%_
                           _%$%tl208578208959%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop208603209024%_
                                               _%$%target208600209019%_
                                               '()))
                                            (_%__match211531211532%_
                                             _%$%e208573208949%_
                                             _%$%hd208574208952%_
                                             _%$%tl208575208954%_
                                             _%__splice211496211497%_
                                             _%$%target208576208957%_
                                             _%$%tl208578208959%_))))
                                    (_%__match211531211532%_
                                     _%$%e208573208949%_
                                     _%$%hd208574208952%_
                                     _%$%tl208575208954%_
                                     _%__splice211496211497%_
                                     _%$%target208576208957%_
                                     _%$%tl208578208959%_))
                                (_%__match211531211532%_
                                 _%$%e208573208949%_
                                 _%$%hd208574208952%_
                                 _%$%tl208575208954%_
                                 _%__splice211496211497%_
                                 _%$%target208576208957%_
                                 _%$%tl208578208959%_))))
                        (_%__match211531211532%_
                         _%$%e208573208949%_
                         _%$%hd208574208952%_
                         _%$%tl208575208954%_
                         _%__splice211496211497%_
                         _%$%target208576208957%_
                         _%$%tl208578208959%_))
                    (_%__match211531211532%_
                     _%$%e208573208949%_
                     _%$%hd208574208952%_
                     _%$%tl208575208954%_
                     _%__splice211496211497%_
                     _%$%target208576208957%_
                     _%$%tl208578208959%_))
                (_%__match211531211532%_
                 _%$%e208573208949%_
                 _%$%hd208574208952%_
                 _%$%tl208575208954%_
                 _%__splice211496211497%_
                 _%$%target208576208957%_
                 _%$%tl208578208959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match211531211532%_
                                                 _%$%e208573208949%_
                                                 _%$%hd208574208952%_
                                                 _%$%tl208575208954%_
                                                 _%__splice211496211497%_
                                                 _%$%target208576208957%_
                                                 _%$%tl208578208959%_))))
                                        (_%__match211531211532%_
                                         _%$%e208573208949%_
                                         _%$%hd208574208952%_
                                         _%$%tl208575208954%_
                                         _%__splice211496211497%_
                                         _%$%target208576208957%_
                                         _%$%tl208578208959%_))
                                    (_%__match211531211532%_
                                     _%$%e208573208949%_
                                     _%$%hd208574208952%_
                                     _%$%tl208575208954%_
                                     _%__splice211496211497%_
                                     _%$%target208576208957%_
                                     _%$%tl208578208959%_))
                                (_%__match211531211532%_
                                 _%$%e208573208949%_
                                 _%$%hd208574208952%_
                                 _%$%tl208575208954%_
                                 _%__splice211496211497%_
                                 _%$%target208576208957%_
                                 _%$%tl208578208959%_))))
                        (_%__match211531211532%_
                         _%$%e208573208949%_
                         _%$%hd208574208952%_
                         _%$%tl208575208954%_
                         _%__splice211496211497%_
                         _%$%target208576208957%_
                         _%$%tl208578208959%_))))
                (_%__match211531211532%_
                 _%$%e208573208949%_
                 _%$%hd208574208952%_
                 _%$%tl208575208954%_
                 _%__splice211496211497%_
                 _%$%target208576208957%_
                 _%$%tl208578208959%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop208579208962%_
                                     _%$%target208576208957%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211492211493%_))
                              (let ((_%$%e208573208949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211492211493%_))))
                                (let ((_%$%tl208575208954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208573208949%_)))
                                      (_%$%hd208574208952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208573208949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd208574208952%_))
                                      (let ((_%__splice211496211497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd208574208952%_
                                                '0))))
                                        (let ((_%$%tl208578208959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice211496211497%_
                                                  '1)))
                                              (_%$%target208576208957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice211496211497%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208578208959%_))
                                              (_%__match211519211520%_
                                               _%$%e208573208949%_
                                               _%$%hd208574208952%_
                                               _%$%tl208575208954%_
                                               _%__splice211496211497%_
                                               _%$%target208576208957%_
                                               _%$%tl208578208959%_)
                                              (_%__match211531211532%_
                                               _%$%e208573208949%_
                                               _%$%hd208574208952%_
                                               _%$%tl208575208954%_
                                               _%__splice211496211497%_
                                               _%$%target208576208957%_
                                               _%$%tl208578208959%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl208575208954%_))
                                          (let ((_%$%e208661208705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl208575208954%_))))
                                            (let ((_%$%tl208663208710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e208661208705%_)))
                                                  (_%$%hd208662208708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e208661208705%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd208662208708%_))
                                                  (let ((_%$%e208664208713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd208662208708%_))))
                                                    (let ((_%$%tl208666208718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208664208713%_)))
                                                          (_%$%hd208665208716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208664208713%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd208665208716%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd208665208716%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl208666208718%_))
                          (let ((_%$%e208667208721%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl208666208718%_))))
                            (let ((_%$%tl208669208726%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208667208721%_)))
                                  (_%$%hd208668208724%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208667208721%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd208668208724%_))
                                  (let ((_%$%e208670208729%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd208668208724%_))))
                                    (let ((_%$%tl208672208734%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208670208729%_)))
                                          (_%$%hd208671208732%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208670208729%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd208671208732%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd208671208732%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208672208734%_))
                                                  (let ((_%$%e208673208737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208672208734%_))))
                                                    (let ((_%$%tl208675208742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208673208737%_)))
                                                          (_%$%hd208674208740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208673208737%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208675208742%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl208669208726%_))
                      (let ((_%$%e208676208745%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl208669208726%_))))
                        (let ((_%$%tl208678208750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208676208745%_)))
                              (_%$%hd208677208748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208676208745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd208677208748%_))
                              (let ((_%$%e208679208753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd208677208748%_))))
                                (let ((_%$%tl208681208758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208679208753%_)))
                                      (_%$%hd208680208756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208679208753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208680208756%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208680208756%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208681208758%_))
                                              (let ((_%$%e208682208761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208681208758%_))))
                                                (let ((_%$%tl208684208766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208682208761%_)))
                                                      (_%$%hd208683208764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208682208761%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208684208766%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl208678208750%_))
                                                          (let ((_%$%e208685208769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl208678208750%_))))
                    (let ((_%$%tl208687208774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208685208769%_)))
                          (_%$%hd208686208772%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208685208769%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl208687208774%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl208663208710%_))
                              (_%__kont211504211505%_
                               _%$%hd208683208764%_
                               _%$%hd208674208740%_
                               _%$%hd208574208952%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g208568208692%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g208568208692%_)))))
                  (let () (declare (not safe)) (_%$%g208568208692%_)))
              (let () (declare (not safe)) (_%$%g208568208692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g208568208692%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g208568208692%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g208568208692%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g208568208692%_)))))
                      (let () (declare (not safe)) (_%$%g208568208692%_)))
                  (let () (declare (not safe)) (_%$%g208568208692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g208568208692%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g208568208692%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g208568208692%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g208568208692%_)))))
                          (let () (declare (not safe)) (_%$%g208568208692%_)))
                      (let () (declare (not safe)) (_%$%g208568208692%_)))
                  (let () (declare (not safe)) (_%$%g208568208692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g208568208692%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g208568208692%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g208568208692%_))))))))
                 (_%generate1208415%_
                  (lambda (_%args208546%_
                           _%arglen208547%_
                           _%hd208548%_
                           _%body208549%_)
                    (let* ((_%len208551%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd208548%_)))
                           (_%condition208556%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd208548%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen208547%_
                                                (cons _%len208551%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen208547%_ (cons _%len208551%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len208551%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen208547%_
                                                    (cons _%len208551%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen208547%_ (cons _%len208551%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch208558%_
                            (if (_%dispatch-case?208413%_
                                 _%hd208548%_
                                 _%body208549%_)
                                (_%dispatch-case-e208414%_
                                 _%hd208548%_
                                 _%body208549%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self208410%_
                                 _%hd208548%_
                                 _%body208549%_))))
                      (cons _%condition208556%_
                            (cons (cons 'apply
                                        (cons _%dispatch208558%_
                                              (cons _%args208546%_ '())))
                                  '()))))))
          (let* ((_%$%g208417208445%_
                  (lambda (_%$%g208418208442%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208418208442%_))))
                 (_%$%g208416208543%_
                  (lambda (_%$%g208418208448%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208418208448%_))
                        (let ((_%$%e208421208450%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208418208448%_))))
                          (let ((_%$%hd208422208453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208421208450%_)))
                                (_%$%tl208423208455%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208421208450%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl208423208455%_))
                                (let ((_g212661_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl208423208455%_
                                          '0))))
                                  (begin
                                    (let ((_g212662_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g212661_)
                                                 (##values-length _g212661_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g212662_ 2)))
                                          (error "Context expects 2 values"
                                                 _g212662_)))
                                    (let ((_%$%target208424208458%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g212661_ 0)))
                                          (_%$%tl208426208460%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g212661_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208426208460%_))
                                          (letrec ((_%$%loop208427208463%_
                                                    (lambda (_%$%hd208425208466%_
                                                             _%$%body208431208468%_
                                                             _%$%hd208432208469%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd208425208466%_))
                                                          (let ((_%$%e208428208471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd208425208466%_))))
                    (let ((_%$%lp-hd208429208474%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208428208471%_)))
                          (_%$%lp-tl208430208476%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208428208471%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd208429208474%_))
                          (let ((_%$%e208435208479%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd208429208474%_))))
                            (let ((_%$%hd208436208482%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208435208479%_)))
                                  (_%$%tl208437208484%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208435208479%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl208437208484%_))
                                  (let ((_%$%e208438208487%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl208437208484%_))))
                                    (let ((_%$%hd208439208490%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208438208487%_)))
                                          (_%$%tl208440208492%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208438208487%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208440208492%_))
                                          (_%$%loop208427208463%_
                                           _%$%lp-tl208430208476%_
                                           (cons _%$%hd208439208490%_
                                                 _%$%body208431208468%_)
                                           (cons _%$%hd208436208482%_
                                                 _%$%hd208432208469%_))
                                          (_%$%g208417208445%_
                                           _%$%g208418208448%_))))
                                  (_%$%g208417208445%_ _%$%g208418208448%_))))
                          (_%$%g208417208445%_ _%$%g208418208448%_))))
                  (let ((_%$%body208433208495%_
                         (reverse _%$%body208431208468%_))
                        (_%$%hd208434208496%_ (reverse _%$%hd208432208469%_)))
                    (let ((_%args208518%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen208519%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name208520%_
                           (let ((_%$e208515%_
                                  (let ((__tmp212663
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp212663 _%stx208411%_))))
                             (if _%$e208515%_
                                 _%$e208515%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args208518%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen208519%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args208518%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args208518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp212667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name208520%_
                                                             (cons _%args208518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '()))
                              (__tmp212664
                               (map (lambda (_%$%g208521208524%_
                                             _%$%g208522208526%_)
                                      (_%generate1208415%_
                                       _%args208518%_
                                       _%arglen208519%_
                                       _%$%g208521208524%_
                                       _%$%g208522208526%_))
                                    (let ((__tmp212665
                                           (lambda (_%$%g208528208531%_
                                                    _%$%g208529208533%_)
                                             (cons _%$%g208528208531%_
                                                   _%$%g208529208533%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp212665
                                       '()
                                       _%$%hd208434208496%_))
                                    (let ((__tmp212666
                                           (lambda (_%$%g208535208538%_
                                                    _%$%g208536208540%_)
                                             (cons _%$%g208535208538%_
                                                   _%$%g208536208540%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp212666
                                       '()
                                       _%$%body208433208495%_)))))
                          (declare (not safe))
                          (foldr__0 cons __tmp212667 __tmp212664)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop208427208463%_
                                             _%$%target208424208458%_
                                             '()
                                             '()))
                                          (_%$%g208417208445%_
                                           _%$%g208418208448%_)))))
                                (_%$%g208417208445%_ _%$%g208418208448%_))))
                        (_%$%g208417208445%_ _%$%g208418208448%_)))))
            (_%$%g208416208543%_ _%stx208411%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self207647%_ _%stx207648%_ _%compiled-body?207649%_)
        (letrec ((_%generate-simple207651%_
                  (lambda (_%hd208395%_ _%body208396%_)
                    (_%coalesce-boolean207652%_
                     (_%simplify-let207653%_
                      (gxc#generate-runtime-simple-let
                       _%self207647%_
                       'let
                       _%hd208395%_
                       _%body208396%_
                       _%compiled-body?207649%_)))))
                 (_%coalesce-boolean207652%_
                  (lambda (_%code208256%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code208257208283%_ _%code208256%_)
                               (_%$%else208259208291%_
                                (lambda () _%code208256%_))
                               (_%$%K208261208328%_
                                (lambda (_%expr2208294%_
                                         _%expr1208295%_
                                         _%id208296%_)
                                  (let* ((_%$%expr2208297208305%_
                                          _%expr2208294%_)
                                         (_%$%else208299208313%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1208295%_
                                                        (cons _%expr2208294%_
                                                              '())))))
                                         (_%$%K208301208318%_
                                          (lambda (_%exprs208316%_)
                                            (cons 'or
                                                  (cons _%expr1208295%_
                                                        _%exprs208316%_)))))
                                    (if (pair? _%$%expr2208297208305%_)
                                        (let ((_%$%hd208302208321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2208297208305%_)))
                                              (_%$%tl208303208323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2208297208305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd208302208321%_
                                                       'or))
                                              (let ((_%exprs208326%_
                                                     _%$%tl208303208323%_))
                                                (_%$%K208301208318%_
                                                 _%exprs208326%_))
                                              (_%$%else208299208313%_)))
                                        (_%$%else208299208313%_))))))
                          (if (pair? _%$%code208257208283%_)
                              (let ((_%$%hd208262208331%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code208257208283%_)))
                                    (_%$%tl208263208333%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code208257208283%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd208262208331%_ 'let))
                                    (if (pair? _%$%tl208263208333%_)
                                        (let ((_%$%hd208264208336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl208263208333%_)))
                                              (_%$%tl208265208338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl208263208333%_))))
                                          (if (pair? _%$%hd208264208336%_)
                                              (let ((_%$%hd208276208341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd208264208336%_)))
                                                    (_%$%tl208277208343%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd208264208336%_))))
                                                (if (pair? _%$%hd208276208341%_)
                                                    (let ((_%$%hd208278208346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd208276208341%_)))
                                                          (_%$%tl208279208348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd208276208341%_))))
                                                      (let ((_%id208351%_
                                                             _%$%hd208278208346%_))
                                                        (if (pair? _%$%tl208279208348%_)
                                                            (let ((_%$%hd208280208353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl208279208348%_)))
                          (_%$%tl208281208355%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl208279208348%_))))
                      (let ((_%expr1208358%_ _%$%hd208280208353%_))
                        (if (null? _%$%tl208281208355%_)
                            (if (null? _%$%tl208277208343%_)
                                (if (pair? _%$%tl208265208338%_)
                                    (let ((_%$%hd208266208360%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl208265208338%_)))
                                          (_%$%tl208267208362%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl208265208338%_))))
                                      (if (pair? _%$%hd208266208360%_)
                                          (let ((_%$%hd208268208365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd208266208360%_)))
                                                (_%$%tl208269208367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd208266208360%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd208268208365%_
                                                         'if))
                                                (if (pair? _%$%tl208269208367%_)
                                                    (let ((_%$%hd208270208370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl208269208367%_)))
                                                          (_%$%tl208271208372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl208269208367%_))))
                                                      (if (eq? _%$%hd208270208370%_
                                                               _%id208351%_)
                                                          (if (pair? _%$%tl208271208372%_)
                                                              (let ((_%$%hd208272208379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl208271208372%_)))
                            (_%$%tl208273208381%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl208271208372%_))))
                        (if (eq? _%$%hd208272208379%_ _%id208351%_)
                            (if (pair? _%$%tl208273208381%_)
                                (let ((_%$%hd208274208388%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl208273208381%_)))
                                      (_%$%tl208275208390%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl208273208381%_))))
                                  (let ((_%expr2208393%_ _%$%hd208274208388%_))
                                    (if (null? _%$%tl208275208390%_)
                                        (if (null? _%$%tl208267208362%_)
                                            (_%$%K208261208328%_
                                             _%expr2208393%_
                                             _%expr1208358%_
                                             _%id208351%_)
                                            (_%$%else208259208291%_))
                                        (_%$%else208259208291%_))))
                                (_%$%else208259208291%_))
                            (_%$%else208259208291%_)))
                      (_%$%else208259208291%_))
                  (_%$%else208259208291%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else208259208291%_))
                                                (_%$%else208259208291%_)))
                                          (_%$%else208259208291%_)))
                                    (_%$%else208259208291%_))
                                (_%$%else208259208291%_))
                            (_%$%else208259208291%_))))
                    (_%$%else208259208291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else208259208291%_)))
                                              (_%$%else208259208291%_)))
                                        (_%$%else208259208291%_))
                                    (_%$%else208259208291%_)))
                              (_%$%else208259208291%_)))
                        _%code208256%_)))
                 (_%simplify-let207653%_
                  (lambda (_%code207955%_)
                    (let* ((_%$%code207956208028%_ _%code207955%_)
                           (_%$%else207961208036%_ (lambda () _%code207955%_)))
                      (let ((_%$%K208020208236%_
                             (lambda (_%expr208234%_) _%expr208234%_))
                            (_%$%K208003208182%_
                             (lambda (_%body208178%_
                                      _%expr208179%_
                                      _%id208180%_)
                               (cons 'let
                                     (cons (cons (cons _%id208180%_
                                                       (cons _%expr208179%_
                                                             '()))
                                                 '())
                                           _%body208178%_))))
                            (_%$%K207980208106%_
                             (lambda (_%body208100%_
                                      _%expr2208101%_
                                      _%id2208102%_
                                      _%expr1208103%_
                                      _%id1208104%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1208104%_
                                                       (cons _%expr1208103%_
                                                             '()))
                                                 (cons (cons _%id2208102%_
                                                             (cons _%expr2208101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body208100%_))))
                            (_%$%K207963208045%_
                             (lambda (_%body208040%_
                                      _%bind208041%_
                                      _%expr1208042%_
                                      _%id1208043%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1208043%_
                                                       (cons _%expr1208042%_
                                                             '()))
                                                 _%bind208041%_)
                                           _%body208040%_)))))
                        (if (pair? _%$%code207956208028%_)
                            (let ((_%$%tl208022208241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code207956208028%_)))
                                  (_%$%hd208021208239%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code207956208028%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd208021208239%_ 'let))
                                  (if (pair? _%$%tl208022208241%_)
                                      (let ((_%$%tl208024208246%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl208022208241%_)))
                                            (_%$%hd208023208244%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl208022208241%_))))
                                        (if (null? _%$%hd208023208244%_)
                                            (if (pair? _%$%tl208024208246%_)
                                                (let ((_%$%tl208026208251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl208024208246%_)))
                                                      (_%$%hd208025208249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl208024208246%_))))
                                                  (if (null? _%$%tl208026208251%_)
                                                      (let ((_%expr208254%_
                                                             _%$%hd208025208249%_))
                                                        (_%$%K208020208236%_
                                                         _%expr208254%_))
                                                      (_%$%else207961208036%_)))
                                                (_%$%else207961208036%_))
                                            (if (pair? _%$%hd208023208244%_)
                                                (let ((_%$%tl208015208197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd208023208244%_)))
                                                      (_%$%hd208014208195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd208023208244%_))))
                                                  (if (pair? _%$%hd208014208195%_)
                                                      (let ((_%$%tl208017208202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd208014208195%_)))
                    (_%$%hd208016208200%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd208014208195%_))))
                (if (pair? _%$%tl208017208202%_)
                    (let ((_%$%tl208019208209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl208017208202%_)))
                          (_%$%hd208018208207%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl208017208202%_))))
                      (if (null? _%$%tl208019208209%_)
                          (if (null? _%$%tl208015208197%_)
                              (if (pair? _%$%tl208024208246%_)
                                  (let ((_%$%tl208009208216%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl208024208246%_)))
                                        (_%$%hd208008208214%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl208024208246%_))))
                                    (if (pair? _%$%hd208008208214%_)
                                        (let ((_%$%tl208011208221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd208008208214%_)))
                                              (_%$%hd208010208219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd208008208214%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd208010208219%_
                                                       'let))
                                              (if (pair? _%$%tl208011208221%_)
                                                  (let ((_%$%tl208013208226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl208011208221%_)))
                                                        (_%$%hd208012208224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl208011208221%_))))
                                                    (if (null? _%$%hd208012208224%_)
                                                        (if (null? _%$%tl208009208216%_)
                                                            (let ((_%id208205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd208016208200%_)
                          (_%expr208212%_ _%$%hd208018208207%_)
                          (_%body208229%_ _%$%tl208013208226%_))
                      (_%$%K208003208182%_
                       _%body208229%_
                       _%expr208212%_
                       _%id208205%_))
                    (_%$%else207961208036%_))
                (if (pair? _%$%hd208012208224%_)
                    (let ((_%$%tl207992208155%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd208012208224%_)))
                          (_%$%hd207991208153%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd208012208224%_))))
                      (if (pair? _%$%hd207991208153%_)
                          (let ((_%$%tl207994208160%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd207991208153%_)))
                                (_%$%hd207993208158%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd207991208153%_))))
                            (if (pair? _%$%tl207994208160%_)
                                (let ((_%$%tl207996208167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl207994208160%_)))
                                      (_%$%hd207995208165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl207994208160%_))))
                                  (if (null? _%$%tl207996208167%_)
                                      (if (null? _%$%tl207992208155%_)
                                          (if (null? _%$%tl208009208216%_)
                                              (let ((_%id1208129%_
                                                     _%$%hd208016208200%_)
                                                    (_%expr1208136%_
                                                     _%$%hd208018208207%_)
                                                    (_%id2208163%_
                                                     _%$%hd207993208158%_)
                                                    (_%expr2208170%_
                                                     _%$%hd207995208165%_)
                                                    (_%body208172%_
                                                     _%$%tl208013208226%_))
                                                (_%$%K207980208106%_
                                                 _%body208172%_
                                                 _%expr2208170%_
                                                 _%id2208163%_
                                                 _%expr1208136%_
                                                 _%id1208129%_))
                                              (_%$%else207961208036%_))
                                          (_%$%else207961208036%_))
                                      (_%$%else207961208036%_)))
                                (_%$%else207961208036%_)))
                          (_%$%else207961208036%_)))
                    (_%$%else207961208036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else207961208036%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd208010208219%_
                                                           'let*))
                                                  (if (pair? _%$%tl208011208221%_)
                                                      (let ((_%$%tl207973208089%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl208011208221%_)))
                    (_%$%hd207972208087%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl208011208221%_))))
                (if (null? _%$%tl208009208216%_)
                    (let ((_%id1208068%_ _%$%hd208016208200%_)
                          (_%expr1208075%_ _%$%hd208018208207%_)
                          (_%bind208092%_ _%$%hd207972208087%_)
                          (_%body208094%_ _%$%tl207973208089%_))
                      (_%$%K207963208045%_
                       _%body208094%_
                       _%bind208092%_
                       _%expr1208075%_
                       _%id1208068%_))
                    (_%$%else207961208036%_)))
              (_%$%else207961208036%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else207961208036%_))))
                                        (_%$%else207961208036%_)))
                                  (_%$%else207961208036%_))
                              (_%$%else207961208036%_))
                          (_%$%else207961208036%_)))
                    (_%$%else207961208036%_)))
              (_%$%else207961208036%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else207961208036%_))))
                                      (_%$%else207961208036%_))
                                  (_%$%else207961208036%_)))
                            (_%$%else207961208036%_))))))
                 (_%generate-values207654%_
                  (lambda (_%hd207768%_ _%body207769%_)
                    (let _%lp207771%_ ((_%rest207773%_ _%hd207768%_)
                                       (_%bind207774%_ '())
                                       (_%check207775%_ '())
                                       (_%post207776%_ '()))
                      (let* ((_%__stx211821211822%_ _%rest207773%_)
                             (_%$%g207779207790%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx211821211822%_)))))
                        (let ((_%__kont211823211824%_
                               (lambda (_%$%g207781207817%_
                                        _%$%g207782207818%_)
                                 (let* ((_%__stx211777211778%_
                                         _%$%g207782207818%_)
                                        (_%$%g207833207858%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx211777211778%_)))))
                                   (let ((_%__kont211779211780%_
                                          (lambda (_%$%g207835207931%_
                                                   _%$%g207836207932%_)
                                            (let ((_%eid207946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g207836207932%_)))
                                                  (_%expr207947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self207647%_
                                                      _%$%g207835207931%_))))
                                              (_%lp207771%_
                                               _%$%g207781207817%_
                                               (cons (cons _%eid207946%_
                                                           (cons _%expr207947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind207774%_)
                                               _%check207775%_
                                               _%post207776%_))))
                                         (_%__kont211781211782%_
                                          (lambda (_%$%g207846207879%_
                                                   _%$%g207847207880%_)
                                            (let* ((_%vals207893%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values207895%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals207893%_
                                                     _%$%g207847207880%_
                                                     _%$%g207846207879%_))
                                                   (_%refs207897%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals207893%_
                                                     _%$%g207847207880%_))
                                                   (_%expr207899%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self207647%_
                                                       _%$%g207846207879%_))))
                                              (_%lp207771%_
                                               _%$%g207781207817%_
                                               (cons (cons _%vals207893%_
                                                           (cons _%expr207899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind207774%_)
                                               (cons _%check-values207895%_
                                                     _%check207775%_)
                                               (cons _%refs207897%_
                                                     _%post207776%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx211777211778%_))
                                         (let ((_%$%e207837207907%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx211777211778%_))))
                                           (let ((_%$%tl207839207912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e207837207907%_)))
                                                 (_%$%hd207838207910%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e207837207907%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd207838207910%_))
                                                 (let ((_%$%e207840207915%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd207838207910%_))))
                                                   (let ((_%$%tl207842207920%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e207840207915%_)))
                                                         (_%$%hd207841207918%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e207840207915%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl207842207920%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl207839207912%_))
                     (let ((_%$%e207843207923%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl207839207912%_))))
                       (let ((_%$%tl207845207928%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207843207923%_)))
                             (_%$%hd207844207926%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207843207923%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl207845207928%_))
                             (_%__kont211779211780%_
                              _%$%hd207844207926%_
                              _%$%hd207841207918%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g207833207858%_)))))
                     (let () (declare (not safe)) (_%$%g207833207858%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl207839207912%_))
                     (let ((_%$%e207851207871%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl207839207912%_))))
                       (let ((_%$%tl207853207876%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207851207871%_)))
                             (_%$%hd207852207874%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207851207871%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl207853207876%_))
                             (_%__kont211781211782%_
                              _%$%hd207852207874%_
                              _%$%hd207838207910%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g207833207858%_)))))
                     (let () (declare (not safe)) (_%$%g207833207858%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl207839207912%_))
                                                     (let ((_%$%e207851207871%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl207839207912%_))))
                                                       (let ((_%$%tl207853207876%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e207851207871%_)))
                     (_%$%hd207852207874%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e207851207871%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl207853207876%_))
                     (_%__kont211781211782%_
                      _%$%hd207852207874%_
                      _%$%hd207838207910%_)
                     (let () (declare (not safe)) (_%$%g207833207858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g207833207858%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g207833207858%_)))))))
                              (_%__kont211825211826%_
                               (lambda ()
                                 (let* ((_%body207797%_
                                         (if _%compiled-body?207649%_
                                             _%body207769%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self207647%_
                                                _%body207769%_))))
                                        (_%body207799%_
                                         (_%generate-values-post207655%_
                                          _%post207776%_
                                          _%body207797%_))
                                        (_%body207801%_
                                         (_%generate-values-check207656%_
                                          _%check207775%_
                                          _%body207799%_)))
                                   (cons 'let
                                         (cons (reverse _%bind207774%_)
                                               (cons _%body207801%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211821211822%_))
                              (let ((_%$%e207783207809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211821211822%_))))
                                (let ((_%$%tl207785207814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207783207809%_)))
                                      (_%$%hd207784207812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207783207809%_))))
                                  (_%__kont211823211824%_
                                   _%$%tl207785207814%_
                                   _%$%hd207784207812%_)))
                              (_%__kont211825211826%_)))))))
                 (_%generate-values-post207655%_
                  (lambda (_%post207727%_ _%body207728%_)
                    (let _%lp207730%_ ((_%rest207732%_ _%post207727%_)
                                       (_%body207733%_ _%body207728%_))
                      (let* ((_%$%rest207734207742%_ _%rest207732%_)
                             (_%$%else207736207750%_
                              (lambda () _%body207733%_))
                             (_%$%K207738207756%_
                              (lambda (_%rest207753%_ _%bind207754%_)
                                (_%lp207730%_
                                 _%rest207753%_
                                 (cons 'let
                                       (cons _%bind207754%_
                                             (cons _%body207733%_ '())))))))
                        (if (pair? _%$%rest207734207742%_)
                            (let ((_%$%hd207739207759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest207734207742%_)))
                                  (_%$%tl207740207761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest207734207742%_))))
                              (let* ((_%bind207764%_ _%$%hd207739207759%_)
                                     (_%rest207766%_ _%$%tl207740207761%_))
                                (_%$%K207738207756%_
                                 _%rest207766%_
                                 _%bind207764%_)))
                            (_%$%else207736207750%_))))))
                 (_%generate-values-check207656%_
                  (lambda (_%check207724%_ _%body207725%_)
                    (cons 'begin
                          (let ((__tmp212669 (cons _%body207725%_ '()))
                                (__tmp212668 (reverse _%check207724%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp212669 __tmp212668))))))
          (let* ((_%$%g207658207675%_
                  (lambda (_%$%g207659207672%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207659207672%_))))
                 (_%$%g207657207721%_
                  (lambda (_%$%g207659207678%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207659207678%_))
                        (let ((_%$%e207662207680%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207659207678%_))))
                          (let ((_%$%hd207663207683%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207662207680%_)))
                                (_%$%tl207664207685%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207662207680%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl207664207685%_))
                                (let ((_%$%e207665207688%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl207664207685%_))))
                                  (let ((_%$%hd207666207691%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e207665207688%_)))
                                        (_%$%tl207667207693%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e207665207688%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl207667207693%_))
                                        (let ((_%$%e207668207696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl207667207693%_))))
                                          (let ((_%$%hd207669207699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207668207696%_)))
                                                (_%$%tl207670207701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207668207696%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl207670207701%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd207666207691%_)
                                                    (_%generate-simple207651%_
                                                     _%$%hd207666207691%_
                                                     _%$%hd207669207699%_)
                                                    (_%generate-values207654%_
                                                     _%$%hd207666207691%_
                                                     _%$%hd207669207699%_))
                                                (_%$%g207658207675%_
                                                 _%$%g207659207678%_))))
                                        (_%$%g207658207675%_
                                         _%$%g207659207678%_))))
                                (_%$%g207658207675%_ _%$%g207659207678%_))))
                        (_%$%g207658207675%_ _%$%g207659207678%_)))))
            (_%$%g207657207721%_ _%stx207648%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self208401%_ _%stx208402%_)
        (let ((_%compiled-body?208404%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self208401%_
           _%stx208402%_
           _%compiled-body?208404%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g212670_
        (let ((_g212671_ (let () (declare (not safe)) (##length _g212670_))))
          (cond ((let () (declare (not safe)) (##fx= _g212671_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g212670_))
                ((let () (declare (not safe)) (##fx= _g212671_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g212670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g212670_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals207541%_ _%hd207542%_)
        (let _%lp207544%_ ((_%rest207546%_ _%hd207542%_)
                           (_%k207547%_ '0)
                           (_%r207548%_ '()))
          (let* ((_%__stx211835211836%_ _%rest207546%_)
                 (_%$%g207553207570%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx211835211836%_)))))
            (let ((_%__kont211837211838%_
                   (lambda (_%$%g207555207633%_)
                     (_%lp207544%_
                      _%$%g207555207633%_
                      (let () (declare (not safe)) (##fx+ _%k207547%_ '1))
                      _%r207548%_)))
                  (_%__kont211839211840%_
                   (lambda (_%$%g207560207606%_ _%$%g207561207607%_)
                     (_%lp207544%_
                      _%$%g207560207606%_
                      (let () (declare (not safe)) (##fx+ _%k207547%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g207561207607%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals207541%_
                                         _%k207547%_
                                         _%$%g207560207606%_)
                                        '()))
                            _%r207548%_))))
                  (_%__kont211841211842%_
                   (lambda (_%$%g207565207582%_)
                     (let ((__tmp212672
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g207565207582%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals207541%_
                                               _%k207547%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp212672 _%r207548%_))))
                  (_%__kont211843211844%_ (lambda () (reverse _%r207548%_))))
              (let ((_%$%g207551207593%_
                     (lambda ()
                       (let ((_%$%g207565207582%_ _%__stx211835211836%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g207565207582%_))
                             (_%__kont211841211842%_ _%$%g207565207582%_)
                             (_%__kont211843211844%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx211835211836%_))
                    (let ((_%$%e207556207622%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx211835211836%_))))
                      (let ((_%$%tl207558207627%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e207556207622%_)))
                            (_%$%hd207557207625%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e207556207622%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd207557207625%_))
                            (let ((_%$%e207559207630%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd207557207625%_))))
                              (if (equal? _%$%e207559207630%_ '#f)
                                  (_%__kont211837211838%_ _%$%tl207558207627%_)
                                  (_%__kont211839211840%_
                                   _%$%tl207558207627%_
                                   _%$%hd207557207625%_)))
                            (_%__kont211839211840%_
                             _%$%tl207558207627%_
                             _%$%hd207557207625%_))))
                    (let () (declare (not safe)) (_%$%g207551207593%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self207220%_ _%stx207221%_ _%compiled-body?207222%_)
        (letrec ((_%generate-simple207224%_
                  (lambda (_%hd207526%_ _%body207527%_)
                    (gxc#generate-runtime-simple-let
                     _%self207220%_
                     'letrec
                     _%hd207526%_
                     _%body207527%_
                     _%compiled-body?207222%_)))
                 (_%generate-values207225%_
                  (lambda (_%hd207305%_ _%body207306%_)
                    (let _%lp207308%_ ((_%rest207310%_ _%hd207305%_)
                                       (_%bind207311%_ '())
                                       (_%check207312%_ '())
                                       (_%post207313%_ '()))
                      (let* ((_%__stx211909211910%_ _%rest207310%_)
                             (_%$%g207316207327%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx211909211910%_)))))
                        (let ((_%__kont211911211912%_
                               (lambda (_%$%g207318207354%_
                                        _%$%g207319207355%_)
                                 (let* ((_%__stx211865211866%_
                                         _%$%g207319207355%_)
                                        (_%$%g207370207395%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx211865211866%_)))))
                                   (let ((_%__kont211867211868%_
                                          (lambda (_%$%g207372207502%_
                                                   _%$%g207373207503%_)
                                            (let ((_%eid207517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g207373207503%_)))
                                                  (_%expr207518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self207220%_
                                                      _%$%g207372207502%_))))
                                              (_%lp207308%_
                                               _%$%g207318207354%_
                                               (cons (cons _%eid207517%_
                                                           (cons _%expr207518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind207311%_)
                                               _%check207312%_
                                               _%post207313%_))))
                                         (_%__kont211869211870%_
                                          (lambda (_%$%g207383207416%_
                                                   _%$%g207384207417%_)
                                            (let* ((_%vals207430%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values207432%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals207430%_
                                                     _%$%g207384207417%_
                                                     _%$%g207383207416%_))
                                                   (_%refs207434%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals207430%_
                                                     _%$%g207384207417%_))
                                                   (_%expr207436%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self207220%_
                                                       _%$%g207383207416%_))))
                                              (_%lp207308%_
                                               _%$%g207318207354%_
                                               (let ((__tmp212674
                                                      (cons (cons _%vals207430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr207436%_ '()))
                    _%bind207311%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp212673
                                                      (map (lambda (_%$%e207438207440%_)
                                                             (let* ((_%$%$%e207438207442207451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e207438207440%_)
                            (_%$%E207444207455%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e207438207442207451%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K207445207460%_
                             (lambda (_%eid207458%_)
                               (cons _%eid207458%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e207438207442207451%_)
                           (let ((_%$%hd207446207463%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e207438207442207451%_)))
                                 (_%$%tl207447207465%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e207438207442207451%_))))
                             (let ((_%eid207468%_ _%$%hd207446207463%_))
                               (if (pair? _%$%tl207447207465%_)
                                   (let ((_%$%tl207449207470%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl207447207465%_))))
                                     (if (null? _%$%tl207449207470%_)
                                         (_%$%K207445207460%_ _%eid207468%_)
                                         (_%$%E207444207455%_)))
                                   (_%$%E207444207455%_))))
                           (_%$%E207444207455%_))))
                   _%refs207434%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp212674
                                                  __tmp212673))
                                               (cons _%check-values207432%_
                                                     _%check207312%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs207434%_
                                                  _%post207313%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx211865211866%_))
                                         (let ((_%$%e207374207478%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx211865211866%_))))
                                           (let ((_%$%tl207376207483%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e207374207478%_)))
                                                 (_%$%hd207375207481%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e207374207478%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd207375207481%_))
                                                 (let ((_%$%e207377207486%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd207375207481%_))))
                                                   (let ((_%$%tl207379207491%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e207377207486%_)))
                                                         (_%$%hd207378207489%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e207377207486%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl207379207491%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl207376207483%_))
                     (let ((_%$%e207380207494%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl207376207483%_))))
                       (let ((_%$%tl207382207499%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207380207494%_)))
                             (_%$%hd207381207497%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207380207494%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl207382207499%_))
                             (_%__kont211867211868%_
                              _%$%hd207381207497%_
                              _%$%hd207378207489%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g207370207395%_)))))
                     (let () (declare (not safe)) (_%$%g207370207395%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl207376207483%_))
                     (let ((_%$%e207388207408%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl207376207483%_))))
                       (let ((_%$%tl207390207413%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e207388207408%_)))
                             (_%$%hd207389207411%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e207388207408%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl207390207413%_))
                             (_%__kont211869211870%_
                              _%$%hd207389207411%_
                              _%$%hd207375207481%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g207370207395%_)))))
                     (let () (declare (not safe)) (_%$%g207370207395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl207376207483%_))
                                                     (let ((_%$%e207388207408%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl207376207483%_))))
                                                       (let ((_%$%tl207390207413%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e207388207408%_)))
                     (_%$%hd207389207411%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e207388207408%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl207390207413%_))
                     (_%__kont211869211870%_
                      _%$%hd207389207411%_
                      _%$%hd207375207481%_)
                     (let () (declare (not safe)) (_%$%g207370207395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g207370207395%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g207370207395%_)))))))
                              (_%__kont211913211914%_
                               (lambda ()
                                 (let* ((_%body207334%_
                                         (if _%compiled-body?207222%_
                                             _%body207306%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self207220%_
                                                _%body207306%_))))
                                        (_%body207336%_
                                         (_%generate-values-post207227%_
                                          _%post207313%_
                                          _%body207334%_))
                                        (_%body207338%_
                                         (_%generate-values-check207226%_
                                          _%check207312%_
                                          _%body207336%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind207311%_)
                                               (cons _%body207338%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx211909211910%_))
                              (let ((_%$%e207320207346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx211909211910%_))))
                                (let ((_%$%tl207322207351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207320207346%_)))
                                      (_%$%hd207321207349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207320207346%_))))
                                  (_%__kont211911211912%_
                                   _%$%tl207322207351%_
                                   _%$%hd207321207349%_)))
                              (_%__kont211913211914%_)))))))
                 (_%generate-values-check207226%_
                  (lambda (_%check207302%_ _%body207303%_)
                    (cons 'begin
                          (let ((__tmp212676 (cons _%body207303%_ '()))
                                (__tmp212675 (reverse _%check207302%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp212676 __tmp212675)))))
                 (_%generate-values-post207227%_
                  (lambda (_%post207295%_ _%body207296%_)
                    (cons 'begin
                          (let ((__tmp212680 (cons _%body207296%_ '()))
                                (__tmp212677
                                 (let ((__tmp212679
                                        (lambda (_%$%g207297207299%_)
                                          (cons 'set! _%$%g207297207299%_)))
                                       (__tmp212678 (reverse _%post207295%_)))
                                   (declare (not safe))
                                   (##map __tmp212679 __tmp212678))))
                            (declare (not safe))
                            (foldr__0 cons __tmp212680 __tmp212677))))))
          (let* ((_%$%g207229207246%_
                  (lambda (_%$%g207230207243%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207230207243%_))))
                 (_%$%g207228207292%_
                  (lambda (_%$%g207230207249%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207230207249%_))
                        (let ((_%$%e207233207251%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207230207249%_))))
                          (let ((_%$%hd207234207254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207233207251%_)))
                                (_%$%tl207235207256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207233207251%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl207235207256%_))
                                (let ((_%$%e207236207259%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl207235207256%_))))
                                  (let ((_%$%hd207237207262%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e207236207259%_)))
                                        (_%$%tl207238207264%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e207236207259%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl207238207264%_))
                                        (let ((_%$%e207239207267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl207238207264%_))))
                                          (let ((_%$%hd207240207270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207239207267%_)))
                                                (_%$%tl207241207272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207239207267%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl207241207272%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd207237207262%_)
                                                    (_%generate-simple207224%_
                                                     _%$%hd207237207262%_
                                                     _%$%hd207240207270%_)
                                                    (_%generate-values207225%_
                                                     _%$%hd207237207262%_
                                                     _%$%hd207240207270%_))
                                                (_%$%g207229207246%_
                                                 _%$%g207230207249%_))))
                                        (_%$%g207229207246%_
                                         _%$%g207230207249%_))))
                                (_%$%g207229207246%_ _%$%g207230207249%_))))
                        (_%$%g207229207246%_ _%$%g207230207249%_)))))
            (_%$%g207228207292%_ _%stx207221%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self207532%_ _%stx207533%_)
        (let ((_%compiled-body?207535%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self207532%_
           _%stx207533%_
           _%compiled-body?207535%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g212681_
        (let ((_g212682_ (let () (declare (not safe)) (##length _g212681_))))
          (cond ((let () (declare (not safe)) (##fx= _g212682_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g212681_))
                ((let () (declare (not safe)) (##fx= _g212682_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g212681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g212681_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self206801%_ _%stx206802%_)
        (letrec ((_%generate-values206804%_
                  (lambda (_%hd207047%_ _%body207048%_)
                    (let _%lp207050%_ ((_%rest207052%_ _%hd207047%_)
                                       (_%bind207053%_ '()))
                      (let* ((_%$%rest207054207062%_ _%rest207052%_)
                             (_%$%else207056207073%_
                              (lambda ()
                                (let ((_%bind207070%_ (reverse _%bind207053%_))
                                      (_%body207071%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self206801%_
                                          _%body207048%_))))
                                  (cons 'letrec*
                                        (cons _%bind207070%_
                                              (cons _%body207071%_ '()))))))
                             (_%$%K207058207207%_
                              (lambda (_%rest207076%_ _%hd-bind207077%_)
                                (let* ((_%__stx211923211924%_
                                        _%hd-bind207077%_)
                                       (_%$%g207080207105%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx211923211924%_)))))
                                  (let ((_%__kont211925211926%_
                                         (lambda (_%$%g207082207186%_
                                                  _%$%g207083207187%_)
                                           (let ((_%eid207201%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g207083207187%_)))
                                                 (_%expr207202%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self206801%_
                                                     _%$%g207082207186%_))))
                                             (_%lp207050%_
                                              _%rest207076%_
                                              (cons (cons _%eid207201%_
                                                          (cons _%expr207202%_
                                                                '()))
                                                    _%bind207053%_)))))
                                        (_%__kont211927211928%_
                                         (lambda (_%$%g207093207126%_
                                                  _%$%g207094207127%_)
                                           (let* ((_%vals207146%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp207148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values207150%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp207148%_
                                                    _%$%g207094207127%_
                                                    _%$%g207093207126%_))
                                                  (_%refs207152%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals207146%_
                                                    _%$%g207094207127%_))
                                                  (_%expr207154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self206801%_
                                                      _%$%g207093207126%_))))
                                             (_%lp207050%_
                                              _%rest207076%_
                                              (let ((__tmp212683
                                                     (cons (cons _%vals207146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp207148%_
                                                       (cons _%expr207154%_
                                                             '()))
                                                 '())
                                           (cons _%check-values207150%_
                                                 (cons _%tmp207148%_ '()))))
                               '()))
                   _%bind207053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp212683
                                                 _%refs207152%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx211923211924%_))
                                        (let ((_%$%e207084207162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx211923211924%_))))
                                          (let ((_%$%tl207086207167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207084207162%_)))
                                                (_%$%hd207085207165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207084207162%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd207085207165%_))
                                                (let ((_%$%e207087207170%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd207085207165%_))))
                                                  (let ((_%$%tl207089207175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e207087207170%_)))
                                                        (_%$%hd207088207173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e207087207170%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl207089207175%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl207086207167%_))
                                                            (let ((_%$%e207090207178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl207086207167%_))))
                      (let ((_%$%tl207092207183%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e207090207178%_)))
                            (_%$%hd207091207181%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e207090207178%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl207092207183%_))
                            (_%__kont211925211926%_
                             _%$%hd207091207181%_
                             _%$%hd207088207173%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g207080207105%_)))))
                    (let () (declare (not safe)) (_%$%g207080207105%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl207086207167%_))
                    (let ((_%$%e207098207118%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl207086207167%_))))
                      (let ((_%$%tl207100207123%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e207098207118%_)))
                            (_%$%hd207099207121%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e207098207118%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl207100207123%_))
                            (_%__kont211927211928%_
                             _%$%hd207099207121%_
                             _%$%hd207085207165%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g207080207105%_)))))
                    (let () (declare (not safe)) (_%$%g207080207105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl207086207167%_))
                                                    (let ((_%$%e207098207118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl207086207167%_))))
                                                      (let ((_%$%tl207100207123%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e207098207118%_)))
                    (_%$%hd207099207121%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e207098207118%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl207100207123%_))
                    (_%__kont211927211928%_
                     _%$%hd207099207121%_
                     _%$%hd207085207165%_)
                    (let () (declare (not safe)) (_%$%g207080207105%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g207080207105%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g207080207105%_))))))))
                        (if (pair? _%$%rest207054207062%_)
                            (let ((_%$%hd207059207210%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest207054207062%_)))
                                  (_%$%tl207060207212%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest207054207062%_))))
                              (let* ((_%hd-bind207215%_ _%$%hd207059207210%_)
                                     (_%rest207217%_ _%$%tl207060207212%_))
                                (_%$%K207058207207%_
                                 _%rest207217%_
                                 _%hd-bind207215%_)))
                            (_%$%else207056207073%_))))))
                 (_%generate-letrec?206805%_
                  (lambda (_%hd206937%_)
                    (let _%lp206939%_ ((_%rest206941%_ _%hd206937%_))
                      (let* ((_%$%rest206942206950%_ _%rest206941%_)
                             (_%$%else206944206958%_ (lambda () '#t))
                             (_%$%K206946207035%_
                              (lambda (_%rest206961%_ _%hd-bind206962%_)
                                (let* ((_%$%g206964206981%_
                                        (lambda (_%$%g206965206978%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g206965206978%_))))
                                       (_%$%g206963207032%_
                                        (lambda (_%$%g206965206984%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g206965206984%_))
                                              (let ((_%$%e206968206986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g206965206984%_))))
                                                (let ((_%$%hd206969206989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e206968206986%_)))
                                                      (_%$%tl206970206991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e206968206986%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd206969206989%_))
                                                      (let ((_%$%e206971206994%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd206969206989%_))))
                (let ((_%$%hd206972206997%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e206971206994%_)))
                      (_%$%tl206973206999%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e206971206994%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl206973206999%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl206970206991%_))
                          (let ((_%$%e206974207002%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl206970206991%_))))
                            (let ((_%$%hd206975207005%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206974207002%_)))
                                  (_%$%tl206976207007%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206974207002%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl206976207007%_))
                                  (if (_%is-lambda-expr?206806%_
                                       _%$%hd206975207005%_)
                                      (_%lp206939%_ _%rest206961%_)
                                      '#f)
                                  (_%$%g206964206981%_ _%$%g206965206984%_))))
                          (_%$%g206964206981%_ _%$%g206965206984%_))
                      (_%$%g206964206981%_ _%$%g206965206984%_))))
              (_%$%g206964206981%_ _%$%g206965206984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206964206981%_
                                               _%$%g206965206984%_)))))
                                  (_%$%g206963207032%_ _%hd-bind206962%_)))))
                        (if (pair? _%$%rest206942206950%_)
                            (let ((_%$%hd206947207038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest206942206950%_)))
                                  (_%$%tl206948207040%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest206942206950%_))))
                              (let* ((_%hd-bind207043%_ _%$%hd206947207038%_)
                                     (_%rest207045%_ _%$%tl206948207040%_))
                                (_%$%K206946207035%_
                                 _%rest207045%_
                                 _%hd-bind207043%_)))
                            (_%$%else206944206958%_))))))
                 (_%is-lambda-expr?206806%_
                  (lambda (_%expr206874%_)
                    (let* ((_%__stx211967211968%_ _%expr206874%_)
                           (_%$%g206877206891%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx211967211968%_)))))
                      (let ((_%__kont211969211970%_
                             (lambda (_%$%g206879206919%_ _%$%g206880206920%_)
                               '#t))
                            (_%__kont211971211972%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx211967211968%_))
                            (let ((_%$%e206881206903%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx211967211968%_))))
                              (let ((_%$%tl206883206908%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e206881206903%_)))
                                    (_%$%hd206882206906%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e206881206903%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd206882206906%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd206882206906%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl206883206908%_))
                                            (let ((_%$%e206884206911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl206883206908%_))))
                                              (let ((_%$%tl206886206916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e206884206911%_)))
                                                    (_%$%hd206885206914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e206884206911%_))))
                                                (_%__kont211969211970%_
                                                 _%$%tl206886206916%_
                                                 _%$%hd206885206914%_)))
                                            (_%__kont211971211972%_))
                                        (_%__kont211971211972%_))
                                    (_%__kont211971211972%_))))
                            (_%__kont211971211972%_)))))))
          (let* ((_%$%g206808206825%_
                  (lambda (_%$%g206809206822%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206809206822%_))))
                 (_%$%g206807206871%_
                  (lambda (_%$%g206809206828%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206809206828%_))
                        (let ((_%$%e206812206830%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206809206828%_))))
                          (let ((_%$%hd206813206833%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206812206830%_)))
                                (_%$%tl206814206835%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206812206830%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206814206835%_))
                                (let ((_%$%e206815206838%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206814206835%_))))
                                  (let ((_%$%hd206816206841%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206815206838%_)))
                                        (_%$%tl206817206843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206815206838%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl206817206843%_))
                                        (let ((_%$%e206818206846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl206817206843%_))))
                                          (let ((_%$%hd206819206849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206818206846%_)))
                                                (_%$%tl206820206851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206818206846%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206820206851%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd206816206841%_)
                                                    (if (_%generate-letrec?206805%_
                                                         _%$%hd206816206841%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self206801%_
                                                         'letrec
                                                         _%$%hd206816206841%_
                                                         _%$%hd206819206849%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self206801%_
                                                         'letrec*
                                                         _%$%hd206816206841%_
                                                         _%$%hd206819206849%_
                                                         '#f))
                                                    (_%generate-values206804%_
                                                     _%$%hd206816206841%_
                                                     _%$%hd206819206849%_))
                                                (_%$%g206808206825%_
                                                 _%$%g206809206828%_))))
                                        (_%$%g206808206825%_
                                         _%$%g206809206828%_))))
                                (_%$%g206808206825%_ _%$%g206809206828%_))))
                        (_%$%g206808206825%_ _%$%g206809206828%_)))))
            (_%$%g206807206871%_ _%stx206802%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd206738%_)
        (let _%lp206740%_ ((_%rest206742%_ _%hd206738%_))
          (let* ((_%$%rest206743206759%_ _%rest206742%_)
                 (_%$%else206746206767%_ (lambda () '#f)))
            (let ((_%$%K206749206780%_
                   (lambda (_%rest206778%_) (_%lp206740%_ _%rest206778%_)))
                  (_%$%K206748206772%_ (lambda () '#t)))
              (let ((_%$%try-match206745206775%_
                     (lambda ()
                       (if (null? _%$%rest206743206759%_)
                           (_%$%K206748206772%_)
                           (_%$%else206746206767%_)))))
                (if (pair? _%$%rest206743206759%_)
                    (let ((_%$%tl206751206785%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest206743206759%_)))
                          (_%$%hd206750206783%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest206743206759%_))))
                      (if (pair? _%$%hd206750206783%_)
                          (let ((_%$%tl206753206790%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd206750206783%_)))
                                (_%$%hd206752206788%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd206750206783%_))))
                            (if (pair? _%$%hd206752206788%_)
                                (let ((_%$%tl206757206793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd206752206788%_))))
                                  (if (null? _%$%tl206757206793%_)
                                      (if (pair? _%$%tl206753206790%_)
                                          (let ((_%$%tl206755206796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl206753206790%_))))
                                            (if (null? _%$%tl206755206796%_)
                                                (let ((_%rest206799%_
                                                       _%$%tl206751206785%_))
                                                  (_%lp206740%_
                                                   _%rest206799%_))
                                                (_%$%else206746206767%_)))
                                          (_%$%else206746206767%_))
                                      (_%$%else206746206767%_)))
                                (_%$%else206746206767%_)))
                          (_%$%else206746206767%_)))
                    (_%$%try-match206745206775%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self206650%_
               _%form206651%_
               _%hd206652%_
               _%body206653%_
               _%compiled-body?206654%_)
        (letrec ((_%generate1206656%_
                  (lambda (_%bind206695%_)
                    (let* ((_%$%bind206696206707%_ _%bind206695%_)
                           (_%$%E206698206710%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind206696206707%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K206699206716%_
                            (lambda (_%expr206713%_ _%id206714%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id206714%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self206650%_
                                             _%expr206713%_))
                                          '())))))
                      (if (pair? _%$%bind206696206707%_)
                          (let ((_%$%hd206700206719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind206696206707%_)))
                                (_%$%tl206701206721%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind206696206707%_))))
                            (if (pair? _%$%hd206700206719%_)
                                (let ((_%$%hd206704206724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd206700206719%_)))
                                      (_%$%tl206705206726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd206700206719%_))))
                                  (let ((_%id206729%_ _%$%hd206704206724%_))
                                    (if (null? _%$%tl206705206726%_)
                                        (if (pair? _%$%tl206701206721%_)
                                            (let ((_%$%hd206702206731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl206701206721%_)))
                                                  (_%$%tl206703206733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl206701206721%_))))
                                              (let ((_%expr206736%_
                                                     _%$%hd206702206731%_))
                                                (if (null? _%$%tl206703206733%_)
                                                    (_%$%K206699206716%_
                                                     _%expr206736%_
                                                     _%id206729%_)
                                                    (_%$%E206698206710%_))))
                                            (_%$%E206698206710%_))
                                        (_%$%E206698206710%_))))
                                (_%$%E206698206710%_)))
                          (_%$%E206698206710%_))))))
          (let* ((_%bind206658%_ (map _%generate1206656%_ _%hd206652%_))
                 (_%body206660%_
                  (if _%compiled-body?206654%_
                      _%body206653%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self206650%_ _%body206653%_))))
                 (_%body206692%_
                  (let* ((_%$%body206661206669%_ _%body206660%_)
                         (_%$%else206663206677%_
                          (lambda () (cons _%body206660%_ '())))
                         (_%$%K206665206682%_
                          (lambda (_%exprs206680%_) _%exprs206680%_)))
                    (if (pair? _%$%body206661206669%_)
                        (let ((_%$%hd206666206685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body206661206669%_)))
                              (_%$%tl206667206687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body206661206669%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd206666206685%_ 'begin))
                              (let ((_%exprs206690%_ _%$%tl206667206687%_))
                                (_%$%K206665206682%_ _%exprs206690%_))
                              (_%$%else206663206677%_)))
                        (_%$%else206663206677%_)))))
            (cons _%form206651%_ (cons _%bind206658%_ _%body206692%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self206550%_ _%stx206551%_)
        (letrec ((_%generate1206553%_
                  (lambda (_%datum206605%_)
                    (if (or (null? _%datum206605%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum206605%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum206605%_))
                            (eof-object? _%datum206605%_))
                        _%datum206605%_
                        (if (uninterned-symbol? _%datum206605%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum206605%_
                               '#t))
                            (if (pair? _%datum206605%_)
                                (cons (_%generate1206553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum206605%_)))
                                      (_%generate1206553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum206605%_))))
                                (if (box? _%datum206605%_)
                                    (box (_%generate1206553%_
                                          (unbox _%datum206605%_)))
                                    (if (vector? _%datum206605%_)
                                        (vector-map
                                         _%generate1206553%_
                                         _%datum206605%_)
                                        (if (or (s8vector? _%datum206605%_)
                                                (u8vector? _%datum206605%_)
                                                (s16vector? _%datum206605%_)
                                                (u16vector? _%datum206605%_)
                                                (s32vector? _%datum206605%_)
                                                (u32vector? _%datum206605%_)
                                                (s64vector? _%datum206605%_)
                                                (u64vector? _%datum206605%_)
                                                (f32vector? _%datum206605%_)
                                                (f64vector? _%datum206605%_))
                                            _%datum206605%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx206551%_)))))))))))
          (let* ((_%$%g206555206568%_
                  (lambda (_%$%g206556206565%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206556206565%_))))
                 (_%$%g206554206602%_
                  (lambda (_%$%g206556206571%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206556206571%_))
                        (let ((_%$%e206558206573%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206556206571%_))))
                          (let ((_%$%hd206559206576%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206558206573%_)))
                                (_%$%tl206560206578%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206558206573%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206560206578%_))
                                (let ((_%$%e206561206581%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206560206578%_))))
                                  (let ((_%$%hd206562206584%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206561206581%_)))
                                        (_%$%tl206563206586%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206561206581%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl206563206586%_))
                                        (cons 'quote
                                              (cons (_%generate1206553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd206562206584%_)))
                                                    '()))
                                        (_%$%g206555206568%_
                                         _%$%g206556206571%_))))
                                (_%$%g206555206568%_ _%$%g206556206571%_))))
                        (_%$%g206555206568%_ _%$%g206556206571%_)))))
            (_%$%g206554206602%_ _%stx206551%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self205997%_ _%stx205998%_)
        (letrec ((_%compile-call206000%_
                  (lambda (_%rator206287%_ _%rands206288%_)
                    (let ((_%rator206294%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self205997%_
                              _%rator206287%_)))
                          (_%rands206295%_
                           (map (lambda (_%$%g206289206291%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self205997%_
                                     _%$%g206289206291%_)))
                                _%rands206288%_)))
                      (let* ((_%__stx212014212015%_ _%rator206294%_)
                             (_%$%g206298206350%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx212014212015%_)))))
                        (let ((_%__kont212016212017%_
                               (lambda (_%$%g206300206470%_
                                        _%$%g206301206471%_
                                        _%$%g206302206472%_
                                        _%$%g206303206473%_)
                                 (if (let ((__tmp212686
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands206295%_)))
                                           (__tmp212684
                                            (length (let ((__tmp212685
                                                           (lambda (_%$%g206509206512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g206510206514%_)
                     (cons _%$%g206509206512%_ _%$%g206510206514%_))))
              (declare (not safe))
              (foldr__0 __tmp212685 '() _%$%g206302206472%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp212686 __tmp212684))
                                     (let* ((_%id206517%_ _%$%g206303206473%_)
                                            (_%args206526%_
                                             (let ((__tmp212687
                                                    (lambda (_%$%g206518206521%_
                                                             _%$%g206519206523%_)
                                                      (cons _%$%g206518206521%_
                                                            _%$%g206519206523%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp212687
                                                '()
                                                _%$%g206302206472%_)))
                                            (_%body206535%_
                                             (let ((__tmp212688
                                                    (lambda (_%$%g206527206530%_
                                                             _%$%g206528206532%_)
                                                      (cons _%$%g206527206530%_
                                                            _%$%g206528206532%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp212688
                                                '()
                                                _%$%g206301206471%_)))
                                            (_%init206537%_
                                             (map list
                                                  _%args206526%_
                                                  _%rands206295%_)))
                                       (cons 'let
                                             (cons _%id206517%_
                                                   (cons _%init206537%_
                                                         _%body206535%_))))
                                     (let ((__tmp212689
                                            (let ((__tmp212690
                                                   (lambda (_%$%g206539206542%_
                                                            _%$%g206540206544%_)
                                                     (cons _%$%g206539206542%_
                                                           _%$%g206540206544%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212690
                                               '()
                                               _%$%g206302206472%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx205998%_
                                        __tmp212689
                                        _%rands206295%_)))))
                              (_%__kont212022212023%_
                               (lambda ()
                                 (cons _%rator206294%_ _%rands206295%_))))
                          (let ((_%__match212081212082%_
                                 (lambda (_%$%e206304206362%_
                                          _%$%hd206305206365%_
                                          _%$%tl206306206367%_
                                          _%$%e206307206370%_
                                          _%$%hd206308206373%_
                                          _%$%tl206309206375%_
                                          _%$%e206310206378%_
                                          _%$%hd206311206381%_
                                          _%$%tl206312206383%_
                                          _%$%e206313206386%_
                                          _%$%hd206314206389%_
                                          _%$%tl206315206391%_
                                          _%$%e206316206394%_
                                          _%$%hd206317206397%_
                                          _%$%tl206318206399%_
                                          _%$%e206319206402%_
                                          _%$%hd206320206405%_
                                          _%$%tl206321206407%_
                                          _%$%e206322206410%_
                                          _%$%hd206323206413%_
                                          _%$%tl206324206415%_
                                          _%__splice212018212019%_
                                          _%$%target206325206418%_
                                          _%$%tl206327206420%_)
                                   (letrec ((_%$%loop206328206423%_
                                             (lambda (_%$%hd206326206426%_
                                                      _%$%arg206332206428%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd206326206426%_))
                                                   (let ((_%$%e206329206430%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd206326206426%_))))
                                                     (let ((_%$%lp-tl206331206435%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e206329206430%_)))
                                                           (_%$%lp-hd206330206433%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e206329206430%_))))
                                                       (_%$%loop206328206423%_
                                                        _%$%lp-tl206331206435%_
                                                        (cons _%$%lp-hd206330206433%_
                                                              _%$%arg206332206428%_))))
                                                   (let ((_%$%arg206333206438%_
                                                          (reverse _%$%arg206332206428%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl206324206415%_))
                                                         (let ((_%__splice212020212021%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl206324206415%_
                           '0))))
                   (let ((_%$%tl206336206442%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice212020212021%_ '1)))
                         (_%$%target206334206440%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice212020212021%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl206336206442%_))
                         (letrec ((_%$%loop206337206445%_
                                   (lambda (_%$%hd206335206448%_
                                            _%$%body206341206450%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd206335206448%_))
                                         (let ((_%$%e206338206452%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd206335206448%_))))
                                           (let ((_%$%lp-tl206340206457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e206338206452%_)))
                                                 (_%$%lp-hd206339206455%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e206338206452%_))))
                                             (_%$%loop206337206445%_
                                              _%$%lp-tl206340206457%_
                                              (cons _%$%lp-hd206339206455%_
                                                    _%$%body206341206450%_))))
                                         (let ((_%$%body206342206460%_
                                                (reverse _%$%body206341206450%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl206318206399%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl206312206383%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl206309206375%_))
                                                       (let ((_%$%e206343206462%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl206309206375%_))))
                 (let ((_%$%tl206345206467%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e206343206462%_)))
                       (_%$%hd206344206465%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e206343206462%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl206345206467%_))
                       (let ((_%$%g206300206470%_ _%$%hd206344206465%_)
                             (_%$%g206301206471%_ _%$%body206342206460%_)
                             (_%$%g206302206472%_ _%$%arg206333206438%_)
                             (_%$%g206303206473%_ _%$%hd206314206389%_))
                         (if (eq? _%$%g206303206473%_ _%$%g206300206470%_)
                             (_%__kont212016212017%_
                              _%$%g206300206470%_
                              _%$%g206301206471%_
                              _%$%g206302206472%_
                              _%$%g206303206473%_)
                             (_%__kont212022212023%_)))
                       (_%__kont212022212023%_))))
               (_%__kont212022212023%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont212022212023%_))
                                               (_%__kont212022212023%_)))))))
                           (_%$%loop206337206445%_
                            _%$%target206334206440%_
                            '()))
                         (_%__kont212022212023%_))))
                 (_%__kont212022212023%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop206328206423%_
                                      _%$%target206325206418%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx212014212015%_))
                                (let ((_%$%e206304206362%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx212014212015%_))))
                                  (let ((_%$%tl206306206367%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206304206362%_)))
                                        (_%$%hd206305206365%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206304206362%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd206305206365%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd206305206365%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl206306206367%_))
                                                (let ((_%$%e206307206370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl206306206367%_))))
                                                  (let ((_%$%tl206309206375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e206307206370%_)))
                                                        (_%$%hd206308206373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e206307206370%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd206308206373%_))
                                                        (let ((_%$%e206310206378%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd206308206373%_))))
                  (let ((_%$%tl206312206383%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206310206378%_)))
                        (_%$%hd206311206381%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206310206378%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd206311206381%_))
                        (let ((_%$%e206313206386%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd206311206381%_))))
                          (let ((_%$%tl206315206391%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206313206386%_)))
                                (_%$%hd206314206389%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206313206386%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206315206391%_))
                                (let ((_%$%e206316206394%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206315206391%_))))
                                  (let ((_%$%tl206318206399%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206316206394%_)))
                                        (_%$%hd206317206397%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206316206394%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd206317206397%_))
                                        (let ((_%$%e206319206402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd206317206397%_))))
                                          (let ((_%$%tl206321206407%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206319206402%_)))
                                                (_%$%hd206320206405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206319206402%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd206320206405%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd206320206405%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl206321206407%_))
                                                        (let ((_%$%e206322206410%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl206321206407%_))))
                  (let ((_%$%tl206324206415%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206322206410%_)))
                        (_%$%hd206323206413%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206322206410%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd206323206413%_))
                        (let ((_%__splice212018212019%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd206323206413%_
                                  '0))))
                          (let ((_%$%tl206327206420%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice212018212019%_ '1)))
                                (_%$%target206325206418%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice212018212019%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl206327206420%_))
                                (_%__match212081212082%_
                                 _%$%e206304206362%_
                                 _%$%hd206305206365%_
                                 _%$%tl206306206367%_
                                 _%$%e206307206370%_
                                 _%$%hd206308206373%_
                                 _%$%tl206309206375%_
                                 _%$%e206310206378%_
                                 _%$%hd206311206381%_
                                 _%$%tl206312206383%_
                                 _%$%e206313206386%_
                                 _%$%hd206314206389%_
                                 _%$%tl206315206391%_
                                 _%$%e206316206394%_
                                 _%$%hd206317206397%_
                                 _%$%tl206318206399%_
                                 _%$%e206319206402%_
                                 _%$%hd206320206405%_
                                 _%$%tl206321206407%_
                                 _%$%e206322206410%_
                                 _%$%hd206323206413%_
                                 _%$%tl206324206415%_
                                 _%__splice212018212019%_
                                 _%$%target206325206418%_
                                 _%$%tl206327206420%_)
                                (_%__kont212022212023%_))))
                        (_%__kont212022212023%_))))
                (_%__kont212022212023%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont212022212023%_))
                                                (_%__kont212022212023%_))))
                                        (_%__kont212022212023%_))))
                                (_%__kont212022212023%_))))
                        (_%__kont212022212023%_))))
                (_%__kont212022212023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont212022212023%_))
                                            (_%__kont212022212023%_))
                                        (_%__kont212022212023%_))))
                                (_%__kont212022212023%_)))))))))
          (let* ((_%$%g206002206025%_
                  (lambda (_%$%g206003206022%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206003206022%_))))
                 (_%$%g206001206284%_
                  (lambda (_%$%g206003206028%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206003206028%_))
                        (let ((_%$%e206006206030%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206003206028%_))))
                          (let ((_%$%hd206007206033%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206006206030%_)))
                                (_%$%tl206008206035%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206006206030%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206008206035%_))
                                (let ((_%$%e206009206038%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206008206035%_))))
                                  (let ((_%$%hd206010206041%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206009206038%_)))
                                        (_%$%tl206011206043%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206009206038%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl206011206043%_))
                                        (let ((_g212691_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl206011206043%_
                                                  '0))))
                                          (begin
                                            (let ((_g212692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g212691_)
                                                         (##values-length
                                                          _g212691_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g212692_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g212692_)))
                                            (let ((_%$%target206012206046%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g212691_
                                                      0)))
                                                  (_%$%tl206014206048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g212691_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl206014206048%_))
                                                  (letrec ((_%$%loop206015206051%_
                                                            (lambda (_%$%hd206013206054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand206019206056%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd206013206054%_))
                          (let ((_%$%e206016206058%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd206013206054%_))))
                            (let ((_%$%lp-hd206017206061%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206016206058%_)))
                                  (_%$%lp-tl206018206063%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206016206058%_))))
                              (_%$%loop206015206051%_
                               _%$%lp-tl206018206063%_
                               (cons _%$%lp-hd206017206061%_
                                     _%$%rand206019206056%_))))
                          (let ((_%$%rand206020206066%_
                                 (reverse _%$%rand206019206056%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call206000%_
                                 _%$%hd206010206041%_
                                 (let ((__tmp212693
                                        (lambda (_%$%g206086206089%_
                                                 _%$%g206087206091%_)
                                          (cons _%$%g206086206089%_
                                                _%$%g206087206091%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp212693
                                    '()
                                    _%$%rand206020206066%_)))
                                (let* ((_%__stx212130212131%_
                                        _%$%hd206010206041%_)
                                       (_%$%g206095206107%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx212130212131%_)))))
                                  (let ((_%__kont212132212133%_
                                         (lambda ()
                                           (let ((_%f206144%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self205997%_
                                                     _%$%hd206010206041%_))))
                                             (if (and (let ((__tmp212694
                                                             (symbol->string
                                                              _%f206144%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp212694))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f206144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp206146%_ ((_%rest206149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp212696
                                             (lambda (_%$%g206266206269%_
                                                      _%$%g206267206271%_)
                                               (cons _%$%g206266206269%_
                                                     _%$%g206267206271%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp212696
                                         '()
                                         _%$%rand206020206066%_))))
                            (_%bind206151%_ '())
                            (_%args206152%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest206153206161%_
                                                           _%rest206149%_)
                                                          (_%$%else206155206169%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind206151%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f206144%_ _%args206152%_)
                                             '()))))))
                  (_%$%K206157206255%_
                   (lambda (_%rest206172%_ _%e206173%_)
                     (let* ((_%__stx212084212085%_ _%e206173%_)
                            (_%$%g206178206196%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx212084212085%_)))))
                       (let ((_%__kont212086212087%_
                              (lambda ()
                                (_%lp206146%_
                                 _%rest206172%_
                                 _%bind206151%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e206173%_))
                                       _%args206152%_))))
                             (_%__kont212088212089%_
                              (lambda ()
                                (_%lp206146%_
                                 _%rest206172%_
                                 _%bind206151%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e206173%_))
                                       _%args206152%_))))
                             (_%__kont212090212091%_
                              (lambda ()
                                (let ((_%tmp206203%_
                                       (let ((__tmp212695
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp212695))))
                                  (_%lp206146%_
                                   _%rest206172%_
                                   (cons (cons _%tmp206203%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e206173%_))
                                                     '()))
                                         _%bind206151%_)
                                   (cons _%tmp206203%_ _%args206152%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx212084212085%_))
                             (let ((_%$%e206180206234%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx212084212085%_))))
                               (let ((_%$%tl206182206239%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e206180206234%_)))
                                     (_%$%hd206181206237%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e206180206234%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd206181206237%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd206181206237%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl206182206239%_))
                                             (let ((_%$%e206183206242%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl206182206239%_))))
                                               (let ((_%$%tl206185206247%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e206183206242%_)))
                                                     (_%$%hd206184206245%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e206183206242%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl206185206247%_))
                                                     (_%__kont212086212087%_)
                                                     (_%__kont212090212091%_))))
                                             (_%__kont212090212091%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd206181206237%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl206182206239%_))
                                                 (let ((_%$%e206189206219%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl206182206239%_))))
                                                   (let ((_%$%tl206191206224%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e206189206219%_)))
                                                         (_%$%hd206190206222%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e206189206219%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl206191206224%_))
                                                         (_%__kont212088212089%_)
                                                         (_%__kont212090212091%_))))
                                                 (_%__kont212090212091%_))
                                             (_%__kont212090212091%_)))
                                     (_%__kont212090212091%_))))
                             (_%__kont212090212091%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest206153206161%_)
                                                         (let ((_%$%hd206158206258%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest206153206161%_)))
                       (_%$%tl206159206260%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest206153206161%_))))
                   (let* ((_%e206263%_ _%$%hd206158206258%_)
                          (_%rest206265%_ _%$%tl206159206260%_))
                     (_%$%K206157206255%_ _%rest206265%_ _%e206263%_)))
                 (_%$%else206155206169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call206000%_
                                                  _%$%hd206010206041%_
                                                  (let ((__tmp212697
                                                         (lambda (_%$%g206273206276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g206274206278%_)
                   (cons _%$%g206273206276%_ _%$%g206274206278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp212697
                                                     '()
                                                     _%$%rand206020206066%_)))))))
                                        (_%__kont212134212135%_
                                         (lambda ()
                                           (_%compile-call206000%_
                                            _%$%hd206010206041%_
                                            (let ((__tmp212698
                                                   (lambda (_%$%g206113206116%_
                                                            _%$%g206114206118%_)
                                                     (cons _%$%g206113206116%_
                                                           _%$%g206114206118%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp212698
                                               '()
                                               _%$%rand206020206066%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx212130212131%_))
                                        (let ((_%$%e206097206126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx212130212131%_))))
                                          (let ((_%$%tl206099206131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206097206126%_)))
                                                (_%$%hd206098206129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206097206126%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd206098206129%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd206098206129%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl206099206131%_))
                                                        (let ((_%$%e206100206134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl206099206131%_))))
                  (let ((_%$%tl206102206139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206100206134%_)))
                        (_%$%hd206101206137%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206100206134%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl206102206139%_))
                        (_%__kont212132212133%_)
                        (_%__kont212134212135%_))))
                (_%__kont212134212135%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont212134212135%_))
                                                (_%__kont212134212135%_))))
                                        (_%__kont212134212135%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop206015206051%_
                                                     _%$%target206012206046%_
                                                     '()))
                                                  (_%$%g206002206025%_
                                                   _%$%g206003206028%_)))))
                                        (_%$%g206002206025%_
                                         _%$%g206003206028%_))))
                                (_%$%g206002206025%_ _%$%g206003206028%_))))
                        (_%$%g206002206025%_ _%$%g206003206028%_)))))
            (_%$%g206001206284%_ _%stx205998%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self205742%_ _%stx205743%_)
        (let* ((_%__stx212202212203%_ _%stx205743%_)
               (_%$%g205746205775%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212202212203%_)))))
          (let ((_%__kont212204212205%_
                 (lambda (_%$%g205748205841%_ _%$%g205749205842%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self205742%_
                        _%stx205743%_)
                       (let ((_%f205864%_
                              (let ((__tmp212699
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g205749205842%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self205742%_
                                 __tmp212699))))
                         (let _%lp205866%_ ((_%rest205869%_
                                             (reverse (let ((__tmp212701
                                                             (lambda (_%$%g205986205989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g205987205991%_)
                       (cons _%$%g205986205989%_ _%$%g205987205991%_))))
                (declare (not safe))
                (foldr__0 __tmp212701 '() _%$%g205748205841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind205871%_ '())
                                            (_%args205872%_ '()))
                           (let* ((_%$%rest205873205881%_ _%rest205869%_)
                                  (_%$%else205875205889%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind205871%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f205864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args205872%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K205877205975%_
                                   (lambda (_%rest205892%_ _%e205893%_)
                                     (let* ((_%__stx212156212157%_ _%e205893%_)
                                            (_%$%g205898205916%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx212156212157%_)))))
                                       (let ((_%__kont212158212159%_
                                              (lambda ()
                                                (_%lp205866%_
                                                 _%rest205892%_
                                                 _%bind205871%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e205893%_))
                                                       _%args205872%_))))
                                             (_%__kont212160212161%_
                                              (lambda ()
                                                (_%lp205866%_
                                                 _%rest205892%_
                                                 _%bind205871%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e205893%_))
                                                       _%args205872%_))))
                                             (_%__kont212162212163%_
                                              (lambda ()
                                                (let ((_%tmp205923%_
                                                       (let ((__tmp212700
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp212700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp205866%_
                                                   _%rest205892%_
                                                   (cons (cons _%tmp205923%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e205893%_))
                             '()))
                 _%bind205871%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp205923%_
                                                         _%args205872%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx212156212157%_))
                                             (let ((_%$%e205900205954%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx212156212157%_))))
                                               (let ((_%$%tl205902205959%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e205900205954%_)))
                                                     (_%$%hd205901205957%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e205900205954%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd205901205957%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd205901205957%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl205902205959%_))
                     (let ((_%$%e205903205962%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl205902205959%_))))
                       (let ((_%$%tl205905205967%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e205903205962%_)))
                             (_%$%hd205904205965%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e205903205962%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl205905205967%_))
                             (_%__kont212158212159%_)
                             (_%__kont212162212163%_))))
                     (_%__kont212162212163%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd205901205957%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl205902205959%_))
                         (let ((_%$%e205909205939%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl205902205959%_))))
                           (let ((_%$%tl205911205944%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e205909205939%_)))
                                 (_%$%hd205910205942%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e205909205939%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl205911205944%_))
                                 (_%__kont212160212161%_)
                                 (_%__kont212162212163%_))))
                         (_%__kont212162212163%_))
                     (_%__kont212162212163%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont212162212163%_))))
                                             (_%__kont212162212163%_)))))))
                             (if (pair? _%$%rest205873205881%_)
                                 (let ((_%$%hd205878205978%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest205873205881%_)))
                                       (_%$%tl205879205980%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest205873205881%_))))
                                   (let* ((_%e205983%_ _%$%hd205878205978%_)
                                          (_%rest205985%_
                                           _%$%tl205879205980%_))
                                     (_%$%K205877205975%_
                                      _%rest205985%_
                                      _%e205983%_)))
                                 (_%$%else205875205889%_))))))))
                (_%__kont212208212209%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self205742%_ _%stx205743%_))))
            (let ((_%__match212247212248%_
                   (lambda (_%$%e205750205787%_
                            _%$%hd205751205790%_
                            _%$%tl205752205792%_
                            _%$%e205753205795%_
                            _%$%hd205754205798%_
                            _%$%tl205755205800%_
                            _%$%e205756205803%_
                            _%$%hd205757205806%_
                            _%$%tl205758205808%_
                            _%$%e205759205811%_
                            _%$%hd205760205814%_
                            _%$%tl205761205816%_
                            _%__splice212206212207%_
                            _%$%target205762205819%_
                            _%$%tl205764205821%_)
                     (letrec ((_%$%loop205765205824%_
                               (lambda (_%$%hd205763205827%_
                                        _%$%rand205769205829%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd205763205827%_))
                                     (let ((_%$%e205766205831%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd205763205827%_))))
                                       (let ((_%$%lp-tl205768205836%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e205766205831%_)))
                                             (_%$%lp-hd205767205834%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e205766205831%_))))
                                         (_%$%loop205765205824%_
                                          _%$%lp-tl205768205836%_
                                          (cons _%$%lp-hd205767205834%_
                                                _%$%rand205769205829%_))))
                                     (let ((_%$%rand205770205839%_
                                            (reverse _%$%rand205769205829%_)))
                                       (_%__kont212204212205%_
                                        _%$%rand205770205839%_
                                        _%$%hd205760205814%_))))))
                       (_%$%loop205765205824%_
                        _%$%target205762205819%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx212202212203%_))
                  (let ((_%$%e205750205787%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx212202212203%_))))
                    (let ((_%$%tl205752205792%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e205750205787%_)))
                          (_%$%hd205751205790%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e205750205787%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl205752205792%_))
                          (let ((_%$%e205753205795%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl205752205792%_))))
                            (let ((_%$%tl205755205800%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205753205795%_)))
                                  (_%$%hd205754205798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205753205795%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd205754205798%_))
                                  (let ((_%$%e205756205803%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd205754205798%_))))
                                    (let ((_%$%tl205758205808%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205756205803%_)))
                                          (_%$%hd205757205806%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205756205803%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd205757205806%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd205757205806%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl205758205808%_))
                                                  (let ((_%$%e205759205811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl205758205808%_))))
                                                    (let ((_%$%tl205761205816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e205759205811%_)))
                                                          (_%$%hd205760205814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e205759205811%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl205761205816%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl205755205800%_))
                      (let ((_%__splice212206212207%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl205755205800%_
                                '0))))
                        (let ((_%$%tl205764205821%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice212206212207%_ '1)))
                              (_%$%target205762205819%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice212206212207%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl205764205821%_))
                              (_%__match212247212248%_
                               _%$%e205750205787%_
                               _%$%hd205751205790%_
                               _%$%tl205752205792%_
                               _%$%e205753205795%_
                               _%$%hd205754205798%_
                               _%$%tl205755205800%_
                               _%$%e205756205803%_
                               _%$%hd205757205806%_
                               _%$%tl205758205808%_
                               _%$%e205759205811%_
                               _%$%hd205760205814%_
                               _%$%tl205761205816%_
                               _%__splice212206212207%_
                               _%$%target205762205819%_
                               _%$%tl205764205821%_)
                              (_%__kont212208212209%_))))
                      (_%__kont212208212209%_))
                  (_%__kont212208212209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212208212209%_))
                                              (_%__kont212208212209%_))
                                          (_%__kont212208212209%_))))
                                  (_%__kont212208212209%_))))
                          (_%__kont212208212209%_))))
                  (_%__kont212208212209%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self205554%_ _%stx205555%_)
        (letrec ((_%simplify205557%_
                  (lambda (_%code205642%_)
                    (let* ((_%$%code205643205661%_ _%code205642%_)
                           (_%$%else205645205669%_ (lambda () _%code205642%_))
                           (_%$%K205647205705%_
                            (lambda (_%expr205672%_ _%test205673%_)
                              (let* ((_%$%expr205674205682%_ _%expr205672%_)
                                     (_%$%else205676205690%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test205673%_
                                                    (cons _%expr205672%_
                                                          '())))))
                                     (_%$%K205678205695%_
                                      (lambda (_%exprs205693%_)
                                        (cons 'and
                                              (cons _%test205673%_
                                                    _%exprs205693%_)))))
                                (if (pair? _%$%expr205674205682%_)
                                    (let ((_%$%hd205679205698%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr205674205682%_)))
                                          (_%$%tl205680205700%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr205674205682%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd205679205698%_ 'and))
                                          (let ((_%exprs205703%_
                                                 _%$%tl205680205700%_))
                                            (_%$%K205678205695%_
                                             _%exprs205703%_))
                                          (_%$%else205676205690%_)))
                                    (_%$%else205676205690%_))))))
                      (if (pair? _%$%code205643205661%_)
                          (let ((_%$%hd205648205708%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code205643205661%_)))
                                (_%$%tl205649205710%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code205643205661%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd205648205708%_ 'if))
                                (if (pair? _%$%tl205649205710%_)
                                    (let ((_%$%hd205650205713%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl205649205710%_)))
                                          (_%$%tl205651205715%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl205649205710%_))))
                                      (let ((_%test205718%_
                                             _%$%hd205650205713%_))
                                        (if (pair? _%$%tl205651205715%_)
                                            (let ((_%$%hd205652205720%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl205651205715%_)))
                                                  (_%$%tl205653205722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl205651205715%_))))
                                              (let ((_%expr205725%_
                                                     _%$%hd205652205720%_))
                                                (if (pair? _%$%tl205653205722%_)
                                                    (let ((_%$%hd205654205727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl205653205722%_)))
                                                          (_%$%tl205655205729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl205653205722%_))))
                                                      (if (pair? _%$%hd205654205727%_)
                                                          (let ((_%$%hd205656205732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd205654205727%_)))
                        (_%$%tl205657205734%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd205654205727%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd205656205732%_ 'quote))
                        (if (pair? _%$%tl205657205734%_)
                            (let ((_%$%hd205658205737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl205657205734%_)))
                                  (_%$%tl205659205739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl205657205734%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd205658205737%_ '#f))
                                  (if (null? _%$%tl205659205739%_)
                                      (if (null? _%$%tl205655205729%_)
                                          (_%$%K205647205705%_
                                           _%expr205725%_
                                           _%test205718%_)
                                          (_%$%else205645205669%_))
                                      (_%$%else205645205669%_))
                                  (_%$%else205645205669%_)))
                            (_%$%else205645205669%_))
                        (_%$%else205645205669%_)))
                  (_%$%else205645205669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else205645205669%_))))
                                            (_%$%else205645205669%_))))
                                    (_%$%else205645205669%_))
                                (_%$%else205645205669%_)))
                          (_%$%else205645205669%_))))))
          (let* ((_%$%g205559205580%_
                  (lambda (_%$%g205560205577%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205560205577%_))))
                 (_%$%g205558205639%_
                  (lambda (_%$%g205560205583%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205560205583%_))
                        (let ((_%$%e205564205585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205560205583%_))))
                          (let ((_%$%hd205565205588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205564205585%_)))
                                (_%$%tl205566205590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205564205585%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl205566205590%_))
                                (let ((_%$%e205567205593%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl205566205590%_))))
                                  (let ((_%$%hd205568205596%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205567205593%_)))
                                        (_%$%tl205569205598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205567205593%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205569205598%_))
                                        (let ((_%$%e205570205601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205569205598%_))))
                                          (let ((_%$%hd205571205604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205570205601%_)))
                                                (_%$%tl205572205606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205570205601%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl205572205606%_))
                                                (let ((_%$%e205573205609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl205572205606%_))))
                                                  (let ((_%$%hd205574205612%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e205573205609%_)))
                                                        (_%$%tl205575205614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e205573205609%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl205575205614%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify205557%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self205554%_
                                    _%$%hd205568205596%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self205554%_
                                          _%$%hd205571205604%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self205554%_
                                                _%$%hd205574205612%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp212702
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self205554%_
                                            _%$%hd205568205596%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp212702
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self205554%_
                                         _%$%hd205571205604%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self205554%_
                                               _%$%hd205574205612%_))
                                            '())))))
                (_%$%g205559205580%_ _%$%g205560205583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g205559205580%_
                                                 _%$%g205560205583%_))))
                                        (_%$%g205559205580%_
                                         _%$%g205560205583%_))))
                                (_%$%g205559205580%_ _%$%g205560205583%_))))
                        (_%$%g205559205580%_ _%$%g205560205583%_)))))
            (_%$%g205558205639%_ _%stx205555%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self205502%_ _%stx205503%_)
        (let* ((_%$%g205505205518%_
                (lambda (_%$%g205506205515%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205506205515%_))))
               (_%$%g205504205551%_
                (lambda (_%$%g205506205521%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205506205521%_))
                      (let ((_%$%e205508205523%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205506205521%_))))
                        (let ((_%$%hd205509205526%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205508205523%_)))
                              (_%$%tl205510205528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205508205523%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205510205528%_))
                              (let ((_%$%e205511205531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205510205528%_))))
                                (let ((_%$%hd205512205534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205511205531%_)))
                                      (_%$%tl205513205536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205511205531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl205513205536%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd205512205534%_))
                                      (_%$%g205505205518%_
                                       _%$%g205506205521%_))))
                              (_%$%g205505205518%_ _%$%g205506205521%_))))
                      (_%$%g205505205518%_ _%$%g205506205521%_)))))
          (_%$%g205504205551%_ _%stx205503%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self205434%_ _%stx205435%_)
        (let* ((_%$%g205437205454%_
                (lambda (_%$%g205438205451%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205438205451%_))))
               (_%$%g205436205499%_
                (lambda (_%$%g205438205457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205438205457%_))
                      (let ((_%$%e205441205459%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205438205457%_))))
                        (let ((_%$%hd205442205462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205441205459%_)))
                              (_%$%tl205443205464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205441205459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205443205464%_))
                              (let ((_%$%e205444205467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205443205464%_))))
                                (let ((_%$%hd205445205470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205444205467%_)))
                                      (_%$%tl205446205472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205444205467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205446205472%_))
                                      (let ((_%$%e205447205475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205446205472%_))))
                                        (let ((_%$%hd205448205478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205447205475%_)))
                                              (_%$%tl205449205480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205447205475%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205449205480%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd205445205470%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self205434%_
                           _%$%hd205448205478%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205437205454%_
                                               _%$%g205438205457%_))))
                                      (_%$%g205437205454%_
                                       _%$%g205438205457%_))))
                              (_%$%g205437205454%_ _%$%g205438205457%_))))
                      (_%$%g205437205454%_ _%$%g205438205457%_)))))
          (_%$%g205436205499%_ _%stx205435%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self205245%_ _%stx205246%_)
        (let* ((_%$%g205248205265%_
                (lambda (_%$%g205249205262%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205249205262%_))))
               (_%$%g205247205431%_
                (lambda (_%$%g205249205268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205249205268%_))
                      (let ((_%$%e205252205270%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205249205268%_))))
                        (let ((_%$%hd205253205273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205252205270%_)))
                              (_%$%tl205254205275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205252205270%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205254205275%_))
                              (let ((_%$%e205255205278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205254205275%_))))
                                (let ((_%$%hd205256205281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205255205278%_)))
                                      (_%$%tl205257205283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205255205278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205257205283%_))
                                      (let ((_%$%e205258205286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205257205283%_))))
                                        (let ((_%$%hd205259205289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205258205286%_)))
                                              (_%$%tl205260205291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205258205286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205260205291%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self205245%_ _%$%hd205259205289%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self205245%_
                               _%$%hd205256205281%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp205310%_ ((_%rest205313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd205256205281%_
                                    (cons _%$%hd205259205289%_ '())))
                             (_%bind205315%_ '())
                             (_%args205316%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest205317205325%_
                                                            _%rest205313%_)
                                                           (_%$%else205319205333%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind205315%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args205316%_)
                                              '()))))))
                   (_%$%K205321205419%_
                    (lambda (_%rest205336%_ _%e205337%_)
                      (let* ((_%__stx212250212251%_ _%e205337%_)
                             (_%$%g205342205360%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx212250212251%_)))))
                        (let ((_%__kont212252212253%_
                               (lambda ()
                                 (_%lp205310%_
                                  _%rest205336%_
                                  _%bind205315%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e205337%_))
                                        _%args205316%_))))
                              (_%__kont212254212255%_
                               (lambda ()
                                 (_%lp205310%_
                                  _%rest205336%_
                                  _%bind205315%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e205337%_))
                                        _%args205316%_))))
                              (_%__kont212256212257%_
                               (lambda ()
                                 (let ((_%tmp205367%_
                                        (let ((__tmp212703
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp212703))))
                                   (_%lp205310%_
                                    _%rest205336%_
                                    (cons (cons _%tmp205367%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e205337%_))
                                                      '()))
                                          _%bind205315%_)
                                    (cons _%tmp205367%_ _%args205316%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx212250212251%_))
                              (let ((_%$%e205344205398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx212250212251%_))))
                                (let ((_%$%tl205346205403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205344205398%_)))
                                      (_%$%hd205345205401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205344205398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd205345205401%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd205345205401%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl205346205403%_))
                                              (let ((_%$%e205347205406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl205346205403%_))))
                                                (let ((_%$%tl205349205411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e205347205406%_)))
                                                      (_%$%hd205348205409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e205347205406%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl205349205411%_))
                                                      (_%__kont212252212253%_)
                                                      (_%__kont212256212257%_))))
                                              (_%__kont212256212257%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd205345205401%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl205346205403%_))
                                                  (let ((_%$%e205353205383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl205346205403%_))))
                                                    (let ((_%$%tl205355205388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e205353205383%_)))
                                                          (_%$%hd205354205386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e205353205383%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl205355205388%_))
                                                          (_%__kont212254212255%_)
                                                          (_%__kont212256212257%_))))
                                                  (_%__kont212256212257%_))
                                              (_%__kont212256212257%_)))
                                      (_%__kont212256212257%_))))
                              (_%__kont212256212257%_)))))))
              (if (pair? _%$%rest205317205325%_)
                  (let ((_%$%hd205322205422%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest205317205325%_)))
                        (_%$%tl205323205424%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest205317205325%_))))
                    (let* ((_%e205427%_ _%$%hd205322205422%_)
                           (_%rest205429%_ _%$%tl205323205424%_))
                      (_%$%K205321205419%_ _%rest205429%_ _%e205427%_)))
                  (_%$%else205319205333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205248205265%_
                                               _%$%g205249205268%_))))
                                      (_%$%g205248205265%_
                                       _%$%g205249205268%_))))
                              (_%$%g205248205265%_ _%$%g205249205268%_))))
                      (_%$%g205248205265%_ _%$%g205249205268%_)))))
          (_%$%g205247205431%_ _%stx205246%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self205056%_ _%stx205057%_)
        (let* ((_%$%g205059205076%_
                (lambda (_%$%g205060205073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205060205073%_))))
               (_%$%g205058205242%_
                (lambda (_%$%g205060205079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205060205079%_))
                      (let ((_%$%e205063205081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205060205079%_))))
                        (let ((_%$%hd205064205084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205063205081%_)))
                              (_%$%tl205065205086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205063205081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205065205086%_))
                              (let ((_%$%e205066205089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205065205086%_))))
                                (let ((_%$%hd205067205092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205066205089%_)))
                                      (_%$%tl205068205094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205066205089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205068205094%_))
                                      (let ((_%$%e205069205097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205068205094%_))))
                                        (let ((_%$%hd205070205100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205069205097%_)))
                                              (_%$%tl205071205102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205069205097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205071205102%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self205056%_ _%$%hd205070205100%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self205056%_
                               _%$%hd205067205092%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp205121%_ ((_%rest205124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd205067205092%_
                                    (cons _%$%hd205070205100%_ '())))
                             (_%bind205126%_ '())
                             (_%args205127%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest205128205136%_
                                                            _%rest205124%_)
                                                           (_%$%else205130205144%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind205126%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args205127%_)
                                              '()))))))
                   (_%$%K205132205230%_
                    (lambda (_%rest205147%_ _%e205148%_)
                      (let* ((_%__stx212296212297%_ _%e205148%_)
                             (_%$%g205153205171%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx212296212297%_)))))
                        (let ((_%__kont212298212299%_
                               (lambda ()
                                 (_%lp205121%_
                                  _%rest205147%_
                                  _%bind205126%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e205148%_))
                                        _%args205127%_))))
                              (_%__kont212300212301%_
                               (lambda ()
                                 (_%lp205121%_
                                  _%rest205147%_
                                  _%bind205126%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e205148%_))
                                        _%args205127%_))))
                              (_%__kont212302212303%_
                               (lambda ()
                                 (let ((_%tmp205178%_
                                        (let ((__tmp212704
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp212704))))
                                   (_%lp205121%_
                                    _%rest205147%_
                                    (cons (cons _%tmp205178%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e205148%_))
                                                      '()))
                                          _%bind205126%_)
                                    (cons _%tmp205178%_ _%args205127%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx212296212297%_))
                              (let ((_%$%e205155205209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx212296212297%_))))
                                (let ((_%$%tl205157205214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205155205209%_)))
                                      (_%$%hd205156205212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205155205209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd205156205212%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd205156205212%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl205157205214%_))
                                              (let ((_%$%e205158205217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl205157205214%_))))
                                                (let ((_%$%tl205160205222%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e205158205217%_)))
                                                      (_%$%hd205159205220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e205158205217%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl205160205222%_))
                                                      (_%__kont212298212299%_)
                                                      (_%__kont212302212303%_))))
                                              (_%__kont212302212303%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd205156205212%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl205157205214%_))
                                                  (let ((_%$%e205164205194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl205157205214%_))))
                                                    (let ((_%$%tl205166205199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e205164205194%_)))
                                                          (_%$%hd205165205197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e205164205194%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl205166205199%_))
                                                          (_%__kont212300212301%_)
                                                          (_%__kont212302212303%_))))
                                                  (_%__kont212302212303%_))
                                              (_%__kont212302212303%_)))
                                      (_%__kont212302212303%_))))
                              (_%__kont212302212303%_)))))))
              (if (pair? _%$%rest205128205136%_)
                  (let ((_%$%hd205133205233%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest205128205136%_)))
                        (_%$%tl205134205235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest205128205136%_))))
                    (let* ((_%e205238%_ _%$%hd205133205233%_)
                           (_%rest205240%_ _%$%tl205134205235%_))
                      (_%$%K205132205230%_ _%rest205240%_ _%e205238%_)))
                  (_%$%else205130205144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205059205076%_
                                               _%$%g205060205079%_))))
                                      (_%$%g205059205076%_
                                       _%$%g205060205079%_))))
                              (_%$%g205059205076%_ _%$%g205060205079%_))))
                      (_%$%g205059205076%_ _%$%g205060205079%_)))))
          (_%$%g205058205242%_ _%stx205057%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self204972%_ _%stx204973%_)
        (let* ((_%$%g204975204996%_
                (lambda (_%$%g204976204993%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204976204993%_))))
               (_%$%g204974205053%_
                (lambda (_%$%g204976204999%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204976204999%_))
                      (let ((_%$%e204980205001%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204976204999%_))))
                        (let ((_%$%hd204981205004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204980205001%_)))
                              (_%$%tl204982205006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204980205001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204982205006%_))
                              (let ((_%$%e204983205009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204982205006%_))))
                                (let ((_%$%hd204984205012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204983205009%_)))
                                      (_%$%tl204985205014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204983205009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204985205014%_))
                                      (let ((_%$%e204986205017%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204985205014%_))))
                                        (let ((_%$%hd204987205020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204986205017%_)))
                                              (_%$%tl204988205022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204986205017%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204988205022%_))
                                              (let ((_%$%e204989205025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204988205022%_))))
                                                (let ((_%$%hd204990205028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204989205025%_)))
                                                      (_%$%tl204991205030%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204989205025%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204991205030%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self204972%_
                             _%$%hd204990205028%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self204972%_
                                   _%$%hd204987205020%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self204972%_
                                         _%$%hd204984205012%_))
                                      (cons ''#f '())))))
              (_%$%g204975204996%_ _%$%g204976204999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204975204996%_
                                               _%$%g204976204999%_))))
                                      (_%$%g204975204996%_
                                       _%$%g204976204999%_))))
                              (_%$%g204975204996%_ _%$%g204976204999%_))))
                      (_%$%g204975204996%_ _%$%g204976204999%_)))))
          (_%$%g204974205053%_ _%stx204973%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self204872%_ _%stx204873%_)
        (let* ((_%$%g204875204900%_
                (lambda (_%$%g204876204897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204876204897%_))))
               (_%$%g204874204969%_
                (lambda (_%$%g204876204903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204876204903%_))
                      (let ((_%$%e204881204905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204876204903%_))))
                        (let ((_%$%hd204882204908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204881204905%_)))
                              (_%$%tl204883204910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204881204905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204883204910%_))
                              (let ((_%$%e204884204913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204883204910%_))))
                                (let ((_%$%hd204885204916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204884204913%_)))
                                      (_%$%tl204886204918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204884204913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204886204918%_))
                                      (let ((_%$%e204887204921%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204886204918%_))))
                                        (let ((_%$%hd204888204924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204887204921%_)))
                                              (_%$%tl204889204926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204887204921%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204889204926%_))
                                              (let ((_%$%e204890204929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204889204926%_))))
                                                (let ((_%$%hd204891204932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204890204929%_)))
                                                      (_%$%tl204892204934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204890204929%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl204892204934%_))
                                                      (let ((_%$%e204893204937%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl204892204934%_))))
                (let ((_%$%hd204894204940%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e204893204937%_)))
                      (_%$%tl204895204942%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204893204937%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204895204942%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self204872%_
                                     _%$%hd204891204932%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self204872%_
                                           _%$%hd204894204940%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204872%_
                                                 _%$%hd204888204924%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self204872%_
                                                       _%$%hd204885204916%_))
                                                    (cons ''#f '()))))))
                      (_%$%g204875204900%_ _%$%g204876204903%_))))
              (_%$%g204875204900%_ _%$%g204876204903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204875204900%_
                                               _%$%g204876204903%_))))
                                      (_%$%g204875204900%_
                                       _%$%g204876204903%_))))
                              (_%$%g204875204900%_ _%$%g204876204903%_))))
                      (_%$%g204875204900%_ _%$%g204876204903%_)))))
          (_%$%g204874204969%_ _%stx204873%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self204788%_ _%stx204789%_)
        (let* ((_%$%g204791204812%_
                (lambda (_%$%g204792204809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204792204809%_))))
               (_%$%g204790204869%_
                (lambda (_%$%g204792204815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204792204815%_))
                      (let ((_%$%e204796204817%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204792204815%_))))
                        (let ((_%$%hd204797204820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204796204817%_)))
                              (_%$%tl204798204822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204796204817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204798204822%_))
                              (let ((_%$%e204799204825%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204798204822%_))))
                                (let ((_%$%hd204800204828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204799204825%_)))
                                      (_%$%tl204801204830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204799204825%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204801204830%_))
                                      (let ((_%$%e204802204833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204801204830%_))))
                                        (let ((_%$%hd204803204836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204802204833%_)))
                                              (_%$%tl204804204838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204802204833%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204804204838%_))
                                              (let ((_%$%e204805204841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204804204838%_))))
                                                (let ((_%$%hd204806204844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204805204841%_)))
                                                      (_%$%tl204807204846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204805204841%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204807204846%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self204788%_
                             _%$%hd204806204844%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self204788%_
                                   _%$%hd204803204836%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self204788%_
                                         _%$%hd204800204828%_))
                                      (cons ''#f '())))))
              (_%$%g204791204812%_ _%$%g204792204815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204791204812%_
                                               _%$%g204792204815%_))))
                                      (_%$%g204791204812%_
                                       _%$%g204792204815%_))))
                              (_%$%g204791204812%_ _%$%g204792204815%_))))
                      (_%$%g204791204812%_ _%$%g204792204815%_)))))
          (_%$%g204790204869%_ _%stx204789%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self204688%_ _%stx204689%_)
        (let* ((_%$%g204691204716%_
                (lambda (_%$%g204692204713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204692204713%_))))
               (_%$%g204690204785%_
                (lambda (_%$%g204692204719%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204692204719%_))
                      (let ((_%$%e204697204721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204692204719%_))))
                        (let ((_%$%hd204698204724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204697204721%_)))
                              (_%$%tl204699204726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204697204721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204699204726%_))
                              (let ((_%$%e204700204729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204699204726%_))))
                                (let ((_%$%hd204701204732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204700204729%_)))
                                      (_%$%tl204702204734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204700204729%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204702204734%_))
                                      (let ((_%$%e204703204737%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204702204734%_))))
                                        (let ((_%$%hd204704204740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204703204737%_)))
                                              (_%$%tl204705204742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204703204737%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204705204742%_))
                                              (let ((_%$%e204706204745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204705204742%_))))
                                                (let ((_%$%hd204707204748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204706204745%_)))
                                                      (_%$%tl204708204750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204706204745%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl204708204750%_))
                                                      (let ((_%$%e204709204753%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl204708204750%_))))
                (let ((_%$%hd204710204756%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e204709204753%_)))
                      (_%$%tl204711204758%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204709204753%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204711204758%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self204688%_
                                     _%$%hd204707204748%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self204688%_
                                           _%$%hd204710204756%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204688%_
                                                 _%$%hd204704204740%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self204688%_
                                                       _%$%hd204701204732%_))
                                                    (cons ''#f '()))))))
                      (_%$%g204691204716%_ _%$%g204692204719%_))))
              (_%$%g204691204716%_ _%$%g204692204719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204691204716%_
                                               _%$%g204692204719%_))))
                                      (_%$%g204691204716%_
                                       _%$%g204692204719%_))))
                              (_%$%g204691204716%_ _%$%g204692204719%_))))
                      (_%$%g204691204716%_ _%$%g204692204719%_)))))
          (_%$%g204690204785%_ _%stx204689%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self204483%_ _%stx204484%_)
        (let* ((_%$%g204486204507%_
                (lambda (_%$%g204487204504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204487204504%_))))
               (_%$%g204485204685%_
                (lambda (_%$%g204487204510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204487204510%_))
                      (let ((_%$%e204491204512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204487204510%_))))
                        (let ((_%$%hd204492204515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204491204512%_)))
                              (_%$%tl204493204517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204491204512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204493204517%_))
                              (let ((_%$%e204494204520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204493204517%_))))
                                (let ((_%$%hd204495204523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204494204520%_)))
                                      (_%$%tl204496204525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204494204520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204496204525%_))
                                      (let ((_%$%e204497204528%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204496204525%_))))
                                        (let ((_%$%hd204498204531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204497204528%_)))
                                              (_%$%tl204499204533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204497204528%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204499204533%_))
                                              (let ((_%$%e204500204536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204499204533%_))))
                                                (let ((_%$%hd204501204539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204500204536%_)))
                                                      (_%$%tl204502204541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204500204536%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204502204541%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self204483%_
                                 _%$%hd204501204539%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self204483%_
                                       _%$%hd204498204531%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp204564%_ ((_%rest204567%_
                                      (cons _%$%hd204498204531%_
                                            (cons _%$%hd204501204539%_ '())))
                                     (_%bind204569%_ '())
                                     (_%args204570%_ '()))
                    (let* ((_%$%rest204571204579%_ _%rest204567%_)
                           (_%$%else204573204587%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind204569%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp212705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (foldr__0 cons __tmp212705 _%args204570%_)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K204575204673%_
                            (lambda (_%rest204590%_ _%e204591%_)
                              (let* ((_%__stx212342212343%_ _%e204591%_)
                                     (_%$%g204596204614%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx212342212343%_)))))
                                (let ((_%__kont212344212345%_
                                       (lambda ()
                                         (_%lp204564%_
                                          _%rest204590%_
                                          _%bind204569%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e204591%_))
                                                _%args204570%_))))
                                      (_%__kont212346212347%_
                                       (lambda ()
                                         (_%lp204564%_
                                          _%rest204590%_
                                          _%bind204569%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e204591%_))
                                                _%args204570%_))))
                                      (_%__kont212348212349%_
                                       (lambda ()
                                         (let ((_%tmp204621%_
                                                (let ((__tmp212706
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp212706))))
                                           (_%lp204564%_
                                            _%rest204590%_
                                            (cons (cons _%tmp204621%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e204591%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind204569%_)
                                            (cons _%tmp204621%_
                                                  _%args204570%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx212342212343%_))
                                      (let ((_%$%e204598204652%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx212342212343%_))))
                                        (let ((_%$%tl204600204657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204598204652%_)))
                                              (_%$%hd204599204655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204598204652%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd204599204655%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd204599204655%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl204600204657%_))
                                                      (let ((_%$%e204601204660%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl204600204657%_))))
                (let ((_%$%tl204603204665%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204601204660%_)))
                      (_%$%hd204602204663%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e204601204660%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204603204665%_))
                      (_%__kont212344212345%_)
                      (_%__kont212348212349%_))))
              (_%__kont212348212349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd204599204655%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl204600204657%_))
                                                          (let ((_%$%e204607204637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl204600204657%_))))
                    (let ((_%$%tl204609204642%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e204607204637%_)))
                          (_%$%hd204608204640%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e204607204637%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl204609204642%_))
                          (_%__kont212346212347%_)
                          (_%__kont212348212349%_))))
                  (_%__kont212348212349%_))
              (_%__kont212348212349%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212348212349%_))))
                                      (_%__kont212348212349%_)))))))
                      (if (pair? _%$%rest204571204579%_)
                          (let ((_%$%hd204576204676%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest204571204579%_)))
                                (_%$%tl204577204678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest204571204579%_))))
                            (let* ((_%e204681%_ _%$%hd204576204676%_)
                                   (_%rest204683%_ _%$%tl204577204678%_))
                              (_%$%K204575204673%_
                               _%rest204683%_
                               _%e204681%_)))
                          (_%$%else204573204587%_)))))
              (_%$%g204486204507%_ _%$%g204487204510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204486204507%_
                                               _%$%g204487204510%_))))
                                      (_%$%g204486204507%_
                                       _%$%g204487204510%_))))
                              (_%$%g204486204507%_ _%$%g204487204510%_))))
                      (_%$%g204486204507%_ _%$%g204487204510%_)))))
          (_%$%g204485204685%_ _%stx204484%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self204262%_ _%stx204263%_)
        (let* ((_%$%g204265204290%_
                (lambda (_%$%g204266204287%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204266204287%_))))
               (_%$%g204264204480%_
                (lambda (_%$%g204266204293%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204266204293%_))
                      (let ((_%$%e204271204295%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204266204293%_))))
                        (let ((_%$%hd204272204298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204271204295%_)))
                              (_%$%tl204273204300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204271204295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204273204300%_))
                              (let ((_%$%e204274204303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204273204300%_))))
                                (let ((_%$%hd204275204306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204274204303%_)))
                                      (_%$%tl204276204308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204274204303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204276204308%_))
                                      (let ((_%$%e204277204311%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204276204308%_))))
                                        (let ((_%$%hd204278204314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204277204311%_)))
                                              (_%$%tl204279204316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204277204311%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204279204316%_))
                                              (let ((_%$%e204280204319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204279204316%_))))
                                                (let ((_%$%hd204281204322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204280204319%_)))
                                                      (_%$%tl204282204324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204280204319%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl204282204324%_))
                                                      (let ((_%$%e204283204327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl204282204324%_))))
                (let ((_%$%hd204284204330%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e204283204327%_)))
                      (_%$%tl204285204332%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e204283204327%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl204285204332%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self204262%_
                                         _%$%hd204281204322%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self204262%_
                                               _%$%hd204284204330%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self204262%_
                                                     _%$%hd204278204314%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp204359%_ ((_%rest204362%_
                                              (cons _%$%hd204278204314%_
                                                    (cons _%$%hd204284204330%_
                                                          (cons _%$%hd204281204322%_
                                                                '()))))
                                             (_%bind204364%_ '())
                                             (_%args204365%_ '()))
                            (let* ((_%$%rest204366204374%_ _%rest204362%_)
                                   (_%$%else204368204382%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind204364%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp212707 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (foldr__0 cons __tmp212707 _%args204365%_)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K204370204468%_
                                    (lambda (_%rest204385%_ _%e204386%_)
                                      (let* ((_%__stx212388212389%_
                                              _%e204386%_)
                                             (_%$%g204391204409%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx212388212389%_)))))
                                        (let ((_%__kont212390212391%_
                                               (lambda ()
                                                 (_%lp204359%_
                                                  _%rest204385%_
                                                  _%bind204364%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e204386%_))
                                                        _%args204365%_))))
                                              (_%__kont212392212393%_
                                               (lambda ()
                                                 (_%lp204359%_
                                                  _%rest204385%_
                                                  _%bind204364%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e204386%_))
                                                        _%args204365%_))))
                                              (_%__kont212394212395%_
                                               (lambda ()
                                                 (let ((_%tmp204416%_
                                                        (let ((__tmp212708
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp212708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp204359%_
                                                    _%rest204385%_
                                                    (cons (cons _%tmp204416%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e204386%_))
                              '()))
                  _%bind204364%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp204416%_
                                                          _%args204365%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx212388212389%_))
                                              (let ((_%$%e204393204447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx212388212389%_))))
                                                (let ((_%$%tl204395204452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204393204447%_)))
                                                      (_%$%hd204394204450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204393204447%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd204394204450%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd204394204450%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl204395204452%_))
                      (let ((_%$%e204396204455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl204395204452%_))))
                        (let ((_%$%tl204398204460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204396204455%_)))
                              (_%$%hd204397204458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204396204455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl204398204460%_))
                              (_%__kont212390212391%_)
                              (_%__kont212394212395%_))))
                      (_%__kont212394212395%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd204394204450%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl204395204452%_))
                          (let ((_%$%e204402204432%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl204395204452%_))))
                            (let ((_%$%tl204404204437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204402204432%_)))
                                  (_%$%hd204403204435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204402204432%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl204404204437%_))
                                  (_%__kont212392212393%_)
                                  (_%__kont212394212395%_))))
                          (_%__kont212394212395%_))
                      (_%__kont212394212395%_)))
              (_%__kont212394212395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212394212395%_)))))))
                              (if (pair? _%$%rest204366204374%_)
                                  (let ((_%$%hd204371204471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest204366204374%_)))
                                        (_%$%tl204372204473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest204366204374%_))))
                                    (let* ((_%e204476%_ _%$%hd204371204471%_)
                                           (_%rest204478%_
                                            _%$%tl204372204473%_))
                                      (_%$%K204370204468%_
                                       _%rest204478%_
                                       _%e204476%_)))
                                  (_%$%else204368204382%_)))))
                      (_%$%g204265204290%_ _%$%g204266204293%_))))
              (_%$%g204265204290%_ _%$%g204266204293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204265204290%_
                                               _%$%g204266204293%_))))
                                      (_%$%g204265204290%_
                                       _%$%g204266204293%_))))
                              (_%$%g204265204290%_ _%$%g204266204293%_))))
                      (_%$%g204265204290%_ _%$%g204266204293%_)))))
          (_%$%g204264204480%_ _%stx204263%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self204101%_ _%stx204102%_)
        (letrec ((_%import-set-template204104%_
                  (lambda (_%in204207%_ _%phi204208%_)
                    (let ((_%iphi204210%_
                           (fx+ _%phi204208%_
                                (##direct-structure-ref
                                 _%in204207%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports204211%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in204207%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp204213%_ ((_%rest204215%_ _%imports204211%_)
                                         (_%r204216%_ '()))
                        (let* ((_%$%rest204217204225%_ _%rest204215%_)
                               (_%$%else204219204233%_ (lambda () _%r204216%_))
                               (_%$%K204221204250%_
                                (lambda (_%rest204236%_ _%in204237%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in204237%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi204210%_))
                                          (_%lp204213%_
                                           _%rest204236%_
                                           (cons _%in204237%_ _%r204216%_))
                                          (_%lp204213%_
                                           _%rest204236%_
                                           _%r204216%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in204237%_
                                             'gx#module-import::t))
                                          (let ((_%iphi204241%_
                                                 (fx+ _%phi204208%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in204237%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi204241%_))
                                                (_%lp204213%_
                                                 _%rest204236%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in204237%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r204216%_))
                                                (_%lp204213%_
                                                 _%rest204236%_
                                                 _%r204216%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in204237%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi204244%_
                                                     (fx+ _%iphi204210%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in204237%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi204244%_))
                                                    (_%lp204213%_
                                                     _%rest204236%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in204237%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r204216%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi204244%_))
                                                        (_%lp204213%_
                                                         _%rest204236%_
                                                         (let ((__tmp212709
                                                                (_%import-set-template204104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in204237%_
                         _%iphi204210%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r204216%_ __tmp212709)))
                (_%lp204213%_ _%rest204236%_ _%r204216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp204213%_
                                               _%rest204236%_
                                               _%r204216%_)))))))
                          (if (pair? _%$%rest204217204225%_)
                              (let ((_%$%hd204222204253%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest204217204225%_)))
                                    (_%$%tl204223204255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest204217204225%_))))
                                (let* ((_%in204258%_ _%$%hd204222204253%_)
                                       (_%rest204260%_ _%$%tl204223204255%_))
                                  (_%$%K204221204250%_
                                   _%rest204260%_
                                   _%in204258%_)))
                              (_%$%else204219204233%_))))))))
          (let* ((_%$%g204106204116%_
                  (lambda (_%$%g204107204113%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g204107204113%_))))
                 (_%$%g204105204204%_
                  (lambda (_%$%g204107204119%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g204107204119%_))
                        (let ((_%$%e204109204121%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g204107204119%_))))
                          (let ((_%$%hd204110204124%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204109204121%_)))
                                (_%$%tl204111204126%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204109204121%_))))
                            (let ((_%ht204140%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp204142%_ ((_%rest204144%_
                                                  _%$%tl204111204126%_)
                                                 (_%loads204145%_ '()))
                                (letrec ((_%K204147%_
                                          (lambda (_%ctx204197%_
                                                   _%rest204198%_)
                                            (let ((_%id204200%_
                                                   (##structure-ref
                                                    _%ctx204197%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht204140%_
                                                     _%id204200%_))
                                                  (_%lp204142%_
                                                   _%rest204198%_
                                                   _%loads204145%_)
                                                  (let ((_%rt204202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id204200%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht204140%_
                                                       _%id204200%_
                                                       _%rt204202%_))
                                                    (_%lp204142%_
                                                     _%rest204198%_
                                                     (cons _%rt204202%_
                                                           _%loads204145%_))))))))
                                  (let* ((_%$%rest204148204156%_
                                          _%rest204144%_)
                                         (_%$%else204150204168%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp212711
                                                         (lambda (_%$%g204163204165%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g204163204165%_)))
                (__tmp212710 (reverse _%loads204145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp212711
                                                           __tmp212710)))))
                                         (_%$%K204152204185%_
                                          (lambda (_%rest204171%_ _%in204172%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in204172%_
                                                   'gx#module-context::t))
                                                (_%K204147%_
                                                 _%in204172%_
                                                 _%rest204171%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in204172%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in204172%_
                            '3
                            '#f
                            '#f)))
                (_%K204147%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in204172%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest204171%_)
                (_%lp204142%_ _%rest204171%_ _%loads204145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in204172%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi204177%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in204172%_ '2 '#f '#f))))
                  (if (fxzero? _%phi204177%_)
                      (_%K204147%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in204172%_ '1 '#f '#f))
                       _%rest204171%_)
                      (if (fxpositive? _%phi204177%_)
                          (let ((_%deps204181%_
                                 (_%import-set-template204104%_
                                  _%in204172%_
                                  '0)))
                            (_%lp204142%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest204171%_ _%deps204181%_))
                             _%loads204145%_))
                          (_%lp204142%_ _%rest204171%_ _%loads204145%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx204102%_
                   _%in204172%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest204148204156%_)
                                        (let ((_%$%hd204153204188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest204148204156%_)))
                                              (_%$%tl204154204190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest204148204156%_))))
                                          (let* ((_%in204193%_
                                                  _%$%hd204153204188%_)
                                                 (_%rest204195%_
                                                  _%$%tl204154204190%_))
                                            (_%$%K204152204185%_
                                             _%rest204195%_
                                             _%in204193%_)))
                                        (_%$%else204150204168%_))))))))
                        (_%$%g204106204116%_ _%$%g204107204119%_)))))
            (_%$%g204105204204%_ _%stx204102%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self203915%_ _%stx203916%_)
        (letrec ((_%add-lift!203918%_
                  (lambda (_%expr204099%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr204099%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote203919%_
                  (lambda (_%id204096%_ _%marks204097%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id204096%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks204097%_
                                                        '()))))))))
                 (_%generate-simple203920%_
                  (lambda (_%stxq204091%_)
                    (let ((_%gid204093%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid204094%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq204091%_))))
                      (_%add-lift!203918%_
                       (cons 'define
                             (cons _%gid204093%_
                                   (cons (_%generate-syntax-quote203919%_
                                          _%qid204094%_
                                          ''())
                                         '()))))
                      (let ((__tmp212712
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp212712 _%stxq204091%_ _%gid204093%_))
                      _%gid204093%_)))
                 (_%generate-serialized203921%_
                  (lambda (_%stxq204081%_ _%marks204082%_)
                    (let* ((_%mark-refs204084%_
                            (map _%generate-mark203922%_ _%marks204082%_))
                           (_%gid204086%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid204088%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq204081%_))))
                      (_%add-lift!203918%_
                       (cons 'define
                             (cons _%gid204086%_
                                   (cons (_%generate-syntax-quote203919%_
                                          _%qid204088%_
                                          (cons 'list _%mark-refs204084%_))
                                         '()))))
                      (let ((__tmp212713
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp212713 _%stxq204081%_ _%gid204086%_))
                      _%gid204086%_)))
                 (_%generate-mark203922%_
                  (lambda (_%mark204066%_)
                    (let ((_%$e204068%_
                           (let ((__tmp212714
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp212714 _%mark204066%_))))
                      (if _%$e204068%_
                          _%$e204068%_
                          (let* ((_%gid204072%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr204074%_
                                  (_%serialize-mark203923%_ _%mark204066%_))
                                 (_%ctx204076%_
                                  (let ((__tmp212715
                                         (##structure-ref
                                          _%mark204066%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp212715)))
                                 (_%ctx-ref204078%_
                                  (if (eq? _%ctx204076%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref203924%_
                                                               _%ctx204076%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp212716
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp212716
                               _%mark204066%_
                               _%gid204072%_))
                            (_%add-lift!203918%_
                             (cons 'define
                                   (cons _%gid204072%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr204074%_ '()))
                   (cons _%ctx-ref204078%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid204072%_)))))
                 (_%serialize-mark203923%_
                  (lambda (_%mark204014%_)
                    (letrec ((_%quote-e204016%_
                              (lambda (_%sym204064%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym204064%_))
                                    _%sym204064%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym204064%_))))))
                      (let* ((_%$%mark204017204026%_ _%mark204014%_)
                             (_%$%E204019204029%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark204017204026%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K204020204041%_
                              (lambda (_%trace204032%_
                                       _%phi204033%_
                                       _%ctx204034%_
                                       _%subst204035%_)
                                (let ((_%subs204037%_
                                       (if _%subst204035%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst204035%_))
                                           '())))
                                  (cons _%phi204033%_
                                        (let ((__tmp212717
                                               (lambda (_%pair204039%_)
                                                 (cons (_%quote-e204016%_
                                                        (car _%pair204039%_))
                                                       (_%quote-e204016%_
                                                        (cdr _%pair204039%_))))))
                                          (declare (not safe))
                                          (##map __tmp212717
                                                 _%subs204037%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark204017204026%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e204021204044%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark204017204026%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst204047%_ _%$%e204021204044%_)
                                   (_%$%e204022204049%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark204017204026%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx204052%_ _%$%e204022204049%_)
                                   (_%$%e204023204054%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark204017204026%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi204057%_ _%$%e204023204054%_)
                                   (_%$%e204024204059%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark204017204026%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace204062%_ _%$%e204024204059%_))
                              (_%$%K204020204041%_
                               _%trace204062%_
                               _%phi204057%_
                               _%ctx204052%_
                               _%subst204047%_))
                            (_%$%E204019204029%_))))))
                 (_%context-ref203924%_
                  (lambda (_%ctx204001%_)
                    (if (let ((__tmp212718
                               (##structure-ref
                                _%ctx204001%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp212718
                           'gx#module-context::t))
                        (let ((_%ctx-ref204003%_
                               (_%context-ref-nested203926%_ _%ctx204001%_))
                              (_%ctx-origin204004%_
                               (_%context-ref-origin203925%_ _%ctx204001%_))
                              (_%origin204005%_
                               (_%context-ref-origin203925%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin204005%_ _%ctx-origin204004%_)
                              (let ((_%ref204007%_
                                     (_%context-ref-nested203926%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp204009%_ ((_%ref204011%_
                                                    (cdr _%ref204007%_))
                                                   (_%ctx-ref204012%_
                                                    (cdr _%ctx-ref204003%_)))
                                  (if (and (pair? _%ref204011%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref204011%_))
                                                (car _%ctx-ref204012%_)))
                                      (_%lp204009%_
                                       (cdr _%ref204011%_)
                                       (cdr _%ctx-ref204012%_))
                                      (cons '#f _%ctx-ref204012%_))))
                              _%ctx-ref204003%_))
                        (let ((__tmp212719
                               (##structure-ref
                                _%ctx204001%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp212719)))))
                 (_%context-ref-origin203925%_
                  (lambda (_%ctx203993%_)
                    (let _%lp203995%_ ((_%ctx203997%_ _%ctx203993%_))
                      (let ((_%super203999%_
                             (##structure-ref
                              _%ctx203997%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super203999%_
                               'gx#module-context::t))
                            (_%lp203995%_ _%super203999%_)
                            _%ctx203997%_)))))
                 (_%context-ref-nested203926%_
                  (lambda (_%ctx203984%_)
                    (let _%lp203986%_ ((_%ctx203988%_ _%ctx203984%_)
                                       (_%r203989%_ '()))
                      (let ((_%super203991%_
                             (##structure-ref
                              _%ctx203988%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super203991%_
                               'gx#module-context::t))
                            (_%lp203986%_
                             _%super203991%_
                             (cons (car (##structure-ref
                                         _%ctx203988%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r203989%_))
                            (cons (let ((__tmp212720
                                         (##structure-ref
                                          _%ctx203988%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp212720))
                                  _%r203989%_)))))))
          (let* ((_%$%g203928203941%_
                  (lambda (_%$%g203929203938%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203929203938%_))))
                 (_%$%g203927203981%_
                  (lambda (_%$%g203929203944%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203929203944%_))
                        (let ((_%$%e203931203946%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203929203944%_))))
                          (let ((_%$%hd203932203949%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203931203946%_)))
                                (_%$%tl203933203951%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203931203946%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl203933203951%_))
                                (let ((_%$%e203934203954%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl203933203951%_))))
                                  (let ((_%$%hd203935203957%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203934203954%_)))
                                        (_%$%tl203936203959%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203934203954%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203936203959%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd203935203957%_))
                                            (let ((_%$e203975%_
                                                   (let ((__tmp212721
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp212721
                                                      _%$%hd203935203957%_))))
                                              (if _%$e203975%_
                                                  _%$e203975%_
                                                  (let ((_%marks203979%_
                                                         (##direct-structure-ref
                                                          _%$%hd203935203957%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks203979%_)
                                                        (_%generate-simple203920%_
                                                         _%$%hd203935203957%_)
                                                        (_%generate-serialized203921%_
                                                         _%$%hd203935203957%_
                                                         _%marks203979%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd203935203957%_)))
                                        (_%$%g203928203941%_
                                         _%$%g203929203944%_))))
                                (_%$%g203928203941%_ _%$%g203929203944%_))))
                        (_%$%g203928203941%_ _%$%g203929203944%_)))))
            (_%$%g203927203981%_ _%stx203916%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self203847%_ _%stx203848%_)
        (let* ((_%$%g203850203867%_
                (lambda (_%$%g203851203864%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203851203864%_))))
               (_%$%g203849203912%_
                (lambda (_%$%g203851203870%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203851203870%_))
                      (let ((_%$%e203854203872%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203851203870%_))))
                        (let ((_%$%hd203855203875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203854203872%_)))
                              (_%$%tl203856203877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203854203872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203856203877%_))
                              (let ((_%$%e203857203880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203856203877%_))))
                                (let ((_%$%hd203858203883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203857203880%_)))
                                      (_%$%tl203859203885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203857203880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203859203885%_))
                                      (let ((_%$%e203860203888%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203859203885%_))))
                                        (let ((_%$%hd203861203891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203860203888%_)))
                                              (_%$%tl203862203893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203860203888%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203862203893%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd203858203883%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self203847%_
                           _%$%hd203861203891%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203850203867%_
                                               _%$%g203851203870%_))))
                                      (_%$%g203850203867%_
                                       _%$%g203851203870%_))))
                              (_%$%g203850203867%_ _%$%g203851203870%_))))
                      (_%$%g203850203867%_ _%$%g203851203870%_)))))
          (_%$%g203849203912%_ _%stx203848%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self203796%_ _%stx203797%_)
        (let* ((_%$%g203799203809%_
                (lambda (_%$%g203800203806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203800203806%_))))
               (_%$%g203798203844%_
                (lambda (_%$%g203800203812%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203800203812%_))
                      (let ((_%$%e203802203814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203800203812%_))))
                        (let ((_%$%hd203803203817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203802203814%_)))
                              (_%$%tl203804203819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203802203814%_))))
                          (let* ((_%c-body203836%_
                                  (map (lambda (_%$%g203831203833%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self203796%_
                                            _%$%g203831203833%_)))
                                       _%$%tl203804203819%_))
                                 (_%c-body203841%_
                                  (let ((__tmp212722
                                         (lambda (_%$obj203838%_)
                                           (not (eq? _%$obj203838%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp212722 _%c-body203836%_))))
                            (cons '%#begin _%c-body203841%_))))
                      (_%$%g203799203809%_ _%$%g203800203812%_)))))
          (_%$%g203798203844%_ _%stx203797%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self203701%_ _%stx203702%_)
        (let* ((_%$%g203704203714%_
                (lambda (_%$%g203705203711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203705203711%_))))
               (_%$%g203703203793%_
                (lambda (_%$%g203705203717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203705203717%_))
                      (let ((_%$%e203707203719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203705203717%_))))
                        (let ((_%$%hd203708203722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203707203719%_)))
                              (_%$%tl203709203724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203707203719%_))))
                          (let* ((_%phi203737%_
                                  (let ((__tmp212723
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp212723 '1)))
                                 (_%block203739%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self203701%_ 'state))
                                   _%phi203737%_))
                                 (_%compiled203742%_
                                  (let ((__tmp212724
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self203701%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl203709203724%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp212724
                                     gx#current-expander-phi
                                     _%phi203737%_)))
                                 (_%$%g203745203755%_
                                  (lambda (_%$%g203746203752%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g203746203752%_))))
                                 (_%$%g203744203790%_
                                  (lambda (_%$%g203746203758%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g203746203758%_))
                                        (let ((_%$%e203748203760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g203746203758%_))))
                                          (let ((_%$%hd203749203763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203748203760%_)))
                                                (_%$%tl203750203765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203748203760%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd203749203763%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd203749203763%_))
                                                    (let ((_%c-body203785%_
                                                           (filter (lambda (_%$obj203782%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj203782%_ '#!void)))
                           _%$%tl203750203765%_)))
              (if _%block203739%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block203739%_
                                                            '()))
                                                '())))
                              _%c-body203785%_))
                  (if (null? _%c-body203785%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body203785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g203745203755%_
                                                     _%$%g203746203758%_))
                                                (_%$%g203745203755%_
                                                 _%$%g203746203758%_))))
                                        (_%$%g203745203755%_
                                         _%$%g203746203758%_)))))
                            (_%$%g203744203790%_ _%compiled203742%_))))
                      (_%$%g203704203714%_ _%$%g203705203717%_)))))
          (_%$%g203703203793%_ _%stx203702%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self203632%_ _%stx203633%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self203632%_ 'state)))
        (let* ((_%$%g203635203649%_
                (lambda (_%$%g203636203646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203636203646%_))))
               (_%$%g203634203698%_
                (lambda (_%$%g203636203652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203636203652%_))
                      (let ((_%$%e203639203654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203636203652%_))))
                        (let ((_%$%hd203640203657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203639203654%_)))
                              (_%$%tl203641203659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203639203654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203641203659%_))
                              (let ((_%$%e203642203662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203641203659%_))))
                                (let ((_%$%hd203643203665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203642203662%_)))
                                      (_%$%tl203644203667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203642203662%_))))
                                  (let ((_%key203684%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd203643203665%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key203684%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx203633%_
                                           _%$%hd203643203665%_
                                           _%key203684%_)))
                                    (let* ((_%ctx203686%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd203643203665%_)))
                                           (_%code203689%_
                                            (let ((__tmp212725
                                                   (lambda ()
                                                     (let ((__tmp212726
                                                            (##structure-ref
                                                             _%ctx203686%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self203632%_
                                                        __tmp212726)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp212725
                                               gx#current-expander-context
                                               _%ctx203686%_)))
                                           (_%rt203691%_
                                            (let ((__tmp212727
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp212727
                                               _%ctx203686%_)))
                                           (_%loader203693%_
                                            (if _%rt203691%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt203691%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid203695%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd203643203665%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self203632%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid203695%_
                                                  (cons _%code203689%_
                                                        _%loader203693%_)))))))
                              (_%$%g203635203649%_ _%$%g203636203652%_))))
                      (_%$%g203635203649%_ _%$%g203636203652%_)))))
          (_%$%g203634203698%_ _%stx203633%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx203619%_ _%context-chain203620%_)
        (let _%lp203622%_ ((_%ctx203624%_ _%ctx203619%_) (_%path203625%_ '()))
          (let ((_%super203627%_
                 (##structure-ref _%ctx203624%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super203627%_ _%context-chain203620%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx203624%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path203625%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super203627%_
                       'gx#module-context::t))
                    (_%lp203622%_
                     _%super203627%_
                     (cons (car (##structure-ref
                                 _%ctx203624%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path203625%_))
                    (cons (let ((__tmp212728
                                 (##structure-ref
                                  _%ctx203624%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp212728))
                          _%path203625%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp203612%_ ((_%ctx203614%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r203615%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx203614%_ 'gx#module-context::t))
              (_%lp203612%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx203614%_ '3 '#f '#f))
               (cons _%ctx203614%_ _%r203615%_))
              _%r203615%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self203377%_ _%stx203378%_)
        (letrec* ((_%context-chain203380%_ (gxc#current-context-chain))
                  (_%make-import-spec203381%_
                   (lambda (_%in203549%_)
                     (let* ((_%$%in203550203562%_ _%in203549%_)
                            (_%$%E203552203565%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in203550203562%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K203553203575%_
                             (lambda (_%phi203568%_
                                      _%name203569%_
                                      _%src-name203570%_
                                      _%src-phi203571%_
                                      _%src-key203572%_
                                      _%src-ctx203573%_)
                               (cons _%phi203568%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name203569%_))
                                           (cons _%src-phi203571%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name203570%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in203550203562%_
                              'gx#module-import::t))
                           (let ((_%$%e203554203578%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in203550203562%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e203554203578%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e203557203581%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e203554203578%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx203584%_ _%$%e203557203581%_)
                                        (_%$%e203558203586%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e203554203578%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key203589%_ _%$%e203558203586%_)
                                        (_%$%e203559203591%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e203554203578%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi203594%_ _%$%e203559203591%_)
                                        (_%$%e203560203596%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e203554203578%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name203599%_
                                         _%$%e203560203596%_)
                                        (_%$%e203555203601%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in203550203562%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name203604%_ _%$%e203555203601%_)
                                        (_%$%e203556203606%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in203550203562%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi203609%_ _%$%e203556203606%_))
                                   (_%$%K203553203575%_
                                    _%phi203609%_
                                    _%name203604%_
                                    _%src-name203599%_
                                    _%src-phi203594%_
                                    _%src-key203589%_
                                    _%src-ctx203584%_))
                                 (_%$%E203552203565%_)))
                           (_%$%E203552203565%_)))))
                  (_%make-import-path203382%_
                   (lambda (_%ctx203547%_)
                     (gxc#generate-meta-import-path
                      _%ctx203547%_
                      _%context-chain203380%_)))
                  (_%make-import-spec-in203383%_
                   (lambda (_%ctx203544%_ _%in203545%_)
                     (cons 'spec:
                           (cons (_%make-import-path203382%_ _%ctx203544%_)
                                 (reverse _%in203545%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self203377%_ 'state)))
          (let* ((_%$%g203385203395%_
                  (lambda (_%$%g203386203392%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203386203392%_))))
                 (_%$%g203384203541%_
                  (lambda (_%$%g203386203398%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203386203398%_))
                        (let ((_%$%e203388203400%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203386203398%_))))
                          (let ((_%$%hd203389203403%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203388203400%_)))
                                (_%$%tl203390203405%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203388203400%_))))
                            (let _%lp203419%_ ((_%rest203421%_
                                                _%$%tl203390203405%_)
                                               (_%current-src203422%_ '#f)
                                               (_%current-in203423%_ '())
                                               (_%r203424%_ '()))
                              (let* ((_%$%rest203425203433%_ _%rest203421%_)
                                     (_%$%else203427203443%_
                                      (lambda ()
                                        (let ((_%r203441%_
                                               (if _%current-src203422%_
                                                   (cons (_%make-import-spec-in203383%_
                                                          _%current-src203422%_
                                                          _%current-in203423%_)
                                                         _%r203424%_)
                                                   _%r203424%_)))
                                          (cons '%#import
                                                (reverse _%r203441%_)))))
                                     (_%$%K203429203529%_
                                      (lambda (_%rest203446%_ _%in203447%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in203447%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in203449203456%_
                                                    _%in203447%_)
                                                   (_%$%E203451203459%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in203449203456%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K203452203467%_
                                                    (lambda (_%src-ctx203462%_)
                                                      (if (eq? _%current-src203422%_
                                                               _%src-ctx203462%_)
                                                          (_%lp203419%_
                                                           _%rest203446%_
                                                           _%current-src203422%_
                                                           (cons (_%make-import-spec203381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in203447%_)
                         _%current-in203423%_)
                   _%r203424%_)
                  (if _%current-src203422%_
                      (_%lp203419%_
                       _%rest203446%_
                       _%src-ctx203462%_
                       (cons (_%make-import-spec203381%_ _%in203447%_) '())
                       (cons (_%make-import-spec-in203383%_
                              _%current-src203422%_
                              _%current-in203423%_)
                             _%r203424%_))
                      (_%lp203419%_
                       _%rest203446%_
                       _%src-ctx203462%_
                       (cons (_%make-import-spec203381%_ _%in203447%_) '())
                       _%r203424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e203453203470%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in203449203456%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e203453203470%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e203454203473%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e203453203470%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx203476%_
                                                          _%$%e203454203473%_))
                                                    (_%$%K203452203467%_
                                                     _%src-ctx203476%_))
                                                  (_%$%E203451203459%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in203447%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi203479%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in203447%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src203481%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in203447%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in203521%_
                                                        (let* ((_%$%g203482203491%_
                                                                (_%make-import-path203382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src203481%_))
                       (_%$%E203485203495%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g203482203491%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K203487203511%_
                         (lambda (_%path203509%_) _%path203509%_))
                        (_%$%K203486203501%_
                         (lambda (_%path203499%_) (cons 'in: _%path203499%_))))
                    (if (pair? _%$%g203482203491%_)
                        (let ((_%$%tl203489203516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g203482203491%_)))
                              (_%$%hd203488203514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g203482203491%_))))
                          (if (null? _%$%tl203489203516%_)
                              (let ((_%path203519%_ _%$%hd203488203514%_))
                                (_%$%K203487203511%_ _%path203519%_))
                              (let ((_%path203504%_ _%$%g203482203491%_))
                                (_%$%K203486203501%_ _%path203504%_))))
                        (let ((_%path203504%_ _%$%g203482203491%_))
                          (_%$%K203486203501%_ _%path203504%_))))))
               (_%r203523%_
                (if _%current-src203422%_
                    (cons (_%make-import-spec-in203383%_
                           _%current-src203422%_
                           _%current-in203423%_)
                          _%r203424%_)
                    _%r203424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp203419%_
                                                   _%rest203446%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi203479%_)
                                                             _%src-in203521%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi203479%_ (cons _%src-in203521%_ '()))))
                 _%r203523%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in203447%_
                                                       'gx#module-context::t))
                                                    (let ((_%r203527%_
                                                           (if _%current-src203422%_
                                                               (cons (_%make-import-spec-in203383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src203422%_
                              _%current-in203423%_)
                             _%r203424%_)
                       _%r203424%_)))
              (_%lp203419%_
               _%rest203446%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path203382%_ _%in203447%_))
                     _%r203527%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest203425203433%_)
                                    (let ((_%$%hd203430203532%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest203425203433%_)))
                                          (_%$%tl203431203534%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest203425203433%_))))
                                      (let* ((_%in203537%_
                                              _%$%hd203430203532%_)
                                             (_%rest203539%_
                                              _%$%tl203431203534%_))
                                        (_%$%K203429203529%_
                                         _%rest203539%_
                                         _%in203537%_)))
                                    (_%$%else203427203443%_))))))
                        (_%$%g203385203395%_ _%$%g203386203398%_)))))
            (_%$%g203384203541%_ _%stx203378%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self203187%_ _%stx203188%_)
        (letrec* ((_%context-chain203190%_ (gxc#current-context-chain))
                  (_%make-import-path203191%_
                   (lambda (_%ctx203375%_)
                     (gxc#generate-meta-import-path
                      _%ctx203375%_
                      _%context-chain203190%_))))
          (let* ((_%$%g203193203203%_
                  (lambda (_%$%g203194203200%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203194203200%_))))
                 (_%$%g203192203372%_
                  (lambda (_%$%g203194203206%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203194203206%_))
                        (let ((_%$%e203196203208%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203194203206%_))))
                          (let ((_%$%hd203197203211%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203196203208%_)))
                                (_%$%tl203198203213%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203196203208%_))))
                            (let _%lp203227%_ ((_%rest203229%_
                                                _%$%tl203198203213%_)
                                               (_%r203230%_ '()))
                              (let* ((_%$%rest203231203239%_ _%rest203229%_)
                                     (_%$%else203233203247%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r203230%_))))
                                     (_%$%K203235203360%_
                                      (lambda (_%rest203250%_ _%out203251%_)
                                        (let* ((_%$%out203252203265%_
                                                _%out203251%_)
                                               (_%$%E203255203269%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out203252203265%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K203259203339%_
                                                 (lambda (_%name203335%_
                                                          _%phi203336%_
                                                          _%key203337%_)
                                                   (_%lp203227%_
                                                    _%rest203250%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi203336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key203337%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name203335%_))
                                          '()))))
                  _%r203230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K203256203319%_
                                                 (lambda (_%phi203273%_
                                                          _%src203274%_)
                                                   (let* ((_%out203314%_
                                                           (if _%src203274%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g203275203284%_
                                           (_%make-import-path203191%_
                                            _%src203274%_))
                                          (_%$%E203278203288%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g203275203284%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K203280203304%_
                                            (lambda (_%path203302%_)
                                              _%path203302%_))
                                           (_%$%K203279203294%_
                                            (lambda (_%path203292%_)
                                              (cons 'in: _%path203292%_))))
                                       (if (pair? _%$%g203275203284%_)
                                           (let ((_%$%tl203282203309%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g203275203284%_)))
                                                 (_%$%hd203281203307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g203275203284%_))))
                                             (if (null? _%$%tl203282203309%_)
                                                 (let ((_%path203312%_
                                                        _%$%hd203281203307%_))
                                                   (_%$%K203280203304%_
                                                    _%path203312%_))
                                                 (let ((_%path203297%_
                                                        _%$%g203275203284%_))
                                                   (_%$%K203279203294%_
                                                    _%path203297%_))))
                                           (let ((_%path203297%_
                                                  _%$%g203275203284%_))
                                             (_%$%K203279203294%_
                                              _%path203297%_)))))
                                   '()))
                       '#t))
                  (_%out203316%_
                   (if (fxzero? _%phi203273%_)
                       _%out203314%_
                       (cons 'phi:
                             (cons _%phi203273%_ (cons _%out203314%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp203227%_
                                                      _%rest203250%_
                                                      (cons _%out203316%_
                                                            _%r203230%_))))))
                                            (let ((_%$%try-match203254203332%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out203252203265%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e203257203322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out203252203265%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e203258203327%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out203252203265%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src203325%_ _%$%e203257203322%_)
                         (_%phi203330%_ _%$%e203258203327%_))
                     (_%$%K203256203319%_ _%phi203330%_ _%src203325%_)))
                 (_%$%E203255203269%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out203252203265%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e203260203342%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out203252203265%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e203261203345%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out203252203265%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e203262203350%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out203252203265%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e203263203355%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out203252203265%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key203348%_
                                                           _%$%e203261203345%_)
                                                          (_%phi203353%_
                                                           _%$%e203262203350%_)
                                                          (_%name203358%_
                                                           _%$%e203263203355%_))
                                                      (_%$%K203259203339%_
                                                       _%name203358%_
                                                       _%phi203353%_
                                                       _%key203348%_)))
                                                  (_%$%try-match203254203332%_))))))))
                                (if (pair? _%$%rest203231203239%_)
                                    (let ((_%$%hd203236203363%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest203231203239%_)))
                                          (_%$%tl203237203365%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest203231203239%_))))
                                      (let* ((_%out203368%_
                                              _%$%hd203236203363%_)
                                             (_%rest203370%_
                                              _%$%tl203237203365%_))
                                        (_%$%K203235203360%_
                                         _%rest203370%_
                                         _%out203368%_)))
                                    (_%$%else203233203247%_))))))
                        (_%$%g203193203203%_ _%$%g203194203206%_)))))
            (_%$%g203192203372%_ _%stx203188%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self203148%_ _%stx203149%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self203148%_ 'state)))
        (let* ((_%$%g203151203161%_
                (lambda (_%$%g203152203158%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203152203158%_))))
               (_%$%g203150203184%_
                (lambda (_%$%g203152203164%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203152203164%_))
                      (let ((_%$%e203154203166%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203152203164%_))))
                        (let ((_%$%hd203155203169%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203154203166%_)))
                              (_%$%tl203156203171%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203154203166%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl203156203171%_))))
                      (_%$%g203151203161%_ _%$%g203152203164%_)))))
          (_%$%g203150203184%_ _%stx203149%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self203023%_ _%stx203024%_)
        (letrec ((_%generate1203026%_
                  (lambda (_%id203143%_ _%eid203144%_)
                    (let ((_%eid203146%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid203144%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid203146%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx203024%_
                             _%eid203146%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id203143%_))
                            (cons _%eid203146%_ '()))))))
          (let* ((_%$%g203028203056%_
                  (lambda (_%$%g203029203053%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203029203053%_))))
                 (_%$%g203027203140%_
                  (lambda (_%$%g203029203059%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203029203059%_))
                        (let ((_%$%e203032203061%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203029203059%_))))
                          (let ((_%$%hd203033203064%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203032203061%_)))
                                (_%$%tl203034203066%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203032203061%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl203034203066%_))
                                (let ((_g212729_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl203034203066%_
                                          '0))))
                                  (begin
                                    (let ((_g212730_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g212729_)
                                                 (##values-length _g212729_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g212730_ 2)))
                                          (error "Context expects 2 values"
                                                 _g212730_)))
                                    (let ((_%$%target203035203069%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g212729_ 0)))
                                          (_%$%tl203037203071%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g212729_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl203037203071%_))
                                          (letrec ((_%$%loop203038203074%_
                                                    (lambda (_%$%hd203036203077%_
                                                             _%$%eid203042203079%_
                                                             _%$%id203043203080%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd203036203077%_))
                                                          (let ((_%$%e203039203082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd203036203077%_))))
                    (let ((_%$%lp-hd203040203085%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e203039203082%_)))
                          (_%$%lp-tl203041203087%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e203039203082%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd203040203085%_))
                          (let ((_%$%e203046203090%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd203040203085%_))))
                            (let ((_%$%hd203047203093%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203046203090%_)))
                                  (_%$%tl203048203095%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203046203090%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl203048203095%_))
                                  (let ((_%$%e203049203098%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl203048203095%_))))
                                    (let ((_%$%hd203050203101%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203049203098%_)))
                                          (_%$%tl203051203103%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203049203098%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl203051203103%_))
                                          (_%$%loop203038203074%_
                                           _%$%lp-tl203041203087%_
                                           (cons _%$%hd203050203101%_
                                                 _%$%eid203042203079%_)
                                           (cons _%$%hd203047203093%_
                                                 _%$%id203043203080%_))
                                          (_%$%g203028203056%_
                                           _%$%g203029203059%_))))
                                  (_%$%g203028203056%_ _%$%g203029203059%_))))
                          (_%$%g203028203056%_ _%$%g203029203059%_))))
                  (let ((_%$%eid203044203106%_ (reverse _%$%eid203042203079%_))
                        (_%$%id203045203107%_ (reverse _%$%id203043203080%_)))
                    (cons '%#extern
                          (map _%generate1203026%_
                               (let ((__tmp212731
                                      (lambda (_%$%g203125203128%_
                                               _%$%g203126203130%_)
                                        (cons _%$%g203125203128%_
                                              _%$%g203126203130%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp212731
                                  '()
                                  _%$%id203045203107%_))
                               (let ((__tmp212732
                                      (lambda (_%$%g203132203135%_
                                               _%$%g203133203137%_)
                                        (cons _%$%g203132203135%_
                                              _%$%g203133203137%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp212732
                                  '()
                                  _%$%eid203044203106%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop203038203074%_
                                             _%$%target203035203069%_
                                             '()
                                             '()))
                                          (_%$%g203028203056%_
                                           _%$%g203029203059%_)))))
                                (_%$%g203028203056%_ _%$%g203029203059%_))))
                        (_%$%g203028203056%_ _%$%g203029203059%_)))))
            (_%$%g203027203140%_ _%stx203024%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self202951%_ _%stx202952%_)
        (let* ((_%$%g202954202971%_
                (lambda (_%$%g202955202968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202955202968%_))))
               (_%$%g202953203020%_
                (lambda (_%$%g202955202974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202955202974%_))
                      (let ((_%$%e202958202976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202955202974%_))))
                        (let ((_%$%hd202959202979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202958202976%_)))
                              (_%$%tl202960202981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202958202976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202960202981%_))
                              (let ((_%$%e202961202984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202960202981%_))))
                                (let ((_%$%hd202962202987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202961202984%_)))
                                      (_%$%tl202963202989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202961202984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202963202989%_))
                                      (let ((_%$%e202964202992%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202963202989%_))))
                                        (let ((_%$%hd202965202995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202964202992%_)))
                                              (_%$%tl202966202997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202964202992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202966202997%_))
                                              (let ((_%ident203016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd202962202987%_)))
                                                    (_%eid203017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd202965202995%_)))
                                                    (_%props203018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd202962202987%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident203016%_
                                                            (cons _%eid203017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props203018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202954202971%_
                                               _%$%g202955202974%_))))
                                      (_%$%g202954202971%_
                                       _%$%g202955202974%_))))
                              (_%$%g202954202971%_ _%$%g202955202974%_))))
                      (_%$%g202954202971%_ _%$%g202955202974%_)))))
          (_%$%g202953203020%_ _%stx202952%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self202740%_ _%stx202741%_)
        (letrec ((_%generate1202743%_
                  (lambda (_%id202945%_)
                    (let ((_%eid202947%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id202945%_)))
                          (_%ident202948%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id202945%_)))
                          (_%props202949%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id202945%_))))
                      (cons '%#define-runtime
                            (cons _%ident202948%_
                                  (cons _%eid202947%_ _%props202949%_))))))
                 (_%generate*202744%_
                  (lambda (_%all202913%_)
                    (let* ((_%$%all202914202922%_ _%all202913%_)
                           (_%$%else202916202930%_
                            (lambda () (cons '%#begin _%all202913%_)))
                           (_%$%K202918202935%_
                            (lambda (_%one202933%_) _%one202933%_)))
                      (if (pair? _%$%all202914202922%_)
                          (let ((_%$%hd202919202938%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all202914202922%_)))
                                (_%$%tl202920202940%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all202914202922%_))))
                            (let ((_%one202943%_ _%$%hd202919202938%_))
                              (if (null? _%$%tl202920202940%_)
                                  (_%$%K202918202935%_ _%one202943%_)
                                  (_%$%else202916202930%_))))
                          (_%$%else202916202930%_))))))
          (let* ((_%$%g202746202763%_
                  (lambda (_%$%g202747202760%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202747202760%_))))
                 (_%$%g202745202910%_
                  (lambda (_%$%g202747202766%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202747202766%_))
                        (let ((_%$%e202750202768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202747202766%_))))
                          (let ((_%$%hd202751202771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202750202768%_)))
                                (_%$%tl202752202773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202750202768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl202752202773%_))
                                (let ((_%$%e202753202776%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl202752202773%_))))
                                  (let ((_%$%hd202754202779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202753202776%_)))
                                        (_%$%tl202755202781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202753202776%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202755202781%_))
                                        (let ((_%$%e202756202784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202755202781%_))))
                                          (let ((_%$%hd202757202787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202756202784%_)))
                                                (_%$%tl202758202789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202756202784%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202758202789%_))
                                                (let _%lp202809%_ ((_%rest202811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd202754202779%_)
                           (_%r202812%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx212467212468%_
                                                          _%rest202811%_)
                                                         (_%$%g202817202834%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx212467212468%_)))))
                                                    (let ((_%__kont212469212470%_
                                                           (lambda (_%$%g202819202897%_)
                                                             (_%lp202809%_
                                                              _%$%g202819202897%_
                                                              _%r202812%_)))
                                                          (_%__kont212471212472%_
                                                           (lambda (_%$%g202824202870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g202825202871%_)
                     (_%lp202809%_
                      _%$%g202824202870%_
                      (cons (_%generate1202743%_ _%$%g202825202871%_)
                            _%r202812%_))))
                  (_%__kont212473212474%_
                   (lambda (_%$%g202829202846%_)
                     (_%generate*202744%_
                      (let ((__tmp212733
                             (cons (_%generate1202743%_ _%$%g202829202846%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp212733 _%r202812%_)))))
                  (_%__kont212475212476%_
                   (lambda () (_%generate*202744%_ (reverse! _%r202812%_)))))
              (let ((_%$%g202815202857%_
                     (lambda ()
                       (let ((_%$%g202829202846%_ _%__stx212467212468%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g202829202846%_))
                             (_%__kont212473212474%_ _%$%g202829202846%_)
                             (_%__kont212475212476%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx212467212468%_))
                    (let ((_%$%e202820202886%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx212467212468%_))))
                      (let ((_%$%tl202822202891%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e202820202886%_)))
                            (_%$%hd202821202889%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e202820202886%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd202821202889%_))
                            (let ((_%$%e202823202894%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd202821202889%_))))
                              (if (equal? _%$%e202823202894%_ '#f)
                                  (_%__kont212469212470%_ _%$%tl202822202891%_)
                                  (_%__kont212471212472%_
                                   _%$%tl202822202891%_
                                   _%$%hd202821202889%_)))
                            (_%__kont212471212472%_
                             _%$%tl202822202891%_
                             _%$%hd202821202889%_))))
                    (_%$%g202815202857%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g202746202763%_
                                                 _%$%g202747202766%_))))
                                        (_%$%g202746202763%_
                                         _%$%g202747202766%_))))
                                (_%$%g202746202763%_ _%$%g202747202766%_))))
                        (_%$%g202746202763%_ _%$%g202747202766%_)))))
            (_%$%g202745202910%_ _%stx202741%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self202637%_ _%stx202638%_)
        (let* ((_%$%g202640202657%_
                (lambda (_%$%g202641202654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202641202654%_))))
               (_%$%g202639202737%_
                (lambda (_%$%g202641202660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202641202660%_))
                      (let ((_%$%e202644202662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202641202660%_))))
                        (let ((_%$%hd202645202665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202644202662%_)))
                              (_%$%tl202646202667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202644202662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202646202667%_))
                              (let ((_%$%e202647202670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202646202667%_))))
                                (let ((_%$%hd202648202673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202647202670%_)))
                                      (_%$%tl202649202675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202647202670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202649202675%_))
                                      (let ((_%$%e202650202678%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202649202675%_))))
                                        (let ((_%$%hd202651202681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202650202678%_)))
                                              (_%$%tl202652202683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202650202678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202652202683%_))
                                              (let* ((_%eid202702%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd202648202673%_)))
                                                     (_%phi202704%_
                                                      (let ((__tmp212734
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp212734 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block202706%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self202637%_
                                                          'state))
                                                       _%phi202704%_)))
                                                (let* ((_%$%g202709202716%_
                                                        (lambda (_%$%g202710202713%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g202710202713%_))))
                                                       (_%$%g202708202734%_
                                                        (lambda (_%$%g202710202719%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self202637%_
                                                              'state))
                                                           _%phi202704%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g202710202719%_
                               (cons _%$%hd202651202681%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g202708202734%_
                                                   _%eid202702%_))
                                                (if _%block202706%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block202706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd202648202673%_))
                                          (cons _%eid202702%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd202648202673%_))
                        (cons _%eid202702%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202640202657%_
                                               _%$%g202641202660%_))))
                                      (_%$%g202640202657%_
                                       _%$%g202641202660%_))))
                              (_%$%g202640202657%_ _%$%g202641202660%_))))
                      (_%$%g202640202657%_ _%$%g202641202660%_)))))
          (_%$%g202639202737%_ _%stx202638%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self202569%_ _%stx202570%_)
        (let* ((_%$%g202572202589%_
                (lambda (_%$%g202573202586%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202573202586%_))))
               (_%$%g202571202634%_
                (lambda (_%$%g202573202592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202573202592%_))
                      (let ((_%$%e202576202594%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202573202592%_))))
                        (let ((_%$%hd202577202597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202576202594%_)))
                              (_%$%tl202578202599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202576202594%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202578202599%_))
                              (let ((_%$%e202579202602%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202578202599%_))))
                                (let ((_%$%hd202580202605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202579202602%_)))
                                      (_%$%tl202581202607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202579202602%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202581202607%_))
                                      (let ((_%$%e202582202610%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202581202607%_))))
                                        (let ((_%$%hd202583202613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202582202610%_)))
                                              (_%$%tl202584202615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202582202610%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202584202615%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd202580202605%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd202583202613%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202572202589%_
                                               _%$%g202573202592%_))))
                                      (_%$%g202572202589%_
                                       _%$%g202573202592%_))))
                              (_%$%g202572202589%_ _%$%g202573202592%_))))
                      (_%$%g202572202589%_ _%$%g202573202592%_)))))
          (_%$%g202571202634%_ _%stx202570%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self202566%_ _%stx202567%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self202566%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx202567%_)
        (gxc#generate-meta-define-values% _%self202566%_ _%stx202567%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self202563%_ _%stx202564%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self202563%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx202564%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp212736 (list)) (__tmp212735 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp212736
         '(src n open blocks)
         __tmp212735
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args202560%_
        (apply make-instance gxc#meta-state::t _%$args202560%_)))
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
      (lambda (_%self202546%_ _%ctx202547%_)
        (let ((_%self202550%_ _%self202546%_))
          (if (let ((__tmp212737
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self202550%_))))
                (declare (not safe))
                (##fx< '4 __tmp212737))
              (begin
                (let ((__tmp212738
                       (let ((__tmp212739
                              (##structure-ref
                               _%ctx202547%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp212739))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self202550%_
                   __tmp212738
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self202550%_ '1 '2 '#f '#f))
                (let ((__tmp212740
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self202550%_
                   __tmp212740
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self202550%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp212741
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self202550%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self202550%_
                       '4
                       __tmp212741))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp212743 (list)) (__tmp212742 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp212743
         '(ctx phi n code)
         __tmp212742
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args202421%_
        (apply make-instance gxc#meta-state-block::t _%$args202421%_)))
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
      (lambda (_%state202381%_ _%phi202382%_)
        (let* ((_%$%state202383202391%_ _%state202381%_)
               (_%$%E202385202394%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state202383202391%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K202386202403%_
                (lambda (_%open202397%_ _%n202398%_ _%src202399%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open202397%_ _%phi202382%_))
                      '#f
                      (let ((_%block-ref202401%_
                             (let ((__tmp212744 (number->string _%n202398%_)))
                               (declare (not safe))
                               (##string-append
                                _%src202399%_
                                '"~"
                                __tmp212744))))
                        (##structure-set!
                         _%state202381%_
                         (let () (declare (not safe)) (##fx+ _%n202398%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp212745
                               (let ((__tmp212746
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp212746
                                  _%phi202382%_
                                  _%n202398%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open202397%_ _%phi202382%_ __tmp212745))
                        _%block-ref202401%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state202383202391%_
                 'gxc#meta-state::t))
              (let* ((_%$%e202387202406%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state202383202391%_
                         '1
                         '#f
                         '#f)))
                     (_%src202409%_ _%$%e202387202406%_)
                     (_%$%e202388202411%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state202383202391%_
                         '2
                         '#f
                         '#f)))
                     (_%n202414%_ _%$%e202388202411%_)
                     (_%$%e202389202416%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state202383202391%_
                         '3
                         '#f
                         '#f)))
                     (_%open202419%_ _%$%e202389202416%_))
                (_%$%K202386202403%_ _%open202419%_ _%n202414%_ _%src202409%_))
              (_%$%E202385202394%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state202375%_ _%phi202376%_ _%stx202377%_)
        (let ((_%block202379%_
               (let ((__tmp212747
                      (##structure-ref
                       _%state202375%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp212747 _%phi202376%_))))
          (##structure-set!
           _%block202379%_
           (cons _%stx202377%_
                 (##structure-ref
                  _%block202379%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state202369%_)
        (##structure-set!
         _%state202369%_
         (let ((__tmp212750
                (lambda (_%_202371%_ _%block202372%_ _%r202373%_)
                  (cons _%block202372%_ _%r202373%_)))
               (__tmp212749
                (##structure-ref _%state202369%_ '4 gxc#meta-state::t '#f))
               (__tmp212748
                (##structure-ref _%state202369%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp212750 __tmp212749 __tmp212748))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state202369%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state202322%_)
        (gxc#meta-state-end-phi! _%state202322%_)
        (let ((__tmp212752
               (lambda (_%block202324%_ _%r202325%_)
                 (let* ((_%$%block202326202335%_ _%block202324%_)
                        (_%$%E202328202338%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block202326202335%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K202329202346%_
                         (lambda (_%code202341%_
                                  _%n202342%_
                                  _%phi202343%_
                                  _%ctx202344%_)
                           (if (null? _%code202341%_)
                               _%r202325%_
                               (cons (cons _%ctx202344%_
                                           (cons _%phi202343%_
                                                 (cons _%n202342%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code202341%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r202325%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block202326202335%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e202330202349%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block202326202335%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx202352%_ _%$%e202330202349%_)
                              (_%$%e202331202354%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block202326202335%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi202357%_ _%$%e202331202354%_)
                              (_%$%e202332202359%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block202326202335%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n202362%_ _%$%e202332202359%_)
                              (_%$%e202333202364%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block202326202335%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code202367%_ _%$%e202333202364%_))
                         (_%$%K202329202346%_
                          _%code202367%_
                          _%n202362%_
                          _%phi202357%_
                          _%ctx202352%_))
                       (_%$%E202328202338%_)))))
              (__tmp212751
               (##structure-ref _%state202322%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp212752 '() __tmp212751))))
    (define gxc#collect-expression-refs
      (lambda (_%stx202318%_)
        (let ((_%ht202320%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht202320%_ _%stx202318%_)
          _%ht202320%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self202261%_ _%stx202262%_)
        (let* ((_%$%g202264202277%_
                (lambda (_%$%g202265202274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202265202274%_))))
               (_%$%g202263202315%_
                (lambda (_%$%g202265202280%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202265202280%_))
                      (let ((_%$%e202267202282%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202265202280%_))))
                        (let ((_%$%hd202268202285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202267202282%_)))
                              (_%$%tl202269202287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202267202282%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202269202287%_))
                              (let ((_%$%e202270202290%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202269202287%_))))
                                (let ((_%$%hd202271202293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202270202290%_)))
                                      (_%$%tl202272202295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202270202290%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl202272202295%_))
                                      (let* ((_%bind202310%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd202271202293%_)))
                                             (_%eid202312%_
                                              (if _%bind202310%_
                                                  (##structure-ref
                                                   _%bind202310%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd202271202293%_))))
                                             (__tmp212753
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self202261%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp212753
                                         _%eid202312%_
                                         _%eid202312%_))
                                      (_%$%g202264202277%_
                                       _%$%g202265202280%_))))
                              (_%$%g202264202277%_ _%$%g202265202280%_))))
                      (_%$%g202264202277%_ _%$%g202265202280%_)))))
          (_%$%g202263202315%_ _%stx202262%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self202188%_ _%stx202189%_)
        (let* ((_%$%g202191202208%_
                (lambda (_%$%g202192202205%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202192202205%_))))
               (_%$%g202190202258%_
                (lambda (_%$%g202192202211%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202192202211%_))
                      (let ((_%$%e202195202213%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202192202211%_))))
                        (let ((_%$%hd202196202216%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202195202213%_)))
                              (_%$%tl202197202218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202195202213%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202197202218%_))
                              (let ((_%$%e202198202221%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202197202218%_))))
                                (let ((_%$%hd202199202224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202198202221%_)))
                                      (_%$%tl202200202226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202198202221%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202200202226%_))
                                      (let ((_%$%e202201202229%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202200202226%_))))
                                        (let ((_%$%hd202202202232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202201202229%_)))
                                              (_%$%tl202203202234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202201202229%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202203202234%_))
                                              (let* ((_%bind202253%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd202199202224%_)))
                                                     (_%eid202255%_
                                                      (if _%bind202253%_
                                                          (##structure-ref
                                                           _%bind202253%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd202199202224%_)))))
                                                (let ((__tmp212754
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self202188%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp212754
                                                   _%eid202255%_
                                                   _%eid202255%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self202188%_
                                                   _%$%hd202202202232%_)))
                                              (_%$%g202191202208%_
                                               _%$%g202192202211%_))))
                                      (_%$%g202191202208%_
                                       _%$%g202192202211%_))))
                              (_%$%g202191202208%_ _%$%g202192202211%_))))
                      (_%$%g202191202208%_ _%$%g202192202211%_)))))
          (_%$%g202190202258%_ _%stx202189%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self202145%_ _%stx202146%_)
        (let* ((_%$%g202148202158%_
                (lambda (_%$%g202149202155%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202149202155%_))))
               (_%$%g202147202185%_
                (lambda (_%$%g202149202161%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202149202161%_))
                      (let ((_%$%e202151202163%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202149202161%_))))
                        (let ((_%$%hd202152202166%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202151202163%_)))
                              (_%$%tl202153202168%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202151202163%_))))
                          (let ((__tmp212755
                                 (lambda (_%$%g202180202182%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self202145%_
                                      _%$%g202180202182%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp212755 _%$%tl202153202168%_))))
                      (_%$%g202148202158%_ _%$%g202149202161%_)))))
          (_%$%g202147202185%_ _%stx202146%_))))
    (define gxc#count-values-single%
      (lambda (_%self202142%_ _%stx202143%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self202010%_ _%stx202011%_)
        (let* ((_%__stx212497212498%_ _%stx202011%_)
               (_%$%g202014202043%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212497212498%_)))))
          (let ((_%__kont212499212500%_
                 (lambda (_%$%g202016202109%_ _%$%g202017202110%_)
                   (length (let ((__tmp212756
                                  (lambda (_%$%g202131202134%_
                                           _%$%g202132202136%_)
                                    (cons _%$%g202131202134%_
                                          _%$%g202132202136%_))))
                             (declare (not safe))
                             (foldr__0 __tmp212756 '() _%$%g202016202109%_)))))
                (_%__kont212503212504%_ (lambda () '#f)))
            (let ((_%__match212542212543%_
                   (lambda (_%$%e202018202055%_
                            _%$%hd202019202058%_
                            _%$%tl202020202060%_
                            _%$%e202021202063%_
                            _%$%hd202022202066%_
                            _%$%tl202023202068%_
                            _%$%e202024202071%_
                            _%$%hd202025202074%_
                            _%$%tl202026202076%_
                            _%$%e202027202079%_
                            _%$%hd202028202082%_
                            _%$%tl202029202084%_
                            _%__splice212501212502%_
                            _%$%target202030202087%_
                            _%$%tl202032202089%_)
                     (letrec ((_%$%loop202033202092%_
                               (lambda (_%$%hd202031202095%_
                                        _%$%rand202037202097%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd202031202095%_))
                                     (let ((_%$%e202034202099%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd202031202095%_))))
                                       (let ((_%$%lp-tl202036202104%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e202034202099%_)))
                                             (_%$%lp-hd202035202102%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e202034202099%_))))
                                         (_%$%loop202033202092%_
                                          _%$%lp-tl202036202104%_
                                          (cons _%$%lp-hd202035202102%_
                                                _%$%rand202037202097%_))))
                                     (let ((_%$%rand202038202107%_
                                            (reverse _%$%rand202037202097%_)))
                                       (let ((_%$%g202016202109%_
                                              _%$%rand202038202107%_)
                                             (_%$%g202017202110%_
                                              _%$%hd202028202082%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g202017202110%_
                                                'values))
                                             (_%__kont212499212500%_
                                              _%$%g202016202109%_
                                              _%$%g202017202110%_)
                                             (_%__kont212503212504%_))))))))
                       (_%$%loop202033202092%_
                        _%$%target202030202087%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx212497212498%_))
                  (let ((_%$%e202018202055%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx212497212498%_))))
                    (let ((_%$%tl202020202060%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e202018202055%_)))
                          (_%$%hd202019202058%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e202018202055%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl202020202060%_))
                          (let ((_%$%e202021202063%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl202020202060%_))))
                            (let ((_%$%tl202023202068%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e202021202063%_)))
                                  (_%$%hd202022202066%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e202021202063%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd202022202066%_))
                                  (let ((_%$%e202024202071%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd202022202066%_))))
                                    (let ((_%$%tl202026202076%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e202024202071%_)))
                                          (_%$%hd202025202074%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e202024202071%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd202025202074%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd202025202074%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl202026202076%_))
                                                  (let ((_%$%e202027202079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl202026202076%_))))
                                                    (let ((_%$%tl202029202084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e202027202079%_)))
                                                          (_%$%hd202028202082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e202027202079%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl202029202084%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl202023202068%_))
                      (let ((_%__splice212501212502%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl202023202068%_
                                '0))))
                        (let ((_%$%tl202032202089%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice212501212502%_ '1)))
                              (_%$%target202030202087%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice212501212502%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl202032202089%_))
                              (_%__match212542212543%_
                               _%$%e202018202055%_
                               _%$%hd202019202058%_
                               _%$%tl202020202060%_
                               _%$%e202021202063%_
                               _%$%hd202022202066%_
                               _%$%tl202023202068%_
                               _%$%e202024202071%_
                               _%$%hd202025202074%_
                               _%$%tl202026202076%_
                               _%$%e202027202079%_
                               _%$%hd202028202082%_
                               _%$%tl202029202084%_
                               _%__splice212501212502%_
                               _%$%target202030202087%_
                               _%$%tl202032202089%_)
                              (_%__kont212503212504%_))))
                      (_%__kont212503212504%_))
                  (_%__kont212503212504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212503212504%_))
                                              (_%__kont212503212504%_))
                                          (_%__kont212503212504%_))))
                                  (_%__kont212503212504%_))))
                          (_%__kont212503212504%_))))
                  (_%__kont212503212504%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self201915%_ _%stx201916%_)
        (let* ((_%$%g201918201939%_
                (lambda (_%$%g201919201936%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201919201936%_))))
               (_%$%g201917202007%_
                (lambda (_%$%g201919201942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201919201942%_))
                      (let ((_%$%e201923201944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201919201942%_))))
                        (let ((_%$%hd201924201947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201923201944%_)))
                              (_%$%tl201925201949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201923201944%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201925201949%_))
                              (let ((_%$%e201926201952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201925201949%_))))
                                (let ((_%$%hd201927201955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201926201952%_)))
                                      (_%$%tl201928201957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201926201952%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl201928201957%_))
                                      (let ((_%$%e201929201960%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl201928201957%_))))
                                        (let ((_%$%hd201930201963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201929201960%_)))
                                              (_%$%tl201931201965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201929201960%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl201931201965%_))
                                              (let ((_%$%e201932201968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl201931201965%_))))
                                                (let ((_%$%hd201933201971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201932201968%_)))
                                                      (_%$%tl201934201973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201932201968%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl201934201973%_))
                                                      (let ((_%$%c1201995201997%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self201915%_
                        _%$%hd201930201963%_))))
                (if _%$%c1201995201997%_
                    (let* ((_%c1201999%_ _%$%c1201995201997%_)
                           (_%$%c2202000202002%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self201915%_
                               _%$%hd201933201971%_))))
                      (if _%$%c2202000202002%_
                          (let ((_%c2202004%_ _%$%c2202000202002%_))
                            (if (fx= _%c1201999%_ _%c2202004%_)
                                _%c1201999%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g201918201939%_ _%$%g201919201942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g201918201939%_
                                               _%$%g201919201942%_))))
                                      (_%$%g201918201939%_
                                       _%$%g201919201942%_))))
                              (_%$%g201918201939%_ _%$%g201919201942%_))))
                      (_%$%g201918201939%_ _%$%g201919201942%_)))))
          (_%$%g201917202007%_ _%stx201916%_))))))
