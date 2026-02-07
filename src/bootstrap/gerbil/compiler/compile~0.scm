(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770505720)
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
      (let ((__tmp202671 (list gxc#::void::t))
            (__tmp202670 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp202671
         '()
         __tmp202670
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args201285%_
        (apply make-instance gxc#::collect-bindings::t _%$args201285%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp202672
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
        (__make-atomic-promise __tmp202672)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx201277%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self201280%_
                (let ((__obj202646
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj202646))
               (__tmp202673
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201280%_ _%stx201277%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202673
           gxc#current-compile-method
           _%self201280%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp202675 (list gxc#::void::t))
            (__tmp202674 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp202675
         '(modules)
         __tmp202674
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args201274%_
        (apply make-instance gxc#::lift-modules::t _%$args201274%_)))
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
      (let ((__tmp202676
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
        (__make-atomic-promise __tmp202676)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords201249%_ _%modules201246201250%_ _%stx201251%_)
        (let ((_%modules201254%_
               (if (eq? _%modules201246201250%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules201246201250%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self201256%_
                  (let ((__obj202648
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202648
                       _%modules201254%_
                       '1
                       '#f
                       '#f))
                    __obj202648))
                 (__tmp202677
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201256%_ _%stx201251%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202677
             gxc#current-compile-method
             _%self201256%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords201263%_ . _%args201264%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords201263%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201263%_
                  'modules:
                  absent-value))
               _%args201264%_)))
    (define gxc#apply-lift-modules
      (lambda _%args201247201270%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args201247201270%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp202679 (list)) (__tmp202678 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp202679
         '()
         __tmp202678
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args201242%_
        (apply make-instance gxc#::find-runtime-code::t _%$args201242%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp202680
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
        (__make-atomic-promise __tmp202680)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx201234%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self201237%_
                (let ((__obj202650
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj202650))
               (__tmp202681
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201237%_ _%stx201234%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202681
           gxc#current-compile-method
           _%self201237%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp202683 (list gxc#::false::t))
            (__tmp202682 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp202683
         '()
         __tmp202682
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args201231%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args201231%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp202684
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
        (__make-atomic-promise __tmp202684)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx201223%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self201226%_
                (let ((__obj202652
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj202652))
               (__tmp202685
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201226%_ _%stx201223%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202685
           gxc#current-compile-method
           _%self201226%_))))
    (define gxc#::count-values::t
      (let ((__tmp202687 (list gxc#::false-expression::t))
            (__tmp202686 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp202687
         '()
         __tmp202686
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args201220%_
        (apply make-instance gxc#::count-values::t _%$args201220%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp202688
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
        (__make-atomic-promise __tmp202688)))
    (define gxc#apply-count-values
      (lambda (_%stx201212%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self201215%_
                (let ((__obj202654
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj202654))
               (__tmp202689
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201215%_ _%stx201212%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202689
           gxc#current-compile-method
           _%self201215%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp202690 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp202690
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args201209%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args201209%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp202691
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
        (__make-atomic-promise __tmp202691)))
    (define gxc#::generate-loader::t
      (let ((__tmp202693 (list gxc#::generate-runtime-empty::t))
            (__tmp202692 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp202693
         '()
         __tmp202692
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args201205%_
        (apply make-instance gxc#::generate-loader::t _%$args201205%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp202694
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
        (__make-atomic-promise __tmp202694)))
    (define gxc#apply-generate-loader
      (lambda (_%stx201197%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self201200%_
                (let ((__obj202657
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj202657))
               (__tmp202695
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201200%_ _%stx201197%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202695
           gxc#current-compile-method
           _%self201200%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp202696 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp202696
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args201194%_
        (apply make-instance gxc#::generate-runtime::t _%$args201194%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp202697
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
        (__make-atomic-promise __tmp202697)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx201186%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self201189%_
                (let ((__obj202659
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj202659))
               (__tmp202698
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201189%_ _%stx201186%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202698
           gxc#current-compile-method
           _%self201189%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp202700 (list gxc#::generate-runtime::t))
            (__tmp202699 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp202700
         '()
         __tmp202699
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args201183%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args201183%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp202701
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
        (__make-atomic-promise __tmp202701)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx201175%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self201178%_
                (let ((__obj202661
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj202661))
               (__tmp202702
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201178%_ _%stx201175%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202702
           gxc#current-compile-method
           _%self201178%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp202703 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp202703
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args201172%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args201172%_)))
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
      (let ((__tmp202704
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
        (__make-atomic-promise __tmp202704)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords201147%_ _%table201144201148%_ _%stx201149%_)
        (let ((_%table201152%_
               (if (eq? _%table201144201148%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table201144201148%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self201154%_
                  (let ((__obj202663
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202663
                       _%table201152%_
                       '1
                       '#f
                       '#f))
                    __obj202663))
                 (__tmp202705
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201154%_ _%stx201149%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202705
             gxc#current-compile-method
             _%self201154%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords201161%_ . _%args201162%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords201161%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201161%_
                  'table:
                  absent-value))
               _%args201162%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args201145201168%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args201145201168%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp202707 (list gxc#::void-expression::t))
            (__tmp202706 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp202707
         '(state)
         __tmp202706
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args201140%_
        (apply make-instance gxc#::generate-meta::t _%$args201140%_)))
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
      (let ((__tmp202708
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
        (__make-atomic-promise __tmp202708)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords201115%_ _%state201112201116%_ _%stx201117%_)
        (let ((_%state201120%_
               (if (eq? _%state201112201116%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state201112201116%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self201122%_
                  (let ((__obj202665
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202665
                       _%state201120%_
                       '1
                       '#f
                       '#f))
                    __obj202665))
                 (__tmp202709
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201122%_ _%stx201117%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202709
             gxc#current-compile-method
             _%self201122%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords201129%_ . _%args201130%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords201129%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201129%_
                  'state:
                  absent-value))
               _%args201130%_)))
    (define gxc#apply-generate-meta
      (lambda _%args201113201136%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args201113201136%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp202711 (list)) (__tmp202710 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp202711
         '(state)
         __tmp202710
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args201108%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args201108%_)))
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
      (let ((__tmp202712
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
        (__make-atomic-promise __tmp202712)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords201083%_ _%state201080201084%_ _%stx201085%_)
        (let ((_%state201088%_
               (if (eq? _%state201080201084%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state201080201084%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self201090%_
                  (let ((__obj202667
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202667
                       _%state201088%_
                       '1
                       '#f
                       '#f))
                    __obj202667))
                 (__tmp202713
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201090%_ _%stx201085%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202713
             gxc#current-compile-method
             _%self201090%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords201097%_ . _%args201098%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords201097%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201097%_
                  'state:
                  absent-value))
               _%args201098%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args201081201104%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args201081201104%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self201009%_ _%stx201010%_)
        (let* ((_%g201012201029%_
                (lambda (_%g201013201026%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201013201026%_))))
               (_%g201011201076%_
                (lambda (_%g201013201032%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201013201032%_))
                      (let ((_%e201016201034%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201013201032%_))))
                        (let ((_%hd201017201037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201016201034%_)))
                              (_%tl201018201039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201016201034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201018201039%_))
                              (let ((_%e201019201042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201018201039%_))))
                                (let ((_%hd201020201045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201019201042%_)))
                                      (_%tl201021201047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201019201042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201021201047%_))
                                      (let ((_%e201022201050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201021201047%_))))
                                        (let ((_%hd201023201053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201022201050%_)))
                                              (_%tl201024201055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201022201050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201024201055%_))
                                              ((lambda (_%g201014201058%_
                                                        _%g201015201059%_)
                                                 (let ((__tmp202714
                                                        (lambda (_%bind201074%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind201074%_))
                      (gxc#add-module-binding! _%bind201074%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp202714
                                                    _%g201015201059%_)))
                                               _%hd201023201053%_
                                               _%hd201020201045%_)
                                              (_%g201012201029%_
                                               _%g201013201032%_))))
                                      (_%g201012201029%_ _%g201013201032%_))))
                              (_%g201012201029%_ _%g201013201032%_))))
                      (_%g201012201029%_ _%g201013201032%_)))))
          (_%g201011201076%_ _%stx201010%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self200941%_ _%stx200942%_)
        (let* ((_%g200944200961%_
                (lambda (_%g200945200958%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200945200958%_))))
               (_%g200943201006%_
                (lambda (_%g200945200964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200945200964%_))
                      (let ((_%e200948200966%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200945200964%_))))
                        (let ((_%hd200949200969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200948200966%_)))
                              (_%tl200950200971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200948200966%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200950200971%_))
                              (let ((_%e200951200974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200950200971%_))))
                                (let ((_%hd200952200977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200951200974%_)))
                                      (_%tl200953200979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200951200974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200953200979%_))
                                      (let ((_%e200954200982%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200953200979%_))))
                                        (let ((_%hd200955200985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200954200982%_)))
                                              (_%tl200956200987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200954200982%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200956200987%_))
                                              ((lambda (_%g200946200990%_
                                                        _%g200947200991%_)
                                                 (gxc#add-module-binding!
                                                  _%g200947200991%_
                                                  '#t))
                                               _%hd200955200985%_
                                               _%hd200952200977%_)
                                              (_%g200944200961%_
                                               _%g200945200964%_))))
                                      (_%g200944200961%_ _%g200945200964%_))))
                              (_%g200944200961%_ _%g200945200964%_))))
                      (_%g200944200961%_ _%g200945200964%_)))))
          (_%g200943201006%_ _%stx200942%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self200883%_ _%stx200884%_)
        (let* ((_%g200886200900%_
                (lambda (_%g200887200897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200887200897%_))))
               (_%g200885200938%_
                (lambda (_%g200887200903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200887200903%_))
                      (let ((_%e200890200905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200887200903%_))))
                        (let ((_%hd200891200908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200890200905%_)))
                              (_%tl200892200910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200890200905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200892200910%_))
                              (let ((_%e200893200913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200892200910%_))))
                                (let ((_%hd200894200916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200893200913%_)))
                                      (_%tl200895200918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200893200913%_))))
                                  ((lambda (_%g200888200921%_
                                            _%g200889200922%_)
                                     (let ((_%ctx200935%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g200889200922%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self200883%_
                                           'modules))
                                        (cons _%ctx200935%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self200883%_
                                                        'modules)))))
                                       (let ((__tmp202715
                                              (lambda ()
                                                (let ((__tmp202716
                                                       (##structure-ref
                                                        _%ctx200935%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self200883%_
                                                   __tmp202716)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp202715
                                          gx#current-expander-context
                                          _%ctx200935%_))))
                                   _%tl200895200918%_
                                   _%hd200894200916%_)))
                              (_%g200886200900%_ _%g200887200903%_))))
                      (_%g200886200900%_ _%g200887200903%_)))))
          (_%g200885200938%_ _%stx200884%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls200837200839%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls200837200839%_
              (let ((_%decls200841%_ _%decls200837200839%_))
                (let _%lp200843%_ ((_%rest200845%_ _%decls200841%_))
                  (let* ((_%rest200846200854%_ _%rest200845%_)
                         (_%else200848200862%_ (lambda () '#f))
                         (_%K200850200871%_
                          (lambda (_%decls200865%_ _%decl200866%_)
                            (if (equal? _%decl200866%_ '(not safe))
                                '#t
                                (if (equal? _%decl200866%_ '(safe))
                                    '#f
                                    (_%lp200843%_ _%decls200865%_))))))
                    (if (pair? _%rest200846200854%_)
                        (let ((_%hd200851200874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest200846200854%_)))
                              (_%tl200852200876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest200846200854%_))))
                          (let* ((_%decl200879%_ _%hd200851200874%_)
                                 (_%decls200881%_ _%tl200852200876%_))
                            (_%K200850200871%_
                             _%decls200881%_
                             _%decl200879%_)))
                        (_%else200848200862%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id200831%_ _%syntax?200832%_)
        (let ((_%eid200834%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id200831%_))
                '1
                gx#binding::t
                '#f))
              (_%ht200835%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid200834%_))
              '#!void
              (let ((__tmp202717
                     (let ((__tmp202718
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid200834%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp202718 _%syntax?200832%_))))
                (declare (not safe))
                (hash-put! _%ht200835%_ _%eid200834%_ __tmp202717))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self200828%_ _%stx200829%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self200675%_ _%stx200676%_)
        (letrec ((_%simplify200678%_
                  (lambda (_%body200726%_)
                    (let _%lp200728%_ ((_%rest200730%_ _%body200726%_)
                                       (_%r200731%_ '()))
                      (let* ((_%rest200732200740%_ _%rest200730%_)
                             (_%else200734200748%_
                              (lambda () (reverse _%r200731%_)))
                             (_%K200736200816%_
                              (lambda (_%rest200751%_ _%hd200752%_)
                                (let* ((_%hd200753200769%_ _%hd200752%_)
                                       (_%else200757200777%_
                                        (lambda ()
                                          (_%lp200728%_
                                           _%rest200751%_
                                           (cons _%hd200752%_ _%r200731%_)))))
                                  (let ((_%K200765200806%_
                                         (lambda (_%exprs200804%_)
                                           (_%lp200728%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest200751%_
                                               _%exprs200804%_))
                                            _%r200731%_)))
                                        (_%K200760200790%_
                                         (lambda ()
                                           (if (null? _%rest200751%_)
                                               (_%lp200728%_
                                                _%rest200751%_
                                                (cons _%hd200752%_
                                                      _%r200731%_))
                                               (_%lp200728%_
                                                _%rest200751%_
                                                _%r200731%_))))
                                        (_%K200759200782%_
                                         (lambda ()
                                           (if (null? _%rest200751%_)
                                               (_%lp200728%_
                                                _%rest200751%_
                                                (cons _%hd200752%_
                                                      _%r200731%_))
                                               (_%lp200728%_
                                                _%rest200751%_
                                                _%r200731%_)))))
                                    (let ((_%try-match200756200785%_
                                           (lambda ()
                                             (if (symbol? _%hd200753200769%_)
                                                 (_%K200759200782%_)
                                                 (_%else200757200777%_)))))
                                      (if (pair? _%hd200753200769%_)
                                          (let ((_%tl200767200811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd200753200769%_)))
                                                (_%hd200766200809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd200753200769%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200766200809%_
                                                         'begin))
                                                (let ((_%exprs200814%_
                                                       _%tl200767200811%_))
                                                  (_%K200765200806%_
                                                   _%exprs200814%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd200766200809%_
                                                             'quote))
                                                    (if (pair? _%tl200767200811%_)
                                                        (let ((_%tl200764200798%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl200767200811%_))))
                  (if (null? _%tl200764200798%_)
                      (_%K200760200790%_)
                      (_%try-match200756200785%_)))
                (_%try-match200756200785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match200756200785%_))))
                                          (_%try-match200756200785%_))))))))
                        (if (pair? _%rest200732200740%_)
                            (let ((_%hd200737200819%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200732200740%_)))
                                  (_%tl200738200821%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200732200740%_))))
                              (let* ((_%hd200824%_ _%hd200737200819%_)
                                     (_%rest200826%_ _%tl200738200821%_))
                                (_%K200736200816%_
                                 _%rest200826%_
                                 _%hd200824%_)))
                            (_%else200734200748%_)))))))
          (let* ((_%g200680200690%_
                  (lambda (_%g200681200687%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200681200687%_))))
                 (_%g200679200723%_
                  (lambda (_%g200681200693%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200681200693%_))
                        (let ((_%e200683200695%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200681200693%_))))
                          (let ((_%hd200684200698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200683200695%_)))
                                (_%tl200685200700%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200683200695%_))))
                            ((lambda (_%g200682200703%_)
                               (let* ((_%body200718%_
                                       (map (lambda (_%g200713200715%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self200675%_
                                                 _%g200713200715%_)))
                                            _%g200682200703%_))
                                      (_%body200720%_
                                       (_%simplify200678%_ _%body200718%_)))
                                 (if (let ((__tmp202719
                                            (length _%body200720%_)))
                                       (declare (not safe))
                                       (##fx= __tmp202719 '1))
                                     (car _%body200720%_)
                                     (cons 'begin _%body200720%_))))
                             _%tl200685200700%_)))
                        (_%g200680200690%_ _%g200681200693%_)))))
            (_%g200679200723%_ _%stx200676%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self200636%_ _%stx200637%_)
        (let* ((_%g200639200649%_
                (lambda (_%g200640200646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200640200646%_))))
               (_%g200638200672%_
                (lambda (_%g200640200652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200640200652%_))
                      (let ((_%e200642200654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200640200652%_))))
                        (let ((_%hd200643200657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200642200654%_)))
                              (_%tl200644200659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200642200654%_))))
                          ((lambda (_%g200641200662%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g200641200662%_))))
                           _%tl200644200659%_)))
                      (_%g200639200649%_ _%g200640200652%_)))))
          (_%g200638200672%_ _%stx200637%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self200402%_ _%stx200403%_)
        (let* ((_%__stx201309201310%_ _%stx200403%_)
               (_%g200407200459%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201309201310%_)))))
          (let ((_%__kont201311201312%_
                 (lambda (_%g200409200618%_ _%g200410200619%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self200402%_ _%g200409200618%_))))
                (_%__kont201313201314%_
                 (lambda (_%g200420200566%_
                          _%g200421200567%_
                          _%g200422200568%_)
                   (if (let ((__tmp202720
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g200422200568%_))))
                         (declare (not safe))
                         (##memq __tmp202720 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self200402%_
                          _%g200420200566%_)))))
                (_%__kont201317201318%_
                 (lambda (_%g200444200488%_ _%g200445200489%_)
                   (let ((_%decls200504%_
                          (map gx#syntax->datum _%g200445200489%_)))
                     (let ((__tmp202723
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls200504%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self200402%_
                                                   _%g200444200488%_))
                                                '())))))
                           (__tmp202721
                            (let ((__tmp202722
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp202722 _%decls200504%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp202723
                        gxc#current-compile-decls
                        __tmp202721))))))
            (let* ((_%__match201364201365%_
                    (lambda (_%e200423200512%_
                             _%hd200424200515%_
                             _%tl200425200517%_
                             _%e200426200520%_
                             _%hd200427200523%_
                             _%tl200428200525%_
                             _%e200429200528%_
                             _%hd200430200531%_
                             _%tl200431200533%_
                             _%__splice201315201316%_
                             _%target200432200536%_
                             _%tl200434200538%_)
                      (letrec ((_%loop200435200541%_
                                (lambda (_%hd200433200544%_
                                         _%param200439200546%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200433200544%_))
                                      (let ((_%e200436200548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200433200544%_))))
                                        (let ((_%lp-tl200438200553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200436200548%_)))
                                              (_%lp-hd200437200551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200436200548%_))))
                                          (_%loop200435200541%_
                                           _%lp-tl200438200553%_
                                           (cons _%lp-hd200437200551%_
                                                 _%param200439200546%_))))
                                      (let ((_%param200440200556%_
                                             (reverse _%param200439200546%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200428200525%_))
                                            (let ((_%e200441200558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200428200525%_))))
                                              (let ((_%tl200443200563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200441200558%_)))
                                                    (_%hd200442200561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200441200558%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200443200563%_))
                                                    (let ((_%g200420200566%_
                                                           _%hd200442200561%_)
                                                          (_%g200421200567%_
                                                           _%param200440200556%_)
                                                          (_%g200422200568%_
                                                           _%hd200430200531%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g200422200568%_))
                       (not (let ((__tmp202724
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g200422200568%_))))
                              (declare (not safe))
                              (##memq __tmp202724 gxc#gambit-annotations))))
                  (_%__kont201313201314%_
                   _%g200420200566%_
                   _%g200421200567%_
                   _%g200422200568%_)
                  (_%__kont201317201318%_
                   _%hd200442200561%_
                   _%hd200427200523%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200407200459%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200407200459%_))))))))
                        (_%loop200435200541%_ _%target200432200536%_ '()))))
                   (_%__match201338201339%_
                    (lambda (_%e200411200594%_
                             _%hd200412200597%_
                             _%tl200413200599%_
                             _%e200414200602%_
                             _%hd200415200605%_
                             _%tl200416200607%_
                             _%e200417200610%_
                             _%hd200418200613%_
                             _%tl200419200615%_)
                      (let ((_%g200409200618%_ _%hd200418200613%_)
                            (_%g200410200619%_ _%hd200415200605%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g200410200619%_))
                            (_%__kont201311201312%_
                             _%g200409200618%_
                             _%g200410200619%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200415200605%_))
                                (let ((_%e200429200528%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200415200605%_))))
                                  (let ((_%tl200431200533%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200429200528%_)))
                                        (_%hd200430200531%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200429200528%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200431200533%_))
                                        (let ((_%__splice201315201316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl200431200533%_
                                                  '0))))
                                          (let ((_%tl200434200538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201315201316%_
                                                    '1)))
                                                (_%target200432200536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201315201316%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200434200538%_))
                                                (_%__match201364201365%_
                                                 _%e200411200594%_
                                                 _%hd200412200597%_
                                                 _%tl200413200599%_
                                                 _%e200414200602%_
                                                 _%hd200415200605%_
                                                 _%tl200416200607%_
                                                 _%e200429200528%_
                                                 _%hd200430200531%_
                                                 _%tl200431200533%_
                                                 _%__splice201315201316%_
                                                 _%target200432200536%_
                                                 _%tl200434200538%_)
                                                (_%__kont201317201318%_
                                                 _%hd200418200613%_
                                                 _%hd200415200605%_))))
                                        (_%__kont201317201318%_
                                         _%hd200418200613%_
                                         _%hd200415200605%_))))
                                (_%__kont201317201318%_
                                 _%hd200418200613%_
                                 _%hd200415200605%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201309201310%_))
                  (let ((_%e200411200594%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201309201310%_))))
                    (let ((_%tl200413200599%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200411200594%_)))
                          (_%hd200412200597%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200411200594%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200413200599%_))
                          (let ((_%e200414200602%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200413200599%_))))
                            (let ((_%tl200416200607%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200414200602%_)))
                                  (_%hd200415200605%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200414200602%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200416200607%_))
                                  (let ((_%e200417200610%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200416200607%_))))
                                    (let ((_%tl200419200615%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200417200610%_)))
                                          (_%hd200418200613%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200417200610%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200419200615%_))
                                          (_%__match201338201339%_
                                           _%e200411200594%_
                                           _%hd200412200597%_
                                           _%tl200413200599%_
                                           _%e200414200602%_
                                           _%hd200415200605%_
                                           _%tl200416200607%_
                                           _%e200417200610%_
                                           _%hd200418200613%_
                                           _%tl200419200615%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd200415200605%_))
                                              (let ((_%e200429200528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd200415200605%_))))
                                                (let ((_%tl200431200533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200429200528%_)))
                                                      (_%hd200430200531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200429200528%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl200431200533%_))
                                                      (let ((_%__splice201315201316%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl200431200533%_
                        '0))))
                (let ((_%tl200434200538%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201315201316%_ '1)))
                      (_%target200432200536%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201315201316%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200434200538%_))
                      (_%__match201364201365%_
                       _%e200411200594%_
                       _%hd200412200597%_
                       _%tl200413200599%_
                       _%e200414200602%_
                       _%hd200415200605%_
                       _%tl200416200607%_
                       _%e200429200528%_
                       _%hd200430200531%_
                       _%tl200431200533%_
                       _%__splice201315201316%_
                       _%target200432200536%_
                       _%tl200434200538%_)
                      (let () (declare (not safe)) (_%g200407200459%_)))))
              (let () (declare (not safe)) (_%g200407200459%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200407200459%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200415200605%_))
                                      (let ((_%e200429200528%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200415200605%_))))
                                        (let ((_%tl200431200533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200429200528%_)))
                                              (_%hd200430200531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200429200528%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl200431200533%_))
                                              (let ((_%__splice201315201316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl200431200533%_
                                                        '0))))
                                                (let ((_%tl200434200538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201315201316%_
                                                          '1)))
                                                      (_%target200432200536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201315201316%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200434200538%_))
                                                      (_%__match201364201365%_
                                                       _%e200411200594%_
                                                       _%hd200412200597%_
                                                       _%tl200413200599%_
                                                       _%e200414200602%_
                                                       _%hd200415200605%_
                                                       _%tl200416200607%_
                                                       _%e200429200528%_
                                                       _%hd200430200531%_
                                                       _%tl200431200533%_
                                                       _%__splice201315201316%_
                                                       _%target200432200536%_
                                                       _%tl200434200538%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200407200459%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200407200459%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200407200459%_))))))
                          (let () (declare (not safe)) (_%g200407200459%_)))))
                  (let () (declare (not safe)) (_%g200407200459%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self200361%_ _%stx200362%_)
        (let* ((_%g200364200374%_
                (lambda (_%g200365200371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200365200371%_))))
               (_%g200363200399%_
                (lambda (_%g200365200377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200365200377%_))
                      (let ((_%e200367200379%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200365200377%_))))
                        (let ((_%hd200368200382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200367200379%_)))
                              (_%tl200369200384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200367200379%_))))
                          ((lambda (_%g200366200387%_)
                             (let ((_%decls200397%_
                                    (map gx#syntax->datum _%g200366200387%_)))
                               (let ((__tmp202725
                                      (let ((__tmp202726
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp202726
                                         _%decls200397%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp202725))
                               (cons 'declare _%decls200397%_)))
                           _%tl200369200384%_)))
                      (_%g200364200374%_ _%g200365200377%_)))))
          (_%g200363200399%_ _%stx200362%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self200108%_ _%stx200109%_)
        (let* ((_%g200111200128%_
                (lambda (_%g200112200125%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200112200125%_))))
               (_%g200110200358%_
                (lambda (_%g200112200131%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200112200131%_))
                      (let ((_%e200115200133%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200112200131%_))))
                        (let ((_%hd200116200136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200115200133%_)))
                              (_%tl200117200138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200115200133%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200117200138%_))
                              (let ((_%e200118200141%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200117200138%_))))
                                (let ((_%hd200119200144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200118200141%_)))
                                      (_%tl200120200146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200118200141%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200120200146%_))
                                      (let ((_%e200121200149%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200120200146%_))))
                                        (let ((_%hd200122200152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200121200149%_)))
                                              (_%tl200123200154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200121200149%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200123200154%_))
                                              ((lambda (_%g200113200157%_
                                                        _%g200114200158%_)
                                                 (let* ((_%__stx201417201418%_
                                                         _%g200114200158%_)
                                                        (_%g200175200189%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx201417201418%_)))))
                                                   (let ((_%__kont201419201420%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self200108%_
                                                               _%g200113200157%_))))
                                                         (_%__kont201421201422%_
                                                          (lambda (_%g200181200321%_)
                                                            (let ((_%eid200330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g200181200321%_))))
                      (let ((_%lambda-expr200331200333%_
                             (gxc#apply-find-lambda-expression
                              _%g200113200157%_)))
                        (if _%lambda-expr200331200333%_
                            (let* ((_%lambda-expr200335%_
                                    _%lambda-expr200331200333%_)
                                   (__tmp202727
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp202727
                               _%lambda-expr200335%_
                               _%eid200330%_))
                            '#f))
                      (cons 'define
                            (cons _%eid200330%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self200108%_
                                           _%g200113200157%_))
                                        '()))))))
                 (_%__kont201423201424%_
                  (lambda ()
                    (let* ((_%tmp200196%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body200305%_
                            (let _%lp200198%_ ((_%rest200200%_
                                                _%g200114200158%_)
                                               (_%k200201%_ '0)
                                               (_%r200202%_ '()))
                              (let* ((_%__stx201387201388%_ _%rest200200%_)
                                     (_%g200207200224%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx201387201388%_)))))
                                (let ((_%__kont201389201390%_
                                       (lambda (_%g200209200292%_)
                                         (_%lp200198%_
                                          _%g200209200292%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k200201%_ '1))
                                          _%r200202%_)))
                                      (_%__kont201391201392%_
                                       (lambda (_%g200214200265%_
                                                _%g200215200266%_)
                                         (_%lp200198%_
                                          _%g200214200265%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k200201%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g200215200266%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp200196%_
                           _%k200201%_
                           _%g200214200265%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r200202%_))))
                                      (_%__kont201393201394%_
                                       (lambda (_%g200219200236%_)
                                         (let ((__tmp202728
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g200219200236%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp200196%_
                                 _%k200201%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp202728
                                            _%r200202%_))))
                                      (_%__kont201395201396%_
                                       (lambda () (reverse _%r200202%_))))
                                  (let ((_%g200205200252%_
                                         (lambda ()
                                           (let ((_%g200219200236%_
                                                  _%__stx201387201388%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g200219200236%_))
                                                 (_%__kont201393201394%_
                                                  _%g200219200236%_)
                                                 (_%__kont201395201396%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx201387201388%_))
                                        (let ((_%e200210200281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx201387201388%_))))
                                          (let ((_%tl200212200286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200210200281%_)))
                                                (_%hd200211200284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200210200281%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd200211200284%_))
                                                (let ((_%e200213200289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200211200284%_))))
                                                  (if (equal? _%e200213200289%_
                                                              '#f)
                                                      (_%__kont201389201390%_
                                                       _%tl200212200286%_)
                                                      (_%__kont201391201392%_
                                                       _%tl200212200286%_
                                                       _%hd200211200284%_)))
                                                (_%__kont201391201392%_
                                                 _%tl200212200286%_
                                                 _%hd200211200284%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200205200252%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp200196%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200108%_
                                                       _%g200113200157%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp200196%_
                                         _%g200114200158%_
                                         _%g200113200157%_)
                                        _%body200305%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx201417201418%_))
                                                         (let ((_%e200177200342%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx201417201418%_))))
                   (let ((_%tl200179200347%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200177200342%_)))
                         (_%hd200178200345%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200177200342%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd200178200345%_))
                         (let ((_%e200180200350%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd200178200345%_))))
                           (if (equal? _%e200180200350%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl200179200347%_))
                                   (_%__kont201419201420%_)
                                   (_%__kont201423201424%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl200179200347%_))
                                   (_%__kont201421201422%_ _%hd200178200345%_)
                                   (_%__kont201423201424%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200179200347%_))
                             (_%__kont201421201422%_ _%hd200178200345%_)
                             (_%__kont201423201424%_)))))
                 (_%__kont201423201424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd200122200152%_
                                               _%hd200119200144%_)
                                              (_%g200111200128%_
                                               _%g200112200131%_))))
                                      (_%g200111200128%_ _%g200112200131%_))))
                              (_%g200111200128%_ _%g200112200131%_))))
                      (_%g200111200128%_ _%g200112200131%_)))))
          (_%g200110200358%_ _%stx200109%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals200083%_ _%hd200084%_ _%expr200085%_)
        (let ((_%$e200087%_ (gxc#apply-count-values _%expr200085%_)))
          (if _%$e200087%_
              ((lambda (_%count200090%_)
                 (let ((_%len200092%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd200084%_)))
                       (_%cmp200093%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd200084%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len200092%_ '0))
                           (_%cmp200093%_ _%count200090%_ _%len200092%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr200085%_
                          _%hd200084%_)))))
               _%$e200087%_)
              (let* ((_%len200099%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd200084%_)))
                     (_%cmp200101%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd200084%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg200103%_
                      (let ((__tmp202730
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd200084%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp202729 (number->string _%len200099%_)))
                        (declare (not safe))
                        (##string-append __tmp202730 __tmp202729 '" values")))
                     (_%count200105%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd200084%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len200099%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count200105%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals200083%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp200101%_
                                (cons _%count200105%_
                                      (cons _%len200099%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp200101%_
                                                        (cons _%count200105%_
                                                              (cons _%len200099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg200103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count200105%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var200078%_)
        (letrec ((_%generate-inline200080%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var200078%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var200078%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline200080%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline200080%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var200071%_ _%i200072%_ _%rest200073%_)
        (letrec ((_%generate-inline200075%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i200072%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest200073%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var200071%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var200071%_
                                                      (cons '0 '())))
                                          (cons _%var200071%_ '()))))
                        (cons '##values-ref
                              (cons _%var200071%_ (cons _%i200072%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline200075%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline200075%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var200065%_ _%i200066%_)
        (if (let () (declare (not safe)) (##fx= _%i200066%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var200065%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var200065%_ '()))
                                  (cons (cons 'list (cons _%var200065%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var200065%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var200065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var200065%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i200066%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var200065%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var200065%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var200065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var200065%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var200065%_ '()))
                                (cons _%i200066%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var200065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i200066%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self199997%_ _%stx199998%_)
        (let* ((_%g200000200017%_
                (lambda (_%g200001200014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200001200014%_))))
               (_%g199999200062%_
                (lambda (_%g200001200020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200001200020%_))
                      (let ((_%e200004200022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200001200020%_))))
                        (let ((_%hd200005200025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200004200022%_)))
                              (_%tl200006200027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200004200022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200006200027%_))
                              (let ((_%e200007200030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200006200027%_))))
                                (let ((_%hd200008200033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200007200030%_)))
                                      (_%tl200009200035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200007200030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200009200035%_))
                                      (let ((_%e200010200038%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200009200035%_))))
                                        (let ((_%hd200011200041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200010200038%_)))
                                              (_%tl200012200043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200010200038%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200012200043%_))
                                              ((lambda (_%g200002200046%_
                                                        _%g200003200047%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self199997%_
                                                  _%g200003200047%_
                                                  _%g200002200046%_))
                                               _%hd200011200041%_
                                               _%hd200008200033%_)
                                              (_%g200000200017%_
                                               _%g200001200020%_))))
                                      (_%g200000200017%_ _%g200001200020%_))))
                              (_%g200000200017%_ _%g200001200020%_))))
                      (_%g200000200017%_ _%g200001200020%_)))))
          (_%g199999200062%_ _%stx199998%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self199956%_ _%hd199957%_ _%body199958%_)
        (let* ((_%hd199960%_ (gxc#generate-runtime-lambda-head _%hd199957%_))
               (_%body199962%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self199956%_ _%body199958%_)))
               (_%body199994%_
                (let* ((_%body199963199971%_ _%body199962%_)
                       (_%else199965199979%_
                        (lambda () (cons _%body199962%_ '())))
                       (_%K199967199984%_
                        (lambda (_%exprs199982%_) _%exprs199982%_)))
                  (if (pair? _%body199963199971%_)
                      (let ((_%hd199968199987%_
                             (let ()
                               (declare (not safe))
                               (##car _%body199963199971%_)))
                            (_%tl199969199989%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body199963199971%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd199968199987%_ 'begin))
                            (let ((_%exprs199992%_ _%tl199969199989%_))
                              (_%K199967199984%_ _%exprs199992%_))
                            (_%else199965199979%_)))
                      (_%else199965199979%_)))))
          (cons 'lambda (cons _%hd199960%_ _%body199994%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd199954%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd199954%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self198511%_ _%stx198512%_)
        (letrec ((_%dispatch-case?198514%_
                  (lambda (_%hd199192%_ _%body199193%_)
                    (let* ((_%form199195%_
                            (cons _%hd199192%_ (cons _%body199193%_ '())))
                           (_%__stx201449201450%_ _%form199195%_)
                           (_%g199200199357%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx201449201450%_)))))
                      (let ((_%__kont201451201452%_
                             (lambda (_%g199202199874%_
                                      _%g199203199875%_
                                      _%g199204199876%_)
                               '#t))
                            (_%__kont201457201458%_
                             (lambda (_%g199247199666%_
                                      _%g199248199667%_
                                      _%g199249199668%_
                                      _%g199250199669%_
                                      _%g199251199670%_
                                      _%g199252199671%_)
                               '#t))
                            (_%__kont201463201464%_
                             (lambda (_%g199313199465%_
                                      _%g199314199466%_
                                      _%g199315199467%_
                                      _%g199316199468%_)
                               '#t))
                            (_%__kont201465201466%_ (lambda () '#f)))
                        (let* ((_%__match201590201591%_
                                (lambda (_%e199317199369%_
                                         _%hd199318199372%_
                                         _%tl199319199374%_
                                         _%e199320199377%_
                                         _%hd199321199380%_
                                         _%tl199322199382%_
                                         _%e199323199385%_
                                         _%hd199324199388%_
                                         _%tl199325199390%_
                                         _%e199326199393%_
                                         _%hd199327199396%_
                                         _%tl199328199398%_
                                         _%e199329199401%_
                                         _%hd199330199404%_
                                         _%tl199331199406%_
                                         _%e199332199409%_
                                         _%hd199333199412%_
                                         _%tl199334199414%_
                                         _%e199335199417%_
                                         _%hd199336199420%_
                                         _%tl199337199422%_
                                         _%e199338199425%_
                                         _%hd199339199428%_
                                         _%tl199340199430%_
                                         _%e199341199433%_
                                         _%hd199342199436%_
                                         _%tl199343199438%_
                                         _%e199344199441%_
                                         _%hd199345199444%_
                                         _%tl199346199446%_
                                         _%e199347199449%_
                                         _%hd199348199452%_
                                         _%tl199349199454%_
                                         _%e199350199457%_
                                         _%hd199351199460%_
                                         _%tl199352199462%_)
                                  (let ((_%g199313199465%_ _%hd199351199460%_)
                                        (_%g199314199466%_ _%hd199342199436%_)
                                        (_%g199315199467%_ _%hd199333199412%_)
                                        (_%g199316199468%_ _%hd199318199372%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g199316199468%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g199315199467%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g199316199468%_
                                                _%g199313199465%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g199314199466%_
                                                     _%g199316199468%_))))
                                        (_%__kont201463201464%_
                                         _%g199313199465%_
                                         _%g199314199466%_
                                         _%g199315199467%_
                                         _%g199316199468%_)
                                        (_%__kont201465201466%_)))))
                               (_%__match201562201563%_
                                (lambda (_%e199317199369%_
                                         _%hd199318199372%_
                                         _%tl199319199374%_
                                         _%e199320199377%_
                                         _%hd199321199380%_
                                         _%tl199322199382%_
                                         _%e199323199385%_
                                         _%hd199324199388%_
                                         _%tl199325199390%_
                                         _%e199326199393%_
                                         _%hd199327199396%_
                                         _%tl199328199398%_
                                         _%e199329199401%_
                                         _%hd199330199404%_
                                         _%tl199331199406%_
                                         _%e199332199409%_
                                         _%hd199333199412%_
                                         _%tl199334199414%_
                                         _%e199335199417%_
                                         _%hd199336199420%_
                                         _%tl199337199422%_
                                         _%e199338199425%_
                                         _%hd199339199428%_
                                         _%tl199340199430%_
                                         _%e199341199433%_
                                         _%hd199342199436%_
                                         _%tl199343199438%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199337199422%_))
                                      (let ((_%e199344199441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199337199422%_))))
                                        (let ((_%tl199346199446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199344199441%_)))
                                              (_%hd199345199444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199344199441%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd199345199444%_))
                                              (let ((_%e199347199449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199345199444%_))))
                                                (let ((_%tl199349199454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199347199449%_)))
                                                      (_%hd199348199452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199347199449%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd199348199452%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd199348199452%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199349199454%_))
                      (let ((_%e199350199457%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199349199454%_))))
                        (let ((_%tl199352199462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199350199457%_)))
                              (_%hd199351199460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199350199457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199352199462%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199346199446%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199322199382%_))
                                      (_%__match201590201591%_
                                       _%e199317199369%_
                                       _%hd199318199372%_
                                       _%tl199319199374%_
                                       _%e199320199377%_
                                       _%hd199321199380%_
                                       _%tl199322199382%_
                                       _%e199323199385%_
                                       _%hd199324199388%_
                                       _%tl199325199390%_
                                       _%e199326199393%_
                                       _%hd199327199396%_
                                       _%tl199328199398%_
                                       _%e199329199401%_
                                       _%hd199330199404%_
                                       _%tl199331199406%_
                                       _%e199332199409%_
                                       _%hd199333199412%_
                                       _%tl199334199414%_
                                       _%e199335199417%_
                                       _%hd199336199420%_
                                       _%tl199337199422%_
                                       _%e199338199425%_
                                       _%hd199339199428%_
                                       _%tl199340199430%_
                                       _%e199341199433%_
                                       _%hd199342199436%_
                                       _%tl199343199438%_
                                       _%e199344199441%_
                                       _%hd199345199444%_
                                       _%tl199346199446%_
                                       _%e199347199449%_
                                       _%hd199348199452%_
                                       _%tl199349199454%_
                                       _%e199350199457%_
                                       _%hd199351199460%_
                                       _%tl199352199462%_)
                                      (_%__kont201465201466%_))
                                  (_%__kont201465201466%_))
                              (_%__kont201465201466%_))))
                      (_%__kont201465201466%_))
                  (_%__kont201465201466%_))
              (_%__kont201465201466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201465201466%_))))
                                      (_%__kont201465201466%_))))
                               (_%__match201492201493%_
                                (lambda (_%e199253199510%_
                                         _%hd199254199513%_
                                         _%tl199255199515%_
                                         _%__splice201459201460%_
                                         _%target199256199518%_
                                         _%tl199258199520%_)
                                  (letrec ((_%loop199259199523%_
                                            (lambda (_%hd199257199526%_
                                                     _%arg199263199528%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199257199526%_))
                                                  (let ((_%e199260199530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199257199526%_))))
                                                    (let ((_%lp-tl199262199535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199260199530%_)))
                                                          (_%lp-hd199261199533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199260199530%_))))
                                                      (_%loop199259199523%_
                                                       _%lp-tl199262199535%_
                                                       (cons _%lp-hd199261199533%_
                                                             _%arg199263199528%_))))
                                                  (let ((_%arg199264199538%_
                                                         (reverse _%arg199263199528%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199255199515%_))
                                                        (let ((_%e199265199540%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199255199515%_))))
                  (let ((_%tl199267199545%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199265199540%_)))
                        (_%hd199266199543%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199265199540%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199266199543%_))
                        (let ((_%e199268199548%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199266199543%_))))
                          (let ((_%tl199270199553%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199268199548%_)))
                                (_%hd199269199551%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199268199548%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199269199551%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199269199551%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199270199553%_))
                                        (let ((_%e199271199556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199270199553%_))))
                                          (let ((_%tl199273199561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199271199556%_)))
                                                (_%hd199272199559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199271199556%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199272199559%_))
                                                (let ((_%e199274199564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199272199559%_))))
                                                  (let ((_%tl199276199569%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199274199564%_)))
                                                        (_%hd199275199567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199274199564%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199275199567%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199275199567%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199276199569%_))
                        (let ((_%e199277199572%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199276199569%_))))
                          (let ((_%tl199279199577%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199277199572%_)))
                                (_%hd199278199575%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199277199572%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199279199577%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199273199561%_))
                                    (let ((_%e199280199580%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199273199561%_))))
                                      (let ((_%tl199282199585%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199280199580%_)))
                                            (_%hd199281199583%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199280199580%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199281199583%_))
                                            (let ((_%e199283199588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199281199583%_))))
                                              (let ((_%tl199285199593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199283199588%_)))
                                                    (_%hd199284199591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199283199588%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199284199591%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199284199591%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199285199593%_))
                                                            (let ((_%e199286199596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199285199593%_))))
                      (let ((_%tl199288199601%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199286199596%_)))
                            (_%hd199287199599%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199286199596%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199288199601%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl199282199585%_))
                                (if (let ((__tmp202731
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl199282199585%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp202731 '1))
                                    (let ((_%__splice201461201462%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl199282199585%_
                                              '1))))
                                      (let ((_%tl199291199606%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201461201462%_
                                                '1)))
                                            (_%target199289199604%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201461201462%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199291199606%_))
                                            (let ((_%e199298199609%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199291199606%_))))
                                              (let ((_%tl199300199614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199298199609%_)))
                                                    (_%hd199299199612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199298199609%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd199299199612%_))
                                                    (let ((_%e199301199617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199299199612%_))))
                                                      (let ((_%tl199303199622%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199301199617%_)))
                    (_%hd199302199620%_
                     (let () (declare (not safe)) (##car _%e199301199617%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd199302199620%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd199302199620%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199303199622%_))
                            (let ((_%e199304199625%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199303199622%_))))
                              (let ((_%tl199306199630%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199304199625%_)))
                                    (_%hd199305199628%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199304199625%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199306199630%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199300199614%_))
                                        (letrec ((_%loop199292199633%_
                                                  (lambda (_%hd199290199636%_
                                                           _%xarg199296199638%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199290199636%_))
                                                        (let ((_%e199293199640%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199290199636%_))))
                  (let ((_%lp-tl199295199645%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199293199640%_)))
                        (_%lp-hd199294199643%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199293199640%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd199294199643%_))
                        (let ((_%e199307199648%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd199294199643%_))))
                          (let ((_%tl199309199653%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199307199648%_)))
                                (_%hd199308199651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199307199648%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199308199651%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd199308199651%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199309199653%_))
                                        (let ((_%e199310199656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199309199653%_))))
                                          (let ((_%tl199312199661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199310199656%_)))
                                                (_%hd199311199659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199310199656%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199312199661%_))
                                                (_%loop199292199633%_
                                                 _%lp-tl199295199645%_
                                                 (cons _%hd199311199659%_
                                                       _%xarg199296199638%_))
                                                (_%__match201562201563%_
                                                 _%e199253199510%_
                                                 _%hd199254199513%_
                                                 _%tl199255199515%_
                                                 _%e199265199540%_
                                                 _%hd199266199543%_
                                                 _%tl199267199545%_
                                                 _%e199268199548%_
                                                 _%hd199269199551%_
                                                 _%tl199270199553%_
                                                 _%e199271199556%_
                                                 _%hd199272199559%_
                                                 _%tl199273199561%_
                                                 _%e199274199564%_
                                                 _%hd199275199567%_
                                                 _%tl199276199569%_
                                                 _%e199277199572%_
                                                 _%hd199278199575%_
                                                 _%tl199279199577%_
                                                 _%e199280199580%_
                                                 _%hd199281199583%_
                                                 _%tl199282199585%_
                                                 _%e199283199588%_
                                                 _%hd199284199591%_
                                                 _%tl199285199593%_
                                                 _%e199286199596%_
                                                 _%hd199287199599%_
                                                 _%tl199288199601%_))))
                                        (_%__match201562201563%_
                                         _%e199253199510%_
                                         _%hd199254199513%_
                                         _%tl199255199515%_
                                         _%e199265199540%_
                                         _%hd199266199543%_
                                         _%tl199267199545%_
                                         _%e199268199548%_
                                         _%hd199269199551%_
                                         _%tl199270199553%_
                                         _%e199271199556%_
                                         _%hd199272199559%_
                                         _%tl199273199561%_
                                         _%e199274199564%_
                                         _%hd199275199567%_
                                         _%tl199276199569%_
                                         _%e199277199572%_
                                         _%hd199278199575%_
                                         _%tl199279199577%_
                                         _%e199280199580%_
                                         _%hd199281199583%_
                                         _%tl199282199585%_
                                         _%e199283199588%_
                                         _%hd199284199591%_
                                         _%tl199285199593%_
                                         _%e199286199596%_
                                         _%hd199287199599%_
                                         _%tl199288199601%_))
                                    (_%__match201562201563%_
                                     _%e199253199510%_
                                     _%hd199254199513%_
                                     _%tl199255199515%_
                                     _%e199265199540%_
                                     _%hd199266199543%_
                                     _%tl199267199545%_
                                     _%e199268199548%_
                                     _%hd199269199551%_
                                     _%tl199270199553%_
                                     _%e199271199556%_
                                     _%hd199272199559%_
                                     _%tl199273199561%_
                                     _%e199274199564%_
                                     _%hd199275199567%_
                                     _%tl199276199569%_
                                     _%e199277199572%_
                                     _%hd199278199575%_
                                     _%tl199279199577%_
                                     _%e199280199580%_
                                     _%hd199281199583%_
                                     _%tl199282199585%_
                                     _%e199283199588%_
                                     _%hd199284199591%_
                                     _%tl199285199593%_
                                     _%e199286199596%_
                                     _%hd199287199599%_
                                     _%tl199288199601%_))
                                (_%__match201562201563%_
                                 _%e199253199510%_
                                 _%hd199254199513%_
                                 _%tl199255199515%_
                                 _%e199265199540%_
                                 _%hd199266199543%_
                                 _%tl199267199545%_
                                 _%e199268199548%_
                                 _%hd199269199551%_
                                 _%tl199270199553%_
                                 _%e199271199556%_
                                 _%hd199272199559%_
                                 _%tl199273199561%_
                                 _%e199274199564%_
                                 _%hd199275199567%_
                                 _%tl199276199569%_
                                 _%e199277199572%_
                                 _%hd199278199575%_
                                 _%tl199279199577%_
                                 _%e199280199580%_
                                 _%hd199281199583%_
                                 _%tl199282199585%_
                                 _%e199283199588%_
                                 _%hd199284199591%_
                                 _%tl199285199593%_
                                 _%e199286199596%_
                                 _%hd199287199599%_
                                 _%tl199288199601%_))))
                        (_%__match201562201563%_
                         _%e199253199510%_
                         _%hd199254199513%_
                         _%tl199255199515%_
                         _%e199265199540%_
                         _%hd199266199543%_
                         _%tl199267199545%_
                         _%e199268199548%_
                         _%hd199269199551%_
                         _%tl199270199553%_
                         _%e199271199556%_
                         _%hd199272199559%_
                         _%tl199273199561%_
                         _%e199274199564%_
                         _%hd199275199567%_
                         _%tl199276199569%_
                         _%e199277199572%_
                         _%hd199278199575%_
                         _%tl199279199577%_
                         _%e199280199580%_
                         _%hd199281199583%_
                         _%tl199282199585%_
                         _%e199283199588%_
                         _%hd199284199591%_
                         _%tl199285199593%_
                         _%e199286199596%_
                         _%hd199287199599%_
                         _%tl199288199601%_))))
                (let ((_%xarg199297199664%_ (reverse _%xarg199296199638%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199267199545%_))
                      (let ((_%g199247199666%_ _%hd199305199628%_)
                            (_%g199248199667%_ _%xarg199297199664%_)
                            (_%g199249199668%_ _%hd199287199599%_)
                            (_%g199250199669%_ _%hd199278199575%_)
                            (_%g199251199670%_ _%tl199258199520%_)
                            (_%g199252199671%_ _%arg199264199538%_))
                        (if (and (let ((__tmp202732
                                        (let ((__tmp202733
                                               (lambda (_%g199714199717%_
                                                        _%g199715199719%_)
                                                 (cons _%g199714199717%_
                                                       _%g199715199719%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202733
                                           '()
                                           _%g199252199671%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp202732))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g199251199670%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g199250199669%_
                                    'apply))
                                 (let ((__tmp202736
                                        (length (let ((__tmp202737
                                                       (lambda (_%g199721199724%_
                                                                _%g199722199726%_)
                                                         (cons _%g199721199724%_
                                                               _%g199722199726%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp202737
                                                   '()
                                                   _%g199252199671%_))))
                                       (__tmp202734
                                        (length (let ((__tmp202735
                                                       (lambda (_%g199728199731%_
                                                                _%g199729199733%_)
                                                         (cons _%g199728199731%_
                                                               _%g199729199733%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp202735
                                                   '()
                                                   _%g199248199667%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp202736 __tmp202734))
                                 (let ((__tmp202740
                                        (let ((__tmp202741
                                               (lambda (_%g199735199738%_
                                                        _%g199736199740%_)
                                                 (cons _%g199735199738%_
                                                       _%g199736199740%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202741
                                           '()
                                           _%g199252199671%_)))
                                       (__tmp202738
                                        (let ((__tmp202739
                                               (lambda (_%g199742199745%_
                                                        _%g199743199747%_)
                                                 (cons _%g199742199745%_
                                                       _%g199743199747%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202739
                                           '()
                                           _%g199248199667%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp202740
                                    __tmp202738))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g199251199670%_
                                    _%g199247199666%_))
                                 (not (let ((__tmp202745
                                             (lambda (_%g199749199751%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g199749199751%_
                                                  _%g199249199668%_))))
                                            (__tmp202742
                                             (let ((__tmp202744
                                                    (lambda (_%g199753199756%_
                                                             _%g199754199758%_)
                                                      (cons _%g199753199756%_
                                                            _%g199754199758%_)))
                                                   (__tmp202743
                                                    (cons _%g199251199670%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202744
                                                __tmp202743
                                                _%g199252199671%_))))
                                        (declare (not safe))
                                        (__find __tmp202745 __tmp202742))))
                            (_%__kont201457201458%_
                             _%g199247199666%_
                             _%g199248199667%_
                             _%g199249199668%_
                             _%g199250199669%_
                             _%g199251199670%_
                             _%g199252199671%_)
                            (_%__match201562201563%_
                             _%e199253199510%_
                             _%hd199254199513%_
                             _%tl199255199515%_
                             _%e199265199540%_
                             _%hd199266199543%_
                             _%tl199267199545%_
                             _%e199268199548%_
                             _%hd199269199551%_
                             _%tl199270199553%_
                             _%e199271199556%_
                             _%hd199272199559%_
                             _%tl199273199561%_
                             _%e199274199564%_
                             _%hd199275199567%_
                             _%tl199276199569%_
                             _%e199277199572%_
                             _%hd199278199575%_
                             _%tl199279199577%_
                             _%e199280199580%_
                             _%hd199281199583%_
                             _%tl199282199585%_
                             _%e199283199588%_
                             _%hd199284199591%_
                             _%tl199285199593%_
                             _%e199286199596%_
                             _%hd199287199599%_
                             _%tl199288199601%_)))
                      (_%__match201562201563%_
                       _%e199253199510%_
                       _%hd199254199513%_
                       _%tl199255199515%_
                       _%e199265199540%_
                       _%hd199266199543%_
                       _%tl199267199545%_
                       _%e199268199548%_
                       _%hd199269199551%_
                       _%tl199270199553%_
                       _%e199271199556%_
                       _%hd199272199559%_
                       _%tl199273199561%_
                       _%e199274199564%_
                       _%hd199275199567%_
                       _%tl199276199569%_
                       _%e199277199572%_
                       _%hd199278199575%_
                       _%tl199279199577%_
                       _%e199280199580%_
                       _%hd199281199583%_
                       _%tl199282199585%_
                       _%e199283199588%_
                       _%hd199284199591%_
                       _%tl199285199593%_
                       _%e199286199596%_
                       _%hd199287199599%_
                       _%tl199288199601%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199292199633%_
                                           _%target199289199604%_
                                           '()))
                                        (_%__match201562201563%_
                                         _%e199253199510%_
                                         _%hd199254199513%_
                                         _%tl199255199515%_
                                         _%e199265199540%_
                                         _%hd199266199543%_
                                         _%tl199267199545%_
                                         _%e199268199548%_
                                         _%hd199269199551%_
                                         _%tl199270199553%_
                                         _%e199271199556%_
                                         _%hd199272199559%_
                                         _%tl199273199561%_
                                         _%e199274199564%_
                                         _%hd199275199567%_
                                         _%tl199276199569%_
                                         _%e199277199572%_
                                         _%hd199278199575%_
                                         _%tl199279199577%_
                                         _%e199280199580%_
                                         _%hd199281199583%_
                                         _%tl199282199585%_
                                         _%e199283199588%_
                                         _%hd199284199591%_
                                         _%tl199285199593%_
                                         _%e199286199596%_
                                         _%hd199287199599%_
                                         _%tl199288199601%_))
                                    (_%__match201562201563%_
                                     _%e199253199510%_
                                     _%hd199254199513%_
                                     _%tl199255199515%_
                                     _%e199265199540%_
                                     _%hd199266199543%_
                                     _%tl199267199545%_
                                     _%e199268199548%_
                                     _%hd199269199551%_
                                     _%tl199270199553%_
                                     _%e199271199556%_
                                     _%hd199272199559%_
                                     _%tl199273199561%_
                                     _%e199274199564%_
                                     _%hd199275199567%_
                                     _%tl199276199569%_
                                     _%e199277199572%_
                                     _%hd199278199575%_
                                     _%tl199279199577%_
                                     _%e199280199580%_
                                     _%hd199281199583%_
                                     _%tl199282199585%_
                                     _%e199283199588%_
                                     _%hd199284199591%_
                                     _%tl199285199593%_
                                     _%e199286199596%_
                                     _%hd199287199599%_
                                     _%tl199288199601%_))))
                            (_%__match201562201563%_
                             _%e199253199510%_
                             _%hd199254199513%_
                             _%tl199255199515%_
                             _%e199265199540%_
                             _%hd199266199543%_
                             _%tl199267199545%_
                             _%e199268199548%_
                             _%hd199269199551%_
                             _%tl199270199553%_
                             _%e199271199556%_
                             _%hd199272199559%_
                             _%tl199273199561%_
                             _%e199274199564%_
                             _%hd199275199567%_
                             _%tl199276199569%_
                             _%e199277199572%_
                             _%hd199278199575%_
                             _%tl199279199577%_
                             _%e199280199580%_
                             _%hd199281199583%_
                             _%tl199282199585%_
                             _%e199283199588%_
                             _%hd199284199591%_
                             _%tl199285199593%_
                             _%e199286199596%_
                             _%hd199287199599%_
                             _%tl199288199601%_))
                        (_%__match201562201563%_
                         _%e199253199510%_
                         _%hd199254199513%_
                         _%tl199255199515%_
                         _%e199265199540%_
                         _%hd199266199543%_
                         _%tl199267199545%_
                         _%e199268199548%_
                         _%hd199269199551%_
                         _%tl199270199553%_
                         _%e199271199556%_
                         _%hd199272199559%_
                         _%tl199273199561%_
                         _%e199274199564%_
                         _%hd199275199567%_
                         _%tl199276199569%_
                         _%e199277199572%_
                         _%hd199278199575%_
                         _%tl199279199577%_
                         _%e199280199580%_
                         _%hd199281199583%_
                         _%tl199282199585%_
                         _%e199283199588%_
                         _%hd199284199591%_
                         _%tl199285199593%_
                         _%e199286199596%_
                         _%hd199287199599%_
                         _%tl199288199601%_))
                    (_%__match201562201563%_
                     _%e199253199510%_
                     _%hd199254199513%_
                     _%tl199255199515%_
                     _%e199265199540%_
                     _%hd199266199543%_
                     _%tl199267199545%_
                     _%e199268199548%_
                     _%hd199269199551%_
                     _%tl199270199553%_
                     _%e199271199556%_
                     _%hd199272199559%_
                     _%tl199273199561%_
                     _%e199274199564%_
                     _%hd199275199567%_
                     _%tl199276199569%_
                     _%e199277199572%_
                     _%hd199278199575%_
                     _%tl199279199577%_
                     _%e199280199580%_
                     _%hd199281199583%_
                     _%tl199282199585%_
                     _%e199283199588%_
                     _%hd199284199591%_
                     _%tl199285199593%_
                     _%e199286199596%_
                     _%hd199287199599%_
                     _%tl199288199601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201562201563%_
                                                     _%e199253199510%_
                                                     _%hd199254199513%_
                                                     _%tl199255199515%_
                                                     _%e199265199540%_
                                                     _%hd199266199543%_
                                                     _%tl199267199545%_
                                                     _%e199268199548%_
                                                     _%hd199269199551%_
                                                     _%tl199270199553%_
                                                     _%e199271199556%_
                                                     _%hd199272199559%_
                                                     _%tl199273199561%_
                                                     _%e199274199564%_
                                                     _%hd199275199567%_
                                                     _%tl199276199569%_
                                                     _%e199277199572%_
                                                     _%hd199278199575%_
                                                     _%tl199279199577%_
                                                     _%e199280199580%_
                                                     _%hd199281199583%_
                                                     _%tl199282199585%_
                                                     _%e199283199588%_
                                                     _%hd199284199591%_
                                                     _%tl199285199593%_
                                                     _%e199286199596%_
                                                     _%hd199287199599%_
                                                     _%tl199288199601%_))))
                                            (_%__match201562201563%_
                                             _%e199253199510%_
                                             _%hd199254199513%_
                                             _%tl199255199515%_
                                             _%e199265199540%_
                                             _%hd199266199543%_
                                             _%tl199267199545%_
                                             _%e199268199548%_
                                             _%hd199269199551%_
                                             _%tl199270199553%_
                                             _%e199271199556%_
                                             _%hd199272199559%_
                                             _%tl199273199561%_
                                             _%e199274199564%_
                                             _%hd199275199567%_
                                             _%tl199276199569%_
                                             _%e199277199572%_
                                             _%hd199278199575%_
                                             _%tl199279199577%_
                                             _%e199280199580%_
                                             _%hd199281199583%_
                                             _%tl199282199585%_
                                             _%e199283199588%_
                                             _%hd199284199591%_
                                             _%tl199285199593%_
                                             _%e199286199596%_
                                             _%hd199287199599%_
                                             _%tl199288199601%_))))
                                    (_%__match201562201563%_
                                     _%e199253199510%_
                                     _%hd199254199513%_
                                     _%tl199255199515%_
                                     _%e199265199540%_
                                     _%hd199266199543%_
                                     _%tl199267199545%_
                                     _%e199268199548%_
                                     _%hd199269199551%_
                                     _%tl199270199553%_
                                     _%e199271199556%_
                                     _%hd199272199559%_
                                     _%tl199273199561%_
                                     _%e199274199564%_
                                     _%hd199275199567%_
                                     _%tl199276199569%_
                                     _%e199277199572%_
                                     _%hd199278199575%_
                                     _%tl199279199577%_
                                     _%e199280199580%_
                                     _%hd199281199583%_
                                     _%tl199282199585%_
                                     _%e199283199588%_
                                     _%hd199284199591%_
                                     _%tl199285199593%_
                                     _%e199286199596%_
                                     _%hd199287199599%_
                                     _%tl199288199601%_))
                                (_%__match201562201563%_
                                 _%e199253199510%_
                                 _%hd199254199513%_
                                 _%tl199255199515%_
                                 _%e199265199540%_
                                 _%hd199266199543%_
                                 _%tl199267199545%_
                                 _%e199268199548%_
                                 _%hd199269199551%_
                                 _%tl199270199553%_
                                 _%e199271199556%_
                                 _%hd199272199559%_
                                 _%tl199273199561%_
                                 _%e199274199564%_
                                 _%hd199275199567%_
                                 _%tl199276199569%_
                                 _%e199277199572%_
                                 _%hd199278199575%_
                                 _%tl199279199577%_
                                 _%e199280199580%_
                                 _%hd199281199583%_
                                 _%tl199282199585%_
                                 _%e199283199588%_
                                 _%hd199284199591%_
                                 _%tl199285199593%_
                                 _%e199286199596%_
                                 _%hd199287199599%_
                                 _%tl199288199601%_))
                            (_%__kont201465201466%_))))
                    (_%__kont201465201466%_))
                (_%__kont201465201466%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201465201466%_))))
                                            (_%__kont201465201466%_))))
                                    (_%__kont201465201466%_))
                                (_%__kont201465201466%_))))
                        (_%__kont201465201466%_))
                    (_%__kont201465201466%_))
                (_%__kont201465201466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201465201466%_))))
                                        (_%__kont201465201466%_))
                                    (_%__kont201465201466%_))
                                (_%__kont201465201466%_))))
                        (_%__kont201465201466%_))))
                (_%__kont201465201466%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199259199523%_
                                     _%target199256199518%_
                                     '()))))
                               (_%__match201480201481%_
                                (lambda (_%e199205199766%_
                                         _%hd199206199769%_
                                         _%tl199207199771%_
                                         _%__splice201453201454%_
                                         _%target199208199774%_
                                         _%tl199210199776%_)
                                  (letrec ((_%loop199211199779%_
                                            (lambda (_%hd199209199782%_
                                                     _%arg199215199784%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199209199782%_))
                                                  (let ((_%e199212199786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199209199782%_))))
                                                    (let ((_%lp-tl199214199791%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199212199786%_)))
                                                          (_%lp-hd199213199789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199212199786%_))))
                                                      (_%loop199211199779%_
                                                       _%lp-tl199214199791%_
                                                       (cons _%lp-hd199213199789%_
                                                             _%arg199215199784%_))))
                                                  (let ((_%arg199216199794%_
                                                         (reverse _%arg199215199784%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199207199771%_))
                                                        (let ((_%e199217199796%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199207199771%_))))
                  (let ((_%tl199219199801%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199217199796%_)))
                        (_%hd199218199799%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199217199796%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199218199799%_))
                        (let ((_%e199220199804%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199218199799%_))))
                          (let ((_%tl199222199809%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199220199804%_)))
                                (_%hd199221199807%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199220199804%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199221199807%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199221199807%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199222199809%_))
                                        (let ((_%e199223199812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199222199809%_))))
                                          (let ((_%tl199225199817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199223199812%_)))
                                                (_%hd199224199815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199223199812%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199224199815%_))
                                                (let ((_%e199226199820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199224199815%_))))
                                                  (let ((_%tl199228199825%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199226199820%_)))
                                                        (_%hd199227199823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199226199820%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199227199823%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199227199823%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199228199825%_))
                        (let ((_%e199229199828%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199228199825%_))))
                          (let ((_%tl199231199833%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199229199828%_)))
                                (_%hd199230199831%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199229199828%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199231199833%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl199225199817%_))
                                    (let ((_%__splice201455201456%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl199225199817%_
                                              '0))))
                                      (let ((_%tl199234199838%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201455201456%_
                                                '1)))
                                            (_%target199232199836%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201455201456%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199234199838%_))
                                            (letrec ((_%loop199235199841%_
                                                      (lambda (_%hd199233199844%_
                                                               _%xarg199239199846%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd199233199844%_))
                                                            (let ((_%e199236199848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199233199844%_))))
                      (let ((_%lp-tl199238199853%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199236199848%_)))
                            (_%lp-hd199237199851%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199236199848%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd199237199851%_))
                            (let ((_%e199241199856%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd199237199851%_))))
                              (let ((_%tl199243199861%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199241199856%_)))
                                    (_%hd199242199859%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199241199856%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199242199859%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd199242199859%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199243199861%_))
                                            (let ((_%e199244199864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199243199861%_))))
                                              (let ((_%tl199246199869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199244199864%_)))
                                                    (_%hd199245199867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199244199864%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199246199869%_))
                                                    (_%loop199235199841%_
                                                     _%lp-tl199238199853%_
                                                     (cons _%hd199245199867%_
                                                           _%xarg199239199846%_))
                                                    (_%__match201492201493%_
                                                     _%e199205199766%_
                                                     _%hd199206199769%_
                                                     _%tl199207199771%_
                                                     _%__splice201453201454%_
                                                     _%target199208199774%_
                                                     _%tl199210199776%_))))
                                            (_%__match201492201493%_
                                             _%e199205199766%_
                                             _%hd199206199769%_
                                             _%tl199207199771%_
                                             _%__splice201453201454%_
                                             _%target199208199774%_
                                             _%tl199210199776%_))
                                        (_%__match201492201493%_
                                         _%e199205199766%_
                                         _%hd199206199769%_
                                         _%tl199207199771%_
                                         _%__splice201453201454%_
                                         _%target199208199774%_
                                         _%tl199210199776%_))
                                    (_%__match201492201493%_
                                     _%e199205199766%_
                                     _%hd199206199769%_
                                     _%tl199207199771%_
                                     _%__splice201453201454%_
                                     _%target199208199774%_
                                     _%tl199210199776%_))))
                            (_%__match201492201493%_
                             _%e199205199766%_
                             _%hd199206199769%_
                             _%tl199207199771%_
                             _%__splice201453201454%_
                             _%target199208199774%_
                             _%tl199210199776%_))))
                    (let ((_%xarg199240199872%_
                           (reverse _%xarg199239199846%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199219199801%_))
                          (let ((_%g199202199874%_ _%xarg199240199872%_)
                                (_%g199203199875%_ _%hd199230199831%_)
                                (_%g199204199876%_ _%arg199216199794%_))
                            (if (and (let ((__tmp202746
                                            (let ((__tmp202747
                                                   (lambda (_%g199904199907%_
                                                            _%g199905199909%_)
                                                     (cons _%g199904199907%_
                                                           _%g199905199909%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202747
                                               '()
                                               _%g199204199876%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp202746))
                                     (let ((__tmp202750
                                            (length (let ((__tmp202751
                                                           (lambda (_%g199911199914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g199912199916%_)
                     (cons _%g199911199914%_ _%g199912199916%_))))
              (declare (not safe))
              (foldr__0 __tmp202751 '() _%g199204199876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp202748
                                            (length (let ((__tmp202749
                                                           (lambda (_%g199918199921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g199919199923%_)
                     (cons _%g199918199921%_ _%g199919199923%_))))
              (declare (not safe))
              (foldr__0 __tmp202749 '() _%g199202199874%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp202750 __tmp202748))
                                     (let ((__tmp202754
                                            (let ((__tmp202755
                                                   (lambda (_%g199925199928%_
                                                            _%g199926199930%_)
                                                     (cons _%g199925199928%_
                                                           _%g199926199930%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202755
                                               '()
                                               _%g199204199876%_)))
                                           (__tmp202752
                                            (let ((__tmp202753
                                                   (lambda (_%g199932199935%_
                                                            _%g199933199937%_)
                                                     (cons _%g199932199935%_
                                                           _%g199933199937%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202753
                                               '()
                                               _%g199202199874%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp202754
                                        __tmp202752))
                                     (not (let ((__tmp202758
                                                 (lambda (_%g199939199941%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g199939199941%_
                                                      _%g199203199875%_))))
                                                (__tmp202756
                                                 (let ((__tmp202757
                                                        (lambda (_%g199943199946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g199944199948%_)
                  (cons _%g199943199946%_ _%g199944199948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp202757
                                                    '()
                                                    _%g199204199876%_))))
                                            (declare (not safe))
                                            (__find __tmp202758 __tmp202756))))
                                (_%__kont201451201452%_
                                 _%g199202199874%_
                                 _%g199203199875%_
                                 _%g199204199876%_)
                                (_%__match201492201493%_
                                 _%e199205199766%_
                                 _%hd199206199769%_
                                 _%tl199207199771%_
                                 _%__splice201453201454%_
                                 _%target199208199774%_
                                 _%tl199210199776%_)))
                          (_%__match201492201493%_
                           _%e199205199766%_
                           _%hd199206199769%_
                           _%tl199207199771%_
                           _%__splice201453201454%_
                           _%target199208199774%_
                           _%tl199210199776%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop199235199841%_
                                               _%target199232199836%_
                                               '()))
                                            (_%__match201492201493%_
                                             _%e199205199766%_
                                             _%hd199206199769%_
                                             _%tl199207199771%_
                                             _%__splice201453201454%_
                                             _%target199208199774%_
                                             _%tl199210199776%_))))
                                    (_%__match201492201493%_
                                     _%e199205199766%_
                                     _%hd199206199769%_
                                     _%tl199207199771%_
                                     _%__splice201453201454%_
                                     _%target199208199774%_
                                     _%tl199210199776%_))
                                (_%__match201492201493%_
                                 _%e199205199766%_
                                 _%hd199206199769%_
                                 _%tl199207199771%_
                                 _%__splice201453201454%_
                                 _%target199208199774%_
                                 _%tl199210199776%_))))
                        (_%__match201492201493%_
                         _%e199205199766%_
                         _%hd199206199769%_
                         _%tl199207199771%_
                         _%__splice201453201454%_
                         _%target199208199774%_
                         _%tl199210199776%_))
                    (_%__match201492201493%_
                     _%e199205199766%_
                     _%hd199206199769%_
                     _%tl199207199771%_
                     _%__splice201453201454%_
                     _%target199208199774%_
                     _%tl199210199776%_))
                (_%__match201492201493%_
                 _%e199205199766%_
                 _%hd199206199769%_
                 _%tl199207199771%_
                 _%__splice201453201454%_
                 _%target199208199774%_
                 _%tl199210199776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match201492201493%_
                                                 _%e199205199766%_
                                                 _%hd199206199769%_
                                                 _%tl199207199771%_
                                                 _%__splice201453201454%_
                                                 _%target199208199774%_
                                                 _%tl199210199776%_))))
                                        (_%__match201492201493%_
                                         _%e199205199766%_
                                         _%hd199206199769%_
                                         _%tl199207199771%_
                                         _%__splice201453201454%_
                                         _%target199208199774%_
                                         _%tl199210199776%_))
                                    (_%__match201492201493%_
                                     _%e199205199766%_
                                     _%hd199206199769%_
                                     _%tl199207199771%_
                                     _%__splice201453201454%_
                                     _%target199208199774%_
                                     _%tl199210199776%_))
                                (_%__match201492201493%_
                                 _%e199205199766%_
                                 _%hd199206199769%_
                                 _%tl199207199771%_
                                 _%__splice201453201454%_
                                 _%target199208199774%_
                                 _%tl199210199776%_))))
                        (_%__match201492201493%_
                         _%e199205199766%_
                         _%hd199206199769%_
                         _%tl199207199771%_
                         _%__splice201453201454%_
                         _%target199208199774%_
                         _%tl199210199776%_))))
                (_%__match201492201493%_
                 _%e199205199766%_
                 _%hd199206199769%_
                 _%tl199207199771%_
                 _%__splice201453201454%_
                 _%target199208199774%_
                 _%tl199210199776%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199211199779%_
                                     _%target199208199774%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx201449201450%_))
                              (let ((_%e199205199766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx201449201450%_))))
                                (let ((_%tl199207199771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199205199766%_)))
                                      (_%hd199206199769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199205199766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd199206199769%_))
                                      (let ((_%__splice201453201454%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd199206199769%_
                                                '0))))
                                        (let ((_%tl199210199776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201453201454%_
                                                  '1)))
                                              (_%target199208199774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201453201454%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199210199776%_))
                                              (_%__match201480201481%_
                                               _%e199205199766%_
                                               _%hd199206199769%_
                                               _%tl199207199771%_
                                               _%__splice201453201454%_
                                               _%target199208199774%_
                                               _%tl199210199776%_)
                                              (_%__match201492201493%_
                                               _%e199205199766%_
                                               _%hd199206199769%_
                                               _%tl199207199771%_
                                               _%__splice201453201454%_
                                               _%target199208199774%_
                                               _%tl199210199776%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199207199771%_))
                                          (let ((_%e199320199377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199207199771%_))))
                                            (let ((_%tl199322199382%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199320199377%_)))
                                                  (_%hd199321199380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199320199377%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199321199380%_))
                                                  (let ((_%e199323199385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199321199380%_))))
                                                    (let ((_%tl199325199390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199323199385%_)))
                                                          (_%hd199324199388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199323199385%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd199324199388%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd199324199388%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199325199390%_))
                          (let ((_%e199326199393%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199325199390%_))))
                            (let ((_%tl199328199398%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199326199393%_)))
                                  (_%hd199327199396%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199326199393%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199327199396%_))
                                  (let ((_%e199329199401%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199327199396%_))))
                                    (let ((_%tl199331199406%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199329199401%_)))
                                          (_%hd199330199404%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199329199401%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199330199404%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199330199404%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199331199406%_))
                                                  (let ((_%e199332199409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199331199406%_))))
                                                    (let ((_%tl199334199414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199332199409%_)))
                                                          (_%hd199333199412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199332199409%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199334199414%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199328199398%_))
                      (let ((_%e199335199417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199328199398%_))))
                        (let ((_%tl199337199422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199335199417%_)))
                              (_%hd199336199420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199335199417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199336199420%_))
                              (let ((_%e199338199425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199336199420%_))))
                                (let ((_%tl199340199430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199338199425%_)))
                                      (_%hd199339199428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199338199425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199339199428%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199339199428%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199340199430%_))
                                              (let ((_%e199341199433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199340199430%_))))
                                                (let ((_%tl199343199438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199341199433%_)))
                                                      (_%hd199342199436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199341199433%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199343199438%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199337199422%_))
                                                          (let ((_%e199344199441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199337199422%_))))
                    (let ((_%tl199346199446%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199344199441%_)))
                          (_%hd199345199444%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199344199441%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199345199444%_))
                          (let ((_%e199347199449%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199345199444%_))))
                            (let ((_%tl199349199454%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199347199449%_)))
                                  (_%hd199348199452%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199347199449%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd199348199452%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd199348199452%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199349199454%_))
                                          (let ((_%e199350199457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199349199454%_))))
                                            (let ((_%tl199352199462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199350199457%_)))
                                                  (_%hd199351199460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199350199457%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199352199462%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199346199446%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199322199382%_))
                                                          (_%__match201590201591%_
                                                           _%e199205199766%_
                                                           _%hd199206199769%_
                                                           _%tl199207199771%_
                                                           _%e199320199377%_
                                                           _%hd199321199380%_
                                                           _%tl199322199382%_
                                                           _%e199323199385%_
                                                           _%hd199324199388%_
                                                           _%tl199325199390%_
                                                           _%e199326199393%_
                                                           _%hd199327199396%_
                                                           _%tl199328199398%_
                                                           _%e199329199401%_
                                                           _%hd199330199404%_
                                                           _%tl199331199406%_
                                                           _%e199332199409%_
                                                           _%hd199333199412%_
                                                           _%tl199334199414%_
                                                           _%e199335199417%_
                                                           _%hd199336199420%_
                                                           _%tl199337199422%_
                                                           _%e199338199425%_
                                                           _%hd199339199428%_
                                                           _%tl199340199430%_
                                                           _%e199341199433%_
                                                           _%hd199342199436%_
                                                           _%tl199343199438%_
                                                           _%e199344199441%_
                                                           _%hd199345199444%_
                                                           _%tl199346199446%_
                                                           _%e199347199449%_
                                                           _%hd199348199452%_
                                                           _%tl199349199454%_
                                                           _%e199350199457%_
                                                           _%hd199351199460%_
                                                           _%tl199352199462%_)
                                                          (_%__kont201465201466%_))
                                                      (_%__kont201465201466%_))
                                                  (_%__kont201465201466%_))))
                                          (_%__kont201465201466%_))
                                      (_%__kont201465201466%_))
                                  (_%__kont201465201466%_))))
                          (_%__kont201465201466%_))))
                  (_%__kont201465201466%_))
              (_%__kont201465201466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201465201466%_))
                                          (_%__kont201465201466%_))
                                      (_%__kont201465201466%_))))
                              (_%__kont201465201466%_))))
                      (_%__kont201465201466%_))
                  (_%__kont201465201466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201465201466%_))
                                              (_%__kont201465201466%_))
                                          (_%__kont201465201466%_))))
                                  (_%__kont201465201466%_))))
                          (_%__kont201465201466%_))
                      (_%__kont201465201466%_))
                  (_%__kont201465201466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201465201466%_))))
                                          (_%__kont201465201466%_)))))
                              (_%__kont201465201466%_)))))))
                 (_%dispatch-case-e198515%_
                  (lambda (_%hd198662%_ _%body198663%_)
                    (let* ((_%form198665%_
                            (cons _%hd198662%_ (cons _%body198663%_ '())))
                           (_%__stx201593201594%_ _%form198665%_)
                           (_%g198669198793%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx201593201594%_)))))
                      (let ((_%__kont201595201596%_
                             (lambda (_%g198671199158%_
                                      _%g198672199159%_
                                      _%g198673199160%_)
                               (let ((__tmp202759
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198672199159%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198511%_
                                  __tmp202759))))
                            (_%__kont201601201602%_
                             (lambda (_%g198716199010%_
                                      _%g198717199011%_
                                      _%g198718199012%_
                                      _%g198719199013%_)
                               (let ((__tmp202760
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198716199010%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198511%_
                                  __tmp202760))))
                            (_%__kont201605201606%_
                             (lambda (_%g198756198878%_
                                      _%g198757198879%_
                                      _%g198758198880%_)
                               (let ((__tmp202761
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198756198878%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198511%_
                                  __tmp202761)))))
                        (let* ((_%__match201702201703%_
                                (lambda (_%e198759198798%_
                                         _%hd198760198801%_
                                         _%tl198761198803%_
                                         _%e198762198806%_
                                         _%hd198763198809%_
                                         _%tl198764198811%_
                                         _%e198765198814%_
                                         _%hd198766198817%_
                                         _%tl198767198819%_
                                         _%e198768198822%_
                                         _%hd198769198825%_
                                         _%tl198770198827%_
                                         _%e198771198830%_
                                         _%hd198772198833%_
                                         _%tl198773198835%_
                                         _%e198774198838%_
                                         _%hd198775198841%_
                                         _%tl198776198843%_
                                         _%e198777198846%_
                                         _%hd198778198849%_
                                         _%tl198779198851%_
                                         _%e198780198854%_
                                         _%hd198781198857%_
                                         _%tl198782198859%_
                                         _%e198783198862%_
                                         _%hd198784198865%_
                                         _%tl198785198867%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198779198851%_))
                                      (let ((_%e198786198870%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198779198851%_))))
                                        (let ((_%tl198788198875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198786198870%_)))
                                              (_%hd198787198873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198786198870%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198788198875%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl198764198811%_))
                                                  (_%__kont201605201606%_
                                                   _%hd198784198865%_
                                                   _%hd198775198841%_
                                                   _%hd198760198801%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198669198793%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198669198793%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198669198793%_)))))
                               (_%__match201632201633%_
                                (lambda (_%e198720198916%_
                                         _%hd198721198919%_
                                         _%tl198722198921%_
                                         _%__splice201603201604%_
                                         _%target198723198924%_
                                         _%tl198725198926%_)
                                  (letrec ((_%loop198726198929%_
                                            (lambda (_%hd198724198932%_
                                                     _%arg198730198934%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198724198932%_))
                                                  (let ((_%e198727198936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198724198932%_))))
                                                    (let ((_%lp-tl198729198941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198727198936%_)))
                                                          (_%lp-hd198728198939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198727198936%_))))
                                                      (_%loop198726198929%_
                                                       _%lp-tl198729198941%_
                                                       (cons _%lp-hd198728198939%_
                                                             _%arg198730198934%_))))
                                                  (let ((_%arg198731198944%_
                                                         (reverse _%arg198730198934%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198722198921%_))
                                                        (let ((_%e198732198946%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl198722198921%_))))
                  (let ((_%tl198734198951%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198732198946%_)))
                        (_%hd198733198949%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198732198946%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198733198949%_))
                        (let ((_%e198735198954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd198733198949%_))))
                          (let ((_%tl198737198959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198735198954%_)))
                                (_%hd198736198957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198735198954%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd198736198957%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd198736198957%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198737198959%_))
                                        (let ((_%e198738198962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198737198959%_))))
                                          (let ((_%tl198740198967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198738198962%_)))
                                                (_%hd198739198965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198738198962%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd198739198965%_))
                                                (let ((_%e198741198970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198739198965%_))))
                                                  (let ((_%tl198743198975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198741198970%_)))
                                                        (_%hd198742198973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198741198970%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd198742198973%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd198742198973%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198743198975%_))
                        (let ((_%e198744198978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198743198975%_))))
                          (let ((_%tl198746198983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198744198978%_)))
                                (_%hd198745198981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198744198978%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198746198983%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198740198967%_))
                                    (let ((_%e198747198986%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198740198967%_))))
                                      (let ((_%tl198749198991%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198747198986%_)))
                                            (_%hd198748198989%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198747198986%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198748198989%_))
                                            (let ((_%e198750198994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198748198989%_))))
                                              (let ((_%tl198752198999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198750198994%_)))
                                                    (_%hd198751198997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198750198994%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198751198997%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd198751198997%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198752198999%_))
                                                            (let ((_%e198753199002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198752198999%_))))
                      (let ((_%tl198755199007%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198753199002%_)))
                            (_%hd198754199005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198753199002%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198755199007%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198734198951%_))
                                (_%__kont201601201602%_
                                 _%hd198754199005%_
                                 _%hd198745198981%_
                                 _%tl198725198926%_
                                 _%arg198731198944%_)
                                (_%__match201702201703%_
                                 _%e198720198916%_
                                 _%hd198721198919%_
                                 _%tl198722198921%_
                                 _%e198732198946%_
                                 _%hd198733198949%_
                                 _%tl198734198951%_
                                 _%e198735198954%_
                                 _%hd198736198957%_
                                 _%tl198737198959%_
                                 _%e198738198962%_
                                 _%hd198739198965%_
                                 _%tl198740198967%_
                                 _%e198741198970%_
                                 _%hd198742198973%_
                                 _%tl198743198975%_
                                 _%e198744198978%_
                                 _%hd198745198981%_
                                 _%tl198746198983%_
                                 _%e198747198986%_
                                 _%hd198748198989%_
                                 _%tl198749198991%_
                                 _%e198750198994%_
                                 _%hd198751198997%_
                                 _%tl198752198999%_
                                 _%e198753199002%_
                                 _%hd198754199005%_
                                 _%tl198755199007%_))
                            (let ()
                              (declare (not safe))
                              (_%g198669198793%_)))))
                    (let () (declare (not safe)) (_%g198669198793%_)))
                (let () (declare (not safe)) (_%g198669198793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198669198793%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198669198793%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198669198793%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198669198793%_)))))
                        (let () (declare (not safe)) (_%g198669198793%_)))
                    (let () (declare (not safe)) (_%g198669198793%_)))
                (let () (declare (not safe)) (_%g198669198793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198669198793%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198669198793%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198669198793%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198669198793%_)))))
                        (let () (declare (not safe)) (_%g198669198793%_)))))
                (let () (declare (not safe)) (_%g198669198793%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop198726198929%_
                                     _%target198723198924%_
                                     '()))))
                               (_%__match201620201621%_
                                (lambda (_%e198674199050%_
                                         _%hd198675199053%_
                                         _%tl198676199055%_
                                         _%__splice201597201598%_
                                         _%target198677199058%_
                                         _%tl198679199060%_)
                                  (letrec ((_%loop198680199063%_
                                            (lambda (_%hd198678199066%_
                                                     _%arg198684199068%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198678199066%_))
                                                  (let ((_%e198681199070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198678199066%_))))
                                                    (let ((_%lp-tl198683199075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198681199070%_)))
                                                          (_%lp-hd198682199073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198681199070%_))))
                                                      (_%loop198680199063%_
                                                       _%lp-tl198683199075%_
                                                       (cons _%lp-hd198682199073%_
                                                             _%arg198684199068%_))))
                                                  (let ((_%arg198685199078%_
                                                         (reverse _%arg198684199068%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198676199055%_))
                                                        (let ((_%e198686199080%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl198676199055%_))))
                  (let ((_%tl198688199085%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198686199080%_)))
                        (_%hd198687199083%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198686199080%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198687199083%_))
                        (let ((_%e198689199088%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd198687199083%_))))
                          (let ((_%tl198691199093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198689199088%_)))
                                (_%hd198690199091%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198689199088%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd198690199091%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd198690199091%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198691199093%_))
                                        (let ((_%e198692199096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198691199093%_))))
                                          (let ((_%tl198694199101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198692199096%_)))
                                                (_%hd198693199099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198692199096%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd198693199099%_))
                                                (let ((_%e198695199104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198693199099%_))))
                                                  (let ((_%tl198697199109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198695199104%_)))
                                                        (_%hd198696199107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198695199104%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd198696199107%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd198696199107%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198697199109%_))
                        (let ((_%e198698199112%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198697199109%_))))
                          (let ((_%tl198700199117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198698199112%_)))
                                (_%hd198699199115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198698199112%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198700199117%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198694199101%_))
                                    (let ((_%__splice201599201600%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl198694199101%_
                                              '0))))
                                      (let ((_%tl198703199122%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201599201600%_
                                                '1)))
                                            (_%target198701199120%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201599201600%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198703199122%_))
                                            (letrec ((_%loop198704199125%_
                                                      (lambda (_%hd198702199128%_
                                                               _%xarg198708199130%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd198702199128%_))
                                                            (let ((_%e198705199132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd198702199128%_))))
                      (let ((_%lp-tl198707199137%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198705199132%_)))
                            (_%lp-hd198706199135%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198705199132%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd198706199135%_))
                            (let ((_%e198710199140%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd198706199135%_))))
                              (let ((_%tl198712199145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198710199140%_)))
                                    (_%hd198711199143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198710199140%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd198711199143%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd198711199143%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198712199145%_))
                                            (let ((_%e198713199148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl198712199145%_))))
                                              (let ((_%tl198715199153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198713199148%_)))
                                                    (_%hd198714199151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198713199148%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198715199153%_))
                                                    (_%loop198704199125%_
                                                     _%lp-tl198707199137%_
                                                     (cons _%hd198714199151%_
                                                           _%xarg198708199130%_))
                                                    (_%__match201632201633%_
                                                     _%e198674199050%_
                                                     _%hd198675199053%_
                                                     _%tl198676199055%_
                                                     _%__splice201597201598%_
                                                     _%target198677199058%_
                                                     _%tl198679199060%_))))
                                            (_%__match201632201633%_
                                             _%e198674199050%_
                                             _%hd198675199053%_
                                             _%tl198676199055%_
                                             _%__splice201597201598%_
                                             _%target198677199058%_
                                             _%tl198679199060%_))
                                        (_%__match201632201633%_
                                         _%e198674199050%_
                                         _%hd198675199053%_
                                         _%tl198676199055%_
                                         _%__splice201597201598%_
                                         _%target198677199058%_
                                         _%tl198679199060%_))
                                    (_%__match201632201633%_
                                     _%e198674199050%_
                                     _%hd198675199053%_
                                     _%tl198676199055%_
                                     _%__splice201597201598%_
                                     _%target198677199058%_
                                     _%tl198679199060%_))))
                            (_%__match201632201633%_
                             _%e198674199050%_
                             _%hd198675199053%_
                             _%tl198676199055%_
                             _%__splice201597201598%_
                             _%target198677199058%_
                             _%tl198679199060%_))))
                    (let ((_%xarg198709199156%_
                           (reverse _%xarg198708199130%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198688199085%_))
                          (_%__kont201595201596%_
                           _%xarg198709199156%_
                           _%hd198699199115%_
                           _%arg198685199078%_)
                          (_%__match201632201633%_
                           _%e198674199050%_
                           _%hd198675199053%_
                           _%tl198676199055%_
                           _%__splice201597201598%_
                           _%target198677199058%_
                           _%tl198679199060%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop198704199125%_
                                               _%target198701199120%_
                                               '()))
                                            (_%__match201632201633%_
                                             _%e198674199050%_
                                             _%hd198675199053%_
                                             _%tl198676199055%_
                                             _%__splice201597201598%_
                                             _%target198677199058%_
                                             _%tl198679199060%_))))
                                    (_%__match201632201633%_
                                     _%e198674199050%_
                                     _%hd198675199053%_
                                     _%tl198676199055%_
                                     _%__splice201597201598%_
                                     _%target198677199058%_
                                     _%tl198679199060%_))
                                (_%__match201632201633%_
                                 _%e198674199050%_
                                 _%hd198675199053%_
                                 _%tl198676199055%_
                                 _%__splice201597201598%_
                                 _%target198677199058%_
                                 _%tl198679199060%_))))
                        (_%__match201632201633%_
                         _%e198674199050%_
                         _%hd198675199053%_
                         _%tl198676199055%_
                         _%__splice201597201598%_
                         _%target198677199058%_
                         _%tl198679199060%_))
                    (_%__match201632201633%_
                     _%e198674199050%_
                     _%hd198675199053%_
                     _%tl198676199055%_
                     _%__splice201597201598%_
                     _%target198677199058%_
                     _%tl198679199060%_))
                (_%__match201632201633%_
                 _%e198674199050%_
                 _%hd198675199053%_
                 _%tl198676199055%_
                 _%__splice201597201598%_
                 _%target198677199058%_
                 _%tl198679199060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match201632201633%_
                                                 _%e198674199050%_
                                                 _%hd198675199053%_
                                                 _%tl198676199055%_
                                                 _%__splice201597201598%_
                                                 _%target198677199058%_
                                                 _%tl198679199060%_))))
                                        (_%__match201632201633%_
                                         _%e198674199050%_
                                         _%hd198675199053%_
                                         _%tl198676199055%_
                                         _%__splice201597201598%_
                                         _%target198677199058%_
                                         _%tl198679199060%_))
                                    (_%__match201632201633%_
                                     _%e198674199050%_
                                     _%hd198675199053%_
                                     _%tl198676199055%_
                                     _%__splice201597201598%_
                                     _%target198677199058%_
                                     _%tl198679199060%_))
                                (_%__match201632201633%_
                                 _%e198674199050%_
                                 _%hd198675199053%_
                                 _%tl198676199055%_
                                 _%__splice201597201598%_
                                 _%target198677199058%_
                                 _%tl198679199060%_))))
                        (_%__match201632201633%_
                         _%e198674199050%_
                         _%hd198675199053%_
                         _%tl198676199055%_
                         _%__splice201597201598%_
                         _%target198677199058%_
                         _%tl198679199060%_))))
                (_%__match201632201633%_
                 _%e198674199050%_
                 _%hd198675199053%_
                 _%tl198676199055%_
                 _%__splice201597201598%_
                 _%target198677199058%_
                 _%tl198679199060%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop198680199063%_
                                     _%target198677199058%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx201593201594%_))
                              (let ((_%e198674199050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx201593201594%_))))
                                (let ((_%tl198676199055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198674199050%_)))
                                      (_%hd198675199053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198674199050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd198675199053%_))
                                      (let ((_%__splice201597201598%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd198675199053%_
                                                '0))))
                                        (let ((_%tl198679199060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201597201598%_
                                                  '1)))
                                              (_%target198677199058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201597201598%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198679199060%_))
                                              (_%__match201620201621%_
                                               _%e198674199050%_
                                               _%hd198675199053%_
                                               _%tl198676199055%_
                                               _%__splice201597201598%_
                                               _%target198677199058%_
                                               _%tl198679199060%_)
                                              (_%__match201632201633%_
                                               _%e198674199050%_
                                               _%hd198675199053%_
                                               _%tl198676199055%_
                                               _%__splice201597201598%_
                                               _%target198677199058%_
                                               _%tl198679199060%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl198676199055%_))
                                          (let ((_%e198762198806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl198676199055%_))))
                                            (let ((_%tl198764198811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198762198806%_)))
                                                  (_%hd198763198809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198762198806%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198763198809%_))
                                                  (let ((_%e198765198814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198763198809%_))))
                                                    (let ((_%tl198767198819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198765198814%_)))
                                                          (_%hd198766198817%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198765198814%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd198766198817%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd198766198817%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198767198819%_))
                          (let ((_%e198768198822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198767198819%_))))
                            (let ((_%tl198770198827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198768198822%_)))
                                  (_%hd198769198825%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198768198822%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd198769198825%_))
                                  (let ((_%e198771198830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198769198825%_))))
                                    (let ((_%tl198773198835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198771198830%_)))
                                          (_%hd198772198833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198771198830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd198772198833%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd198772198833%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198773198835%_))
                                                  (let ((_%e198774198838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198773198835%_))))
                                                    (let ((_%tl198776198843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198774198838%_)))
                                                          (_%hd198775198841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198774198838%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198776198843%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl198770198827%_))
                      (let ((_%e198777198846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl198770198827%_))))
                        (let ((_%tl198779198851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198777198846%_)))
                              (_%hd198778198849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198777198846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198778198849%_))
                              (let ((_%e198780198854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd198778198849%_))))
                                (let ((_%tl198782198859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198780198854%_)))
                                      (_%hd198781198857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198780198854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198781198857%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd198781198857%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198782198859%_))
                                              (let ((_%e198783198862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198782198859%_))))
                                                (let ((_%tl198785198867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198783198862%_)))
                                                      (_%hd198784198865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198783198862%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198785198867%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198779198851%_))
                                                          (let ((_%e198786198870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl198779198851%_))))
                    (let ((_%tl198788198875%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198786198870%_)))
                          (_%hd198787198873%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198786198870%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198788198875%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198764198811%_))
                              (_%__kont201605201606%_
                               _%hd198784198865%_
                               _%hd198775198841%_
                               _%hd198675199053%_)
                              (let ()
                                (declare (not safe))
                                (_%g198669198793%_)))
                          (let () (declare (not safe)) (_%g198669198793%_)))))
                  (let () (declare (not safe)) (_%g198669198793%_)))
              (let () (declare (not safe)) (_%g198669198793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198669198793%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198669198793%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198669198793%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198669198793%_)))))
                      (let () (declare (not safe)) (_%g198669198793%_)))
                  (let () (declare (not safe)) (_%g198669198793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198669198793%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198669198793%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198669198793%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g198669198793%_)))))
                          (let () (declare (not safe)) (_%g198669198793%_)))
                      (let () (declare (not safe)) (_%g198669198793%_)))
                  (let () (declare (not safe)) (_%g198669198793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198669198793%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198669198793%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g198669198793%_))))))))
                 (_%generate1198516%_
                  (lambda (_%args198647%_
                           _%arglen198648%_
                           _%hd198649%_
                           _%body198650%_)
                    (let* ((_%len198652%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd198649%_)))
                           (_%condition198657%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd198649%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen198648%_
                                                (cons _%len198652%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen198648%_ (cons _%len198652%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len198652%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen198648%_
                                                    (cons _%len198652%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen198648%_ (cons _%len198652%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch198659%_
                            (if (_%dispatch-case?198514%_
                                 _%hd198649%_
                                 _%body198650%_)
                                (_%dispatch-case-e198515%_
                                 _%hd198649%_
                                 _%body198650%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self198511%_
                                 _%hd198649%_
                                 _%body198650%_))))
                      (cons _%condition198657%_
                            (cons (cons 'apply
                                        (cons _%dispatch198659%_
                                              (cons _%args198647%_ '())))
                                  '()))))))
          (let* ((_%g198518198546%_
                  (lambda (_%g198519198543%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198519198543%_))))
                 (_%g198517198644%_
                  (lambda (_%g198519198549%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198519198549%_))
                        (let ((_%e198522198551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198519198549%_))))
                          (let ((_%hd198523198554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198522198551%_)))
                                (_%tl198524198556%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198522198551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl198524198556%_))
                                (let ((_g202762_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl198524198556%_
                                          '0))))
                                  (begin
                                    (let ((_g202763_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g202762_)
                                                 (##values-length _g202762_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g202763_ 2)))
                                          (error "Context expects 2 values"
                                                 _g202763_)))
                                    (let ((_%target198525198559%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202762_ 0)))
                                          (_%tl198527198561%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202762_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198527198561%_))
                                          (letrec ((_%loop198528198564%_
                                                    (lambda (_%hd198526198567%_
                                                             _%body198532198569%_
                                                             _%hd198533198570%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198526198567%_))
                                                          (let ((_%e198529198572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd198526198567%_))))
                    (let ((_%lp-hd198530198575%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198529198572%_)))
                          (_%lp-tl198531198577%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198529198572%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd198530198575%_))
                          (let ((_%e198536198580%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd198530198575%_))))
                            (let ((_%hd198537198583%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198536198580%_)))
                                  (_%tl198538198585%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198536198580%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198538198585%_))
                                  (let ((_%e198539198588%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl198538198585%_))))
                                    (let ((_%hd198540198591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198539198588%_)))
                                          (_%tl198541198593%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198539198588%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198541198593%_))
                                          (_%loop198528198564%_
                                           _%lp-tl198531198577%_
                                           (cons _%hd198540198591%_
                                                 _%body198532198569%_)
                                           (cons _%hd198537198583%_
                                                 _%hd198533198570%_))
                                          (_%g198518198546%_
                                           _%g198519198549%_))))
                                  (_%g198518198546%_ _%g198519198549%_))))
                          (_%g198518198546%_ _%g198519198549%_))))
                  (let ((_%body198534198596%_ (reverse _%body198532198569%_))
                        (_%hd198535198597%_ (reverse _%hd198533198570%_)))
                    ((lambda (_%g198520198599%_ _%g198521198600%_)
                       (let ((_%args198619%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen198620%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name198621%_
                              (let ((_%$e198616%_
                                     (let ((__tmp202764
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp202764 _%stx198512%_))))
                                (if _%$e198616%_
                                    _%$e198616%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args198619%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen198620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args198619%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args198619%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp202768
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name198621%_
                                                                (cons _%args198619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp202765
                                  (map (lambda (_%g198622198625%_
                                                _%g198623198627%_)
                                         (_%generate1198516%_
                                          _%args198619%_
                                          _%arglen198620%_
                                          _%g198622198625%_
                                          _%g198623198627%_))
                                       (let ((__tmp202766
                                              (lambda (_%g198629198632%_
                                                       _%g198630198634%_)
                                                (cons _%g198629198632%_
                                                      _%g198630198634%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp202766
                                          '()
                                          _%g198521198600%_))
                                       (let ((__tmp202767
                                              (lambda (_%g198636198639%_
                                                       _%g198637198641%_)
                                                (cons _%g198636198639%_
                                                      _%g198637198641%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp202767
                                          '()
                                          _%g198520198599%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp202768 __tmp202765)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body198534198596%_
                     _%hd198535198597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop198528198564%_
                                             _%target198525198559%_
                                             '()
                                             '()))
                                          (_%g198518198546%_
                                           _%g198519198549%_)))))
                                (_%g198518198546%_ _%g198519198549%_))))
                        (_%g198518198546%_ _%g198519198549%_)))))
            (_%g198517198644%_ _%stx198512%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self197748%_ _%stx197749%_ _%compiled-body?197750%_)
        (letrec ((_%generate-simple197752%_
                  (lambda (_%hd198496%_ _%body198497%_)
                    (_%coalesce-boolean197753%_
                     (_%simplify-let197754%_
                      (gxc#generate-runtime-simple-let
                       _%self197748%_
                       'let
                       _%hd198496%_
                       _%body198497%_
                       _%compiled-body?197750%_)))))
                 (_%coalesce-boolean197753%_
                  (lambda (_%code198357%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code198358198384%_ _%code198357%_)
                               (_%else198360198392%_
                                (lambda () _%code198357%_))
                               (_%K198362198429%_
                                (lambda (_%expr2198395%_
                                         _%expr1198396%_
                                         _%id198397%_)
                                  (let* ((_%expr2198398198406%_
                                          _%expr2198395%_)
                                         (_%else198400198414%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1198396%_
                                                        (cons _%expr2198395%_
                                                              '())))))
                                         (_%K198402198419%_
                                          (lambda (_%exprs198417%_)
                                            (cons 'or
                                                  (cons _%expr1198396%_
                                                        _%exprs198417%_)))))
                                    (if (pair? _%expr2198398198406%_)
                                        (let ((_%hd198403198422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2198398198406%_)))
                                              (_%tl198404198424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2198398198406%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd198403198422%_ 'or))
                                              (let ((_%exprs198427%_
                                                     _%tl198404198424%_))
                                                (_%K198402198419%_
                                                 _%exprs198427%_))
                                              (_%else198400198414%_)))
                                        (_%else198400198414%_))))))
                          (if (pair? _%code198358198384%_)
                              (let ((_%hd198363198432%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code198358198384%_)))
                                    (_%tl198364198434%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code198358198384%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd198363198432%_ 'let))
                                    (if (pair? _%tl198364198434%_)
                                        (let ((_%hd198365198437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl198364198434%_)))
                                              (_%tl198366198439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl198364198434%_))))
                                          (if (pair? _%hd198365198437%_)
                                              (let ((_%hd198377198442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd198365198437%_)))
                                                    (_%tl198378198444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd198365198437%_))))
                                                (if (pair? _%hd198377198442%_)
                                                    (let ((_%hd198379198447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd198377198442%_)))
                                                          (_%tl198380198449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd198377198442%_))))
                                                      (let ((_%id198452%_
                                                             _%hd198379198447%_))
                                                        (if (pair? _%tl198380198449%_)
                                                            (let ((_%hd198381198454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl198380198449%_)))
                          (_%tl198382198456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl198380198449%_))))
                      (let ((_%expr1198459%_ _%hd198381198454%_))
                        (if (null? _%tl198382198456%_)
                            (if (null? _%tl198378198444%_)
                                (if (pair? _%tl198366198439%_)
                                    (let ((_%hd198367198461%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl198366198439%_)))
                                          (_%tl198368198463%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl198366198439%_))))
                                      (if (pair? _%hd198367198461%_)
                                          (let ((_%hd198369198466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd198367198461%_)))
                                                (_%tl198370198468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd198367198461%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd198369198466%_
                                                         'if))
                                                (if (pair? _%tl198370198468%_)
                                                    (let ((_%hd198371198471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl198370198468%_)))
                                                          (_%tl198372198473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl198370198468%_))))
                                                      (if ((lambda (_%g198475198477%_)
                                                             (eq? _%g198475198477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id198452%_))
                   _%hd198371198471%_)
                  (if (pair? _%tl198372198473%_)
                      (let ((_%hd198373198480%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl198372198473%_)))
                            (_%tl198374198482%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl198372198473%_))))
                        (if ((lambda (_%g198484198486%_)
                               (eq? _%g198484198486%_ _%id198452%_))
                             _%hd198373198480%_)
                            (if (pair? _%tl198374198482%_)
                                (let ((_%hd198375198489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl198374198482%_)))
                                      (_%tl198376198491%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl198374198482%_))))
                                  (let ((_%expr2198494%_ _%hd198375198489%_))
                                    (if (null? _%tl198376198491%_)
                                        (if (null? _%tl198368198463%_)
                                            (_%K198362198429%_
                                             _%expr2198494%_
                                             _%expr1198459%_
                                             _%id198452%_)
                                            (_%else198360198392%_))
                                        (_%else198360198392%_))))
                                (_%else198360198392%_))
                            (_%else198360198392%_)))
                      (_%else198360198392%_))
                  (_%else198360198392%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198360198392%_))
                                                (_%else198360198392%_)))
                                          (_%else198360198392%_)))
                                    (_%else198360198392%_))
                                (_%else198360198392%_))
                            (_%else198360198392%_))))
                    (_%else198360198392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198360198392%_)))
                                              (_%else198360198392%_)))
                                        (_%else198360198392%_))
                                    (_%else198360198392%_)))
                              (_%else198360198392%_)))
                        _%code198357%_)))
                 (_%simplify-let197754%_
                  (lambda (_%code198056%_)
                    (let* ((_%code198057198129%_ _%code198056%_)
                           (_%else198062198137%_ (lambda () _%code198056%_)))
                      (let ((_%K198121198337%_
                             (lambda (_%expr198335%_) _%expr198335%_))
                            (_%K198104198283%_
                             (lambda (_%body198279%_
                                      _%expr198280%_
                                      _%id198281%_)
                               (cons 'let
                                     (cons (cons (cons _%id198281%_
                                                       (cons _%expr198280%_
                                                             '()))
                                                 '())
                                           _%body198279%_))))
                            (_%K198081198207%_
                             (lambda (_%body198201%_
                                      _%expr2198202%_
                                      _%id2198203%_
                                      _%expr1198204%_
                                      _%id1198205%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1198205%_
                                                       (cons _%expr1198204%_
                                                             '()))
                                                 (cons (cons _%id2198203%_
                                                             (cons _%expr2198202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body198201%_))))
                            (_%K198064198146%_
                             (lambda (_%body198141%_
                                      _%bind198142%_
                                      _%expr1198143%_
                                      _%id1198144%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1198144%_
                                                       (cons _%expr1198143%_
                                                             '()))
                                                 _%bind198142%_)
                                           _%body198141%_)))))
                        (if (pair? _%code198057198129%_)
                            (let ((_%tl198123198342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code198057198129%_)))
                                  (_%hd198122198340%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code198057198129%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd198122198340%_ 'let))
                                  (if (pair? _%tl198123198342%_)
                                      (let ((_%tl198125198347%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl198123198342%_)))
                                            (_%hd198124198345%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl198123198342%_))))
                                        (if (null? _%hd198124198345%_)
                                            (if (pair? _%tl198125198347%_)
                                                (let ((_%tl198127198352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl198125198347%_)))
                                                      (_%hd198126198350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl198125198347%_))))
                                                  (if (null? _%tl198127198352%_)
                                                      (let ((_%expr198355%_
                                                             _%hd198126198350%_))
                                                        (_%K198121198337%_
                                                         _%expr198355%_))
                                                      (_%else198062198137%_)))
                                                (_%else198062198137%_))
                                            (if (pair? _%hd198124198345%_)
                                                (let ((_%tl198116198298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd198124198345%_)))
                                                      (_%hd198115198296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd198124198345%_))))
                                                  (if (pair? _%hd198115198296%_)
                                                      (let ((_%tl198118198303%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd198115198296%_)))
                    (_%hd198117198301%_
                     (let () (declare (not safe)) (##car _%hd198115198296%_))))
                (if (pair? _%tl198118198303%_)
                    (let ((_%tl198120198310%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl198118198303%_)))
                          (_%hd198119198308%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl198118198303%_))))
                      (if (null? _%tl198120198310%_)
                          (if (null? _%tl198116198298%_)
                              (if (pair? _%tl198125198347%_)
                                  (let ((_%tl198110198317%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198125198347%_)))
                                        (_%hd198109198315%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198125198347%_))))
                                    (if (pair? _%hd198109198315%_)
                                        (let ((_%tl198112198322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd198109198315%_)))
                                              (_%hd198111198320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd198109198315%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd198111198320%_
                                                       'let))
                                              (if (pair? _%tl198112198322%_)
                                                  (let ((_%tl198114198327%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl198112198322%_)))
                                                        (_%hd198113198325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl198112198322%_))))
                                                    (if (null? _%hd198113198325%_)
                                                        (if (null? _%tl198110198317%_)
                                                            (let ((_%id198306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd198117198301%_)
                          (_%expr198313%_ _%hd198119198308%_)
                          (_%body198330%_ _%tl198114198327%_))
                      (_%K198104198283%_
                       _%body198330%_
                       _%expr198313%_
                       _%id198306%_))
                    (_%else198062198137%_))
                (if (pair? _%hd198113198325%_)
                    (let ((_%tl198093198256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd198113198325%_)))
                          (_%hd198092198254%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd198113198325%_))))
                      (if (pair? _%hd198092198254%_)
                          (let ((_%tl198095198261%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd198092198254%_)))
                                (_%hd198094198259%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd198092198254%_))))
                            (if (pair? _%tl198095198261%_)
                                (let ((_%tl198097198268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl198095198261%_)))
                                      (_%hd198096198266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl198095198261%_))))
                                  (if (null? _%tl198097198268%_)
                                      (if (null? _%tl198093198256%_)
                                          (if (null? _%tl198110198317%_)
                                              (let ((_%id1198230%_
                                                     _%hd198117198301%_)
                                                    (_%expr1198237%_
                                                     _%hd198119198308%_)
                                                    (_%id2198264%_
                                                     _%hd198094198259%_)
                                                    (_%expr2198271%_
                                                     _%hd198096198266%_)
                                                    (_%body198273%_
                                                     _%tl198114198327%_))
                                                (_%K198081198207%_
                                                 _%body198273%_
                                                 _%expr2198271%_
                                                 _%id2198264%_
                                                 _%expr1198237%_
                                                 _%id1198230%_))
                                              (_%else198062198137%_))
                                          (_%else198062198137%_))
                                      (_%else198062198137%_)))
                                (_%else198062198137%_)))
                          (_%else198062198137%_)))
                    (_%else198062198137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else198062198137%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd198111198320%_
                                                           'let*))
                                                  (if (pair? _%tl198112198322%_)
                                                      (let ((_%tl198074198190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl198112198322%_)))
                    (_%hd198073198188%_
                     (let () (declare (not safe)) (##car _%tl198112198322%_))))
                (if (null? _%tl198110198317%_)
                    (let ((_%id1198169%_ _%hd198117198301%_)
                          (_%expr1198176%_ _%hd198119198308%_)
                          (_%bind198193%_ _%hd198073198188%_)
                          (_%body198195%_ _%tl198074198190%_))
                      (_%K198064198146%_
                       _%body198195%_
                       _%bind198193%_
                       _%expr1198176%_
                       _%id1198169%_))
                    (_%else198062198137%_)))
              (_%else198062198137%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else198062198137%_))))
                                        (_%else198062198137%_)))
                                  (_%else198062198137%_))
                              (_%else198062198137%_))
                          (_%else198062198137%_)))
                    (_%else198062198137%_)))
              (_%else198062198137%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else198062198137%_))))
                                      (_%else198062198137%_))
                                  (_%else198062198137%_)))
                            (_%else198062198137%_))))))
                 (_%generate-values197755%_
                  (lambda (_%hd197869%_ _%body197870%_)
                    (let _%lp197872%_ ((_%rest197874%_ _%hd197869%_)
                                       (_%bind197875%_ '())
                                       (_%check197876%_ '())
                                       (_%post197877%_ '()))
                      (let* ((_%__stx201922201923%_ _%rest197874%_)
                             (_%g197880197891%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx201922201923%_)))))
                        (let ((_%__kont201924201925%_
                               (lambda (_%g197882197918%_ _%g197883197919%_)
                                 (let* ((_%__stx201878201879%_
                                         _%g197883197919%_)
                                        (_%g197934197959%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx201878201879%_)))))
                                   (let ((_%__kont201880201881%_
                                          (lambda (_%g197936198032%_
                                                   _%g197937198033%_)
                                            (let ((_%eid198047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g197937198033%_)))
                                                  (_%expr198048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197748%_
                                                      _%g197936198032%_))))
                                              (_%lp197872%_
                                               _%g197882197918%_
                                               (cons (cons _%eid198047%_
                                                           (cons _%expr198048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197875%_)
                                               _%check197876%_
                                               _%post197877%_))))
                                         (_%__kont201882201883%_
                                          (lambda (_%g197947197980%_
                                                   _%g197948197981%_)
                                            (let* ((_%vals197994%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values197996%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals197994%_
                                                     _%g197948197981%_
                                                     _%g197947197980%_))
                                                   (_%refs197998%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals197994%_
                                                     _%g197948197981%_))
                                                   (_%expr198000%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self197748%_
                                                       _%g197947197980%_))))
                                              (_%lp197872%_
                                               _%g197882197918%_
                                               (cons (cons _%vals197994%_
                                                           (cons _%expr198000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197875%_)
                                               (cons _%check-values197996%_
                                                     _%check197876%_)
                                               (cons _%refs197998%_
                                                     _%post197877%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx201878201879%_))
                                         (let ((_%e197938198008%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx201878201879%_))))
                                           (let ((_%tl197940198013%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197938198008%_)))
                                                 (_%hd197939198011%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197938198008%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd197939198011%_))
                                                 (let ((_%e197941198016%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd197939198011%_))))
                                                   (let ((_%tl197943198021%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197941198016%_)))
                                                         (_%hd197942198019%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197941198016%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl197943198021%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197940198013%_))
                     (let ((_%e197944198024%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197940198013%_))))
                       (let ((_%tl197946198029%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197944198024%_)))
                             (_%hd197945198027%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197944198024%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197946198029%_))
                             (_%__kont201880201881%_
                              _%hd197945198027%_
                              _%hd197942198019%_)
                             (let ()
                               (declare (not safe))
                               (_%g197934197959%_)))))
                     (let () (declare (not safe)) (_%g197934197959%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl197940198013%_))
                     (let ((_%e197952197972%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197940198013%_))))
                       (let ((_%tl197954197977%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197952197972%_)))
                             (_%hd197953197975%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197952197972%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197954197977%_))
                             (_%__kont201882201883%_
                              _%hd197953197975%_
                              _%hd197939198011%_)
                             (let ()
                               (declare (not safe))
                               (_%g197934197959%_)))))
                     (let () (declare (not safe)) (_%g197934197959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl197940198013%_))
                                                     (let ((_%e197952197972%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl197940198013%_))))
                                                       (let ((_%tl197954197977%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197952197972%_)))
                     (_%hd197953197975%_
                      (let () (declare (not safe)) (##car _%e197952197972%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197954197977%_))
                     (_%__kont201882201883%_
                      _%hd197953197975%_
                      _%hd197939198011%_)
                     (let () (declare (not safe)) (_%g197934197959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g197934197959%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g197934197959%_)))))))
                              (_%__kont201926201927%_
                               (lambda ()
                                 (let* ((_%body197898%_
                                         (if _%compiled-body?197750%_
                                             _%body197870%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self197748%_
                                                _%body197870%_))))
                                        (_%body197900%_
                                         (_%generate-values-post197756%_
                                          _%post197877%_
                                          _%body197898%_))
                                        (_%body197902%_
                                         (_%generate-values-check197757%_
                                          _%check197876%_
                                          _%body197900%_)))
                                   (cons 'let
                                         (cons (reverse _%bind197875%_)
                                               (cons _%body197902%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx201922201923%_))
                              (let ((_%e197884197910%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx201922201923%_))))
                                (let ((_%tl197886197915%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197884197910%_)))
                                      (_%hd197885197913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197884197910%_))))
                                  (_%__kont201924201925%_
                                   _%tl197886197915%_
                                   _%hd197885197913%_)))
                              (_%__kont201926201927%_)))))))
                 (_%generate-values-post197756%_
                  (lambda (_%post197828%_ _%body197829%_)
                    (let _%lp197831%_ ((_%rest197833%_ _%post197828%_)
                                       (_%body197834%_ _%body197829%_))
                      (let* ((_%rest197835197843%_ _%rest197833%_)
                             (_%else197837197851%_ (lambda () _%body197834%_))
                             (_%K197839197857%_
                              (lambda (_%rest197854%_ _%bind197855%_)
                                (_%lp197831%_
                                 _%rest197854%_
                                 (cons 'let
                                       (cons _%bind197855%_
                                             (cons _%body197834%_ '())))))))
                        (if (pair? _%rest197835197843%_)
                            (let ((_%hd197840197860%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197835197843%_)))
                                  (_%tl197841197862%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197835197843%_))))
                              (let* ((_%bind197865%_ _%hd197840197860%_)
                                     (_%rest197867%_ _%tl197841197862%_))
                                (_%K197839197857%_
                                 _%rest197867%_
                                 _%bind197865%_)))
                            (_%else197837197851%_))))))
                 (_%generate-values-check197757%_
                  (lambda (_%check197825%_ _%body197826%_)
                    (cons 'begin
                          (let ((__tmp202770 (cons _%body197826%_ '()))
                                (__tmp202769 (reverse _%check197825%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp202770 __tmp202769))))))
          (let* ((_%g197759197776%_
                  (lambda (_%g197760197773%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197760197773%_))))
                 (_%g197758197822%_
                  (lambda (_%g197760197779%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197760197779%_))
                        (let ((_%e197763197781%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197760197779%_))))
                          (let ((_%hd197764197784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197763197781%_)))
                                (_%tl197765197786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197763197781%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197765197786%_))
                                (let ((_%e197766197789%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197765197786%_))))
                                  (let ((_%hd197767197792%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197766197789%_)))
                                        (_%tl197768197794%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197766197789%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197768197794%_))
                                        (let ((_%e197769197797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197768197794%_))))
                                          (let ((_%hd197770197800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197769197797%_)))
                                                (_%tl197771197802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197769197797%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197771197802%_))
                                                ((lambda (_%g197761197805%_
                                                          _%g197762197806%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g197762197806%_)
                                                       (_%generate-simple197752%_
                                                        _%g197762197806%_
                                                        _%g197761197805%_)
                                                       (_%generate-values197755%_
                                                        _%g197762197806%_
                                                        _%g197761197805%_)))
                                                 _%hd197770197800%_
                                                 _%hd197767197792%_)
                                                (_%g197759197776%_
                                                 _%g197760197779%_))))
                                        (_%g197759197776%_
                                         _%g197760197779%_))))
                                (_%g197759197776%_ _%g197760197779%_))))
                        (_%g197759197776%_ _%g197760197779%_)))))
            (_%g197758197822%_ _%stx197749%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self198502%_ _%stx198503%_)
        (let ((_%compiled-body?198505%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self198502%_
           _%stx198503%_
           _%compiled-body?198505%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g202771_
        (let ((_g202772_ (let () (declare (not safe)) (##length _g202771_))))
          (cond ((let () (declare (not safe)) (##fx= _g202772_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g202771_))
                ((let () (declare (not safe)) (##fx= _g202772_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g202771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g202771_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals197642%_ _%hd197643%_)
        (let _%lp197645%_ ((_%rest197647%_ _%hd197643%_)
                           (_%k197648%_ '0)
                           (_%r197649%_ '()))
          (let* ((_%__stx201936201937%_ _%rest197647%_)
                 (_%g197654197671%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201936201937%_)))))
            (let ((_%__kont201938201939%_
                   (lambda (_%g197656197734%_)
                     (_%lp197645%_
                      _%g197656197734%_
                      (let () (declare (not safe)) (##fx+ _%k197648%_ '1))
                      _%r197649%_)))
                  (_%__kont201940201941%_
                   (lambda (_%g197661197707%_ _%g197662197708%_)
                     (_%lp197645%_
                      _%g197661197707%_
                      (let () (declare (not safe)) (##fx+ _%k197648%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g197662197708%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals197642%_
                                         _%k197648%_
                                         _%g197661197707%_)
                                        '()))
                            _%r197649%_))))
                  (_%__kont201942201943%_
                   (lambda (_%g197666197683%_)
                     (let ((__tmp202773
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g197666197683%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals197642%_
                                               _%k197648%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp202773 _%r197649%_))))
                  (_%__kont201944201945%_ (lambda () (reverse _%r197649%_))))
              (let ((_%g197652197694%_
                     (lambda ()
                       (let ((_%g197666197683%_ _%__stx201936201937%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g197666197683%_))
                             (_%__kont201942201943%_ _%g197666197683%_)
                             (_%__kont201944201945%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201936201937%_))
                    (let ((_%e197657197723%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201936201937%_))))
                      (let ((_%tl197659197728%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197657197723%_)))
                            (_%hd197658197726%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197657197723%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd197658197726%_))
                            (let ((_%e197660197731%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197658197726%_))))
                              (if (equal? _%e197660197731%_ '#f)
                                  (_%__kont201938201939%_ _%tl197659197728%_)
                                  (_%__kont201940201941%_
                                   _%tl197659197728%_
                                   _%hd197658197726%_)))
                            (_%__kont201940201941%_
                             _%tl197659197728%_
                             _%hd197658197726%_))))
                    (let () (declare (not safe)) (_%g197652197694%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self197321%_ _%stx197322%_ _%compiled-body?197323%_)
        (letrec ((_%generate-simple197325%_
                  (lambda (_%hd197627%_ _%body197628%_)
                    (gxc#generate-runtime-simple-let
                     _%self197321%_
                     'letrec
                     _%hd197627%_
                     _%body197628%_
                     _%compiled-body?197323%_)))
                 (_%generate-values197326%_
                  (lambda (_%hd197406%_ _%body197407%_)
                    (let _%lp197409%_ ((_%rest197411%_ _%hd197406%_)
                                       (_%bind197412%_ '())
                                       (_%check197413%_ '())
                                       (_%post197414%_ '()))
                      (let* ((_%__stx202010202011%_ _%rest197411%_)
                             (_%g197417197428%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx202010202011%_)))))
                        (let ((_%__kont202012202013%_
                               (lambda (_%g197419197455%_ _%g197420197456%_)
                                 (let* ((_%__stx201966201967%_
                                         _%g197420197456%_)
                                        (_%g197471197496%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx201966201967%_)))))
                                   (let ((_%__kont201968201969%_
                                          (lambda (_%g197473197603%_
                                                   _%g197474197604%_)
                                            (let ((_%eid197618%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g197474197604%_)))
                                                  (_%expr197619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197321%_
                                                      _%g197473197603%_))))
                                              (_%lp197409%_
                                               _%g197419197455%_
                                               (cons (cons _%eid197618%_
                                                           (cons _%expr197619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197412%_)
                                               _%check197413%_
                                               _%post197414%_))))
                                         (_%__kont201970201971%_
                                          (lambda (_%g197484197517%_
                                                   _%g197485197518%_)
                                            (let* ((_%vals197531%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values197533%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals197531%_
                                                     _%g197485197518%_
                                                     _%g197484197517%_))
                                                   (_%refs197535%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals197531%_
                                                     _%g197485197518%_))
                                                   (_%expr197537%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self197321%_
                                                       _%g197484197517%_))))
                                              (_%lp197409%_
                                               _%g197419197455%_
                                               (let ((__tmp202775
                                                      (cons (cons _%vals197531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr197537%_ '()))
                    _%bind197412%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp202774
                                                      (map (lambda (_%e197539197541%_)
                                                             (let* ((_%e197539197543197552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e197539197541%_)
                            (_%E197545197556%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e197539197543197552%_
                                        '([eid _])))
                               '#!void))
                            (_%K197546197561%_
                             (lambda (_%eid197559%_)
                               (cons _%eid197559%_ (cons '#!void '())))))
                       (if (pair? _%e197539197543197552%_)
                           (let ((_%hd197547197564%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197539197543197552%_)))
                                 (_%tl197548197566%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197539197543197552%_))))
                             (let ((_%eid197569%_ _%hd197547197564%_))
                               (if (pair? _%tl197548197566%_)
                                   (let ((_%tl197550197571%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl197548197566%_))))
                                     (if (null? _%tl197550197571%_)
                                         (_%K197546197561%_ _%eid197569%_)
                                         (_%E197545197556%_)))
                                   (_%E197545197556%_))))
                           (_%E197545197556%_))))
                   _%refs197535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp202775
                                                  __tmp202774))
                                               (cons _%check-values197533%_
                                                     _%check197413%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs197535%_
                                                  _%post197414%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx201966201967%_))
                                         (let ((_%e197475197579%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx201966201967%_))))
                                           (let ((_%tl197477197584%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197475197579%_)))
                                                 (_%hd197476197582%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197475197579%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd197476197582%_))
                                                 (let ((_%e197478197587%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd197476197582%_))))
                                                   (let ((_%tl197480197592%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197478197587%_)))
                                                         (_%hd197479197590%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197478197587%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl197480197592%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197477197584%_))
                     (let ((_%e197481197595%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197477197584%_))))
                       (let ((_%tl197483197600%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197481197595%_)))
                             (_%hd197482197598%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197481197595%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197483197600%_))
                             (_%__kont201968201969%_
                              _%hd197482197598%_
                              _%hd197479197590%_)
                             (let ()
                               (declare (not safe))
                               (_%g197471197496%_)))))
                     (let () (declare (not safe)) (_%g197471197496%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl197477197584%_))
                     (let ((_%e197489197509%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197477197584%_))))
                       (let ((_%tl197491197514%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197489197509%_)))
                             (_%hd197490197512%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197489197509%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197491197514%_))
                             (_%__kont201970201971%_
                              _%hd197490197512%_
                              _%hd197476197582%_)
                             (let ()
                               (declare (not safe))
                               (_%g197471197496%_)))))
                     (let () (declare (not safe)) (_%g197471197496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl197477197584%_))
                                                     (let ((_%e197489197509%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl197477197584%_))))
                                                       (let ((_%tl197491197514%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197489197509%_)))
                     (_%hd197490197512%_
                      (let () (declare (not safe)) (##car _%e197489197509%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197491197514%_))
                     (_%__kont201970201971%_
                      _%hd197490197512%_
                      _%hd197476197582%_)
                     (let () (declare (not safe)) (_%g197471197496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g197471197496%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g197471197496%_)))))))
                              (_%__kont202014202015%_
                               (lambda ()
                                 (let* ((_%body197435%_
                                         (if _%compiled-body?197323%_
                                             _%body197407%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self197321%_
                                                _%body197407%_))))
                                        (_%body197437%_
                                         (_%generate-values-post197328%_
                                          _%post197414%_
                                          _%body197435%_))
                                        (_%body197439%_
                                         (_%generate-values-check197327%_
                                          _%check197413%_
                                          _%body197437%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind197412%_)
                                               (cons _%body197439%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx202010202011%_))
                              (let ((_%e197421197447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx202010202011%_))))
                                (let ((_%tl197423197452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197421197447%_)))
                                      (_%hd197422197450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197421197447%_))))
                                  (_%__kont202012202013%_
                                   _%tl197423197452%_
                                   _%hd197422197450%_)))
                              (_%__kont202014202015%_)))))))
                 (_%generate-values-check197327%_
                  (lambda (_%check197403%_ _%body197404%_)
                    (cons 'begin
                          (let ((__tmp202777 (cons _%body197404%_ '()))
                                (__tmp202776 (reverse _%check197403%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp202777 __tmp202776)))))
                 (_%generate-values-post197328%_
                  (lambda (_%post197396%_ _%body197397%_)
                    (cons 'begin
                          (let ((__tmp202781 (cons _%body197397%_ '()))
                                (__tmp202778
                                 (let ((__tmp202780
                                        (lambda (_%g197398197400%_)
                                          (cons 'set! _%g197398197400%_)))
                                       (__tmp202779 (reverse _%post197396%_)))
                                   (declare (not safe))
                                   (##map __tmp202780 __tmp202779))))
                            (declare (not safe))
                            (foldr__0 cons __tmp202781 __tmp202778))))))
          (let* ((_%g197330197347%_
                  (lambda (_%g197331197344%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197331197344%_))))
                 (_%g197329197393%_
                  (lambda (_%g197331197350%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197331197350%_))
                        (let ((_%e197334197352%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197331197350%_))))
                          (let ((_%hd197335197355%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197334197352%_)))
                                (_%tl197336197357%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197334197352%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197336197357%_))
                                (let ((_%e197337197360%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197336197357%_))))
                                  (let ((_%hd197338197363%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197337197360%_)))
                                        (_%tl197339197365%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197337197360%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197339197365%_))
                                        (let ((_%e197340197368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197339197365%_))))
                                          (let ((_%hd197341197371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197340197368%_)))
                                                (_%tl197342197373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197340197368%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197342197373%_))
                                                ((lambda (_%g197332197376%_
                                                          _%g197333197377%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g197333197377%_)
                                                       (_%generate-simple197325%_
                                                        _%g197333197377%_
                                                        _%g197332197376%_)
                                                       (_%generate-values197326%_
                                                        _%g197333197377%_
                                                        _%g197332197376%_)))
                                                 _%hd197341197371%_
                                                 _%hd197338197363%_)
                                                (_%g197330197347%_
                                                 _%g197331197350%_))))
                                        (_%g197330197347%_
                                         _%g197331197350%_))))
                                (_%g197330197347%_ _%g197331197350%_))))
                        (_%g197330197347%_ _%g197331197350%_)))))
            (_%g197329197393%_ _%stx197322%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self197633%_ _%stx197634%_)
        (let ((_%compiled-body?197636%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self197633%_
           _%stx197634%_
           _%compiled-body?197636%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g202782_
        (let ((_g202783_ (let () (declare (not safe)) (##length _g202782_))))
          (cond ((let () (declare (not safe)) (##fx= _g202783_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g202782_))
                ((let () (declare (not safe)) (##fx= _g202783_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g202782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g202782_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self196902%_ _%stx196903%_)
        (letrec ((_%generate-values196905%_
                  (lambda (_%hd197148%_ _%body197149%_)
                    (let _%lp197151%_ ((_%rest197153%_ _%hd197148%_)
                                       (_%bind197154%_ '()))
                      (let* ((_%rest197155197163%_ _%rest197153%_)
                             (_%else197157197174%_
                              (lambda ()
                                (let ((_%bind197171%_ (reverse _%bind197154%_))
                                      (_%body197172%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self196902%_
                                          _%body197149%_))))
                                  (cons 'letrec*
                                        (cons _%bind197171%_
                                              (cons _%body197172%_ '()))))))
                             (_%K197159197308%_
                              (lambda (_%rest197177%_ _%hd-bind197178%_)
                                (let* ((_%__stx202024202025%_
                                        _%hd-bind197178%_)
                                       (_%g197181197206%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx202024202025%_)))))
                                  (let ((_%__kont202026202027%_
                                         (lambda (_%g197183197287%_
                                                  _%g197184197288%_)
                                           (let ((_%eid197302%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g197184197288%_)))
                                                 (_%expr197303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self196902%_
                                                     _%g197183197287%_))))
                                             (_%lp197151%_
                                              _%rest197177%_
                                              (cons (cons _%eid197302%_
                                                          (cons _%expr197303%_
                                                                '()))
                                                    _%bind197154%_)))))
                                        (_%__kont202028202029%_
                                         (lambda (_%g197194197227%_
                                                  _%g197195197228%_)
                                           (let* ((_%vals197247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp197249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values197251%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp197249%_
                                                    _%g197195197228%_
                                                    _%g197194197227%_))
                                                  (_%refs197253%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals197247%_
                                                    _%g197195197228%_))
                                                  (_%expr197255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196902%_
                                                      _%g197194197227%_))))
                                             (_%lp197151%_
                                              _%rest197177%_
                                              (let ((__tmp202784
                                                     (cons (cons _%vals197247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp197249%_
                                                       (cons _%expr197255%_
                                                             '()))
                                                 '())
                                           (cons _%check-values197251%_
                                                 (cons _%tmp197249%_ '()))))
                               '()))
                   _%bind197154%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp202784
                                                 _%refs197253%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx202024202025%_))
                                        (let ((_%e197185197263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx202024202025%_))))
                                          (let ((_%tl197187197268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197185197263%_)))
                                                (_%hd197186197266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197185197263%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd197186197266%_))
                                                (let ((_%e197188197271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197186197266%_))))
                                                  (let ((_%tl197190197276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197188197271%_)))
                                                        (_%hd197189197274%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197188197271%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197190197276%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197187197268%_))
                                                            (let ((_%e197191197279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197187197268%_))))
                      (let ((_%tl197193197284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197191197279%_)))
                            (_%hd197192197282%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197191197279%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197193197284%_))
                            (_%__kont202026202027%_
                             _%hd197192197282%_
                             _%hd197189197274%_)
                            (let ()
                              (declare (not safe))
                              (_%g197181197206%_)))))
                    (let () (declare (not safe)) (_%g197181197206%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197187197268%_))
                    (let ((_%e197199197219%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197187197268%_))))
                      (let ((_%tl197201197224%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197199197219%_)))
                            (_%hd197200197222%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197199197219%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197201197224%_))
                            (_%__kont202028202029%_
                             _%hd197200197222%_
                             _%hd197186197266%_)
                            (let ()
                              (declare (not safe))
                              (_%g197181197206%_)))))
                    (let () (declare (not safe)) (_%g197181197206%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197187197268%_))
                                                    (let ((_%e197199197219%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197187197268%_))))
                                                      (let ((_%tl197201197224%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197199197219%_)))
                    (_%hd197200197222%_
                     (let () (declare (not safe)) (##car _%e197199197219%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197201197224%_))
                    (_%__kont202028202029%_
                     _%hd197200197222%_
                     _%hd197186197266%_)
                    (let () (declare (not safe)) (_%g197181197206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197181197206%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197181197206%_))))))))
                        (if (pair? _%rest197155197163%_)
                            (let ((_%hd197160197311%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197155197163%_)))
                                  (_%tl197161197313%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197155197163%_))))
                              (let* ((_%hd-bind197316%_ _%hd197160197311%_)
                                     (_%rest197318%_ _%tl197161197313%_))
                                (_%K197159197308%_
                                 _%rest197318%_
                                 _%hd-bind197316%_)))
                            (_%else197157197174%_))))))
                 (_%generate-letrec?196906%_
                  (lambda (_%hd197038%_)
                    (let _%lp197040%_ ((_%rest197042%_ _%hd197038%_))
                      (let* ((_%rest197043197051%_ _%rest197042%_)
                             (_%else197045197059%_ (lambda () '#t))
                             (_%K197047197136%_
                              (lambda (_%rest197062%_ _%hd-bind197063%_)
                                (let* ((_%g197065197082%_
                                        (lambda (_%g197066197079%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g197066197079%_))))
                                       (_%g197064197133%_
                                        (lambda (_%g197066197085%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g197066197085%_))
                                              (let ((_%e197069197087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g197066197085%_))))
                                                (let ((_%hd197070197090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197069197087%_)))
                                                      (_%tl197071197092%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197069197087%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd197070197090%_))
                                                      (let ((_%e197072197095%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd197070197090%_))))
                (let ((_%hd197073197098%_
                       (let () (declare (not safe)) (##car _%e197072197095%_)))
                      (_%tl197074197100%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197072197095%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197074197100%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197071197092%_))
                          (let ((_%e197075197103%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197071197092%_))))
                            (let ((_%hd197076197106%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197075197103%_)))
                                  (_%tl197077197108%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197075197103%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197077197108%_))
                                  ((lambda (_%g197067197111%_
                                            _%g197068197112%_)
                                     (if (_%is-lambda-expr?196907%_
                                          _%g197067197111%_)
                                         (_%lp197040%_ _%rest197062%_)
                                         '#f))
                                   _%hd197076197106%_
                                   _%hd197073197098%_)
                                  (_%g197065197082%_ _%g197066197085%_))))
                          (_%g197065197082%_ _%g197066197085%_))
                      (_%g197065197082%_ _%g197066197085%_))))
              (_%g197065197082%_ _%g197066197085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197065197082%_
                                               _%g197066197085%_)))))
                                  (_%g197064197133%_ _%hd-bind197063%_)))))
                        (if (pair? _%rest197043197051%_)
                            (let ((_%hd197048197139%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197043197051%_)))
                                  (_%tl197049197141%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197043197051%_))))
                              (let* ((_%hd-bind197144%_ _%hd197048197139%_)
                                     (_%rest197146%_ _%tl197049197141%_))
                                (_%K197047197136%_
                                 _%rest197146%_
                                 _%hd-bind197144%_)))
                            (_%else197045197059%_))))))
                 (_%is-lambda-expr?196907%_
                  (lambda (_%expr196975%_)
                    (let* ((_%__stx202068202069%_ _%expr196975%_)
                           (_%g196978196992%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx202068202069%_)))))
                      (let ((_%__kont202070202071%_
                             (lambda (_%g196980197020%_ _%g196981197021%_)
                               '#t))
                            (_%__kont202072202073%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx202068202069%_))
                            (let ((_%e196982197004%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx202068202069%_))))
                              (let ((_%tl196984197009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e196982197004%_)))
                                    (_%hd196983197007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e196982197004%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd196983197007%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd196983197007%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196984197009%_))
                                            (let ((_%e196985197012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl196984197009%_))))
                                              (let ((_%tl196987197017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196985197012%_)))
                                                    (_%hd196986197015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196985197012%_))))
                                                (_%__kont202070202071%_
                                                 _%tl196987197017%_
                                                 _%hd196986197015%_)))
                                            (_%__kont202072202073%_))
                                        (_%__kont202072202073%_))
                                    (_%__kont202072202073%_))))
                            (_%__kont202072202073%_)))))))
          (let* ((_%g196909196926%_
                  (lambda (_%g196910196923%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196910196923%_))))
                 (_%g196908196972%_
                  (lambda (_%g196910196929%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196910196929%_))
                        (let ((_%e196913196931%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196910196929%_))))
                          (let ((_%hd196914196934%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196913196931%_)))
                                (_%tl196915196936%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196913196931%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196915196936%_))
                                (let ((_%e196916196939%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196915196936%_))))
                                  (let ((_%hd196917196942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196916196939%_)))
                                        (_%tl196918196944%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196916196939%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196918196944%_))
                                        (let ((_%e196919196947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl196918196944%_))))
                                          (let ((_%hd196920196950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196919196947%_)))
                                                (_%tl196921196952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196919196947%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196921196952%_))
                                                ((lambda (_%g196911196955%_
                                                          _%g196912196956%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g196912196956%_)
                                                       (if (_%generate-letrec?196906%_
                                                            _%g196912196956%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self196902%_
                                                            'letrec
                                                            _%g196912196956%_
                                                            _%g196911196955%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self196902%_
                                                            'letrec*
                                                            _%g196912196956%_
                                                            _%g196911196955%_
                                                            '#f))
                                                       (_%generate-values196905%_
                                                        _%g196912196956%_
                                                        _%g196911196955%_)))
                                                 _%hd196920196950%_
                                                 _%hd196917196942%_)
                                                (_%g196909196926%_
                                                 _%g196910196929%_))))
                                        (_%g196909196926%_
                                         _%g196910196929%_))))
                                (_%g196909196926%_ _%g196910196929%_))))
                        (_%g196909196926%_ _%g196910196929%_)))))
            (_%g196908196972%_ _%stx196903%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd196839%_)
        (let _%lp196841%_ ((_%rest196843%_ _%hd196839%_))
          (let* ((_%rest196844196860%_ _%rest196843%_)
                 (_%else196847196868%_ (lambda () '#f)))
            (let ((_%K196850196881%_
                   (lambda (_%rest196879%_) (_%lp196841%_ _%rest196879%_)))
                  (_%K196849196873%_ (lambda () '#t)))
              (let ((_%try-match196846196876%_
                     (lambda ()
                       (if (null? _%rest196844196860%_)
                           (_%K196849196873%_)
                           (_%else196847196868%_)))))
                (if (pair? _%rest196844196860%_)
                    (let ((_%tl196852196886%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest196844196860%_)))
                          (_%hd196851196884%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest196844196860%_))))
                      (if (pair? _%hd196851196884%_)
                          (let ((_%tl196854196891%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd196851196884%_)))
                                (_%hd196853196889%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd196851196884%_))))
                            (if (pair? _%hd196853196889%_)
                                (let ((_%tl196858196894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd196853196889%_))))
                                  (if (null? _%tl196858196894%_)
                                      (if (pair? _%tl196854196891%_)
                                          (let ((_%tl196856196897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl196854196891%_))))
                                            (if (null? _%tl196856196897%_)
                                                (let ((_%rest196900%_
                                                       _%tl196852196886%_))
                                                  (_%lp196841%_
                                                   _%rest196900%_))
                                                (_%else196847196868%_)))
                                          (_%else196847196868%_))
                                      (_%else196847196868%_)))
                                (_%else196847196868%_)))
                          (_%else196847196868%_)))
                    (_%try-match196846196876%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self196751%_
               _%form196752%_
               _%hd196753%_
               _%body196754%_
               _%compiled-body?196755%_)
        (letrec ((_%generate1196757%_
                  (lambda (_%bind196796%_)
                    (let* ((_%bind196797196808%_ _%bind196796%_)
                           (_%E196799196811%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind196797196808%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K196800196817%_
                            (lambda (_%expr196814%_ _%id196815%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id196815%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self196751%_
                                             _%expr196814%_))
                                          '())))))
                      (if (pair? _%bind196797196808%_)
                          (let ((_%hd196801196820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind196797196808%_)))
                                (_%tl196802196822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind196797196808%_))))
                            (if (pair? _%hd196801196820%_)
                                (let ((_%hd196805196825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd196801196820%_)))
                                      (_%tl196806196827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd196801196820%_))))
                                  (let ((_%id196830%_ _%hd196805196825%_))
                                    (if (null? _%tl196806196827%_)
                                        (if (pair? _%tl196802196822%_)
                                            (let ((_%hd196803196832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl196802196822%_)))
                                                  (_%tl196804196834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl196802196822%_))))
                                              (let ((_%expr196837%_
                                                     _%hd196803196832%_))
                                                (if (null? _%tl196804196834%_)
                                                    (_%K196800196817%_
                                                     _%expr196837%_
                                                     _%id196830%_)
                                                    (_%E196799196811%_))))
                                            (_%E196799196811%_))
                                        (_%E196799196811%_))))
                                (_%E196799196811%_)))
                          (_%E196799196811%_))))))
          (let* ((_%bind196759%_ (map _%generate1196757%_ _%hd196753%_))
                 (_%body196761%_
                  (if _%compiled-body?196755%_
                      _%body196754%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196751%_ _%body196754%_))))
                 (_%body196793%_
                  (let* ((_%body196762196770%_ _%body196761%_)
                         (_%else196764196778%_
                          (lambda () (cons _%body196761%_ '())))
                         (_%K196766196783%_
                          (lambda (_%exprs196781%_) _%exprs196781%_)))
                    (if (pair? _%body196762196770%_)
                        (let ((_%hd196767196786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body196762196770%_)))
                              (_%tl196768196788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body196762196770%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd196767196786%_ 'begin))
                              (let ((_%exprs196791%_ _%tl196768196788%_))
                                (_%K196766196783%_ _%exprs196791%_))
                              (_%else196764196778%_)))
                        (_%else196764196778%_)))))
            (cons _%form196752%_ (cons _%bind196759%_ _%body196793%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self196651%_ _%stx196652%_)
        (letrec ((_%generate1196654%_
                  (lambda (_%datum196706%_)
                    (if (or (null? _%datum196706%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum196706%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum196706%_))
                            (eof-object? _%datum196706%_))
                        _%datum196706%_
                        (if (uninterned-symbol? _%datum196706%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum196706%_
                               '#t))
                            (if (pair? _%datum196706%_)
                                (cons (_%generate1196654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum196706%_)))
                                      (_%generate1196654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum196706%_))))
                                (if (box? _%datum196706%_)
                                    (box (_%generate1196654%_
                                          (unbox _%datum196706%_)))
                                    (if (vector? _%datum196706%_)
                                        (vector-map
                                         _%generate1196654%_
                                         _%datum196706%_)
                                        (if (or (s8vector? _%datum196706%_)
                                                (u8vector? _%datum196706%_)
                                                (s16vector? _%datum196706%_)
                                                (u16vector? _%datum196706%_)
                                                (s32vector? _%datum196706%_)
                                                (u32vector? _%datum196706%_)
                                                (s64vector? _%datum196706%_)
                                                (u64vector? _%datum196706%_)
                                                (f32vector? _%datum196706%_)
                                                (f64vector? _%datum196706%_))
                                            _%datum196706%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx196652%_)))))))))))
          (let* ((_%g196656196669%_
                  (lambda (_%g196657196666%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196657196666%_))))
                 (_%g196655196703%_
                  (lambda (_%g196657196672%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196657196672%_))
                        (let ((_%e196659196674%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196657196672%_))))
                          (let ((_%hd196660196677%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196659196674%_)))
                                (_%tl196661196679%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196659196674%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196661196679%_))
                                (let ((_%e196662196682%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196661196679%_))))
                                  (let ((_%hd196663196685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196662196682%_)))
                                        (_%tl196664196687%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196662196682%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196664196687%_))
                                        ((lambda (_%g196658196690%_)
                                           (cons 'quote
                                                 (cons (_%generate1196654%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g196658196690%_)))
                                                       '())))
                                         _%hd196663196685%_)
                                        (_%g196656196669%_
                                         _%g196657196672%_))))
                                (_%g196656196669%_ _%g196657196672%_))))
                        (_%g196656196669%_ _%g196657196672%_)))))
            (_%g196655196703%_ _%stx196652%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self196098%_ _%stx196099%_)
        (letrec ((_%compile-call196101%_
                  (lambda (_%rator196388%_ _%rands196389%_)
                    (let ((_%rator196395%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self196098%_
                              _%rator196388%_)))
                          (_%rands196396%_
                           (map (lambda (_%g196390196392%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self196098%_
                                     _%g196390196392%_)))
                                _%rands196389%_)))
                      (let* ((_%__stx202115202116%_ _%rator196395%_)
                             (_%g196399196451%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx202115202116%_)))))
                        (let ((_%__kont202117202118%_
                               (lambda (_%g196401196571%_
                                        _%g196402196572%_
                                        _%g196403196573%_
                                        _%g196404196574%_)
                                 (if (let ((__tmp202787
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands196396%_)))
                                           (__tmp202785
                                            (length (let ((__tmp202786
                                                           (lambda (_%g196610196613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196611196615%_)
                     (cons _%g196610196613%_ _%g196611196615%_))))
              (declare (not safe))
              (foldr__0 __tmp202786 '() _%g196403196573%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp202787 __tmp202785))
                                     (let* ((_%id196618%_ _%g196404196574%_)
                                            (_%args196627%_
                                             (let ((__tmp202788
                                                    (lambda (_%g196619196622%_
                                                             _%g196620196624%_)
                                                      (cons _%g196619196622%_
                                                            _%g196620196624%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202788
                                                '()
                                                _%g196403196573%_)))
                                            (_%body196636%_
                                             (let ((__tmp202789
                                                    (lambda (_%g196628196631%_
                                                             _%g196629196633%_)
                                                      (cons _%g196628196631%_
                                                            _%g196629196633%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202789
                                                '()
                                                _%g196402196572%_)))
                                            (_%init196638%_
                                             (map list
                                                  _%args196627%_
                                                  _%rands196396%_)))
                                       (cons 'let
                                             (cons _%id196618%_
                                                   (cons _%init196638%_
                                                         _%body196636%_))))
                                     (let ((__tmp202790
                                            (let ((__tmp202791
                                                   (lambda (_%g196640196643%_
                                                            _%g196641196645%_)
                                                     (cons _%g196640196643%_
                                                           _%g196641196645%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202791
                                               '()
                                               _%g196403196573%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx196099%_
                                        __tmp202790
                                        _%rands196396%_)))))
                              (_%__kont202123202124%_
                               (lambda ()
                                 (cons _%rator196395%_ _%rands196396%_))))
                          (let ((_%__match202182202183%_
                                 (lambda (_%e196405196463%_
                                          _%hd196406196466%_
                                          _%tl196407196468%_
                                          _%e196408196471%_
                                          _%hd196409196474%_
                                          _%tl196410196476%_
                                          _%e196411196479%_
                                          _%hd196412196482%_
                                          _%tl196413196484%_
                                          _%e196414196487%_
                                          _%hd196415196490%_
                                          _%tl196416196492%_
                                          _%e196417196495%_
                                          _%hd196418196498%_
                                          _%tl196419196500%_
                                          _%e196420196503%_
                                          _%hd196421196506%_
                                          _%tl196422196508%_
                                          _%e196423196511%_
                                          _%hd196424196514%_
                                          _%tl196425196516%_
                                          _%__splice202119202120%_
                                          _%target196426196519%_
                                          _%tl196428196521%_)
                                   (letrec ((_%loop196429196524%_
                                             (lambda (_%hd196427196527%_
                                                      _%arg196433196529%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd196427196527%_))
                                                   (let ((_%e196430196531%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd196427196527%_))))
                                                     (let ((_%lp-tl196432196536%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e196430196531%_)))
                                                           (_%lp-hd196431196534%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e196430196531%_))))
                                                       (_%loop196429196524%_
                                                        _%lp-tl196432196536%_
                                                        (cons _%lp-hd196431196534%_
                                                              _%arg196433196529%_))))
                                                   (let ((_%arg196434196539%_
                                                          (reverse _%arg196433196529%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl196425196516%_))
                                                         (let ((_%__splice202121202122%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl196425196516%_
                           '0))))
                   (let ((_%tl196437196543%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice202121202122%_ '1)))
                         (_%target196435196541%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice202121202122%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl196437196543%_))
                         (letrec ((_%loop196438196546%_
                                   (lambda (_%hd196436196549%_
                                            _%body196442196551%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd196436196549%_))
                                         (let ((_%e196439196553%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd196436196549%_))))
                                           (let ((_%lp-tl196441196558%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196439196553%_)))
                                                 (_%lp-hd196440196556%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196439196553%_))))
                                             (_%loop196438196546%_
                                              _%lp-tl196441196558%_
                                              (cons _%lp-hd196440196556%_
                                                    _%body196442196551%_))))
                                         (let ((_%body196443196561%_
                                                (reverse _%body196442196551%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl196419196500%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl196413196484%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl196410196476%_))
                                                       (let ((_%e196444196563%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl196410196476%_))))
                 (let ((_%tl196446196568%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e196444196563%_)))
                       (_%hd196445196566%_
                        (let ()
                          (declare (not safe))
                          (##car _%e196444196563%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl196446196568%_))
                       (let ((_%g196401196571%_ _%hd196445196566%_)
                             (_%g196402196572%_ _%body196443196561%_)
                             (_%g196403196573%_ _%arg196434196539%_)
                             (_%g196404196574%_ _%hd196415196490%_))
                         (if (eq? _%g196404196574%_ _%g196401196571%_)
                             (_%__kont202117202118%_
                              _%g196401196571%_
                              _%g196402196572%_
                              _%g196403196573%_
                              _%g196404196574%_)
                             (_%__kont202123202124%_)))
                       (_%__kont202123202124%_))))
               (_%__kont202123202124%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont202123202124%_))
                                               (_%__kont202123202124%_)))))))
                           (_%loop196438196546%_ _%target196435196541%_ '()))
                         (_%__kont202123202124%_))))
                 (_%__kont202123202124%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop196429196524%_
                                      _%target196426196519%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx202115202116%_))
                                (let ((_%e196405196463%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx202115202116%_))))
                                  (let ((_%tl196407196468%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196405196463%_)))
                                        (_%hd196406196466%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196405196463%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196406196466%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd196406196466%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196407196468%_))
                                                (let ((_%e196408196471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196407196468%_))))
                                                  (let ((_%tl196410196476%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196408196471%_)))
                                                        (_%hd196409196474%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196408196471%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196409196474%_))
                                                        (let ((_%e196411196479%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196409196474%_))))
                  (let ((_%tl196413196484%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196411196479%_)))
                        (_%hd196412196482%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196411196479%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196412196482%_))
                        (let ((_%e196414196487%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd196412196482%_))))
                          (let ((_%tl196416196492%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196414196487%_)))
                                (_%hd196415196490%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196414196487%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196416196492%_))
                                (let ((_%e196417196495%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196416196492%_))))
                                  (let ((_%tl196419196500%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196417196495%_)))
                                        (_%hd196418196498%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196417196495%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd196418196498%_))
                                        (let ((_%e196420196503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd196418196498%_))))
                                          (let ((_%tl196422196508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196420196503%_)))
                                                (_%hd196421196506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196420196503%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd196421196506%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd196421196506%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl196422196508%_))
                                                        (let ((_%e196423196511%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl196422196508%_))))
                  (let ((_%tl196425196516%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196423196511%_)))
                        (_%hd196424196514%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196423196511%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd196424196514%_))
                        (let ((_%__splice202119202120%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd196424196514%_
                                  '0))))
                          (let ((_%tl196428196521%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice202119202120%_ '1)))
                                (_%target196426196519%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice202119202120%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196428196521%_))
                                (_%__match202182202183%_
                                 _%e196405196463%_
                                 _%hd196406196466%_
                                 _%tl196407196468%_
                                 _%e196408196471%_
                                 _%hd196409196474%_
                                 _%tl196410196476%_
                                 _%e196411196479%_
                                 _%hd196412196482%_
                                 _%tl196413196484%_
                                 _%e196414196487%_
                                 _%hd196415196490%_
                                 _%tl196416196492%_
                                 _%e196417196495%_
                                 _%hd196418196498%_
                                 _%tl196419196500%_
                                 _%e196420196503%_
                                 _%hd196421196506%_
                                 _%tl196422196508%_
                                 _%e196423196511%_
                                 _%hd196424196514%_
                                 _%tl196425196516%_
                                 _%__splice202119202120%_
                                 _%target196426196519%_
                                 _%tl196428196521%_)
                                (_%__kont202123202124%_))))
                        (_%__kont202123202124%_))))
                (_%__kont202123202124%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont202123202124%_))
                                                (_%__kont202123202124%_))))
                                        (_%__kont202123202124%_))))
                                (_%__kont202123202124%_))))
                        (_%__kont202123202124%_))))
                (_%__kont202123202124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont202123202124%_))
                                            (_%__kont202123202124%_))
                                        (_%__kont202123202124%_))))
                                (_%__kont202123202124%_)))))))))
          (let* ((_%g196103196126%_
                  (lambda (_%g196104196123%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196104196123%_))))
                 (_%g196102196385%_
                  (lambda (_%g196104196129%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196104196129%_))
                        (let ((_%e196107196131%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196104196129%_))))
                          (let ((_%hd196108196134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196107196131%_)))
                                (_%tl196109196136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196107196131%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196109196136%_))
                                (let ((_%e196110196139%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196109196136%_))))
                                  (let ((_%hd196111196142%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196110196139%_)))
                                        (_%tl196112196144%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196110196139%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl196112196144%_))
                                        (let ((_g202792_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl196112196144%_
                                                  '0))))
                                          (begin
                                            (let ((_g202793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g202792_)
                                                         (##values-length
                                                          _g202792_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g202793_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g202793_)))
                                            (let ((_%target196113196147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202792_
                                                      0)))
                                                  (_%tl196115196149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202792_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196115196149%_))
                                                  (letrec ((_%loop196116196152%_
                                                            (lambda (_%hd196114196155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand196120196157%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196114196155%_))
                          (let ((_%e196117196159%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196114196155%_))))
                            (let ((_%lp-hd196118196162%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196117196159%_)))
                                  (_%lp-tl196119196164%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196117196159%_))))
                              (_%loop196116196152%_
                               _%lp-tl196119196164%_
                               (cons _%lp-hd196118196162%_
                                     _%rand196120196157%_))))
                          (let ((_%rand196121196167%_
                                 (reverse _%rand196120196157%_)))
                            ((lambda (_%g196105196169%_ _%g196106196170%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call196101%_
                                    _%g196106196170%_
                                    (let ((__tmp202794
                                           (lambda (_%g196187196190%_
                                                    _%g196188196192%_)
                                             (cons _%g196187196190%_
                                                   _%g196188196192%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp202794
                                       '()
                                       _%g196105196169%_)))
                                   (let* ((_%__stx202231202232%_
                                           _%g196106196170%_)
                                          (_%g196196196208%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx202231202232%_)))))
                                     (let ((_%__kont202233202234%_
                                            (lambda ()
                                              (let ((_%f196245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self196098%_
                                                        _%g196106196170%_))))
                                                (if (and (let ((__tmp202795
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f196245%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp202795))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f196245%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp196247%_ ((_%rest196250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp202797
                                                (lambda (_%g196367196370%_
                                                         _%g196368196372%_)
                                                  (cons _%g196367196370%_
                                                        _%g196368196372%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp202797
                                            '()
                                            _%g196105196169%_))))
                               (_%bind196252%_ '())
                               (_%args196253%_ '()))
              (let* ((_%rest196254196262%_ _%rest196250%_)
                     (_%else196256196270%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind196252%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f196245%_
                                                      _%args196253%_)
                                                '()))))))
                     (_%K196258196356%_
                      (lambda (_%rest196273%_ _%e196274%_)
                        (let* ((_%__stx202185202186%_ _%e196274%_)
                               (_%g196279196297%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx202185202186%_)))))
                          (let ((_%__kont202187202188%_
                                 (lambda ()
                                   (_%lp196247%_
                                    _%rest196273%_
                                    _%bind196252%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e196274%_))
                                          _%args196253%_))))
                                (_%__kont202189202190%_
                                 (lambda ()
                                   (_%lp196247%_
                                    _%rest196273%_
                                    _%bind196252%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e196274%_))
                                          _%args196253%_))))
                                (_%__kont202191202192%_
                                 (lambda ()
                                   (let ((_%tmp196304%_
                                          (let ((__tmp202796
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp202796))))
                                     (_%lp196247%_
                                      _%rest196273%_
                                      (cons (cons _%tmp196304%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e196274%_))
                                                        '()))
                                            _%bind196252%_)
                                      (cons _%tmp196304%_ _%args196253%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx202185202186%_))
                                (let ((_%e196281196335%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx202185202186%_))))
                                  (let ((_%tl196283196340%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196281196335%_)))
                                        (_%hd196282196338%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196281196335%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196282196338%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd196282196338%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196283196340%_))
                                                (let ((_%e196284196343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196283196340%_))))
                                                  (let ((_%tl196286196348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196284196343%_)))
                                                        (_%hd196285196346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196284196343%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196286196348%_))
                                                        (_%__kont202187202188%_)
                                                        (_%__kont202191202192%_))))
                                                (_%__kont202191202192%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd196282196338%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl196283196340%_))
                                                    (let ((_%e196290196320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl196283196340%_))))
                                                      (let ((_%tl196292196325%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e196290196320%_)))
                    (_%hd196291196323%_
                     (let () (declare (not safe)) (##car _%e196290196320%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl196292196325%_))
                    (_%__kont202189202190%_)
                    (_%__kont202191202192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont202191202192%_))
                                                (_%__kont202191202192%_)))
                                        (_%__kont202191202192%_))))
                                (_%__kont202191202192%_)))))))
                (if (pair? _%rest196254196262%_)
                    (let ((_%hd196259196359%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest196254196262%_)))
                          (_%tl196260196361%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest196254196262%_))))
                      (let* ((_%e196364%_ _%hd196259196359%_)
                             (_%rest196366%_ _%tl196260196361%_))
                        (_%K196258196356%_ _%rest196366%_ _%e196364%_)))
                    (_%else196256196270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call196101%_
                                                     _%g196106196170%_
                                                     (let ((__tmp202798
                                                            (lambda (_%g196374196377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g196375196379%_)
                      (cons _%g196374196377%_ _%g196375196379%_))))
               (declare (not safe))
               (foldr__0 __tmp202798 '() _%g196105196169%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont202235202236%_
                                            (lambda ()
                                              (_%compile-call196101%_
                                               _%g196106196170%_
                                               (let ((__tmp202799
                                                      (lambda (_%g196214196217%_
                                                               _%g196215196219%_)
                                                        (cons _%g196214196217%_
                                                              _%g196215196219%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp202799
                                                  '()
                                                  _%g196105196169%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx202231202232%_))
                                           (let ((_%e196198196227%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx202231202232%_))))
                                             (let ((_%tl196200196232%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e196198196227%_)))
                                                   (_%hd196199196230%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e196198196227%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd196199196230%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd196199196230%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl196200196232%_))
                                                           (let ((_%e196201196235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl196200196232%_))))
                     (let ((_%tl196203196240%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e196201196235%_)))
                           (_%hd196202196238%_
                            (let ()
                              (declare (not safe))
                              (##car _%e196201196235%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl196203196240%_))
                           (_%__kont202233202234%_)
                           (_%__kont202235202236%_))))
                   (_%__kont202235202236%_))
               (_%__kont202235202236%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont202235202236%_))))
                                           (_%__kont202235202236%_))))))
                             _%rand196121196167%_
                             _%hd196111196142%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop196116196152%_
                                                     _%target196113196147%_
                                                     '()))
                                                  (_%g196103196126%_
                                                   _%g196104196129%_)))))
                                        (_%g196103196126%_
                                         _%g196104196129%_))))
                                (_%g196103196126%_ _%g196104196129%_))))
                        (_%g196103196126%_ _%g196104196129%_)))))
            (_%g196102196385%_ _%stx196099%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self195843%_ _%stx195844%_)
        (let* ((_%__stx202303202304%_ _%stx195844%_)
               (_%g195847195876%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202303202304%_)))))
          (let ((_%__kont202305202306%_
                 (lambda (_%g195849195942%_ _%g195850195943%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self195843%_
                        _%stx195844%_)
                       (let ((_%f195965%_
                              (let ((__tmp202800
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g195850195943%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self195843%_
                                 __tmp202800))))
                         (let _%lp195967%_ ((_%rest195970%_
                                             (reverse (let ((__tmp202802
                                                             (lambda (_%g196087196090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g196088196092%_)
                       (cons _%g196087196090%_ _%g196088196092%_))))
                (declare (not safe))
                (foldr__0 __tmp202802 '() _%g195849195942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind195972%_ '())
                                            (_%args195973%_ '()))
                           (let* ((_%rest195974195982%_ _%rest195970%_)
                                  (_%else195976195990%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind195972%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f195965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args195973%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K195978196076%_
                                   (lambda (_%rest195993%_ _%e195994%_)
                                     (let* ((_%__stx202257202258%_ _%e195994%_)
                                            (_%g195999196017%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx202257202258%_)))))
                                       (let ((_%__kont202259202260%_
                                              (lambda ()
                                                (_%lp195967%_
                                                 _%rest195993%_
                                                 _%bind195972%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e195994%_))
                                                       _%args195973%_))))
                                             (_%__kont202261202262%_
                                              (lambda ()
                                                (_%lp195967%_
                                                 _%rest195993%_
                                                 _%bind195972%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e195994%_))
                                                       _%args195973%_))))
                                             (_%__kont202263202264%_
                                              (lambda ()
                                                (let ((_%tmp196024%_
                                                       (let ((__tmp202801
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp202801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp195967%_
                                                   _%rest195993%_
                                                   (cons (cons _%tmp196024%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e195994%_))
                             '()))
                 _%bind195972%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp196024%_
                                                         _%args195973%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx202257202258%_))
                                             (let ((_%e196001196055%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx202257202258%_))))
                                               (let ((_%tl196003196060%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e196001196055%_)))
                                                     (_%hd196002196058%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e196001196055%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd196002196058%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd196002196058%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl196003196060%_))
                     (let ((_%e196004196063%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl196003196060%_))))
                       (let ((_%tl196006196068%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e196004196063%_)))
                             (_%hd196005196066%_
                              (let ()
                                (declare (not safe))
                                (##car _%e196004196063%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl196006196068%_))
                             (_%__kont202259202260%_)
                             (_%__kont202263202264%_))))
                     (_%__kont202263202264%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd196002196058%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl196003196060%_))
                         (let ((_%e196010196040%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl196003196060%_))))
                           (let ((_%tl196012196045%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196010196040%_)))
                                 (_%hd196011196043%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196010196040%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl196012196045%_))
                                 (_%__kont202261202262%_)
                                 (_%__kont202263202264%_))))
                         (_%__kont202263202264%_))
                     (_%__kont202263202264%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202263202264%_))))
                                             (_%__kont202263202264%_)))))))
                             (if (pair? _%rest195974195982%_)
                                 (let ((_%hd195979196079%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest195974195982%_)))
                                       (_%tl195980196081%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest195974195982%_))))
                                   (let* ((_%e196084%_ _%hd195979196079%_)
                                          (_%rest196086%_ _%tl195980196081%_))
                                     (_%K195978196076%_
                                      _%rest196086%_
                                      _%e196084%_)))
                                 (_%else195976195990%_))))))))
                (_%__kont202309202310%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self195843%_ _%stx195844%_))))
            (let ((_%__match202348202349%_
                   (lambda (_%e195851195888%_
                            _%hd195852195891%_
                            _%tl195853195893%_
                            _%e195854195896%_
                            _%hd195855195899%_
                            _%tl195856195901%_
                            _%e195857195904%_
                            _%hd195858195907%_
                            _%tl195859195909%_
                            _%e195860195912%_
                            _%hd195861195915%_
                            _%tl195862195917%_
                            _%__splice202307202308%_
                            _%target195863195920%_
                            _%tl195865195922%_)
                     (letrec ((_%loop195866195925%_
                               (lambda (_%hd195864195928%_
                                        _%rand195870195930%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195864195928%_))
                                     (let ((_%e195867195932%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195864195928%_))))
                                       (let ((_%lp-tl195869195937%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195867195932%_)))
                                             (_%lp-hd195868195935%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195867195932%_))))
                                         (_%loop195866195925%_
                                          _%lp-tl195869195937%_
                                          (cons _%lp-hd195868195935%_
                                                _%rand195870195930%_))))
                                     (let ((_%rand195871195940%_
                                            (reverse _%rand195870195930%_)))
                                       (_%__kont202305202306%_
                                        _%rand195871195940%_
                                        _%hd195861195915%_))))))
                       (_%loop195866195925%_ _%target195863195920%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202303202304%_))
                  (let ((_%e195851195888%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx202303202304%_))))
                    (let ((_%tl195853195893%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195851195888%_)))
                          (_%hd195852195891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195851195888%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195853195893%_))
                          (let ((_%e195854195896%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195853195893%_))))
                            (let ((_%tl195856195901%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195854195896%_)))
                                  (_%hd195855195899%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195854195896%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195855195899%_))
                                  (let ((_%e195857195904%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195855195899%_))))
                                    (let ((_%tl195859195909%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195857195904%_)))
                                          (_%hd195858195907%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195857195904%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195858195907%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195858195907%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195859195909%_))
                                                  (let ((_%e195860195912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195859195909%_))))
                                                    (let ((_%tl195862195917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195860195912%_)))
                                                          (_%hd195861195915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195860195912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195862195917%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195856195901%_))
                      (let ((_%__splice202307202308%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl195856195901%_
                                '0))))
                        (let ((_%tl195865195922%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202307202308%_ '1)))
                              (_%target195863195920%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202307202308%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195865195922%_))
                              (_%__match202348202349%_
                               _%e195851195888%_
                               _%hd195852195891%_
                               _%tl195853195893%_
                               _%e195854195896%_
                               _%hd195855195899%_
                               _%tl195856195901%_
                               _%e195857195904%_
                               _%hd195858195907%_
                               _%tl195859195909%_
                               _%e195860195912%_
                               _%hd195861195915%_
                               _%tl195862195917%_
                               _%__splice202307202308%_
                               _%target195863195920%_
                               _%tl195865195922%_)
                              (_%__kont202309202310%_))))
                      (_%__kont202309202310%_))
                  (_%__kont202309202310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202309202310%_))
                                              (_%__kont202309202310%_))
                                          (_%__kont202309202310%_))))
                                  (_%__kont202309202310%_))))
                          (_%__kont202309202310%_))))
                  (_%__kont202309202310%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self195655%_ _%stx195656%_)
        (letrec ((_%simplify195658%_
                  (lambda (_%code195743%_)
                    (let* ((_%code195744195762%_ _%code195743%_)
                           (_%else195746195770%_ (lambda () _%code195743%_))
                           (_%K195748195806%_
                            (lambda (_%expr195773%_ _%test195774%_)
                              (let* ((_%expr195775195783%_ _%expr195773%_)
                                     (_%else195777195791%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test195774%_
                                                    (cons _%expr195773%_
                                                          '())))))
                                     (_%K195779195796%_
                                      (lambda (_%exprs195794%_)
                                        (cons 'and
                                              (cons _%test195774%_
                                                    _%exprs195794%_)))))
                                (if (pair? _%expr195775195783%_)
                                    (let ((_%hd195780195799%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr195775195783%_)))
                                          (_%tl195781195801%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr195775195783%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd195780195799%_ 'and))
                                          (let ((_%exprs195804%_
                                                 _%tl195781195801%_))
                                            (_%K195779195796%_
                                             _%exprs195804%_))
                                          (_%else195777195791%_)))
                                    (_%else195777195791%_))))))
                      (if (pair? _%code195744195762%_)
                          (let ((_%hd195749195809%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code195744195762%_)))
                                (_%tl195750195811%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code195744195762%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd195749195809%_ 'if))
                                (if (pair? _%tl195750195811%_)
                                    (let ((_%hd195751195814%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl195750195811%_)))
                                          (_%tl195752195816%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl195750195811%_))))
                                      (let ((_%test195819%_
                                             _%hd195751195814%_))
                                        (if (pair? _%tl195752195816%_)
                                            (let ((_%hd195753195821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl195752195816%_)))
                                                  (_%tl195754195823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl195752195816%_))))
                                              (let ((_%expr195826%_
                                                     _%hd195753195821%_))
                                                (if (pair? _%tl195754195823%_)
                                                    (let ((_%hd195755195828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl195754195823%_)))
                                                          (_%tl195756195830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl195754195823%_))))
                                                      (if (pair? _%hd195755195828%_)
                                                          (let ((_%hd195757195833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd195755195828%_)))
                        (_%tl195758195835%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd195755195828%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd195757195833%_ 'quote))
                        (if (pair? _%tl195758195835%_)
                            (let ((_%hd195759195838%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl195758195835%_)))
                                  (_%tl195760195840%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl195758195835%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd195759195838%_ '#f))
                                  (if (null? _%tl195760195840%_)
                                      (if (null? _%tl195756195830%_)
                                          (_%K195748195806%_
                                           _%expr195826%_
                                           _%test195819%_)
                                          (_%else195746195770%_))
                                      (_%else195746195770%_))
                                  (_%else195746195770%_)))
                            (_%else195746195770%_))
                        (_%else195746195770%_)))
                  (_%else195746195770%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else195746195770%_))))
                                            (_%else195746195770%_))))
                                    (_%else195746195770%_))
                                (_%else195746195770%_)))
                          (_%else195746195770%_))))))
          (let* ((_%g195660195681%_
                  (lambda (_%g195661195678%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195661195678%_))))
                 (_%g195659195740%_
                  (lambda (_%g195661195684%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195661195684%_))
                        (let ((_%e195665195686%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195661195684%_))))
                          (let ((_%hd195666195689%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195665195686%_)))
                                (_%tl195667195691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195665195686%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195667195691%_))
                                (let ((_%e195668195694%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195667195691%_))))
                                  (let ((_%hd195669195697%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195668195694%_)))
                                        (_%tl195670195699%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195668195694%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195670195699%_))
                                        (let ((_%e195671195702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195670195699%_))))
                                          (let ((_%hd195672195705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195671195702%_)))
                                                (_%tl195673195707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195671195702%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195673195707%_))
                                                (let ((_%e195674195710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195673195707%_))))
                                                  (let ((_%hd195675195713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195674195710%_)))
                                                        (_%tl195676195715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195674195710%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195676195715%_))
                                                        ((lambda (_%g195662195718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g195663195719%_
                          _%g195664195720%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify195658%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self195655%_
                                       _%g195664195720%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self195655%_
                                             _%g195663195719%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self195655%_
                                                   _%g195662195718%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp202803
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self195655%_
                                               _%g195664195720%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp202803
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self195655%_
                                            _%g195663195719%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self195655%_
                                                  _%g195662195718%_))
                                               '()))))))
                 _%hd195675195713%_
                 _%hd195672195705%_
                 _%hd195669195697%_)
                (_%g195660195681%_ _%g195661195684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g195660195681%_
                                                 _%g195661195684%_))))
                                        (_%g195660195681%_
                                         _%g195661195684%_))))
                                (_%g195660195681%_ _%g195661195684%_))))
                        (_%g195660195681%_ _%g195661195684%_)))))
            (_%g195659195740%_ _%stx195656%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self195603%_ _%stx195604%_)
        (let* ((_%g195606195619%_
                (lambda (_%g195607195616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195607195616%_))))
               (_%g195605195652%_
                (lambda (_%g195607195622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195607195622%_))
                      (let ((_%e195609195624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195607195622%_))))
                        (let ((_%hd195610195627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195609195624%_)))
                              (_%tl195611195629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195609195624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195611195629%_))
                              (let ((_%e195612195632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195611195629%_))))
                                (let ((_%hd195613195635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195612195632%_)))
                                      (_%tl195614195637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195612195632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195614195637%_))
                                      ((lambda (_%g195608195640%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g195608195640%_)))
                                       _%hd195613195635%_)
                                      (_%g195606195619%_ _%g195607195622%_))))
                              (_%g195606195619%_ _%g195607195622%_))))
                      (_%g195606195619%_ _%g195607195622%_)))))
          (_%g195605195652%_ _%stx195604%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self195535%_ _%stx195536%_)
        (let* ((_%g195538195555%_
                (lambda (_%g195539195552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195539195552%_))))
               (_%g195537195600%_
                (lambda (_%g195539195558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195539195558%_))
                      (let ((_%e195542195560%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195539195558%_))))
                        (let ((_%hd195543195563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195542195560%_)))
                              (_%tl195544195565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195542195560%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195544195565%_))
                              (let ((_%e195545195568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195544195565%_))))
                                (let ((_%hd195546195571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195545195568%_)))
                                      (_%tl195547195573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195545195568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195547195573%_))
                                      (let ((_%e195548195576%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195547195573%_))))
                                        (let ((_%hd195549195579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195548195576%_)))
                                              (_%tl195550195581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195548195576%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195550195581%_))
                                              ((lambda (_%g195540195584%_
                                                        _%g195541195585%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g195541195585%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self195535%_
                              _%g195540195584%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195549195579%_
                                               _%hd195546195571%_)
                                              (_%g195538195555%_
                                               _%g195539195558%_))))
                                      (_%g195538195555%_ _%g195539195558%_))))
                              (_%g195538195555%_ _%g195539195558%_))))
                      (_%g195538195555%_ _%g195539195558%_)))))
          (_%g195537195600%_ _%stx195536%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self195346%_ _%stx195347%_)
        (let* ((_%g195349195366%_
                (lambda (_%g195350195363%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195350195363%_))))
               (_%g195348195532%_
                (lambda (_%g195350195369%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195350195369%_))
                      (let ((_%e195353195371%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195350195369%_))))
                        (let ((_%hd195354195374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195353195371%_)))
                              (_%tl195355195376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195353195371%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195355195376%_))
                              (let ((_%e195356195379%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195355195376%_))))
                                (let ((_%hd195357195382%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195356195379%_)))
                                      (_%tl195358195384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195356195379%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195358195384%_))
                                      (let ((_%e195359195387%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195358195384%_))))
                                        (let ((_%hd195360195390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195359195387%_)))
                                              (_%tl195361195392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195359195387%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195361195392%_))
                                              ((lambda (_%g195351195395%_
                                                        _%g195352195396%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self195346%_ _%g195351195395%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195346%_
                                  _%g195352195396%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp195411%_ ((_%rest195414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g195352195396%_
                                       (cons _%g195351195395%_ '())))
                                (_%bind195416%_ '())
                                (_%args195417%_ '()))
               (let* ((_%rest195418195426%_ _%rest195414%_)
                      (_%else195420195434%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind195416%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args195417%_)
                                                 '()))))))
                      (_%K195422195520%_
                       (lambda (_%rest195437%_ _%e195438%_)
                         (let* ((_%__stx202351202352%_ _%e195438%_)
                                (_%g195443195461%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx202351202352%_)))))
                           (let ((_%__kont202353202354%_
                                  (lambda ()
                                    (_%lp195411%_
                                     _%rest195437%_
                                     _%bind195416%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195438%_))
                                           _%args195417%_))))
                                 (_%__kont202355202356%_
                                  (lambda ()
                                    (_%lp195411%_
                                     _%rest195437%_
                                     _%bind195416%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195438%_))
                                           _%args195417%_))))
                                 (_%__kont202357202358%_
                                  (lambda ()
                                    (let ((_%tmp195468%_
                                           (let ((__tmp202804
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp202804))))
                                      (_%lp195411%_
                                       _%rest195437%_
                                       (cons (cons _%tmp195468%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e195438%_))
                                                         '()))
                                             _%bind195416%_)
                                       (cons _%tmp195468%_ _%args195417%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx202351202352%_))
                                 (let ((_%e195445195499%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx202351202352%_))))
                                   (let ((_%tl195447195504%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e195445195499%_)))
                                         (_%hd195446195502%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e195445195499%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd195446195502%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd195446195502%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl195447195504%_))
                                                 (let ((_%e195448195507%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl195447195504%_))))
                                                   (let ((_%tl195450195512%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e195448195507%_)))
                                                         (_%hd195449195510%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e195448195507%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl195450195512%_))
                                                         (_%__kont202353202354%_)
                                                         (_%__kont202357202358%_))))
                                                 (_%__kont202357202358%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd195446195502%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl195447195504%_))
                                                     (let ((_%e195454195484%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl195447195504%_))))
                                                       (let ((_%tl195456195489%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e195454195484%_)))
                     (_%hd195455195487%_
                      (let () (declare (not safe)) (##car _%e195454195484%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl195456195489%_))
                     (_%__kont202355202356%_)
                     (_%__kont202357202358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202357202358%_))
                                                 (_%__kont202357202358%_)))
                                         (_%__kont202357202358%_))))
                                 (_%__kont202357202358%_)))))))
                 (if (pair? _%rest195418195426%_)
                     (let ((_%hd195423195523%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest195418195426%_)))
                           (_%tl195424195525%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest195418195426%_))))
                       (let* ((_%e195528%_ _%hd195423195523%_)
                              (_%rest195530%_ _%tl195424195525%_))
                         (_%K195422195520%_ _%rest195530%_ _%e195528%_)))
                     (_%else195420195434%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195360195390%_
                                               _%hd195357195382%_)
                                              (_%g195349195366%_
                                               _%g195350195369%_))))
                                      (_%g195349195366%_ _%g195350195369%_))))
                              (_%g195349195366%_ _%g195350195369%_))))
                      (_%g195349195366%_ _%g195350195369%_)))))
          (_%g195348195532%_ _%stx195347%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self195157%_ _%stx195158%_)
        (let* ((_%g195160195177%_
                (lambda (_%g195161195174%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195161195174%_))))
               (_%g195159195343%_
                (lambda (_%g195161195180%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195161195180%_))
                      (let ((_%e195164195182%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195161195180%_))))
                        (let ((_%hd195165195185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195164195182%_)))
                              (_%tl195166195187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195164195182%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195166195187%_))
                              (let ((_%e195167195190%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195166195187%_))))
                                (let ((_%hd195168195193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195167195190%_)))
                                      (_%tl195169195195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195167195190%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195169195195%_))
                                      (let ((_%e195170195198%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195169195195%_))))
                                        (let ((_%hd195171195201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195170195198%_)))
                                              (_%tl195172195203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195170195198%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195172195203%_))
                                              ((lambda (_%g195162195206%_
                                                        _%g195163195207%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self195157%_ _%g195162195206%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195157%_
                                  _%g195163195207%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp195222%_ ((_%rest195225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g195163195207%_
                                       (cons _%g195162195206%_ '())))
                                (_%bind195227%_ '())
                                (_%args195228%_ '()))
               (let* ((_%rest195229195237%_ _%rest195225%_)
                      (_%else195231195245%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind195227%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args195228%_)
                                                 '()))))))
                      (_%K195233195331%_
                       (lambda (_%rest195248%_ _%e195249%_)
                         (let* ((_%__stx202397202398%_ _%e195249%_)
                                (_%g195254195272%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx202397202398%_)))))
                           (let ((_%__kont202399202400%_
                                  (lambda ()
                                    (_%lp195222%_
                                     _%rest195248%_
                                     _%bind195227%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195249%_))
                                           _%args195228%_))))
                                 (_%__kont202401202402%_
                                  (lambda ()
                                    (_%lp195222%_
                                     _%rest195248%_
                                     _%bind195227%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195249%_))
                                           _%args195228%_))))
                                 (_%__kont202403202404%_
                                  (lambda ()
                                    (let ((_%tmp195279%_
                                           (let ((__tmp202805
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp202805))))
                                      (_%lp195222%_
                                       _%rest195248%_
                                       (cons (cons _%tmp195279%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e195249%_))
                                                         '()))
                                             _%bind195227%_)
                                       (cons _%tmp195279%_ _%args195228%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx202397202398%_))
                                 (let ((_%e195256195310%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx202397202398%_))))
                                   (let ((_%tl195258195315%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e195256195310%_)))
                                         (_%hd195257195313%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e195256195310%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd195257195313%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd195257195313%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl195258195315%_))
                                                 (let ((_%e195259195318%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl195258195315%_))))
                                                   (let ((_%tl195261195323%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e195259195318%_)))
                                                         (_%hd195260195321%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e195259195318%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl195261195323%_))
                                                         (_%__kont202399202400%_)
                                                         (_%__kont202403202404%_))))
                                                 (_%__kont202403202404%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd195257195313%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl195258195315%_))
                                                     (let ((_%e195265195295%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl195258195315%_))))
                                                       (let ((_%tl195267195300%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e195265195295%_)))
                     (_%hd195266195298%_
                      (let () (declare (not safe)) (##car _%e195265195295%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl195267195300%_))
                     (_%__kont202401202402%_)
                     (_%__kont202403202404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202403202404%_))
                                                 (_%__kont202403202404%_)))
                                         (_%__kont202403202404%_))))
                                 (_%__kont202403202404%_)))))))
                 (if (pair? _%rest195229195237%_)
                     (let ((_%hd195234195334%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest195229195237%_)))
                           (_%tl195235195336%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest195229195237%_))))
                       (let* ((_%e195339%_ _%hd195234195334%_)
                              (_%rest195341%_ _%tl195235195336%_))
                         (_%K195233195331%_ _%rest195341%_ _%e195339%_)))
                     (_%else195231195245%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195171195201%_
                                               _%hd195168195193%_)
                                              (_%g195160195177%_
                                               _%g195161195180%_))))
                                      (_%g195160195177%_ _%g195161195180%_))))
                              (_%g195160195177%_ _%g195161195180%_))))
                      (_%g195160195177%_ _%g195161195180%_)))))
          (_%g195159195343%_ _%stx195158%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self195073%_ _%stx195074%_)
        (let* ((_%g195076195097%_
                (lambda (_%g195077195094%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195077195094%_))))
               (_%g195075195154%_
                (lambda (_%g195077195100%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195077195100%_))
                      (let ((_%e195081195102%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195077195100%_))))
                        (let ((_%hd195082195105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195081195102%_)))
                              (_%tl195083195107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195081195102%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195083195107%_))
                              (let ((_%e195084195110%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195083195107%_))))
                                (let ((_%hd195085195113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195084195110%_)))
                                      (_%tl195086195115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195084195110%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195086195115%_))
                                      (let ((_%e195087195118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195086195115%_))))
                                        (let ((_%hd195088195121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195087195118%_)))
                                              (_%tl195089195123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195087195118%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195089195123%_))
                                              (let ((_%e195090195126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195089195123%_))))
                                                (let ((_%hd195091195129%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195090195126%_)))
                                                      (_%tl195092195131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195090195126%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195092195131%_))
                                                      ((lambda (_%g195078195134%_
                                                                _%g195079195135%_
                                                                _%g195080195136%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195073%_
                                _%g195078195134%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195073%_
                                      _%g195079195135%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self195073%_
                                            _%g195080195136%_))
                                         (cons ''#f '()))))))
               _%hd195091195129%_
               _%hd195088195121%_
               _%hd195085195113%_)
              (_%g195076195097%_ _%g195077195100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195076195097%_
                                               _%g195077195100%_))))
                                      (_%g195076195097%_ _%g195077195100%_))))
                              (_%g195076195097%_ _%g195077195100%_))))
                      (_%g195076195097%_ _%g195077195100%_)))))
          (_%g195075195154%_ _%stx195074%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self194973%_ _%stx194974%_)
        (let* ((_%g194976195001%_
                (lambda (_%g194977194998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194977194998%_))))
               (_%g194975195070%_
                (lambda (_%g194977195004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194977195004%_))
                      (let ((_%e194982195006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194977195004%_))))
                        (let ((_%hd194983195009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194982195006%_)))
                              (_%tl194984195011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194982195006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194984195011%_))
                              (let ((_%e194985195014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194984195011%_))))
                                (let ((_%hd194986195017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194985195014%_)))
                                      (_%tl194987195019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194985195014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194987195019%_))
                                      (let ((_%e194988195022%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194987195019%_))))
                                        (let ((_%hd194989195025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194988195022%_)))
                                              (_%tl194990195027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194988195022%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194990195027%_))
                                              (let ((_%e194991195030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194990195027%_))))
                                                (let ((_%hd194992195033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194991195030%_)))
                                                      (_%tl194993195035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194991195030%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194993195035%_))
                                                      (let ((_%e194994195038%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194993195035%_))))
                (let ((_%hd194995195041%_
                       (let () (declare (not safe)) (##car _%e194994195038%_)))
                      (_%tl194996195043%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e194994195038%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194996195043%_))
                      ((lambda (_%g194978195046%_
                                _%g194979195047%_
                                _%g194980195048%_
                                _%g194981195049%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self194973%_
                                        _%g194979195047%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self194973%_
                                              _%g194978195046%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self194973%_
                                                    _%g194980195048%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self194973%_
                                                          _%g194981195049%_))
                                                       (cons ''#f '())))))))
                       _%hd194995195041%_
                       _%hd194992195033%_
                       _%hd194989195025%_
                       _%hd194986195017%_)
                      (_%g194976195001%_ _%g194977195004%_))))
              (_%g194976195001%_ _%g194977195004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194976195001%_
                                               _%g194977195004%_))))
                                      (_%g194976195001%_ _%g194977195004%_))))
                              (_%g194976195001%_ _%g194977195004%_))))
                      (_%g194976195001%_ _%g194977195004%_)))))
          (_%g194975195070%_ _%stx194974%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self194889%_ _%stx194890%_)
        (let* ((_%g194892194913%_
                (lambda (_%g194893194910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194893194910%_))))
               (_%g194891194970%_
                (lambda (_%g194893194916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194893194916%_))
                      (let ((_%e194897194918%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194893194916%_))))
                        (let ((_%hd194898194921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194897194918%_)))
                              (_%tl194899194923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194897194918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194899194923%_))
                              (let ((_%e194900194926%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194899194923%_))))
                                (let ((_%hd194901194929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194900194926%_)))
                                      (_%tl194902194931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194900194926%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194902194931%_))
                                      (let ((_%e194903194934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194902194931%_))))
                                        (let ((_%hd194904194937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194903194934%_)))
                                              (_%tl194905194939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194903194934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194905194939%_))
                                              (let ((_%e194906194942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194905194939%_))))
                                                (let ((_%hd194907194945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194906194942%_)))
                                                      (_%tl194908194947%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194906194942%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194908194947%_))
                                                      ((lambda (_%g194894194950%_
                                                                _%g194895194951%_
                                                                _%g194896194952%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self194889%_
                                _%g194894194950%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self194889%_
                                      _%g194895194951%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self194889%_
                                            _%g194896194952%_))
                                         (cons ''#f '()))))))
               _%hd194907194945%_
               _%hd194904194937%_
               _%hd194901194929%_)
              (_%g194892194913%_ _%g194893194916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194892194913%_
                                               _%g194893194916%_))))
                                      (_%g194892194913%_ _%g194893194916%_))))
                              (_%g194892194913%_ _%g194893194916%_))))
                      (_%g194892194913%_ _%g194893194916%_)))))
          (_%g194891194970%_ _%stx194890%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self194789%_ _%stx194790%_)
        (let* ((_%g194792194817%_
                (lambda (_%g194793194814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194793194814%_))))
               (_%g194791194886%_
                (lambda (_%g194793194820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194793194820%_))
                      (let ((_%e194798194822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194793194820%_))))
                        (let ((_%hd194799194825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194798194822%_)))
                              (_%tl194800194827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194798194822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194800194827%_))
                              (let ((_%e194801194830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194800194827%_))))
                                (let ((_%hd194802194833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194801194830%_)))
                                      (_%tl194803194835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194801194830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194803194835%_))
                                      (let ((_%e194804194838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194803194835%_))))
                                        (let ((_%hd194805194841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194804194838%_)))
                                              (_%tl194806194843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194804194838%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194806194843%_))
                                              (let ((_%e194807194846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194806194843%_))))
                                                (let ((_%hd194808194849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194807194846%_)))
                                                      (_%tl194809194851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194807194846%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194809194851%_))
                                                      (let ((_%e194810194854%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194809194851%_))))
                (let ((_%hd194811194857%_
                       (let () (declare (not safe)) (##car _%e194810194854%_)))
                      (_%tl194812194859%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e194810194854%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194812194859%_))
                      ((lambda (_%g194794194862%_
                                _%g194795194863%_
                                _%g194796194864%_
                                _%g194797194865%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self194789%_
                                        _%g194795194863%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self194789%_
                                              _%g194794194862%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self194789%_
                                                    _%g194796194864%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self194789%_
                                                          _%g194797194865%_))
                                                       (cons ''#f '())))))))
                       _%hd194811194857%_
                       _%hd194808194849%_
                       _%hd194805194841%_
                       _%hd194802194833%_)
                      (_%g194792194817%_ _%g194793194820%_))))
              (_%g194792194817%_ _%g194793194820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194792194817%_
                                               _%g194793194820%_))))
                                      (_%g194792194817%_ _%g194793194820%_))))
                              (_%g194792194817%_ _%g194793194820%_))))
                      (_%g194792194817%_ _%g194793194820%_)))))
          (_%g194791194886%_ _%stx194790%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self194584%_ _%stx194585%_)
        (let* ((_%g194587194608%_
                (lambda (_%g194588194605%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194588194605%_))))
               (_%g194586194786%_
                (lambda (_%g194588194611%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194588194611%_))
                      (let ((_%e194592194613%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194588194611%_))))
                        (let ((_%hd194593194616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194592194613%_)))
                              (_%tl194594194618%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194592194613%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194594194618%_))
                              (let ((_%e194595194621%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194594194618%_))))
                                (let ((_%hd194596194624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194595194621%_)))
                                      (_%tl194597194626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194595194621%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194597194626%_))
                                      (let ((_%e194598194629%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194597194626%_))))
                                        (let ((_%hd194599194632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194598194629%_)))
                                              (_%tl194600194634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194598194629%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194600194634%_))
                                              (let ((_%e194601194637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194600194634%_))))
                                                (let ((_%hd194602194640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194601194637%_)))
                                                      (_%tl194603194642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194601194637%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194603194642%_))
                                                      ((lambda (_%g194589194645%_
                                                                _%g194590194646%_
                                                                _%g194591194647%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self194584%_
                                    _%g194589194645%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self194584%_
                                          _%g194590194646%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp194665%_ ((_%rest194668%_
                                         (cons _%g194590194646%_
                                               (cons _%g194589194645%_ '())))
                                        (_%bind194670%_ '())
                                        (_%args194671%_ '()))
                       (let* ((_%rest194672194680%_ _%rest194668%_)
                              (_%else194674194688%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind194670%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp202806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp202806 _%args194671%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K194676194774%_
                               (lambda (_%rest194691%_ _%e194692%_)
                                 (let* ((_%__stx202443202444%_ _%e194692%_)
                                        (_%g194697194715%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx202443202444%_)))))
                                   (let ((_%__kont202445202446%_
                                          (lambda ()
                                            (_%lp194665%_
                                             _%rest194691%_
                                             _%bind194670%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e194692%_))
                                                   _%args194671%_))))
                                         (_%__kont202447202448%_
                                          (lambda ()
                                            (_%lp194665%_
                                             _%rest194691%_
                                             _%bind194670%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e194692%_))
                                                   _%args194671%_))))
                                         (_%__kont202449202450%_
                                          (lambda ()
                                            (let ((_%tmp194722%_
                                                   (let ((__tmp202807
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp202807))))
                                              (_%lp194665%_
                                               _%rest194691%_
                                               (cons (cons _%tmp194722%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e194692%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind194670%_)
                                               (cons _%tmp194722%_
                                                     _%args194671%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx202443202444%_))
                                         (let ((_%e194699194753%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx202443202444%_))))
                                           (let ((_%tl194701194758%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194699194753%_)))
                                                 (_%hd194700194756%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194699194753%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194700194756%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd194700194756%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194701194758%_))
                                                         (let ((_%e194702194761%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194701194758%_))))
                   (let ((_%tl194704194766%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194702194761%_)))
                         (_%hd194703194764%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194702194761%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl194704194766%_))
                         (_%__kont202445202446%_)
                         (_%__kont202449202450%_))))
                 (_%__kont202449202450%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd194700194756%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl194701194758%_))
                     (let ((_%e194708194738%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl194701194758%_))))
                       (let ((_%tl194710194743%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e194708194738%_)))
                             (_%hd194709194741%_
                              (let ()
                                (declare (not safe))
                                (##car _%e194708194738%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl194710194743%_))
                             (_%__kont202447202448%_)
                             (_%__kont202449202450%_))))
                     (_%__kont202449202450%_))
                 (_%__kont202449202450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont202449202450%_))))
                                         (_%__kont202449202450%_)))))))
                         (if (pair? _%rest194672194680%_)
                             (let ((_%hd194677194777%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest194672194680%_)))
                                   (_%tl194678194779%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest194672194680%_))))
                               (let* ((_%e194782%_ _%hd194677194777%_)
                                      (_%rest194784%_ _%tl194678194779%_))
                                 (_%K194676194774%_
                                  _%rest194784%_
                                  _%e194782%_)))
                             (_%else194674194688%_))))))
               _%hd194602194640%_
               _%hd194599194632%_
               _%hd194596194624%_)
              (_%g194587194608%_ _%g194588194611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194587194608%_
                                               _%g194588194611%_))))
                                      (_%g194587194608%_ _%g194588194611%_))))
                              (_%g194587194608%_ _%g194588194611%_))))
                      (_%g194587194608%_ _%g194588194611%_)))))
          (_%g194586194786%_ _%stx194585%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self194363%_ _%stx194364%_)
        (let* ((_%g194366194391%_
                (lambda (_%g194367194388%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194367194388%_))))
               (_%g194365194581%_
                (lambda (_%g194367194394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194367194394%_))
                      (let ((_%e194372194396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194367194394%_))))
                        (let ((_%hd194373194399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194372194396%_)))
                              (_%tl194374194401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194372194396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194374194401%_))
                              (let ((_%e194375194404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194374194401%_))))
                                (let ((_%hd194376194407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194375194404%_)))
                                      (_%tl194377194409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194375194404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194377194409%_))
                                      (let ((_%e194378194412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194377194409%_))))
                                        (let ((_%hd194379194415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194378194412%_)))
                                              (_%tl194380194417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194378194412%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194380194417%_))
                                              (let ((_%e194381194420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194380194417%_))))
                                                (let ((_%hd194382194423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194381194420%_)))
                                                      (_%tl194383194425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194381194420%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194383194425%_))
                                                      (let ((_%e194384194428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194383194425%_))))
                (let ((_%hd194385194431%_
                       (let () (declare (not safe)) (##car _%e194384194428%_)))
                      (_%tl194386194433%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e194384194428%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194386194433%_))
                      ((lambda (_%g194368194436%_
                                _%g194369194437%_
                                _%g194370194438%_
                                _%g194371194439%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self194363%_
                                            _%g194369194437%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self194363%_
                                                  _%g194368194436%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self194363%_
                                                        _%g194370194438%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp194460%_ ((_%rest194463%_
                                                 (cons _%g194370194438%_
                                                       (cons _%g194368194436%_
                                                             (cons _%g194369194437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind194465%_ '())
                                                (_%args194466%_ '()))
                               (let* ((_%rest194467194475%_ _%rest194463%_)
                                      (_%else194469194483%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind194465%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp202808 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp202808 _%args194466%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K194471194569%_
                                       (lambda (_%rest194486%_ _%e194487%_)
                                         (let* ((_%__stx202489202490%_
                                                 _%e194487%_)
                                                (_%g194492194510%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx202489202490%_)))))
                                           (let ((_%__kont202491202492%_
                                                  (lambda ()
                                                    (_%lp194460%_
                                                     _%rest194486%_
                                                     _%bind194465%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e194487%_))
                                                           _%args194466%_))))
                                                 (_%__kont202493202494%_
                                                  (lambda ()
                                                    (_%lp194460%_
                                                     _%rest194486%_
                                                     _%bind194465%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e194487%_))
                                                           _%args194466%_))))
                                                 (_%__kont202495202496%_
                                                  (lambda ()
                                                    (let ((_%tmp194517%_
                                                           (let ((__tmp202809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp202809))))
              (_%lp194460%_
               _%rest194486%_
               (cons (cons _%tmp194517%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e194487%_))
                                 '()))
                     _%bind194465%_)
               (cons _%tmp194517%_ _%args194466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx202489202490%_))
                                                 (let ((_%e194494194548%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx202489202490%_))))
                                                   (let ((_%tl194496194553%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e194494194548%_)))
                                                         (_%hd194495194551%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e194494194548%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd194495194551%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd194495194551%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl194496194553%_))
                         (let ((_%e194497194556%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl194496194553%_))))
                           (let ((_%tl194499194561%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194497194556%_)))
                                 (_%hd194498194559%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194497194556%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl194499194561%_))
                                 (_%__kont202491202492%_)
                                 (_%__kont202495202496%_))))
                         (_%__kont202495202496%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd194495194551%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl194496194553%_))
                             (let ((_%e194503194533%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl194496194553%_))))
                               (let ((_%tl194505194538%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e194503194533%_)))
                                     (_%hd194504194536%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e194503194533%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl194505194538%_))
                                     (_%__kont202493202494%_)
                                     (_%__kont202495202496%_))))
                             (_%__kont202495202496%_))
                         (_%__kont202495202496%_)))
                 (_%__kont202495202496%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont202495202496%_)))))))
                                 (if (pair? _%rest194467194475%_)
                                     (let ((_%hd194472194572%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest194467194475%_)))
                                           (_%tl194473194574%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest194467194475%_))))
                                       (let* ((_%e194577%_ _%hd194472194572%_)
                                              (_%rest194579%_
                                               _%tl194473194574%_))
                                         (_%K194471194569%_
                                          _%rest194579%_
                                          _%e194577%_)))
                                     (_%else194469194483%_))))))
                       _%hd194385194431%_
                       _%hd194382194423%_
                       _%hd194379194415%_
                       _%hd194376194407%_)
                      (_%g194366194391%_ _%g194367194394%_))))
              (_%g194366194391%_ _%g194367194394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194366194391%_
                                               _%g194367194394%_))))
                                      (_%g194366194391%_ _%g194367194394%_))))
                              (_%g194366194391%_ _%g194367194394%_))))
                      (_%g194366194391%_ _%g194367194394%_)))))
          (_%g194365194581%_ _%stx194364%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self194202%_ _%stx194203%_)
        (letrec ((_%import-set-template194205%_
                  (lambda (_%in194308%_ _%phi194309%_)
                    (let ((_%iphi194311%_
                           (fx+ _%phi194309%_
                                (##direct-structure-ref
                                 _%in194308%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports194312%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in194308%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp194314%_ ((_%rest194316%_ _%imports194312%_)
                                         (_%r194317%_ '()))
                        (let* ((_%rest194318194326%_ _%rest194316%_)
                               (_%else194320194334%_ (lambda () _%r194317%_))
                               (_%K194322194351%_
                                (lambda (_%rest194337%_ _%in194338%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in194338%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi194311%_))
                                          (_%lp194314%_
                                           _%rest194337%_
                                           (cons _%in194338%_ _%r194317%_))
                                          (_%lp194314%_
                                           _%rest194337%_
                                           _%r194317%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in194338%_
                                             'gx#module-import::t))
                                          (let ((_%iphi194342%_
                                                 (fx+ _%phi194309%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in194338%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi194342%_))
                                                (_%lp194314%_
                                                 _%rest194337%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in194338%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r194317%_))
                                                (_%lp194314%_
                                                 _%rest194337%_
                                                 _%r194317%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in194338%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi194345%_
                                                     (fx+ _%iphi194311%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in194338%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi194345%_))
                                                    (_%lp194314%_
                                                     _%rest194337%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in194338%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r194317%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi194345%_))
                                                        (_%lp194314%_
                                                         _%rest194337%_
                                                         (let ((__tmp202810
                                                                (_%import-set-template194205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in194338%_
                         _%iphi194311%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r194317%_ __tmp202810)))
                (_%lp194314%_ _%rest194337%_ _%r194317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp194314%_
                                               _%rest194337%_
                                               _%r194317%_)))))))
                          (if (pair? _%rest194318194326%_)
                              (let ((_%hd194323194354%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194318194326%_)))
                                    (_%tl194324194356%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194318194326%_))))
                                (let* ((_%in194359%_ _%hd194323194354%_)
                                       (_%rest194361%_ _%tl194324194356%_))
                                  (_%K194322194351%_
                                   _%rest194361%_
                                   _%in194359%_)))
                              (_%else194320194334%_))))))))
          (let* ((_%g194207194217%_
                  (lambda (_%g194208194214%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194208194214%_))))
                 (_%g194206194305%_
                  (lambda (_%g194208194220%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194208194220%_))
                        (let ((_%e194210194222%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194208194220%_))))
                          (let ((_%hd194211194225%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194210194222%_)))
                                (_%tl194212194227%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194210194222%_))))
                            ((lambda (_%g194209194230%_)
                               (let ((_%ht194241%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp194243%_ ((_%rest194245%_
                                                     _%g194209194230%_)
                                                    (_%loads194246%_ '()))
                                   (letrec ((_%K194248%_
                                             (lambda (_%ctx194298%_
                                                      _%rest194299%_)
                                               (let ((_%id194301%_
                                                      (##structure-ref
                                                       _%ctx194298%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht194241%_
                                                        _%id194301%_))
                                                     (_%lp194243%_
                                                      _%rest194299%_
                                                      _%loads194246%_)
                                                     (let ((_%rt194303%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id194301%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht194241%_
                                                          _%id194301%_
                                                          _%rt194303%_))
                                                       (_%lp194243%_
                                                        _%rest194299%_
                                                        (cons _%rt194303%_
                                                              _%loads194246%_))))))))
                                     (let* ((_%rest194249194257%_
                                             _%rest194245%_)
                                            (_%else194251194269%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp202812
                                                            (lambda (_%g194264194266%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194264194266%_)))
                   (__tmp202811 (reverse _%loads194246%_)))
               (declare (not safe))
               (##map __tmp202812 __tmp202811)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K194253194286%_
                                             (lambda (_%rest194272%_
                                                      _%in194273%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in194273%_
                                                      'gx#module-context::t))
                                                   (_%K194248%_
                                                    _%in194273%_
                                                    _%rest194272%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in194273%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in194273%_
                               '3
                               '#f
                               '#f)))
                   (_%K194248%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in194273%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest194272%_)
                   (_%lp194243%_ _%rest194272%_ _%loads194246%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in194273%_
                      'gx#import-set::t))
                   (let ((_%phi194278%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in194273%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi194278%_)
                         (_%K194248%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in194273%_
                             '1
                             '#f
                             '#f))
                          _%rest194272%_)
                         (if (fxpositive? _%phi194278%_)
                             (let ((_%deps194282%_
                                    (_%import-set-template194205%_
                                     _%in194273%_
                                     '0)))
                               (_%lp194243%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest194272%_
                                   _%deps194282%_))
                                _%loads194246%_))
                             (_%lp194243%_ _%rest194272%_ _%loads194246%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx194203%_
                      _%in194273%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest194249194257%_)
                                           (let ((_%hd194254194289%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest194249194257%_)))
                                                 (_%tl194255194291%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest194249194257%_))))
                                             (let* ((_%in194294%_
                                                     _%hd194254194289%_)
                                                    (_%rest194296%_
                                                     _%tl194255194291%_))
                                               (_%K194253194286%_
                                                _%rest194296%_
                                                _%in194294%_)))
                                           (_%else194251194269%_)))))))
                             _%tl194212194227%_)))
                        (_%g194207194217%_ _%g194208194220%_)))))
            (_%g194206194305%_ _%stx194203%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self194016%_ _%stx194017%_)
        (letrec ((_%add-lift!194019%_
                  (lambda (_%expr194200%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr194200%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote194020%_
                  (lambda (_%id194197%_ _%marks194198%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id194197%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks194198%_
                                                        '()))))))))
                 (_%generate-simple194021%_
                  (lambda (_%stxq194192%_)
                    (let ((_%gid194194%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid194195%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq194192%_))))
                      (_%add-lift!194019%_
                       (cons 'define
                             (cons _%gid194194%_
                                   (cons (_%generate-syntax-quote194020%_
                                          _%qid194195%_
                                          ''())
                                         '()))))
                      (let ((__tmp202813
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp202813 _%stxq194192%_ _%gid194194%_))
                      _%gid194194%_)))
                 (_%generate-serialized194022%_
                  (lambda (_%stxq194182%_ _%marks194183%_)
                    (let* ((_%mark-refs194185%_
                            (map _%generate-mark194023%_ _%marks194183%_))
                           (_%gid194187%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid194189%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq194182%_))))
                      (_%add-lift!194019%_
                       (cons 'define
                             (cons _%gid194187%_
                                   (cons (_%generate-syntax-quote194020%_
                                          _%qid194189%_
                                          (cons 'list _%mark-refs194185%_))
                                         '()))))
                      (let ((__tmp202814
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp202814 _%stxq194182%_ _%gid194187%_))
                      _%gid194187%_)))
                 (_%generate-mark194023%_
                  (lambda (_%mark194167%_)
                    (let ((_%$e194169%_
                           (let ((__tmp202815
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp202815 _%mark194167%_))))
                      (if _%$e194169%_
                          _%$e194169%_
                          (let* ((_%gid194173%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr194175%_
                                  (_%serialize-mark194024%_ _%mark194167%_))
                                 (_%ctx194177%_
                                  (let ((__tmp202816
                                         (##structure-ref
                                          _%mark194167%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp202816)))
                                 (_%ctx-ref194179%_
                                  (if (eq? _%ctx194177%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref194025%_
                                                               _%ctx194177%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp202817
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp202817
                               _%mark194167%_
                               _%gid194173%_))
                            (_%add-lift!194019%_
                             (cons 'define
                                   (cons _%gid194173%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr194175%_ '()))
                   (cons _%ctx-ref194179%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid194173%_)))))
                 (_%serialize-mark194024%_
                  (lambda (_%mark194115%_)
                    (letrec ((_%quote-e194117%_
                              (lambda (_%sym194165%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym194165%_))
                                    _%sym194165%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym194165%_))))))
                      (let* ((_%mark194118194127%_ _%mark194115%_)
                             (_%E194120194130%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark194118194127%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K194121194142%_
                              (lambda (_%trace194133%_
                                       _%phi194134%_
                                       _%ctx194135%_
                                       _%subst194136%_)
                                (let ((_%subs194138%_
                                       (if _%subst194136%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst194136%_))
                                           '())))
                                  (cons _%phi194134%_
                                        (let ((__tmp202818
                                               (lambda (_%pair194140%_)
                                                 (cons (_%quote-e194117%_
                                                        (car _%pair194140%_))
                                                       (_%quote-e194117%_
                                                        (cdr _%pair194140%_))))))
                                          (declare (not safe))
                                          (##map __tmp202818
                                                 _%subs194138%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark194118194127%_
                               'gx#expander-mark::t))
                            (let* ((_%e194122194145%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194118194127%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst194148%_ _%e194122194145%_)
                                   (_%e194123194150%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194118194127%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx194153%_ _%e194123194150%_)
                                   (_%e194124194155%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194118194127%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi194158%_ _%e194124194155%_)
                                   (_%e194125194160%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194118194127%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace194163%_ _%e194125194160%_))
                              (_%K194121194142%_
                               _%trace194163%_
                               _%phi194158%_
                               _%ctx194153%_
                               _%subst194148%_))
                            (_%E194120194130%_))))))
                 (_%context-ref194025%_
                  (lambda (_%ctx194102%_)
                    (if (let ((__tmp202819
                               (##structure-ref
                                _%ctx194102%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp202819
                           'gx#module-context::t))
                        (let ((_%ctx-ref194104%_
                               (_%context-ref-nested194027%_ _%ctx194102%_))
                              (_%ctx-origin194105%_
                               (_%context-ref-origin194026%_ _%ctx194102%_))
                              (_%origin194106%_
                               (_%context-ref-origin194026%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin194106%_ _%ctx-origin194105%_)
                              (let ((_%ref194108%_
                                     (_%context-ref-nested194027%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp194110%_ ((_%ref194112%_
                                                    (cdr _%ref194108%_))
                                                   (_%ctx-ref194113%_
                                                    (cdr _%ctx-ref194104%_)))
                                  (if (and (pair? _%ref194112%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref194112%_))
                                                (car _%ctx-ref194113%_)))
                                      (_%lp194110%_
                                       (cdr _%ref194112%_)
                                       (cdr _%ctx-ref194113%_))
                                      (cons '#f _%ctx-ref194113%_))))
                              _%ctx-ref194104%_))
                        (let ((__tmp202820
                               (##structure-ref
                                _%ctx194102%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp202820)))))
                 (_%context-ref-origin194026%_
                  (lambda (_%ctx194094%_)
                    (let _%lp194096%_ ((_%ctx194098%_ _%ctx194094%_))
                      (let ((_%super194100%_
                             (##structure-ref
                              _%ctx194098%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super194100%_
                               'gx#module-context::t))
                            (_%lp194096%_ _%super194100%_)
                            _%ctx194098%_)))))
                 (_%context-ref-nested194027%_
                  (lambda (_%ctx194085%_)
                    (let _%lp194087%_ ((_%ctx194089%_ _%ctx194085%_)
                                       (_%r194090%_ '()))
                      (let ((_%super194092%_
                             (##structure-ref
                              _%ctx194089%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super194092%_
                               'gx#module-context::t))
                            (_%lp194087%_
                             _%super194092%_
                             (cons (car (##structure-ref
                                         _%ctx194089%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r194090%_))
                            (cons (let ((__tmp202821
                                         (##structure-ref
                                          _%ctx194089%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp202821))
                                  _%r194090%_)))))))
          (let* ((_%g194029194042%_
                  (lambda (_%g194030194039%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194030194039%_))))
                 (_%g194028194082%_
                  (lambda (_%g194030194045%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194030194045%_))
                        (let ((_%e194032194047%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194030194045%_))))
                          (let ((_%hd194033194050%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194032194047%_)))
                                (_%tl194034194052%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194032194047%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194034194052%_))
                                (let ((_%e194035194055%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194034194052%_))))
                                  (let ((_%hd194036194058%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194035194055%_)))
                                        (_%tl194037194060%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194035194055%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194037194060%_))
                                        ((lambda (_%g194031194063%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g194031194063%_))
                                               (let ((_%$e194076%_
                                                      (let ((__tmp202822
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp202822 _%g194031194063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e194076%_
                                                     _%$e194076%_
                                                     (let ((_%marks194080%_
                                                            (##direct-structure-ref
                                                             _%g194031194063%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks194080%_)
                                                           (_%generate-simple194021%_
                                                            _%g194031194063%_)
                                                           (_%generate-serialized194022%_
                                                            _%g194031194063%_
                                                            _%marks194080%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g194031194063%_))))
                                         _%hd194036194058%_)
                                        (_%g194029194042%_
                                         _%g194030194045%_))))
                                (_%g194029194042%_ _%g194030194045%_))))
                        (_%g194029194042%_ _%g194030194045%_)))))
            (_%g194028194082%_ _%stx194017%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self193948%_ _%stx193949%_)
        (let* ((_%g193951193968%_
                (lambda (_%g193952193965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193952193965%_))))
               (_%g193950194013%_
                (lambda (_%g193952193971%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193952193971%_))
                      (let ((_%e193955193973%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193952193971%_))))
                        (let ((_%hd193956193976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193955193973%_)))
                              (_%tl193957193978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193955193973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193957193978%_))
                              (let ((_%e193958193981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193957193978%_))))
                                (let ((_%hd193959193984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193958193981%_)))
                                      (_%tl193960193986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193958193981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193960193986%_))
                                      (let ((_%e193961193989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193960193986%_))))
                                        (let ((_%hd193962193992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193961193989%_)))
                                              (_%tl193963193994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193961193989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193963193994%_))
                                              ((lambda (_%g193953193997%_
                                                        _%g193954193998%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g193954193998%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self193948%_
                              _%g193953193997%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd193962193992%_
                                               _%hd193959193984%_)
                                              (_%g193951193968%_
                                               _%g193952193971%_))))
                                      (_%g193951193968%_ _%g193952193971%_))))
                              (_%g193951193968%_ _%g193952193971%_))))
                      (_%g193951193968%_ _%g193952193971%_)))))
          (_%g193950194013%_ _%stx193949%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self193897%_ _%stx193898%_)
        (let* ((_%g193900193910%_
                (lambda (_%g193901193907%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193901193907%_))))
               (_%g193899193945%_
                (lambda (_%g193901193913%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193901193913%_))
                      (let ((_%e193903193915%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193901193913%_))))
                        (let ((_%hd193904193918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193903193915%_)))
                              (_%tl193905193920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193903193915%_))))
                          ((lambda (_%g193902193923%_)
                             (let* ((_%c-body193937%_
                                     (map (lambda (_%g193932193934%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self193897%_
                                               _%g193932193934%_)))
                                          _%g193902193923%_))
                                    (_%c-body193942%_
                                     (let ((__tmp202823
                                            (lambda (_%$obj193939%_)
                                              (not (eq? _%$obj193939%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp202823
                                        _%c-body193937%_))))
                               (cons '%#begin _%c-body193942%_)))
                           _%tl193905193920%_)))
                      (_%g193900193910%_ _%g193901193913%_)))))
          (_%g193899193945%_ _%stx193898%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self193802%_ _%stx193803%_)
        (let* ((_%g193805193815%_
                (lambda (_%g193806193812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193806193812%_))))
               (_%g193804193894%_
                (lambda (_%g193806193818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193806193818%_))
                      (let ((_%e193808193820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193806193818%_))))
                        (let ((_%hd193809193823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193808193820%_)))
                              (_%tl193810193825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193808193820%_))))
                          ((lambda (_%g193807193828%_)
                             (let* ((_%phi193838%_
                                     (let ((__tmp202824
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp202824 '1)))
                                    (_%block193840%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self193802%_ 'state))
                                      _%phi193838%_))
                                    (_%compiled193843%_
                                     (let ((__tmp202825
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self193802%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g193807193828%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp202825
                                        gx#current-expander-phi
                                        _%phi193838%_)))
                                    (_%g193846193856%_
                                     (lambda (_%g193847193853%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g193847193853%_))))
                                    (_%g193845193891%_
                                     (lambda (_%g193847193859%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g193847193859%_))
                                           (let ((_%e193849193861%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g193847193859%_))))
                                             (let ((_%hd193850193864%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e193849193861%_)))
                                                   (_%tl193851193866%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e193849193861%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd193850193864%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd193850193864%_))
                                                       ((lambda (_%g193848193869%_)
                                                          (let ((_%c-body193886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj193883%_)
                                   (not (eq? _%$obj193883%_ '#!void)))
                                 _%g193848193869%_)))
                    (if _%block193840%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block193840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body193886%_))
                        (if (null? _%c-body193886%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body193886%_)))))
                _%tl193851193866%_)
               (_%g193846193856%_ _%g193847193859%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g193846193856%_
                                                    _%g193847193859%_))))
                                           (_%g193846193856%_
                                            _%g193847193859%_)))))
                               (_%g193845193891%_ _%compiled193843%_)))
                           _%tl193810193825%_)))
                      (_%g193805193815%_ _%g193806193818%_)))))
          (_%g193804193894%_ _%stx193803%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self193733%_ _%stx193734%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193733%_ 'state)))
        (let* ((_%g193736193750%_
                (lambda (_%g193737193747%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193737193747%_))))
               (_%g193735193799%_
                (lambda (_%g193737193753%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193737193753%_))
                      (let ((_%e193740193755%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193737193753%_))))
                        (let ((_%hd193741193758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193740193755%_)))
                              (_%tl193742193760%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193740193755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193742193760%_))
                              (let ((_%e193743193763%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193742193760%_))))
                                (let ((_%hd193744193766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193743193763%_)))
                                      (_%tl193745193768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193743193763%_))))
                                  ((lambda (_%g193738193771%_
                                            _%g193739193772%_)
                                     (let ((_%key193785%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g193739193772%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key193785%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx193734%_
                                              _%g193739193772%_
                                              _%key193785%_)))
                                       (let* ((_%ctx193787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g193739193772%_)))
                                              (_%code193790%_
                                               (let ((__tmp202826
                                                      (lambda ()
                                                        (let ((__tmp202827
                                                               (##structure-ref
                                                                _%ctx193787%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self193733%_
                                                           __tmp202827)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp202826
                                                  gx#current-expander-context
                                                  _%ctx193787%_)))
                                              (_%rt193792%_
                                               (let ((__tmp202828
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp202828
                                                  _%ctx193787%_)))
                                              (_%loader193794%_
                                               (if _%rt193792%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt193792%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid193796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g193739193772%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193733%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid193796%_
                                                     (cons _%code193790%_
                                                           _%loader193794%_))))))
                                   _%tl193745193768%_
                                   _%hd193744193766%_)))
                              (_%g193736193750%_ _%g193737193753%_))))
                      (_%g193736193750%_ _%g193737193753%_)))))
          (_%g193735193799%_ _%stx193734%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx193720%_ _%context-chain193721%_)
        (let _%lp193723%_ ((_%ctx193725%_ _%ctx193720%_) (_%path193726%_ '()))
          (let ((_%super193728%_
                 (##structure-ref _%ctx193725%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super193728%_ _%context-chain193721%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx193725%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path193726%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super193728%_
                       'gx#module-context::t))
                    (_%lp193723%_
                     _%super193728%_
                     (cons (car (##structure-ref
                                 _%ctx193725%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path193726%_))
                    (cons (let ((__tmp202829
                                 (##structure-ref
                                  _%ctx193725%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp202829))
                          _%path193726%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp193713%_ ((_%ctx193715%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r193716%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx193715%_ 'gx#module-context::t))
              (_%lp193713%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx193715%_ '3 '#f '#f))
               (cons _%ctx193715%_ _%r193716%_))
              _%r193716%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self193478%_ _%stx193479%_)
        (letrec* ((_%context-chain193481%_ (gxc#current-context-chain))
                  (_%make-import-spec193482%_
                   (lambda (_%in193650%_)
                     (let* ((_%in193651193663%_ _%in193650%_)
                            (_%E193653193666%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in193651193663%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K193654193676%_
                             (lambda (_%phi193669%_
                                      _%name193670%_
                                      _%src-name193671%_
                                      _%src-phi193672%_
                                      _%src-key193673%_
                                      _%src-ctx193674%_)
                               (cons _%phi193669%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name193670%_))
                                           (cons _%src-phi193672%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name193671%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in193651193663%_
                              'gx#module-import::t))
                           (let ((_%e193655193679%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in193651193663%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e193655193679%_
                                    'gx#module-export::t))
                                 (let* ((_%e193658193682%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193655193679%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx193685%_ _%e193658193682%_)
                                        (_%e193659193687%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193655193679%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key193690%_ _%e193659193687%_)
                                        (_%e193660193692%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193655193679%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi193695%_ _%e193660193692%_)
                                        (_%e193661193697%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193655193679%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name193700%_ _%e193661193697%_)
                                        (_%e193656193702%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in193651193663%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name193705%_ _%e193656193702%_)
                                        (_%e193657193707%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in193651193663%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi193710%_ _%e193657193707%_))
                                   (_%K193654193676%_
                                    _%phi193710%_
                                    _%name193705%_
                                    _%src-name193700%_
                                    _%src-phi193695%_
                                    _%src-key193690%_
                                    _%src-ctx193685%_))
                                 (_%E193653193666%_)))
                           (_%E193653193666%_)))))
                  (_%make-import-path193483%_
                   (lambda (_%ctx193648%_)
                     (gxc#generate-meta-import-path
                      _%ctx193648%_
                      _%context-chain193481%_)))
                  (_%make-import-spec-in193484%_
                   (lambda (_%ctx193645%_ _%in193646%_)
                     (cons 'spec:
                           (cons (_%make-import-path193483%_ _%ctx193645%_)
                                 (reverse _%in193646%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self193478%_ 'state)))
          (let* ((_%g193486193496%_
                  (lambda (_%g193487193493%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193487193493%_))))
                 (_%g193485193642%_
                  (lambda (_%g193487193499%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193487193499%_))
                        (let ((_%e193489193501%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193487193499%_))))
                          (let ((_%hd193490193504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193489193501%_)))
                                (_%tl193491193506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193489193501%_))))
                            ((lambda (_%g193488193509%_)
                               (let _%lp193520%_ ((_%rest193522%_
                                                   _%g193488193509%_)
                                                  (_%current-src193523%_ '#f)
                                                  (_%current-in193524%_ '())
                                                  (_%r193525%_ '()))
                                 (let* ((_%rest193526193534%_ _%rest193522%_)
                                        (_%else193528193544%_
                                         (lambda ()
                                           (let ((_%r193542%_
                                                  (if _%current-src193523%_
                                                      (cons (_%make-import-spec-in193484%_
                                                             _%current-src193523%_
                                                             _%current-in193524%_)
                                                            _%r193525%_)
                                                      _%r193525%_)))
                                             (cons '%#import
                                                   (reverse _%r193542%_)))))
                                        (_%K193530193630%_
                                         (lambda (_%rest193547%_ _%in193548%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in193548%_
                                                  'gx#module-import::t))
                                               (let* ((_%in193550193557%_
                                                       _%in193548%_)
                                                      (_%E193552193560%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in193550193557%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K193553193568%_
               (lambda (_%src-ctx193563%_)
                 (if (eq? _%current-src193523%_ _%src-ctx193563%_)
                     (_%lp193520%_
                      _%rest193547%_
                      _%current-src193523%_
                      (cons (_%make-import-spec193482%_ _%in193548%_)
                            _%current-in193524%_)
                      _%r193525%_)
                     (if _%current-src193523%_
                         (_%lp193520%_
                          _%rest193547%_
                          _%src-ctx193563%_
                          (cons (_%make-import-spec193482%_ _%in193548%_) '())
                          (cons (_%make-import-spec-in193484%_
                                 _%current-src193523%_
                                 _%current-in193524%_)
                                _%r193525%_))
                         (_%lp193520%_
                          _%rest193547%_
                          _%src-ctx193563%_
                          (cons (_%make-import-spec193482%_ _%in193548%_) '())
                          _%r193525%_)))))
              (_%e193554193571%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in193550193557%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e193554193571%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e193555193574%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e193554193571%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx193577%_ _%e193555193574%_))
               (_%K193553193568%_ _%src-ctx193577%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E193552193560%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in193548%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi193580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in193548%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src193582%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in193548%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in193622%_
                                                           (let* ((_%g193583193592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path193483%_ _%src193582%_))
                          (_%E193586193596%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g193583193592%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K193588193612%_
                            (lambda (_%path193610%_) _%path193610%_))
                           (_%K193587193602%_
                            (lambda (_%path193600%_)
                              (cons 'in: _%path193600%_))))
                       (if (pair? _%g193583193592%_)
                           (let ((_%tl193590193617%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g193583193592%_)))
                                 (_%hd193589193615%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g193583193592%_))))
                             (if (null? _%tl193590193617%_)
                                 (let ((_%path193620%_ _%hd193589193615%_))
                                   (_%K193588193612%_ _%path193620%_))
                                 (let ((_%path193605%_ _%g193583193592%_))
                                   (_%K193587193602%_ _%path193605%_))))
                           (let ((_%path193605%_ _%g193583193592%_))
                             (_%K193587193602%_ _%path193605%_))))))
                  (_%r193624%_
                   (if _%current-src193523%_
                       (cons (_%make-import-spec-in193484%_
                              _%current-src193523%_
                              _%current-in193524%_)
                             _%r193525%_)
                       _%r193525%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp193520%_
                                                      _%rest193547%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi193580%_)
                                                                _%src-in193622%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi193580%_
                                    (cons _%src-in193622%_ '()))))
                    _%r193624%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in193548%_
                                                          'gx#module-context::t))
                                                       (let ((_%r193628%_
                                                              (if _%current-src193523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in193484%_
                                 _%current-src193523%_
                                 _%current-in193524%_)
                                _%r193525%_)
                          _%r193525%_)))
                 (_%lp193520%_
                  _%rest193547%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path193483%_ _%in193548%_))
                        _%r193628%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest193526193534%_)
                                       (let ((_%hd193531193633%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest193526193534%_)))
                                             (_%tl193532193635%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest193526193534%_))))
                                         (let* ((_%in193638%_
                                                 _%hd193531193633%_)
                                                (_%rest193640%_
                                                 _%tl193532193635%_))
                                           (_%K193530193630%_
                                            _%rest193640%_
                                            _%in193638%_)))
                                       (_%else193528193544%_)))))
                             _%tl193491193506%_)))
                        (_%g193486193496%_ _%g193487193499%_)))))
            (_%g193485193642%_ _%stx193479%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self193288%_ _%stx193289%_)
        (letrec* ((_%context-chain193291%_ (gxc#current-context-chain))
                  (_%make-import-path193292%_
                   (lambda (_%ctx193476%_)
                     (gxc#generate-meta-import-path
                      _%ctx193476%_
                      _%context-chain193291%_))))
          (let* ((_%g193294193304%_
                  (lambda (_%g193295193301%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193295193301%_))))
                 (_%g193293193473%_
                  (lambda (_%g193295193307%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193295193307%_))
                        (let ((_%e193297193309%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193295193307%_))))
                          (let ((_%hd193298193312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193297193309%_)))
                                (_%tl193299193314%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193297193309%_))))
                            ((lambda (_%g193296193317%_)
                               (let _%lp193328%_ ((_%rest193330%_
                                                   _%g193296193317%_)
                                                  (_%r193331%_ '()))
                                 (let* ((_%rest193332193340%_ _%rest193330%_)
                                        (_%else193334193348%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r193331%_))))
                                        (_%K193336193461%_
                                         (lambda (_%rest193351%_ _%out193352%_)
                                           (let* ((_%out193353193366%_
                                                   _%out193352%_)
                                                  (_%E193356193370%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out193353193366%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K193360193440%_
                                                    (lambda (_%name193436%_
                                                             _%phi193437%_
                                                             _%key193438%_)
                                                      (_%lp193328%_
                                                       _%rest193351%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi193437%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key193438%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name193436%_))
                                             '()))))
                     _%r193331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K193357193420%_
                                                    (lambda (_%phi193374%_
                                                             _%src193375%_)
                                                      (let* ((_%out193415%_
                                                              (if _%src193375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g193376193385%_
                                              (_%make-import-path193292%_
                                               _%src193375%_))
                                             (_%E193379193389%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g193376193385%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K193381193405%_
                                               (lambda (_%path193403%_)
                                                 _%path193403%_))
                                              (_%K193380193395%_
                                               (lambda (_%path193393%_)
                                                 (cons 'in: _%path193393%_))))
                                          (if (pair? _%g193376193385%_)
                                              (let ((_%tl193383193410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g193376193385%_)))
                                                    (_%hd193382193408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g193376193385%_))))
                                                (if (null? _%tl193383193410%_)
                                                    (let ((_%path193413%_
                                                           _%hd193382193408%_))
                                                      (_%K193381193405%_
                                                       _%path193413%_))
                                                    (let ((_%path193398%_
                                                           _%g193376193385%_))
                                                      (_%K193380193395%_
                                                       _%path193398%_))))
                                              (let ((_%path193398%_
                                                     _%g193376193385%_))
                                                (_%K193380193395%_
                                                 _%path193398%_)))))
                                      '()))
                          '#t))
                     (_%out193417%_
                      (if (fxzero? _%phi193374%_)
                          _%out193415%_
                          (cons 'phi:
                                (cons _%phi193374%_
                                      (cons _%out193415%_ '()))))))
                (_%lp193328%_
                 _%rest193351%_
                 (cons _%out193417%_ _%r193331%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match193355193433%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out193353193366%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e193358193423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out193353193366%_
                               '1
                               '#f
                               '#f)))
                           (_%e193359193428%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out193353193366%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src193426%_ _%e193358193423%_)
                            (_%phi193431%_ _%e193359193428%_))
                        (_%K193357193420%_ _%phi193431%_ _%src193426%_)))
                    (_%E193356193370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out193353193366%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e193361193443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out193353193366%_
                        '1
                        '#f
                        '#f)))
                    (_%e193362193446%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193353193366%_
                        '2
                        '#f
                        '#f)))
                    (_%e193363193451%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193353193366%_
                        '3
                        '#f
                        '#f)))
                    (_%e193364193456%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193353193366%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key193449%_ _%e193362193446%_)
                     (_%phi193454%_ _%e193363193451%_)
                     (_%name193459%_ _%e193364193456%_))
                 (_%K193360193440%_
                  _%name193459%_
                  _%phi193454%_
                  _%key193449%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match193355193433%_))))))))
                                   (if (pair? _%rest193332193340%_)
                                       (let ((_%hd193337193464%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest193332193340%_)))
                                             (_%tl193338193466%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest193332193340%_))))
                                         (let* ((_%out193469%_
                                                 _%hd193337193464%_)
                                                (_%rest193471%_
                                                 _%tl193338193466%_))
                                           (_%K193336193461%_
                                            _%rest193471%_
                                            _%out193469%_)))
                                       (_%else193334193348%_)))))
                             _%tl193299193314%_)))
                        (_%g193294193304%_ _%g193295193307%_)))))
            (_%g193293193473%_ _%stx193289%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self193249%_ _%stx193250%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193249%_ 'state)))
        (let* ((_%g193252193262%_
                (lambda (_%g193253193259%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193253193259%_))))
               (_%g193251193285%_
                (lambda (_%g193253193265%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193253193265%_))
                      (let ((_%e193255193267%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193253193265%_))))
                        (let ((_%hd193256193270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193255193267%_)))
                              (_%tl193257193272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193255193267%_))))
                          ((lambda (_%g193254193275%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g193254193275%_)))
                           _%tl193257193272%_)))
                      (_%g193252193262%_ _%g193253193265%_)))))
          (_%g193251193285%_ _%stx193250%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self193124%_ _%stx193125%_)
        (letrec ((_%generate1193127%_
                  (lambda (_%id193244%_ _%eid193245%_)
                    (let ((_%eid193247%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid193245%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid193247%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx193125%_
                             _%eid193247%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id193244%_))
                            (cons _%eid193247%_ '()))))))
          (let* ((_%g193129193157%_
                  (lambda (_%g193130193154%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193130193154%_))))
                 (_%g193128193241%_
                  (lambda (_%g193130193160%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193130193160%_))
                        (let ((_%e193133193162%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193130193160%_))))
                          (let ((_%hd193134193165%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193133193162%_)))
                                (_%tl193135193167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193133193162%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl193135193167%_))
                                (let ((_g202830_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl193135193167%_
                                          '0))))
                                  (begin
                                    (let ((_g202831_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g202830_)
                                                 (##values-length _g202830_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g202831_ 2)))
                                          (error "Context expects 2 values"
                                                 _g202831_)))
                                    (let ((_%target193136193170%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202830_ 0)))
                                          (_%tl193138193172%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202830_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193138193172%_))
                                          (letrec ((_%loop193139193175%_
                                                    (lambda (_%hd193137193178%_
                                                             _%eid193143193180%_
                                                             _%id193144193181%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193137193178%_))
                                                          (let ((_%e193140193183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193137193178%_))))
                    (let ((_%lp-hd193141193186%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193140193183%_)))
                          (_%lp-tl193142193188%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193140193183%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd193141193186%_))
                          (let ((_%e193147193191%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd193141193186%_))))
                            (let ((_%hd193148193194%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193147193191%_)))
                                  (_%tl193149193196%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193147193191%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193149193196%_))
                                  (let ((_%e193150193199%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193149193196%_))))
                                    (let ((_%hd193151193202%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193150193199%_)))
                                          (_%tl193152193204%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193150193199%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193152193204%_))
                                          (_%loop193139193175%_
                                           _%lp-tl193142193188%_
                                           (cons _%hd193151193202%_
                                                 _%eid193143193180%_)
                                           (cons _%hd193148193194%_
                                                 _%id193144193181%_))
                                          (_%g193129193157%_
                                           _%g193130193160%_))))
                                  (_%g193129193157%_ _%g193130193160%_))))
                          (_%g193129193157%_ _%g193130193160%_))))
                  (let ((_%eid193145193207%_ (reverse _%eid193143193180%_))
                        (_%id193146193208%_ (reverse _%id193144193181%_)))
                    ((lambda (_%g193131193210%_ _%g193132193211%_)
                       (cons '%#extern
                             (map _%generate1193127%_
                                  (let ((__tmp202832
                                         (lambda (_%g193226193229%_
                                                  _%g193227193231%_)
                                           (cons _%g193226193229%_
                                                 _%g193227193231%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp202832
                                     '()
                                     _%g193132193211%_))
                                  (let ((__tmp202833
                                         (lambda (_%g193233193236%_
                                                  _%g193234193238%_)
                                           (cons _%g193233193236%_
                                                 _%g193234193238%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp202833
                                     '()
                                     _%g193131193210%_)))))
                     _%eid193145193207%_
                     _%id193146193208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop193139193175%_
                                             _%target193136193170%_
                                             '()
                                             '()))
                                          (_%g193129193157%_
                                           _%g193130193160%_)))))
                                (_%g193129193157%_ _%g193130193160%_))))
                        (_%g193129193157%_ _%g193130193160%_)))))
            (_%g193128193241%_ _%stx193125%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self192913%_ _%stx192914%_)
        (letrec ((_%generate1192916%_
                  (lambda (_%id193118%_)
                    (let ((_%eid193120%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id193118%_)))
                          (_%ident193121%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id193118%_)))
                          (_%props193122%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id193118%_))))
                      (cons '%#define-runtime
                            (cons _%ident193121%_
                                  (cons _%eid193120%_ _%props193122%_))))))
                 (_%generate*192917%_
                  (lambda (_%all193086%_)
                    (let* ((_%all193087193095%_ _%all193086%_)
                           (_%else193089193103%_
                            (lambda () (cons '%#begin _%all193086%_)))
                           (_%K193091193108%_
                            (lambda (_%one193106%_) _%one193106%_)))
                      (if (pair? _%all193087193095%_)
                          (let ((_%hd193092193111%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all193087193095%_)))
                                (_%tl193093193113%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all193087193095%_))))
                            (let ((_%one193116%_ _%hd193092193111%_))
                              (if (null? _%tl193093193113%_)
                                  (_%K193091193108%_ _%one193116%_)
                                  (_%else193089193103%_))))
                          (_%else193089193103%_))))))
          (let* ((_%g192919192936%_
                  (lambda (_%g192920192933%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g192920192933%_))))
                 (_%g192918193083%_
                  (lambda (_%g192920192939%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g192920192939%_))
                        (let ((_%e192923192941%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g192920192939%_))))
                          (let ((_%hd192924192944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192923192941%_)))
                                (_%tl192925192946%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192923192941%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl192925192946%_))
                                (let ((_%e192926192949%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl192925192946%_))))
                                  (let ((_%hd192927192952%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192926192949%_)))
                                        (_%tl192928192954%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192926192949%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl192928192954%_))
                                        (let ((_%e192929192957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl192928192954%_))))
                                          (let ((_%hd192930192960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192929192957%_)))
                                                (_%tl192931192962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192929192957%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192931192962%_))
                                                ((lambda (_%g192921192965%_
                                                          _%g192922192966%_)
                                                   (let _%lp192982%_ ((_%rest192984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g192922192966%_)
                              (_%r192985%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx202568202569%_
                                                             _%rest192984%_)
                                                            (_%g192990193007%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx202568202569%_)))))
               (let ((_%__kont202570202571%_
                      (lambda (_%g192992193070%_)
                        (_%lp192982%_ _%g192992193070%_ _%r192985%_)))
                     (_%__kont202572202573%_
                      (lambda (_%g192997193043%_ _%g192998193044%_)
                        (_%lp192982%_
                         _%g192997193043%_
                         (cons (_%generate1192916%_ _%g192998193044%_)
                               _%r192985%_))))
                     (_%__kont202574202575%_
                      (lambda (_%g193002193019%_)
                        (_%generate*192917%_
                         (let ((__tmp202834
                                (cons (_%generate1192916%_ _%g193002193019%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp202834 _%r192985%_)))))
                     (_%__kont202576202577%_
                      (lambda ()
                        (_%generate*192917%_ (reverse! _%r192985%_)))))
                 (let ((_%g192988193030%_
                        (lambda ()
                          (let ((_%g193002193019%_ _%__stx202568202569%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g193002193019%_))
                                (_%__kont202574202575%_ _%g193002193019%_)
                                (_%__kont202576202577%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx202568202569%_))
                       (let ((_%e192993193059%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx202568202569%_))))
                         (let ((_%tl192995193064%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e192993193059%_)))
                               (_%hd192994193062%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e192993193059%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd192994193062%_))
                               (let ((_%e192996193067%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd192994193062%_))))
                                 (if (equal? _%e192996193067%_ '#f)
                                     (_%__kont202570202571%_
                                      _%tl192995193064%_)
                                     (_%__kont202572202573%_
                                      _%tl192995193064%_
                                      _%hd192994193062%_)))
                               (_%__kont202572202573%_
                                _%tl192995193064%_
                                _%hd192994193062%_))))
                       (let () (declare (not safe)) (_%g192988193030%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd192930192960%_
                                                 _%hd192927192952%_)
                                                (_%g192919192936%_
                                                 _%g192920192939%_))))
                                        (_%g192919192936%_
                                         _%g192920192939%_))))
                                (_%g192919192936%_ _%g192920192939%_))))
                        (_%g192919192936%_ _%g192920192939%_)))))
            (_%g192918193083%_ _%stx192914%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self192810%_ _%stx192811%_)
        (let* ((_%g192813192830%_
                (lambda (_%g192814192827%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192814192827%_))))
               (_%g192812192910%_
                (lambda (_%g192814192833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192814192833%_))
                      (let ((_%e192817192835%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192814192833%_))))
                        (let ((_%hd192818192838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192817192835%_)))
                              (_%tl192819192840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192817192835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192819192840%_))
                              (let ((_%e192820192843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192819192840%_))))
                                (let ((_%hd192821192846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192820192843%_)))
                                      (_%tl192822192848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192820192843%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192822192848%_))
                                      (let ((_%e192823192851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192822192848%_))))
                                        (let ((_%hd192824192854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192823192851%_)))
                                              (_%tl192825192856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192823192851%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192825192856%_))
                                              ((lambda (_%g192815192859%_
                                                        _%g192816192860%_)
                                                 (let* ((_%eid192875%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g192816192860%_)))
                                                        (_%phi192877%_
                                                         (let ((__tmp202835
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp202835 '1)))
                (_%block192879%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self192810%_ 'state))
                  _%phi192877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g192882192889%_
                                                           (lambda (_%g192883192886%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g192883192886%_))))
                  (_%g192881192907%_
                   (lambda (_%g192883192892%_)
                     ((lambda (_%g192884192894%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self192810%_ 'state))
                         _%phi192877%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g192884192894%_
                                     (cons _%g192815192859%_ '())))))
                      _%g192883192892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g192881192907%_
                                                      _%eid192875%_))
                                                   (if _%block192879%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block192879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g192816192860%_))
                                             (cons _%eid192875%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g192816192860%_))
                           (cons _%eid192875%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd192824192854%_
                                               _%hd192821192846%_)
                                              (_%g192813192830%_
                                               _%g192814192833%_))))
                                      (_%g192813192830%_ _%g192814192833%_))))
                              (_%g192813192830%_ _%g192814192833%_))))
                      (_%g192813192830%_ _%g192814192833%_)))))
          (_%g192812192910%_ _%stx192811%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self192742%_ _%stx192743%_)
        (let* ((_%g192745192762%_
                (lambda (_%g192746192759%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192746192759%_))))
               (_%g192744192807%_
                (lambda (_%g192746192765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192746192765%_))
                      (let ((_%e192749192767%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192746192765%_))))
                        (let ((_%hd192750192770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192749192767%_)))
                              (_%tl192751192772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192749192767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192751192772%_))
                              (let ((_%e192752192775%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192751192772%_))))
                                (let ((_%hd192753192778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192752192775%_)))
                                      (_%tl192754192780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192752192775%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192754192780%_))
                                      (let ((_%e192755192783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192754192780%_))))
                                        (let ((_%hd192756192786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192755192783%_)))
                                              (_%tl192757192788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192755192783%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192757192788%_))
                                              ((lambda (_%g192747192791%_
                                                        _%g192748192792%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g192748192792%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g192747192791%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd192756192786%_
                                               _%hd192753192778%_)
                                              (_%g192745192762%_
                                               _%g192746192765%_))))
                                      (_%g192745192762%_ _%g192746192765%_))))
                              (_%g192745192762%_ _%g192746192765%_))))
                      (_%g192745192762%_ _%g192746192765%_)))))
          (_%g192744192807%_ _%stx192743%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self192739%_ _%stx192740%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self192739%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx192740%_)
        (gxc#generate-meta-define-values% _%self192739%_ _%stx192740%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self192736%_ _%stx192737%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self192736%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx192737%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp202837 (list)) (__tmp202836 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp202837
         '(src n open blocks)
         __tmp202836
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args192733%_
        (apply make-instance gxc#meta-state::t _%$args192733%_)))
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
      (lambda (_%self192719%_ _%ctx192720%_)
        (let ((_%self192723%_ _%self192719%_))
          (if (let ((__tmp202838
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self192723%_))))
                (declare (not safe))
                (##fx< '4 __tmp202838))
              (begin
                (let ((__tmp202839
                       (let ((__tmp202840
                              (##structure-ref
                               _%ctx192720%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp202840))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self192723%_
                   __tmp202839
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self192723%_ '1 '2 '#f '#f))
                (let ((__tmp202841
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self192723%_
                   __tmp202841
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self192723%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp202842
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self192723%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self192723%_
                       '4
                       __tmp202842))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp202844 (list)) (__tmp202843 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp202844
         '(ctx phi n code)
         __tmp202843
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args192594%_
        (apply make-instance gxc#meta-state-block::t _%$args192594%_)))
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
      (lambda (_%state192554%_ _%phi192555%_)
        (let* ((_%state192556192564%_ _%state192554%_)
               (_%E192558192567%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state192556192564%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K192559192576%_
                (lambda (_%open192570%_ _%n192571%_ _%src192572%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open192570%_ _%phi192555%_))
                      '#f
                      (let ((_%block-ref192574%_
                             (let ((__tmp202845 (number->string _%n192571%_)))
                               (declare (not safe))
                               (##string-append
                                _%src192572%_
                                '"~"
                                __tmp202845))))
                        (##structure-set!
                         _%state192554%_
                         (let () (declare (not safe)) (##fx+ _%n192571%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp202846
                               (let ((__tmp202847
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp202847
                                  _%phi192555%_
                                  _%n192571%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open192570%_ _%phi192555%_ __tmp202846))
                        _%block-ref192574%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state192556192564%_
                 'gxc#meta-state::t))
              (let* ((_%e192560192579%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192556192564%_
                         '1
                         '#f
                         '#f)))
                     (_%src192582%_ _%e192560192579%_)
                     (_%e192561192584%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192556192564%_
                         '2
                         '#f
                         '#f)))
                     (_%n192587%_ _%e192561192584%_)
                     (_%e192562192589%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192556192564%_
                         '3
                         '#f
                         '#f)))
                     (_%open192592%_ _%e192562192589%_))
                (_%K192559192576%_ _%open192592%_ _%n192587%_ _%src192582%_))
              (_%E192558192567%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state192548%_ _%phi192549%_ _%stx192550%_)
        (let ((_%block192552%_
               (let ((__tmp202848
                      (##structure-ref
                       _%state192548%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp202848 _%phi192549%_))))
          (##structure-set!
           _%block192552%_
           (cons _%stx192550%_
                 (##structure-ref
                  _%block192552%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state192542%_)
        (##structure-set!
         _%state192542%_
         (let ((__tmp202851
                (lambda (_%_192544%_ _%block192545%_ _%r192546%_)
                  (cons _%block192545%_ _%r192546%_)))
               (__tmp202850
                (##structure-ref _%state192542%_ '4 gxc#meta-state::t '#f))
               (__tmp202849
                (##structure-ref _%state192542%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp202851 __tmp202850 __tmp202849))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state192542%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state192495%_)
        (gxc#meta-state-end-phi! _%state192495%_)
        (let ((__tmp202853
               (lambda (_%block192497%_ _%r192498%_)
                 (let* ((_%block192499192508%_ _%block192497%_)
                        (_%E192501192511%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block192499192508%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K192502192519%_
                         (lambda (_%code192514%_
                                  _%n192515%_
                                  _%phi192516%_
                                  _%ctx192517%_)
                           (if (null? _%code192514%_)
                               _%r192498%_
                               (cons (cons _%ctx192517%_
                                           (cons _%phi192516%_
                                                 (cons _%n192515%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code192514%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r192498%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block192499192508%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e192503192522%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192499192508%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx192525%_ _%e192503192522%_)
                              (_%e192504192527%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192499192508%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi192530%_ _%e192504192527%_)
                              (_%e192505192532%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192499192508%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n192535%_ _%e192505192532%_)
                              (_%e192506192537%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192499192508%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code192540%_ _%e192506192537%_))
                         (_%K192502192519%_
                          _%code192540%_
                          _%n192535%_
                          _%phi192530%_
                          _%ctx192525%_))
                       (_%E192501192511%_)))))
              (__tmp202852
               (##structure-ref _%state192495%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp202853 '() __tmp202852))))
    (define gxc#collect-expression-refs
      (lambda (_%stx192491%_)
        (let ((_%ht192493%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht192493%_ _%stx192491%_)
          _%ht192493%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self192434%_ _%stx192435%_)
        (let* ((_%g192437192450%_
                (lambda (_%g192438192447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192438192447%_))))
               (_%g192436192488%_
                (lambda (_%g192438192453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192438192453%_))
                      (let ((_%e192440192455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192438192453%_))))
                        (let ((_%hd192441192458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192440192455%_)))
                              (_%tl192442192460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192440192455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192442192460%_))
                              (let ((_%e192443192463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192442192460%_))))
                                (let ((_%hd192444192466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192443192463%_)))
                                      (_%tl192445192468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192443192463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192445192468%_))
                                      ((lambda (_%g192439192471%_)
                                         (let* ((_%bind192483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g192439192471%_)))
                                                (_%eid192485%_
                                                 (if _%bind192483%_
                                                     (##structure-ref
                                                      _%bind192483%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g192439192471%_))))
                                                (__tmp202854
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self192434%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp202854
                                            _%eid192485%_
                                            _%eid192485%_)))
                                       _%hd192444192466%_)
                                      (_%g192437192450%_ _%g192438192453%_))))
                              (_%g192437192450%_ _%g192438192453%_))))
                      (_%g192437192450%_ _%g192438192453%_)))))
          (_%g192436192488%_ _%stx192435%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self192361%_ _%stx192362%_)
        (let* ((_%g192364192381%_
                (lambda (_%g192365192378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192365192378%_))))
               (_%g192363192431%_
                (lambda (_%g192365192384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192365192384%_))
                      (let ((_%e192368192386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192365192384%_))))
                        (let ((_%hd192369192389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192368192386%_)))
                              (_%tl192370192391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192368192386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192370192391%_))
                              (let ((_%e192371192394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192370192391%_))))
                                (let ((_%hd192372192397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192371192394%_)))
                                      (_%tl192373192399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192371192394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192373192399%_))
                                      (let ((_%e192374192402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192373192399%_))))
                                        (let ((_%hd192375192405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192374192402%_)))
                                              (_%tl192376192407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192374192402%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192376192407%_))
                                              ((lambda (_%g192366192410%_
                                                        _%g192367192411%_)
                                                 (let* ((_%bind192426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g192367192411%_)))
                                                        (_%eid192428%_
                                                         (if _%bind192426%_
                                                             (##structure-ref
                                                              _%bind192426%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g192367192411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp202855
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self192361%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp202855
                                                      _%eid192428%_
                                                      _%eid192428%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self192361%_
                                                      _%g192366192410%_))))
                                               _%hd192375192405%_
                                               _%hd192372192397%_)
                                              (_%g192364192381%_
                                               _%g192365192384%_))))
                                      (_%g192364192381%_ _%g192365192384%_))))
                              (_%g192364192381%_ _%g192365192384%_))))
                      (_%g192364192381%_ _%g192365192384%_)))))
          (_%g192363192431%_ _%stx192362%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self192318%_ _%stx192319%_)
        (let* ((_%g192321192331%_
                (lambda (_%g192322192328%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192322192328%_))))
               (_%g192320192358%_
                (lambda (_%g192322192334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192322192334%_))
                      (let ((_%e192324192336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192322192334%_))))
                        (let ((_%hd192325192339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192324192336%_)))
                              (_%tl192326192341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192324192336%_))))
                          ((lambda (_%g192323192344%_)
                             (let ((__tmp202856
                                    (lambda (_%g192353192355%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self192318%_
                                         _%g192353192355%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp202856 _%g192323192344%_)))
                           _%tl192326192341%_)))
                      (_%g192321192331%_ _%g192322192334%_)))))
          (_%g192320192358%_ _%stx192319%_))))
    (define gxc#count-values-single%
      (lambda (_%self192315%_ _%stx192316%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self192183%_ _%stx192184%_)
        (let* ((_%__stx202598202599%_ _%stx192184%_)
               (_%g192187192216%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202598202599%_)))))
          (let ((_%__kont202600202601%_
                 (lambda (_%g192189192282%_ _%g192190192283%_)
                   (length (let ((__tmp202857
                                  (lambda (_%g192304192307%_ _%g192305192309%_)
                                    (cons _%g192304192307%_
                                          _%g192305192309%_))))
                             (declare (not safe))
                             (foldr__0 __tmp202857 '() _%g192189192282%_)))))
                (_%__kont202604202605%_ (lambda () '#f)))
            (let ((_%__match202643202644%_
                   (lambda (_%e192191192228%_
                            _%hd192192192231%_
                            _%tl192193192233%_
                            _%e192194192236%_
                            _%hd192195192239%_
                            _%tl192196192241%_
                            _%e192197192244%_
                            _%hd192198192247%_
                            _%tl192199192249%_
                            _%e192200192252%_
                            _%hd192201192255%_
                            _%tl192202192257%_
                            _%__splice202602202603%_
                            _%target192203192260%_
                            _%tl192205192262%_)
                     (letrec ((_%loop192206192265%_
                               (lambda (_%hd192204192268%_
                                        _%rand192210192270%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd192204192268%_))
                                     (let ((_%e192207192272%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd192204192268%_))))
                                       (let ((_%lp-tl192209192277%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e192207192272%_)))
                                             (_%lp-hd192208192275%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e192207192272%_))))
                                         (_%loop192206192265%_
                                          _%lp-tl192209192277%_
                                          (cons _%lp-hd192208192275%_
                                                _%rand192210192270%_))))
                                     (let ((_%rand192211192280%_
                                            (reverse _%rand192210192270%_)))
                                       (let ((_%g192189192282%_
                                              _%rand192211192280%_)
                                             (_%g192190192283%_
                                              _%hd192201192255%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g192190192283%_
                                                'values))
                                             (_%__kont202600202601%_
                                              _%g192189192282%_
                                              _%g192190192283%_)
                                             (_%__kont202604202605%_))))))))
                       (_%loop192206192265%_ _%target192203192260%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202598202599%_))
                  (let ((_%e192191192228%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx202598202599%_))))
                    (let ((_%tl192193192233%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192191192228%_)))
                          (_%hd192192192231%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192191192228%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192193192233%_))
                          (let ((_%e192194192236%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192193192233%_))))
                            (let ((_%tl192196192241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192194192236%_)))
                                  (_%hd192195192239%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192194192236%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192195192239%_))
                                  (let ((_%e192197192244%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192195192239%_))))
                                    (let ((_%tl192199192249%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192197192244%_)))
                                          (_%hd192198192247%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192197192244%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192198192247%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192198192247%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192199192249%_))
                                                  (let ((_%e192200192252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192199192249%_))))
                                                    (let ((_%tl192202192257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192200192252%_)))
                                                          (_%hd192201192255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192200192252%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192202192257%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl192196192241%_))
                      (let ((_%__splice202602202603%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl192196192241%_
                                '0))))
                        (let ((_%tl192205192262%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202602202603%_ '1)))
                              (_%target192203192260%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202602202603%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192205192262%_))
                              (_%__match202643202644%_
                               _%e192191192228%_
                               _%hd192192192231%_
                               _%tl192193192233%_
                               _%e192194192236%_
                               _%hd192195192239%_
                               _%tl192196192241%_
                               _%e192197192244%_
                               _%hd192198192247%_
                               _%tl192199192249%_
                               _%e192200192252%_
                               _%hd192201192255%_
                               _%tl192202192257%_
                               _%__splice202602202603%_
                               _%target192203192260%_
                               _%tl192205192262%_)
                              (_%__kont202604202605%_))))
                      (_%__kont202604202605%_))
                  (_%__kont202604202605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202604202605%_))
                                              (_%__kont202604202605%_))
                                          (_%__kont202604202605%_))))
                                  (_%__kont202604202605%_))))
                          (_%__kont202604202605%_))))
                  (_%__kont202604202605%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self192088%_ _%stx192089%_)
        (let* ((_%g192091192112%_
                (lambda (_%g192092192109%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192092192109%_))))
               (_%g192090192180%_
                (lambda (_%g192092192115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192092192115%_))
                      (let ((_%e192096192117%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192092192115%_))))
                        (let ((_%hd192097192120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192096192117%_)))
                              (_%tl192098192122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192096192117%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192098192122%_))
                              (let ((_%e192099192125%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192098192122%_))))
                                (let ((_%hd192100192128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192099192125%_)))
                                      (_%tl192101192130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192099192125%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192101192130%_))
                                      (let ((_%e192102192133%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192101192130%_))))
                                        (let ((_%hd192103192136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192102192133%_)))
                                              (_%tl192104192138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192102192133%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192104192138%_))
                                              (let ((_%e192105192141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192104192138%_))))
                                                (let ((_%hd192106192144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192105192141%_)))
                                                      (_%tl192107192146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192105192141%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192107192146%_))
                                                      ((lambda (_%g192093192149%_
                                                                _%g192094192150%_
                                                                _%g192095192151%_)
                                                         (let ((_%c1192168192170%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self192088%_
                           _%g192094192150%_))))
                   (if _%c1192168192170%_
                       (let* ((_%c1192172%_ _%c1192168192170%_)
                              (_%c2192173192175%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self192088%_
                                  _%g192093192149%_))))
                         (if _%c2192173192175%_
                             (let ((_%c2192177%_ _%c2192173192175%_))
                               (if (fx= _%c1192172%_ _%c2192177%_)
                                   _%c1192172%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd192106192144%_
               _%hd192103192136%_
               _%hd192100192128%_)
              (_%g192091192112%_ _%g192092192115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g192091192112%_
                                               _%g192092192115%_))))
                                      (_%g192091192112%_ _%g192092192115%_))))
                              (_%g192091192112%_ _%g192092192115%_))))
                      (_%g192091192112%_ _%g192092192115%_)))))
          (_%g192090192180%_ _%stx192089%_))))))
