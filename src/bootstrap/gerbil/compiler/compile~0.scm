(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1771093450)
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
      (let ((__tmp205730 (list gxc#::void::t))
            (__tmp205729 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp205730
         '()
         __tmp205729
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args204344%_
        (apply make-instance gxc#::collect-bindings::t _%$args204344%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp205731
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
        (__make-atomic-promise __tmp205731)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx204336%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self204339%_
                (let ((__obj205705
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj205705))
               (__tmp205732
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204339%_ _%stx204336%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205732
           gxc#current-compile-method
           _%self204339%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp205734 (list gxc#::void::t))
            (__tmp205733 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp205734
         '(modules)
         __tmp205733
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args204333%_
        (apply make-instance gxc#::lift-modules::t _%$args204333%_)))
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
      (let ((__tmp205735
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
        (__make-atomic-promise __tmp205735)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords204308%_ _%modules204305204309%_ _%stx204310%_)
        (let ((_%modules204313%_
               (if (eq? _%modules204305204309%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules204305204309%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self204315%_
                  (let ((__obj205707
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205707
                       _%modules204313%_
                       '1
                       '#f
                       '#f))
                    __obj205707))
                 (__tmp205736
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204315%_ _%stx204310%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205736
             gxc#current-compile-method
             _%self204315%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords204322%_ . _%args204323%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords204322%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204322%_
                  'modules:
                  absent-value))
               _%args204323%_)))
    (define gxc#apply-lift-modules
      (lambda _%args204306204329%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args204306204329%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp205738 (list)) (__tmp205737 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp205738
         '()
         __tmp205737
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args204301%_
        (apply make-instance gxc#::find-runtime-code::t _%$args204301%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp205739
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
        (__make-atomic-promise __tmp205739)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx204293%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self204296%_
                (let ((__obj205709
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj205709))
               (__tmp205740
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204296%_ _%stx204293%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205740
           gxc#current-compile-method
           _%self204296%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp205742 (list gxc#::false::t))
            (__tmp205741 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp205742
         '()
         __tmp205741
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args204290%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args204290%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp205743
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
        (__make-atomic-promise __tmp205743)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx204282%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self204285%_
                (let ((__obj205711
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj205711))
               (__tmp205744
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204285%_ _%stx204282%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205744
           gxc#current-compile-method
           _%self204285%_))))
    (define gxc#::count-values::t
      (let ((__tmp205746 (list gxc#::false-expression::t))
            (__tmp205745 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp205746
         '()
         __tmp205745
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args204279%_
        (apply make-instance gxc#::count-values::t _%$args204279%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp205747
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
        (__make-atomic-promise __tmp205747)))
    (define gxc#apply-count-values
      (lambda (_%stx204271%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self204274%_
                (let ((__obj205713
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj205713))
               (__tmp205748
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204274%_ _%stx204271%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205748
           gxc#current-compile-method
           _%self204274%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp205749 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp205749
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args204268%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args204268%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp205750
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
        (__make-atomic-promise __tmp205750)))
    (define gxc#::generate-loader::t
      (let ((__tmp205752 (list gxc#::generate-runtime-empty::t))
            (__tmp205751 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp205752
         '()
         __tmp205751
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args204264%_
        (apply make-instance gxc#::generate-loader::t _%$args204264%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp205753
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
        (__make-atomic-promise __tmp205753)))
    (define gxc#apply-generate-loader
      (lambda (_%stx204256%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self204259%_
                (let ((__obj205716
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj205716))
               (__tmp205754
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204259%_ _%stx204256%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205754
           gxc#current-compile-method
           _%self204259%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp205755 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp205755
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args204253%_
        (apply make-instance gxc#::generate-runtime::t _%$args204253%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp205756
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
        (__make-atomic-promise __tmp205756)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx204245%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self204248%_
                (let ((__obj205718
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj205718))
               (__tmp205757
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204248%_ _%stx204245%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205757
           gxc#current-compile-method
           _%self204248%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp205759 (list gxc#::generate-runtime::t))
            (__tmp205758 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp205759
         '()
         __tmp205758
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args204242%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args204242%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp205760
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
        (__make-atomic-promise __tmp205760)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx204234%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self204237%_
                (let ((__obj205720
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj205720))
               (__tmp205761
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204237%_ _%stx204234%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205761
           gxc#current-compile-method
           _%self204237%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp205762 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp205762
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args204231%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args204231%_)))
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
      (let ((__tmp205763
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
        (__make-atomic-promise __tmp205763)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords204206%_ _%table204203204207%_ _%stx204208%_)
        (let ((_%table204211%_
               (if (eq? _%table204203204207%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table204203204207%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self204213%_
                  (let ((__obj205722
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205722
                       _%table204211%_
                       '1
                       '#f
                       '#f))
                    __obj205722))
                 (__tmp205764
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204213%_ _%stx204208%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205764
             gxc#current-compile-method
             _%self204213%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords204220%_ . _%args204221%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords204220%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204220%_
                  'table:
                  absent-value))
               _%args204221%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args204204204227%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args204204204227%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp205766 (list gxc#::void-expression::t))
            (__tmp205765 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp205766
         '(state)
         __tmp205765
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args204199%_
        (apply make-instance gxc#::generate-meta::t _%$args204199%_)))
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
      (let ((__tmp205767
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
        (__make-atomic-promise __tmp205767)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords204174%_ _%state204171204175%_ _%stx204176%_)
        (let ((_%state204179%_
               (if (eq? _%state204171204175%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204171204175%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self204181%_
                  (let ((__obj205724
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205724
                       _%state204179%_
                       '1
                       '#f
                       '#f))
                    __obj205724))
                 (__tmp205768
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204181%_ _%stx204176%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205768
             gxc#current-compile-method
             _%self204181%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords204188%_ . _%args204189%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords204188%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204188%_
                  'state:
                  absent-value))
               _%args204189%_)))
    (define gxc#apply-generate-meta
      (lambda _%args204172204195%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args204172204195%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp205770 (list)) (__tmp205769 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp205770
         '(state)
         __tmp205769
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args204167%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args204167%_)))
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
      (let ((__tmp205771
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
        (__make-atomic-promise __tmp205771)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords204142%_ _%state204139204143%_ _%stx204144%_)
        (let ((_%state204147%_
               (if (eq? _%state204139204143%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204139204143%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self204149%_
                  (let ((__obj205726
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205726
                       _%state204147%_
                       '1
                       '#f
                       '#f))
                    __obj205726))
                 (__tmp205772
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204149%_ _%stx204144%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205772
             gxc#current-compile-method
             _%self204149%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords204156%_ . _%args204157%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords204156%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204156%_
                  'state:
                  absent-value))
               _%args204157%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args204140204163%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args204140204163%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self204068%_ _%stx204069%_)
        (let* ((_%g204071204088%_
                (lambda (_%g204072204085%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204072204085%_))))
               (_%g204070204135%_
                (lambda (_%g204072204091%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204072204091%_))
                      (let ((_%e204075204093%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204072204091%_))))
                        (let ((_%hd204076204096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204075204093%_)))
                              (_%tl204077204098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204075204093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204077204098%_))
                              (let ((_%e204078204101%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204077204098%_))))
                                (let ((_%hd204079204104%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204078204101%_)))
                                      (_%tl204080204106%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204078204101%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204080204106%_))
                                      (let ((_%e204081204109%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204080204106%_))))
                                        (let ((_%hd204082204112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204081204109%_)))
                                              (_%tl204083204114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204081204109%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204083204114%_))
                                              ((lambda (_%g204073204117%_
                                                        _%g204074204118%_)
                                                 (let ((__tmp205773
                                                        (lambda (_%bind204133%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind204133%_))
                      (gxc#add-module-binding! _%bind204133%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp205773
                                                    _%g204074204118%_)))
                                               _%hd204082204112%_
                                               _%hd204079204104%_)
                                              (_%g204071204088%_
                                               _%g204072204091%_))))
                                      (_%g204071204088%_ _%g204072204091%_))))
                              (_%g204071204088%_ _%g204072204091%_))))
                      (_%g204071204088%_ _%g204072204091%_)))))
          (_%g204070204135%_ _%stx204069%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self204000%_ _%stx204001%_)
        (let* ((_%g204003204020%_
                (lambda (_%g204004204017%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204004204017%_))))
               (_%g204002204065%_
                (lambda (_%g204004204023%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204004204023%_))
                      (let ((_%e204007204025%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204004204023%_))))
                        (let ((_%hd204008204028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204007204025%_)))
                              (_%tl204009204030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204007204025%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204009204030%_))
                              (let ((_%e204010204033%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204009204030%_))))
                                (let ((_%hd204011204036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204010204033%_)))
                                      (_%tl204012204038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204010204033%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204012204038%_))
                                      (let ((_%e204013204041%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204012204038%_))))
                                        (let ((_%hd204014204044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204013204041%_)))
                                              (_%tl204015204046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204013204041%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204015204046%_))
                                              ((lambda (_%g204005204049%_
                                                        _%g204006204050%_)
                                                 (gxc#add-module-binding!
                                                  _%g204006204050%_
                                                  '#t))
                                               _%hd204014204044%_
                                               _%hd204011204036%_)
                                              (_%g204003204020%_
                                               _%g204004204023%_))))
                                      (_%g204003204020%_ _%g204004204023%_))))
                              (_%g204003204020%_ _%g204004204023%_))))
                      (_%g204003204020%_ _%g204004204023%_)))))
          (_%g204002204065%_ _%stx204001%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self203942%_ _%stx203943%_)
        (let* ((_%g203945203959%_
                (lambda (_%g203946203956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203946203956%_))))
               (_%g203944203997%_
                (lambda (_%g203946203962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203946203962%_))
                      (let ((_%e203949203964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203946203962%_))))
                        (let ((_%hd203950203967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203949203964%_)))
                              (_%tl203951203969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203949203964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203951203969%_))
                              (let ((_%e203952203972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203951203969%_))))
                                (let ((_%hd203953203975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203952203972%_)))
                                      (_%tl203954203977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203952203972%_))))
                                  ((lambda (_%g203947203980%_
                                            _%g203948203981%_)
                                     (let ((_%ctx203994%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g203948203981%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self203942%_
                                           'modules))
                                        (cons _%ctx203994%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self203942%_
                                                        'modules)))))
                                       (let ((__tmp205774
                                              (lambda ()
                                                (let ((__tmp205775
                                                       (##structure-ref
                                                        _%ctx203994%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self203942%_
                                                   __tmp205775)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp205774
                                          gx#current-expander-context
                                          _%ctx203994%_))))
                                   _%tl203954203977%_
                                   _%hd203953203975%_)))
                              (_%g203945203959%_ _%g203946203962%_))))
                      (_%g203945203959%_ _%g203946203962%_)))))
          (_%g203944203997%_ _%stx203943%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls203896203898%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls203896203898%_
              (let ((_%decls203900%_ _%decls203896203898%_))
                (let _%lp203902%_ ((_%rest203904%_ _%decls203900%_))
                  (let* ((_%rest203905203913%_ _%rest203904%_)
                         (_%else203907203921%_ (lambda () '#f))
                         (_%K203909203930%_
                          (lambda (_%decls203924%_ _%decl203925%_)
                            (if (equal? _%decl203925%_ '(not safe))
                                '#t
                                (if (equal? _%decl203925%_ '(safe))
                                    '#f
                                    (_%lp203902%_ _%decls203924%_))))))
                    (if (pair? _%rest203905203913%_)
                        (let ((_%hd203910203933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest203905203913%_)))
                              (_%tl203911203935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest203905203913%_))))
                          (let* ((_%decl203938%_ _%hd203910203933%_)
                                 (_%decls203940%_ _%tl203911203935%_))
                            (_%K203909203930%_
                             _%decls203940%_
                             _%decl203938%_)))
                        (_%else203907203921%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id203890%_ _%syntax?203891%_)
        (let ((_%eid203893%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id203890%_))
                '1
                gx#binding::t
                '#f))
              (_%ht203894%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid203893%_))
              '#!void
              (let ((__tmp205776
                     (let ((__tmp205777
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid203893%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp205777 _%syntax?203891%_))))
                (declare (not safe))
                (hash-put! _%ht203894%_ _%eid203893%_ __tmp205776))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self203887%_ _%stx203888%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self203734%_ _%stx203735%_)
        (letrec ((_%simplify203737%_
                  (lambda (_%body203785%_)
                    (let _%lp203787%_ ((_%rest203789%_ _%body203785%_)
                                       (_%r203790%_ '()))
                      (let* ((_%rest203791203799%_ _%rest203789%_)
                             (_%else203793203807%_
                              (lambda () (reverse _%r203790%_)))
                             (_%K203795203875%_
                              (lambda (_%rest203810%_ _%hd203811%_)
                                (let* ((_%hd203812203828%_ _%hd203811%_)
                                       (_%else203816203836%_
                                        (lambda ()
                                          (_%lp203787%_
                                           _%rest203810%_
                                           (cons _%hd203811%_ _%r203790%_)))))
                                  (let ((_%K203824203865%_
                                         (lambda (_%exprs203863%_)
                                           (_%lp203787%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest203810%_
                                               _%exprs203863%_))
                                            _%r203790%_)))
                                        (_%K203819203849%_
                                         (lambda ()
                                           (if (null? _%rest203810%_)
                                               (_%lp203787%_
                                                _%rest203810%_
                                                (cons _%hd203811%_
                                                      _%r203790%_))
                                               (_%lp203787%_
                                                _%rest203810%_
                                                _%r203790%_))))
                                        (_%K203818203841%_
                                         (lambda ()
                                           (if (null? _%rest203810%_)
                                               (_%lp203787%_
                                                _%rest203810%_
                                                (cons _%hd203811%_
                                                      _%r203790%_))
                                               (_%lp203787%_
                                                _%rest203810%_
                                                _%r203790%_)))))
                                    (let ((_%try-match203815203844%_
                                           (lambda ()
                                             (if (symbol? _%hd203812203828%_)
                                                 (_%K203818203841%_)
                                                 (_%else203816203836%_)))))
                                      (if (pair? _%hd203812203828%_)
                                          (let ((_%tl203826203870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd203812203828%_)))
                                                (_%hd203825203868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd203812203828%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203825203868%_
                                                         'begin))
                                                (let ((_%exprs203873%_
                                                       _%tl203826203870%_))
                                                  (_%K203824203865%_
                                                   _%exprs203873%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203825203868%_
                                                             'quote))
                                                    (if (pair? _%tl203826203870%_)
                                                        (let ((_%tl203823203857%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl203826203870%_))))
                  (if (null? _%tl203823203857%_)
                      (_%K203819203849%_)
                      (_%try-match203815203844%_)))
                (_%try-match203815203844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match203815203844%_))))
                                          (_%try-match203815203844%_))))))))
                        (if (pair? _%rest203791203799%_)
                            (let ((_%hd203796203878%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203791203799%_)))
                                  (_%tl203797203880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203791203799%_))))
                              (let* ((_%hd203883%_ _%hd203796203878%_)
                                     (_%rest203885%_ _%tl203797203880%_))
                                (_%K203795203875%_
                                 _%rest203885%_
                                 _%hd203883%_)))
                            (_%else203793203807%_)))))))
          (let* ((_%g203739203749%_
                  (lambda (_%g203740203746%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g203740203746%_))))
                 (_%g203738203782%_
                  (lambda (_%g203740203752%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g203740203752%_))
                        (let ((_%e203742203754%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g203740203752%_))))
                          (let ((_%hd203743203757%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203742203754%_)))
                                (_%tl203744203759%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203742203754%_))))
                            ((lambda (_%g203741203762%_)
                               (let* ((_%body203777%_
                                       (map (lambda (_%g203772203774%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self203734%_
                                                 _%g203772203774%_)))
                                            _%g203741203762%_))
                                      (_%body203779%_
                                       (_%simplify203737%_ _%body203777%_)))
                                 (if (let ((__tmp205778
                                            (length _%body203779%_)))
                                       (declare (not safe))
                                       (##fx= __tmp205778 '1))
                                     (car _%body203779%_)
                                     (cons 'begin _%body203779%_))))
                             _%tl203744203759%_)))
                        (_%g203739203749%_ _%g203740203752%_)))))
            (_%g203738203782%_ _%stx203735%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self203695%_ _%stx203696%_)
        (let* ((_%g203698203708%_
                (lambda (_%g203699203705%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203699203705%_))))
               (_%g203697203731%_
                (lambda (_%g203699203711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203699203711%_))
                      (let ((_%e203701203713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203699203711%_))))
                        (let ((_%hd203702203716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203701203713%_)))
                              (_%tl203703203718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203701203713%_))))
                          ((lambda (_%g203700203721%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g203700203721%_))))
                           _%tl203703203718%_)))
                      (_%g203698203708%_ _%g203699203711%_)))))
          (_%g203697203731%_ _%stx203696%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self203461%_ _%stx203462%_)
        (let* ((_%__stx204368204369%_ _%stx203462%_)
               (_%g203466203518%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204368204369%_)))))
          (let ((_%__kont204370204371%_
                 (lambda (_%g203468203677%_ _%g203469203678%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self203461%_ _%g203468203677%_))))
                (_%__kont204372204373%_
                 (lambda (_%g203479203625%_
                          _%g203480203626%_
                          _%g203481203627%_)
                   (if (let ((__tmp205779
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g203481203627%_))))
                         (declare (not safe))
                         (##memq __tmp205779 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self203461%_
                          _%g203479203625%_)))))
                (_%__kont204376204377%_
                 (lambda (_%g203503203547%_ _%g203504203548%_)
                   (let ((_%decls203563%_
                          (map gx#syntax->datum _%g203504203548%_)))
                     (let ((__tmp205782
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls203563%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self203461%_
                                                   _%g203503203547%_))
                                                '())))))
                           (__tmp205780
                            (let ((__tmp205781
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp205781 _%decls203563%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp205782
                        gxc#current-compile-decls
                        __tmp205780))))))
            (let* ((_%__match204423204424%_
                    (lambda (_%e203482203571%_
                             _%hd203483203574%_
                             _%tl203484203576%_
                             _%e203485203579%_
                             _%hd203486203582%_
                             _%tl203487203584%_
                             _%e203488203587%_
                             _%hd203489203590%_
                             _%tl203490203592%_
                             _%__splice204374204375%_
                             _%target203491203595%_
                             _%tl203493203597%_)
                      (letrec ((_%loop203494203600%_
                                (lambda (_%hd203492203603%_
                                         _%param203498203605%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203492203603%_))
                                      (let ((_%e203495203607%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203492203603%_))))
                                        (let ((_%lp-tl203497203612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203495203607%_)))
                                              (_%lp-hd203496203610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203495203607%_))))
                                          (_%loop203494203600%_
                                           _%lp-tl203497203612%_
                                           (cons _%lp-hd203496203610%_
                                                 _%param203498203605%_))))
                                      (let ((_%param203499203615%_
                                             (reverse _%param203498203605%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203487203584%_))
                                            (let ((_%e203500203617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203487203584%_))))
                                              (let ((_%tl203502203622%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203500203617%_)))
                                                    (_%hd203501203620%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203500203617%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203502203622%_))
                                                    (let ((_%g203479203625%_
                                                           _%hd203501203620%_)
                                                          (_%g203480203626%_
                                                           _%param203499203615%_)
                                                          (_%g203481203627%_
                                                           _%hd203489203590%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g203481203627%_))
                       (not (let ((__tmp205783
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g203481203627%_))))
                              (declare (not safe))
                              (##memq __tmp205783 gxc#gambit-annotations))))
                  (_%__kont204372204373%_
                   _%g203479203625%_
                   _%g203480203626%_
                   _%g203481203627%_)
                  (_%__kont204376204377%_
                   _%hd203501203620%_
                   _%hd203486203582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203466203518%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203466203518%_))))))))
                        (_%loop203494203600%_ _%target203491203595%_ '()))))
                   (_%__match204397204398%_
                    (lambda (_%e203470203653%_
                             _%hd203471203656%_
                             _%tl203472203658%_
                             _%e203473203661%_
                             _%hd203474203664%_
                             _%tl203475203666%_
                             _%e203476203669%_
                             _%hd203477203672%_
                             _%tl203478203674%_)
                      (let ((_%g203468203677%_ _%hd203477203672%_)
                            (_%g203469203678%_ _%hd203474203664%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g203469203678%_))
                            (_%__kont204370204371%_
                             _%g203468203677%_
                             _%g203469203678%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd203474203664%_))
                                (let ((_%e203488203587%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd203474203664%_))))
                                  (let ((_%tl203490203592%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203488203587%_)))
                                        (_%hd203489203590%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203488203587%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl203490203592%_))
                                        (let ((_%__splice204374204375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl203490203592%_
                                                  '0))))
                                          (let ((_%tl203493203597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204374204375%_
                                                    '1)))
                                                (_%target203491203595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204374204375%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203493203597%_))
                                                (_%__match204423204424%_
                                                 _%e203470203653%_
                                                 _%hd203471203656%_
                                                 _%tl203472203658%_
                                                 _%e203473203661%_
                                                 _%hd203474203664%_
                                                 _%tl203475203666%_
                                                 _%e203488203587%_
                                                 _%hd203489203590%_
                                                 _%tl203490203592%_
                                                 _%__splice204374204375%_
                                                 _%target203491203595%_
                                                 _%tl203493203597%_)
                                                (_%__kont204376204377%_
                                                 _%hd203477203672%_
                                                 _%hd203474203664%_))))
                                        (_%__kont204376204377%_
                                         _%hd203477203672%_
                                         _%hd203474203664%_))))
                                (_%__kont204376204377%_
                                 _%hd203477203672%_
                                 _%hd203474203664%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204368204369%_))
                  (let ((_%e203470203653%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204368204369%_))))
                    (let ((_%tl203472203658%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203470203653%_)))
                          (_%hd203471203656%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203470203653%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203472203658%_))
                          (let ((_%e203473203661%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203472203658%_))))
                            (let ((_%tl203475203666%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203473203661%_)))
                                  (_%hd203474203664%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203473203661%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203475203666%_))
                                  (let ((_%e203476203669%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203475203666%_))))
                                    (let ((_%tl203478203674%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203476203669%_)))
                                          (_%hd203477203672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203476203669%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203478203674%_))
                                          (_%__match204397204398%_
                                           _%e203470203653%_
                                           _%hd203471203656%_
                                           _%tl203472203658%_
                                           _%e203473203661%_
                                           _%hd203474203664%_
                                           _%tl203475203666%_
                                           _%e203476203669%_
                                           _%hd203477203672%_
                                           _%tl203478203674%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203474203664%_))
                                              (let ((_%e203488203587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203474203664%_))))
                                                (let ((_%tl203490203592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203488203587%_)))
                                                      (_%hd203489203590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203488203587%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203490203592%_))
                                                      (let ((_%__splice204374204375%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl203490203592%_
                        '0))))
                (let ((_%tl203493203597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204374204375%_ '1)))
                      (_%target203491203595%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204374204375%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203493203597%_))
                      (_%__match204423204424%_
                       _%e203470203653%_
                       _%hd203471203656%_
                       _%tl203472203658%_
                       _%e203473203661%_
                       _%hd203474203664%_
                       _%tl203475203666%_
                       _%e203488203587%_
                       _%hd203489203590%_
                       _%tl203490203592%_
                       _%__splice204374204375%_
                       _%target203491203595%_
                       _%tl203493203597%_)
                      (let () (declare (not safe)) (_%g203466203518%_)))))
              (let () (declare (not safe)) (_%g203466203518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203466203518%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203474203664%_))
                                      (let ((_%e203488203587%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203474203664%_))))
                                        (let ((_%tl203490203592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203488203587%_)))
                                              (_%hd203489203590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203488203587%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203490203592%_))
                                              (let ((_%__splice204374204375%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl203490203592%_
                                                        '0))))
                                                (let ((_%tl203493203597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204374204375%_
                                                          '1)))
                                                      (_%target203491203595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204374204375%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203493203597%_))
                                                      (_%__match204423204424%_
                                                       _%e203470203653%_
                                                       _%hd203471203656%_
                                                       _%tl203472203658%_
                                                       _%e203473203661%_
                                                       _%hd203474203664%_
                                                       _%tl203475203666%_
                                                       _%e203488203587%_
                                                       _%hd203489203590%_
                                                       _%tl203490203592%_
                                                       _%__splice204374204375%_
                                                       _%target203491203595%_
                                                       _%tl203493203597%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203466203518%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203466203518%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203466203518%_))))))
                          (let () (declare (not safe)) (_%g203466203518%_)))))
                  (let () (declare (not safe)) (_%g203466203518%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self203420%_ _%stx203421%_)
        (let* ((_%g203423203433%_
                (lambda (_%g203424203430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203424203430%_))))
               (_%g203422203458%_
                (lambda (_%g203424203436%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203424203436%_))
                      (let ((_%e203426203438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203424203436%_))))
                        (let ((_%hd203427203441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203426203438%_)))
                              (_%tl203428203443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203426203438%_))))
                          ((lambda (_%g203425203446%_)
                             (let ((_%decls203456%_
                                    (map gx#syntax->datum _%g203425203446%_)))
                               (let ((__tmp205784
                                      (let ((__tmp205785
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp205785
                                         _%decls203456%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp205784))
                               (cons 'declare _%decls203456%_)))
                           _%tl203428203443%_)))
                      (_%g203423203433%_ _%g203424203436%_)))))
          (_%g203422203458%_ _%stx203421%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self203167%_ _%stx203168%_)
        (let* ((_%g203170203187%_
                (lambda (_%g203171203184%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203171203184%_))))
               (_%g203169203417%_
                (lambda (_%g203171203190%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203171203190%_))
                      (let ((_%e203174203192%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203171203190%_))))
                        (let ((_%hd203175203195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203174203192%_)))
                              (_%tl203176203197%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203174203192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203176203197%_))
                              (let ((_%e203177203200%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203176203197%_))))
                                (let ((_%hd203178203203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203177203200%_)))
                                      (_%tl203179203205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203177203200%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203179203205%_))
                                      (let ((_%e203180203208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203179203205%_))))
                                        (let ((_%hd203181203211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203180203208%_)))
                                              (_%tl203182203213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203180203208%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203182203213%_))
                                              ((lambda (_%g203172203216%_
                                                        _%g203173203217%_)
                                                 (let* ((_%__stx204476204477%_
                                                         _%g203173203217%_)
                                                        (_%g203234203248%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx204476204477%_)))))
                                                   (let ((_%__kont204478204479%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self203167%_
                                                               _%g203172203216%_))))
                                                         (_%__kont204480204481%_
                                                          (lambda (_%g203240203380%_)
                                                            (let ((_%eid203389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g203240203380%_))))
                      (let ((_%lambda-expr203390203392%_
                             (gxc#apply-find-lambda-expression
                              _%g203172203216%_)))
                        (if _%lambda-expr203390203392%_
                            (let* ((_%lambda-expr203394%_
                                    _%lambda-expr203390203392%_)
                                   (__tmp205786
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp205786
                               _%lambda-expr203394%_
                               _%eid203389%_))
                            '#f))
                      (cons 'define
                            (cons _%eid203389%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self203167%_
                                           _%g203172203216%_))
                                        '()))))))
                 (_%__kont204482204483%_
                  (lambda ()
                    (let* ((_%tmp203255%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body203364%_
                            (let _%lp203257%_ ((_%rest203259%_
                                                _%g203173203217%_)
                                               (_%k203260%_ '0)
                                               (_%r203261%_ '()))
                              (let* ((_%__stx204446204447%_ _%rest203259%_)
                                     (_%g203266203283%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx204446204447%_)))))
                                (let ((_%__kont204448204449%_
                                       (lambda (_%g203268203351%_)
                                         (_%lp203257%_
                                          _%g203268203351%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203260%_ '1))
                                          _%r203261%_)))
                                      (_%__kont204450204451%_
                                       (lambda (_%g203273203324%_
                                                _%g203274203325%_)
                                         (_%lp203257%_
                                          _%g203273203324%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203260%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g203274203325%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp203255%_
                           _%k203260%_
                           _%g203273203324%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r203261%_))))
                                      (_%__kont204452204453%_
                                       (lambda (_%g203278203295%_)
                                         (let ((__tmp205787
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g203278203295%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp203255%_
                                 _%k203260%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp205787
                                            _%r203261%_))))
                                      (_%__kont204454204455%_
                                       (lambda () (reverse _%r203261%_))))
                                  (let ((_%g203264203311%_
                                         (lambda ()
                                           (let ((_%g203278203295%_
                                                  _%__stx204446204447%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g203278203295%_))
                                                 (_%__kont204452204453%_
                                                  _%g203278203295%_)
                                                 (_%__kont204454204455%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx204446204447%_))
                                        (let ((_%e203269203340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx204446204447%_))))
                                          (let ((_%tl203271203345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203269203340%_)))
                                                (_%hd203270203343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203269203340%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd203270203343%_))
                                                (let ((_%e203272203348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203270203343%_))))
                                                  (if (equal? _%e203272203348%_
                                                              '#f)
                                                      (_%__kont204448204449%_
                                                       _%tl203271203345%_)
                                                      (_%__kont204450204451%_
                                                       _%tl203271203345%_
                                                       _%hd203270203343%_)))
                                                (_%__kont204450204451%_
                                                 _%tl203271203345%_
                                                 _%hd203270203343%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g203264203311%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp203255%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203167%_
                                                       _%g203172203216%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp203255%_
                                         _%g203173203217%_
                                         _%g203172203216%_)
                                        _%body203364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx204476204477%_))
                                                         (let ((_%e203236203401%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx204476204477%_))))
                   (let ((_%tl203238203406%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e203236203401%_)))
                         (_%hd203237203404%_
                          (let ()
                            (declare (not safe))
                            (##car _%e203236203401%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd203237203404%_))
                         (let ((_%e203239203409%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd203237203404%_))))
                           (if (equal? _%e203239203409%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203238203406%_))
                                   (_%__kont204478204479%_)
                                   (_%__kont204482204483%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203238203406%_))
                                   (_%__kont204480204481%_ _%hd203237203404%_)
                                   (_%__kont204482204483%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl203238203406%_))
                             (_%__kont204480204481%_ _%hd203237203404%_)
                             (_%__kont204482204483%_)))))
                 (_%__kont204482204483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203181203211%_
                                               _%hd203178203203%_)
                                              (_%g203170203187%_
                                               _%g203171203190%_))))
                                      (_%g203170203187%_ _%g203171203190%_))))
                              (_%g203170203187%_ _%g203171203190%_))))
                      (_%g203170203187%_ _%g203171203190%_)))))
          (_%g203169203417%_ _%stx203168%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals203142%_ _%hd203143%_ _%expr203144%_)
        (let ((_%$e203146%_ (gxc#apply-count-values _%expr203144%_)))
          (if _%$e203146%_
              ((lambda (_%count203149%_)
                 (let ((_%len203151%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd203143%_)))
                       (_%cmp203152%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd203143%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len203151%_ '0))
                           (_%cmp203152%_ _%count203149%_ _%len203151%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr203144%_
                          _%hd203143%_)))))
               _%$e203146%_)
              (let* ((_%len203158%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd203143%_)))
                     (_%cmp203160%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd203143%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg203162%_
                      (let ((__tmp205789
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd203143%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp205788 (number->string _%len203158%_)))
                        (declare (not safe))
                        (##string-append __tmp205789 __tmp205788 '" values")))
                     (_%count203164%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd203143%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len203158%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count203164%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals203142%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp203160%_
                                (cons _%count203164%_
                                      (cons _%len203158%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp203160%_
                                                        (cons _%count203164%_
                                                              (cons _%len203158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg203162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count203164%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var203137%_)
        (letrec ((_%generate-inline203139%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var203137%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var203137%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203139%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203139%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var203130%_ _%i203131%_ _%rest203132%_)
        (letrec ((_%generate-inline203134%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i203131%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest203132%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var203130%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var203130%_
                                                      (cons '0 '())))
                                          (cons _%var203130%_ '()))))
                        (cons '##values-ref
                              (cons _%var203130%_ (cons _%i203131%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203134%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203134%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var203124%_ _%i203125%_)
        (if (let () (declare (not safe)) (##fx= _%i203125%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var203124%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var203124%_ '()))
                                  (cons (cons 'list (cons _%var203124%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var203124%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var203124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var203124%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i203125%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var203124%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var203124%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var203124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var203124%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var203124%_ '()))
                                (cons _%i203125%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var203124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i203125%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self203056%_ _%stx203057%_)
        (let* ((_%g203059203076%_
                (lambda (_%g203060203073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203060203073%_))))
               (_%g203058203121%_
                (lambda (_%g203060203079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203060203079%_))
                      (let ((_%e203063203081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203060203079%_))))
                        (let ((_%hd203064203084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203063203081%_)))
                              (_%tl203065203086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203063203081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203065203086%_))
                              (let ((_%e203066203089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203065203086%_))))
                                (let ((_%hd203067203092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203066203089%_)))
                                      (_%tl203068203094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203066203089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203068203094%_))
                                      (let ((_%e203069203097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203068203094%_))))
                                        (let ((_%hd203070203100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203069203097%_)))
                                              (_%tl203071203102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203069203097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203071203102%_))
                                              ((lambda (_%g203061203105%_
                                                        _%g203062203106%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self203056%_
                                                  _%g203062203106%_
                                                  _%g203061203105%_))
                                               _%hd203070203100%_
                                               _%hd203067203092%_)
                                              (_%g203059203076%_
                                               _%g203060203079%_))))
                                      (_%g203059203076%_ _%g203060203079%_))))
                              (_%g203059203076%_ _%g203060203079%_))))
                      (_%g203059203076%_ _%g203060203079%_)))))
          (_%g203058203121%_ _%stx203057%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self203015%_ _%hd203016%_ _%body203017%_)
        (let* ((_%hd203019%_ (gxc#generate-runtime-lambda-head _%hd203016%_))
               (_%body203021%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self203015%_ _%body203017%_)))
               (_%body203053%_
                (let* ((_%body203022203030%_ _%body203021%_)
                       (_%else203024203038%_
                        (lambda () (cons _%body203021%_ '())))
                       (_%K203026203043%_
                        (lambda (_%exprs203041%_) _%exprs203041%_)))
                  (if (pair? _%body203022203030%_)
                      (let ((_%hd203027203046%_
                             (let ()
                               (declare (not safe))
                               (##car _%body203022203030%_)))
                            (_%tl203028203048%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body203022203030%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd203027203046%_ 'begin))
                            (let ((_%exprs203051%_ _%tl203028203048%_))
                              (_%K203026203043%_ _%exprs203051%_))
                            (_%else203024203038%_)))
                      (_%else203024203038%_)))))
          (cons 'lambda (cons _%hd203019%_ _%body203053%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd203013%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd203013%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self201570%_ _%stx201571%_)
        (letrec ((_%dispatch-case?201573%_
                  (lambda (_%hd202251%_ _%body202252%_)
                    (let* ((_%form202254%_
                            (cons _%hd202251%_ (cons _%body202252%_ '())))
                           (_%__stx204508204509%_ _%form202254%_)
                           (_%g202259202416%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx204508204509%_)))))
                      (let ((_%__kont204510204511%_
                             (lambda (_%g202261202933%_
                                      _%g202262202934%_
                                      _%g202263202935%_)
                               '#t))
                            (_%__kont204516204517%_
                             (lambda (_%g202306202725%_
                                      _%g202307202726%_
                                      _%g202308202727%_
                                      _%g202309202728%_
                                      _%g202310202729%_
                                      _%g202311202730%_)
                               '#t))
                            (_%__kont204522204523%_
                             (lambda (_%g202372202524%_
                                      _%g202373202525%_
                                      _%g202374202526%_
                                      _%g202375202527%_)
                               '#t))
                            (_%__kont204524204525%_ (lambda () '#f)))
                        (let* ((_%__match204649204650%_
                                (lambda (_%e202376202428%_
                                         _%hd202377202431%_
                                         _%tl202378202433%_
                                         _%e202379202436%_
                                         _%hd202380202439%_
                                         _%tl202381202441%_
                                         _%e202382202444%_
                                         _%hd202383202447%_
                                         _%tl202384202449%_
                                         _%e202385202452%_
                                         _%hd202386202455%_
                                         _%tl202387202457%_
                                         _%e202388202460%_
                                         _%hd202389202463%_
                                         _%tl202390202465%_
                                         _%e202391202468%_
                                         _%hd202392202471%_
                                         _%tl202393202473%_
                                         _%e202394202476%_
                                         _%hd202395202479%_
                                         _%tl202396202481%_
                                         _%e202397202484%_
                                         _%hd202398202487%_
                                         _%tl202399202489%_
                                         _%e202400202492%_
                                         _%hd202401202495%_
                                         _%tl202402202497%_
                                         _%e202403202500%_
                                         _%hd202404202503%_
                                         _%tl202405202505%_
                                         _%e202406202508%_
                                         _%hd202407202511%_
                                         _%tl202408202513%_
                                         _%e202409202516%_
                                         _%hd202410202519%_
                                         _%tl202411202521%_)
                                  (let ((_%g202372202524%_ _%hd202410202519%_)
                                        (_%g202373202525%_ _%hd202401202495%_)
                                        (_%g202374202526%_ _%hd202392202471%_)
                                        (_%g202375202527%_ _%hd202377202431%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g202375202527%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g202374202526%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g202375202527%_
                                                _%g202372202524%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g202373202525%_
                                                     _%g202375202527%_))))
                                        (_%__kont204522204523%_
                                         _%g202372202524%_
                                         _%g202373202525%_
                                         _%g202374202526%_
                                         _%g202375202527%_)
                                        (_%__kont204524204525%_)))))
                               (_%__match204621204622%_
                                (lambda (_%e202376202428%_
                                         _%hd202377202431%_
                                         _%tl202378202433%_
                                         _%e202379202436%_
                                         _%hd202380202439%_
                                         _%tl202381202441%_
                                         _%e202382202444%_
                                         _%hd202383202447%_
                                         _%tl202384202449%_
                                         _%e202385202452%_
                                         _%hd202386202455%_
                                         _%tl202387202457%_
                                         _%e202388202460%_
                                         _%hd202389202463%_
                                         _%tl202390202465%_
                                         _%e202391202468%_
                                         _%hd202392202471%_
                                         _%tl202393202473%_
                                         _%e202394202476%_
                                         _%hd202395202479%_
                                         _%tl202396202481%_
                                         _%e202397202484%_
                                         _%hd202398202487%_
                                         _%tl202399202489%_
                                         _%e202400202492%_
                                         _%hd202401202495%_
                                         _%tl202402202497%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202396202481%_))
                                      (let ((_%e202403202500%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202396202481%_))))
                                        (let ((_%tl202405202505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202403202500%_)))
                                              (_%hd202404202503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202403202500%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd202404202503%_))
                                              (let ((_%e202406202508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202404202503%_))))
                                                (let ((_%tl202408202513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202406202508%_)))
                                                      (_%hd202407202511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202406202508%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd202407202511%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd202407202511%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202408202513%_))
                      (let ((_%e202409202516%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202408202513%_))))
                        (let ((_%tl202411202521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202409202516%_)))
                              (_%hd202410202519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202409202516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202411202521%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202405202505%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202381202441%_))
                                      (_%__match204649204650%_
                                       _%e202376202428%_
                                       _%hd202377202431%_
                                       _%tl202378202433%_
                                       _%e202379202436%_
                                       _%hd202380202439%_
                                       _%tl202381202441%_
                                       _%e202382202444%_
                                       _%hd202383202447%_
                                       _%tl202384202449%_
                                       _%e202385202452%_
                                       _%hd202386202455%_
                                       _%tl202387202457%_
                                       _%e202388202460%_
                                       _%hd202389202463%_
                                       _%tl202390202465%_
                                       _%e202391202468%_
                                       _%hd202392202471%_
                                       _%tl202393202473%_
                                       _%e202394202476%_
                                       _%hd202395202479%_
                                       _%tl202396202481%_
                                       _%e202397202484%_
                                       _%hd202398202487%_
                                       _%tl202399202489%_
                                       _%e202400202492%_
                                       _%hd202401202495%_
                                       _%tl202402202497%_
                                       _%e202403202500%_
                                       _%hd202404202503%_
                                       _%tl202405202505%_
                                       _%e202406202508%_
                                       _%hd202407202511%_
                                       _%tl202408202513%_
                                       _%e202409202516%_
                                       _%hd202410202519%_
                                       _%tl202411202521%_)
                                      (_%__kont204524204525%_))
                                  (_%__kont204524204525%_))
                              (_%__kont204524204525%_))))
                      (_%__kont204524204525%_))
                  (_%__kont204524204525%_))
              (_%__kont204524204525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont204524204525%_))))
                                      (_%__kont204524204525%_))))
                               (_%__match204551204552%_
                                (lambda (_%e202312202569%_
                                         _%hd202313202572%_
                                         _%tl202314202574%_
                                         _%__splice204518204519%_
                                         _%target202315202577%_
                                         _%tl202317202579%_)
                                  (letrec ((_%loop202318202582%_
                                            (lambda (_%hd202316202585%_
                                                     _%arg202322202587%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202316202585%_))
                                                  (let ((_%e202319202589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202316202585%_))))
                                                    (let ((_%lp-tl202321202594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202319202589%_)))
                                                          (_%lp-hd202320202592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202319202589%_))))
                                                      (_%loop202318202582%_
                                                       _%lp-tl202321202594%_
                                                       (cons _%lp-hd202320202592%_
                                                             _%arg202322202587%_))))
                                                  (let ((_%arg202323202597%_
                                                         (reverse _%arg202322202587%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202314202574%_))
                                                        (let ((_%e202324202599%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202314202574%_))))
                  (let ((_%tl202326202604%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202324202599%_)))
                        (_%hd202325202602%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202324202599%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202325202602%_))
                        (let ((_%e202327202607%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202325202602%_))))
                          (let ((_%tl202329202612%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202327202607%_)))
                                (_%hd202328202610%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202327202607%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202328202610%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202328202610%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202329202612%_))
                                        (let ((_%e202330202615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202329202612%_))))
                                          (let ((_%tl202332202620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202330202615%_)))
                                                (_%hd202331202618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202330202615%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202331202618%_))
                                                (let ((_%e202333202623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202331202618%_))))
                                                  (let ((_%tl202335202628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202333202623%_)))
                                                        (_%hd202334202626%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202333202623%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202334202626%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202334202626%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202335202628%_))
                        (let ((_%e202336202631%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202335202628%_))))
                          (let ((_%tl202338202636%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202336202631%_)))
                                (_%hd202337202634%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202336202631%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202338202636%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202332202620%_))
                                    (let ((_%e202339202639%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202332202620%_))))
                                      (let ((_%tl202341202644%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202339202639%_)))
                                            (_%hd202340202642%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202339202639%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202340202642%_))
                                            (let ((_%e202342202647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202340202642%_))))
                                              (let ((_%tl202344202652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202342202647%_)))
                                                    (_%hd202343202650%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202342202647%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202343202650%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202343202650%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202344202652%_))
                                                            (let ((_%e202345202655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202344202652%_))))
                      (let ((_%tl202347202660%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202345202655%_)))
                            (_%hd202346202658%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202345202655%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202347202660%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202341202644%_))
                                (if (let ((__tmp205790
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl202341202644%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp205790 '1))
                                    (let ((_%__splice204520204521%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202341202644%_
                                              '1))))
                                      (let ((_%tl202350202665%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204520204521%_
                                                '1)))
                                            (_%target202348202663%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204520204521%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202350202665%_))
                                            (let ((_%e202357202668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202350202665%_))))
                                              (let ((_%tl202359202673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202357202668%_)))
                                                    (_%hd202358202671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202357202668%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd202358202671%_))
                                                    (let ((_%e202360202676%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202358202671%_))))
                                                      (let ((_%tl202362202681%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e202360202676%_)))
                    (_%hd202361202679%_
                     (let () (declare (not safe)) (##car _%e202360202676%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd202361202679%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd202361202679%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202362202681%_))
                            (let ((_%e202363202684%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl202362202681%_))))
                              (let ((_%tl202365202689%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202363202684%_)))
                                    (_%hd202364202687%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202363202684%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202365202689%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202359202673%_))
                                        (letrec ((_%loop202351202692%_
                                                  (lambda (_%hd202349202695%_
                                                           _%xarg202355202697%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202349202695%_))
                                                        (let ((_%e202352202699%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202349202695%_))))
                  (let ((_%lp-tl202354202704%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202352202699%_)))
                        (_%lp-hd202353202702%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202352202699%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202353202702%_))
                        (let ((_%e202366202707%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd202353202702%_))))
                          (let ((_%tl202368202712%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202366202707%_)))
                                (_%hd202367202710%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202366202707%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202367202710%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd202367202710%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202368202712%_))
                                        (let ((_%e202369202715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202368202712%_))))
                                          (let ((_%tl202371202720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202369202715%_)))
                                                (_%hd202370202718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202369202715%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202371202720%_))
                                                (_%loop202351202692%_
                                                 _%lp-tl202354202704%_
                                                 (cons _%hd202370202718%_
                                                       _%xarg202355202697%_))
                                                (_%__match204621204622%_
                                                 _%e202312202569%_
                                                 _%hd202313202572%_
                                                 _%tl202314202574%_
                                                 _%e202324202599%_
                                                 _%hd202325202602%_
                                                 _%tl202326202604%_
                                                 _%e202327202607%_
                                                 _%hd202328202610%_
                                                 _%tl202329202612%_
                                                 _%e202330202615%_
                                                 _%hd202331202618%_
                                                 _%tl202332202620%_
                                                 _%e202333202623%_
                                                 _%hd202334202626%_
                                                 _%tl202335202628%_
                                                 _%e202336202631%_
                                                 _%hd202337202634%_
                                                 _%tl202338202636%_
                                                 _%e202339202639%_
                                                 _%hd202340202642%_
                                                 _%tl202341202644%_
                                                 _%e202342202647%_
                                                 _%hd202343202650%_
                                                 _%tl202344202652%_
                                                 _%e202345202655%_
                                                 _%hd202346202658%_
                                                 _%tl202347202660%_))))
                                        (_%__match204621204622%_
                                         _%e202312202569%_
                                         _%hd202313202572%_
                                         _%tl202314202574%_
                                         _%e202324202599%_
                                         _%hd202325202602%_
                                         _%tl202326202604%_
                                         _%e202327202607%_
                                         _%hd202328202610%_
                                         _%tl202329202612%_
                                         _%e202330202615%_
                                         _%hd202331202618%_
                                         _%tl202332202620%_
                                         _%e202333202623%_
                                         _%hd202334202626%_
                                         _%tl202335202628%_
                                         _%e202336202631%_
                                         _%hd202337202634%_
                                         _%tl202338202636%_
                                         _%e202339202639%_
                                         _%hd202340202642%_
                                         _%tl202341202644%_
                                         _%e202342202647%_
                                         _%hd202343202650%_
                                         _%tl202344202652%_
                                         _%e202345202655%_
                                         _%hd202346202658%_
                                         _%tl202347202660%_))
                                    (_%__match204621204622%_
                                     _%e202312202569%_
                                     _%hd202313202572%_
                                     _%tl202314202574%_
                                     _%e202324202599%_
                                     _%hd202325202602%_
                                     _%tl202326202604%_
                                     _%e202327202607%_
                                     _%hd202328202610%_
                                     _%tl202329202612%_
                                     _%e202330202615%_
                                     _%hd202331202618%_
                                     _%tl202332202620%_
                                     _%e202333202623%_
                                     _%hd202334202626%_
                                     _%tl202335202628%_
                                     _%e202336202631%_
                                     _%hd202337202634%_
                                     _%tl202338202636%_
                                     _%e202339202639%_
                                     _%hd202340202642%_
                                     _%tl202341202644%_
                                     _%e202342202647%_
                                     _%hd202343202650%_
                                     _%tl202344202652%_
                                     _%e202345202655%_
                                     _%hd202346202658%_
                                     _%tl202347202660%_))
                                (_%__match204621204622%_
                                 _%e202312202569%_
                                 _%hd202313202572%_
                                 _%tl202314202574%_
                                 _%e202324202599%_
                                 _%hd202325202602%_
                                 _%tl202326202604%_
                                 _%e202327202607%_
                                 _%hd202328202610%_
                                 _%tl202329202612%_
                                 _%e202330202615%_
                                 _%hd202331202618%_
                                 _%tl202332202620%_
                                 _%e202333202623%_
                                 _%hd202334202626%_
                                 _%tl202335202628%_
                                 _%e202336202631%_
                                 _%hd202337202634%_
                                 _%tl202338202636%_
                                 _%e202339202639%_
                                 _%hd202340202642%_
                                 _%tl202341202644%_
                                 _%e202342202647%_
                                 _%hd202343202650%_
                                 _%tl202344202652%_
                                 _%e202345202655%_
                                 _%hd202346202658%_
                                 _%tl202347202660%_))))
                        (_%__match204621204622%_
                         _%e202312202569%_
                         _%hd202313202572%_
                         _%tl202314202574%_
                         _%e202324202599%_
                         _%hd202325202602%_
                         _%tl202326202604%_
                         _%e202327202607%_
                         _%hd202328202610%_
                         _%tl202329202612%_
                         _%e202330202615%_
                         _%hd202331202618%_
                         _%tl202332202620%_
                         _%e202333202623%_
                         _%hd202334202626%_
                         _%tl202335202628%_
                         _%e202336202631%_
                         _%hd202337202634%_
                         _%tl202338202636%_
                         _%e202339202639%_
                         _%hd202340202642%_
                         _%tl202341202644%_
                         _%e202342202647%_
                         _%hd202343202650%_
                         _%tl202344202652%_
                         _%e202345202655%_
                         _%hd202346202658%_
                         _%tl202347202660%_))))
                (let ((_%xarg202356202723%_ (reverse _%xarg202355202697%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202326202604%_))
                      (let ((_%g202306202725%_ _%hd202364202687%_)
                            (_%g202307202726%_ _%xarg202356202723%_)
                            (_%g202308202727%_ _%hd202346202658%_)
                            (_%g202309202728%_ _%hd202337202634%_)
                            (_%g202310202729%_ _%tl202317202579%_)
                            (_%g202311202730%_ _%arg202323202597%_))
                        (if (and (let ((__tmp205791
                                        (let ((__tmp205792
                                               (lambda (_%g202773202776%_
                                                        _%g202774202778%_)
                                                 (cons _%g202773202776%_
                                                       _%g202774202778%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205792
                                           '()
                                           _%g202311202730%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp205791))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g202310202729%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g202309202728%_
                                    'apply))
                                 (let ((__tmp205795
                                        (length (let ((__tmp205796
                                                       (lambda (_%g202780202783%_
                                                                _%g202781202785%_)
                                                         (cons _%g202780202783%_
                                                               _%g202781202785%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp205796
                                                   '()
                                                   _%g202311202730%_))))
                                       (__tmp205793
                                        (length (let ((__tmp205794
                                                       (lambda (_%g202787202790%_
                                                                _%g202788202792%_)
                                                         (cons _%g202787202790%_
                                                               _%g202788202792%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp205794
                                                   '()
                                                   _%g202307202726%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp205795 __tmp205793))
                                 (let ((__tmp205799
                                        (let ((__tmp205800
                                               (lambda (_%g202794202797%_
                                                        _%g202795202799%_)
                                                 (cons _%g202794202797%_
                                                       _%g202795202799%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205800
                                           '()
                                           _%g202311202730%_)))
                                       (__tmp205797
                                        (let ((__tmp205798
                                               (lambda (_%g202801202804%_
                                                        _%g202802202806%_)
                                                 (cons _%g202801202804%_
                                                       _%g202802202806%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205798
                                           '()
                                           _%g202307202726%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp205799
                                    __tmp205797))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g202310202729%_
                                    _%g202306202725%_))
                                 (not (let ((__tmp205804
                                             (lambda (_%g202808202810%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g202808202810%_
                                                  _%g202308202727%_))))
                                            (__tmp205801
                                             (let ((__tmp205803
                                                    (lambda (_%g202812202815%_
                                                             _%g202813202817%_)
                                                      (cons _%g202812202815%_
                                                            _%g202813202817%_)))
                                                   (__tmp205802
                                                    (cons _%g202310202729%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205803
                                                __tmp205802
                                                _%g202311202730%_))))
                                        (declare (not safe))
                                        (__find __tmp205804 __tmp205801))))
                            (_%__kont204516204517%_
                             _%g202306202725%_
                             _%g202307202726%_
                             _%g202308202727%_
                             _%g202309202728%_
                             _%g202310202729%_
                             _%g202311202730%_)
                            (_%__match204621204622%_
                             _%e202312202569%_
                             _%hd202313202572%_
                             _%tl202314202574%_
                             _%e202324202599%_
                             _%hd202325202602%_
                             _%tl202326202604%_
                             _%e202327202607%_
                             _%hd202328202610%_
                             _%tl202329202612%_
                             _%e202330202615%_
                             _%hd202331202618%_
                             _%tl202332202620%_
                             _%e202333202623%_
                             _%hd202334202626%_
                             _%tl202335202628%_
                             _%e202336202631%_
                             _%hd202337202634%_
                             _%tl202338202636%_
                             _%e202339202639%_
                             _%hd202340202642%_
                             _%tl202341202644%_
                             _%e202342202647%_
                             _%hd202343202650%_
                             _%tl202344202652%_
                             _%e202345202655%_
                             _%hd202346202658%_
                             _%tl202347202660%_)))
                      (_%__match204621204622%_
                       _%e202312202569%_
                       _%hd202313202572%_
                       _%tl202314202574%_
                       _%e202324202599%_
                       _%hd202325202602%_
                       _%tl202326202604%_
                       _%e202327202607%_
                       _%hd202328202610%_
                       _%tl202329202612%_
                       _%e202330202615%_
                       _%hd202331202618%_
                       _%tl202332202620%_
                       _%e202333202623%_
                       _%hd202334202626%_
                       _%tl202335202628%_
                       _%e202336202631%_
                       _%hd202337202634%_
                       _%tl202338202636%_
                       _%e202339202639%_
                       _%hd202340202642%_
                       _%tl202341202644%_
                       _%e202342202647%_
                       _%hd202343202650%_
                       _%tl202344202652%_
                       _%e202345202655%_
                       _%hd202346202658%_
                       _%tl202347202660%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202351202692%_
                                           _%target202348202663%_
                                           '()))
                                        (_%__match204621204622%_
                                         _%e202312202569%_
                                         _%hd202313202572%_
                                         _%tl202314202574%_
                                         _%e202324202599%_
                                         _%hd202325202602%_
                                         _%tl202326202604%_
                                         _%e202327202607%_
                                         _%hd202328202610%_
                                         _%tl202329202612%_
                                         _%e202330202615%_
                                         _%hd202331202618%_
                                         _%tl202332202620%_
                                         _%e202333202623%_
                                         _%hd202334202626%_
                                         _%tl202335202628%_
                                         _%e202336202631%_
                                         _%hd202337202634%_
                                         _%tl202338202636%_
                                         _%e202339202639%_
                                         _%hd202340202642%_
                                         _%tl202341202644%_
                                         _%e202342202647%_
                                         _%hd202343202650%_
                                         _%tl202344202652%_
                                         _%e202345202655%_
                                         _%hd202346202658%_
                                         _%tl202347202660%_))
                                    (_%__match204621204622%_
                                     _%e202312202569%_
                                     _%hd202313202572%_
                                     _%tl202314202574%_
                                     _%e202324202599%_
                                     _%hd202325202602%_
                                     _%tl202326202604%_
                                     _%e202327202607%_
                                     _%hd202328202610%_
                                     _%tl202329202612%_
                                     _%e202330202615%_
                                     _%hd202331202618%_
                                     _%tl202332202620%_
                                     _%e202333202623%_
                                     _%hd202334202626%_
                                     _%tl202335202628%_
                                     _%e202336202631%_
                                     _%hd202337202634%_
                                     _%tl202338202636%_
                                     _%e202339202639%_
                                     _%hd202340202642%_
                                     _%tl202341202644%_
                                     _%e202342202647%_
                                     _%hd202343202650%_
                                     _%tl202344202652%_
                                     _%e202345202655%_
                                     _%hd202346202658%_
                                     _%tl202347202660%_))))
                            (_%__match204621204622%_
                             _%e202312202569%_
                             _%hd202313202572%_
                             _%tl202314202574%_
                             _%e202324202599%_
                             _%hd202325202602%_
                             _%tl202326202604%_
                             _%e202327202607%_
                             _%hd202328202610%_
                             _%tl202329202612%_
                             _%e202330202615%_
                             _%hd202331202618%_
                             _%tl202332202620%_
                             _%e202333202623%_
                             _%hd202334202626%_
                             _%tl202335202628%_
                             _%e202336202631%_
                             _%hd202337202634%_
                             _%tl202338202636%_
                             _%e202339202639%_
                             _%hd202340202642%_
                             _%tl202341202644%_
                             _%e202342202647%_
                             _%hd202343202650%_
                             _%tl202344202652%_
                             _%e202345202655%_
                             _%hd202346202658%_
                             _%tl202347202660%_))
                        (_%__match204621204622%_
                         _%e202312202569%_
                         _%hd202313202572%_
                         _%tl202314202574%_
                         _%e202324202599%_
                         _%hd202325202602%_
                         _%tl202326202604%_
                         _%e202327202607%_
                         _%hd202328202610%_
                         _%tl202329202612%_
                         _%e202330202615%_
                         _%hd202331202618%_
                         _%tl202332202620%_
                         _%e202333202623%_
                         _%hd202334202626%_
                         _%tl202335202628%_
                         _%e202336202631%_
                         _%hd202337202634%_
                         _%tl202338202636%_
                         _%e202339202639%_
                         _%hd202340202642%_
                         _%tl202341202644%_
                         _%e202342202647%_
                         _%hd202343202650%_
                         _%tl202344202652%_
                         _%e202345202655%_
                         _%hd202346202658%_
                         _%tl202347202660%_))
                    (_%__match204621204622%_
                     _%e202312202569%_
                     _%hd202313202572%_
                     _%tl202314202574%_
                     _%e202324202599%_
                     _%hd202325202602%_
                     _%tl202326202604%_
                     _%e202327202607%_
                     _%hd202328202610%_
                     _%tl202329202612%_
                     _%e202330202615%_
                     _%hd202331202618%_
                     _%tl202332202620%_
                     _%e202333202623%_
                     _%hd202334202626%_
                     _%tl202335202628%_
                     _%e202336202631%_
                     _%hd202337202634%_
                     _%tl202338202636%_
                     _%e202339202639%_
                     _%hd202340202642%_
                     _%tl202341202644%_
                     _%e202342202647%_
                     _%hd202343202650%_
                     _%tl202344202652%_
                     _%e202345202655%_
                     _%hd202346202658%_
                     _%tl202347202660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match204621204622%_
                                                     _%e202312202569%_
                                                     _%hd202313202572%_
                                                     _%tl202314202574%_
                                                     _%e202324202599%_
                                                     _%hd202325202602%_
                                                     _%tl202326202604%_
                                                     _%e202327202607%_
                                                     _%hd202328202610%_
                                                     _%tl202329202612%_
                                                     _%e202330202615%_
                                                     _%hd202331202618%_
                                                     _%tl202332202620%_
                                                     _%e202333202623%_
                                                     _%hd202334202626%_
                                                     _%tl202335202628%_
                                                     _%e202336202631%_
                                                     _%hd202337202634%_
                                                     _%tl202338202636%_
                                                     _%e202339202639%_
                                                     _%hd202340202642%_
                                                     _%tl202341202644%_
                                                     _%e202342202647%_
                                                     _%hd202343202650%_
                                                     _%tl202344202652%_
                                                     _%e202345202655%_
                                                     _%hd202346202658%_
                                                     _%tl202347202660%_))))
                                            (_%__match204621204622%_
                                             _%e202312202569%_
                                             _%hd202313202572%_
                                             _%tl202314202574%_
                                             _%e202324202599%_
                                             _%hd202325202602%_
                                             _%tl202326202604%_
                                             _%e202327202607%_
                                             _%hd202328202610%_
                                             _%tl202329202612%_
                                             _%e202330202615%_
                                             _%hd202331202618%_
                                             _%tl202332202620%_
                                             _%e202333202623%_
                                             _%hd202334202626%_
                                             _%tl202335202628%_
                                             _%e202336202631%_
                                             _%hd202337202634%_
                                             _%tl202338202636%_
                                             _%e202339202639%_
                                             _%hd202340202642%_
                                             _%tl202341202644%_
                                             _%e202342202647%_
                                             _%hd202343202650%_
                                             _%tl202344202652%_
                                             _%e202345202655%_
                                             _%hd202346202658%_
                                             _%tl202347202660%_))))
                                    (_%__match204621204622%_
                                     _%e202312202569%_
                                     _%hd202313202572%_
                                     _%tl202314202574%_
                                     _%e202324202599%_
                                     _%hd202325202602%_
                                     _%tl202326202604%_
                                     _%e202327202607%_
                                     _%hd202328202610%_
                                     _%tl202329202612%_
                                     _%e202330202615%_
                                     _%hd202331202618%_
                                     _%tl202332202620%_
                                     _%e202333202623%_
                                     _%hd202334202626%_
                                     _%tl202335202628%_
                                     _%e202336202631%_
                                     _%hd202337202634%_
                                     _%tl202338202636%_
                                     _%e202339202639%_
                                     _%hd202340202642%_
                                     _%tl202341202644%_
                                     _%e202342202647%_
                                     _%hd202343202650%_
                                     _%tl202344202652%_
                                     _%e202345202655%_
                                     _%hd202346202658%_
                                     _%tl202347202660%_))
                                (_%__match204621204622%_
                                 _%e202312202569%_
                                 _%hd202313202572%_
                                 _%tl202314202574%_
                                 _%e202324202599%_
                                 _%hd202325202602%_
                                 _%tl202326202604%_
                                 _%e202327202607%_
                                 _%hd202328202610%_
                                 _%tl202329202612%_
                                 _%e202330202615%_
                                 _%hd202331202618%_
                                 _%tl202332202620%_
                                 _%e202333202623%_
                                 _%hd202334202626%_
                                 _%tl202335202628%_
                                 _%e202336202631%_
                                 _%hd202337202634%_
                                 _%tl202338202636%_
                                 _%e202339202639%_
                                 _%hd202340202642%_
                                 _%tl202341202644%_
                                 _%e202342202647%_
                                 _%hd202343202650%_
                                 _%tl202344202652%_
                                 _%e202345202655%_
                                 _%hd202346202658%_
                                 _%tl202347202660%_))
                            (_%__kont204524204525%_))))
                    (_%__kont204524204525%_))
                (_%__kont204524204525%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont204524204525%_))))
                                            (_%__kont204524204525%_))))
                                    (_%__kont204524204525%_))
                                (_%__kont204524204525%_))))
                        (_%__kont204524204525%_))
                    (_%__kont204524204525%_))
                (_%__kont204524204525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont204524204525%_))))
                                        (_%__kont204524204525%_))
                                    (_%__kont204524204525%_))
                                (_%__kont204524204525%_))))
                        (_%__kont204524204525%_))))
                (_%__kont204524204525%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202318202582%_
                                     _%target202315202577%_
                                     '()))))
                               (_%__match204539204540%_
                                (lambda (_%e202264202825%_
                                         _%hd202265202828%_
                                         _%tl202266202830%_
                                         _%__splice204512204513%_
                                         _%target202267202833%_
                                         _%tl202269202835%_)
                                  (letrec ((_%loop202270202838%_
                                            (lambda (_%hd202268202841%_
                                                     _%arg202274202843%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202268202841%_))
                                                  (let ((_%e202271202845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202268202841%_))))
                                                    (let ((_%lp-tl202273202850%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202271202845%_)))
                                                          (_%lp-hd202272202848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202271202845%_))))
                                                      (_%loop202270202838%_
                                                       _%lp-tl202273202850%_
                                                       (cons _%lp-hd202272202848%_
                                                             _%arg202274202843%_))))
                                                  (let ((_%arg202275202853%_
                                                         (reverse _%arg202274202843%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202266202830%_))
                                                        (let ((_%e202276202855%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202266202830%_))))
                  (let ((_%tl202278202860%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202276202855%_)))
                        (_%hd202277202858%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202276202855%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202277202858%_))
                        (let ((_%e202279202863%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202277202858%_))))
                          (let ((_%tl202281202868%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202279202863%_)))
                                (_%hd202280202866%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202279202863%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202280202866%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202280202866%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202281202868%_))
                                        (let ((_%e202282202871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202281202868%_))))
                                          (let ((_%tl202284202876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202282202871%_)))
                                                (_%hd202283202874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202282202871%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202283202874%_))
                                                (let ((_%e202285202879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202283202874%_))))
                                                  (let ((_%tl202287202884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202285202879%_)))
                                                        (_%hd202286202882%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202285202879%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202286202882%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202286202882%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202287202884%_))
                        (let ((_%e202288202887%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202287202884%_))))
                          (let ((_%tl202290202892%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202288202887%_)))
                                (_%hd202289202890%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202288202887%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202290202892%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202284202876%_))
                                    (let ((_%__splice204514204515%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202284202876%_
                                              '0))))
                                      (let ((_%tl202293202897%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204514204515%_
                                                '1)))
                                            (_%target202291202895%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204514204515%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202293202897%_))
                                            (letrec ((_%loop202294202900%_
                                                      (lambda (_%hd202292202903%_
                                                               _%xarg202298202905%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202292202903%_))
                                                            (let ((_%e202295202907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202292202903%_))))
                      (let ((_%lp-tl202297202912%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202295202907%_)))
                            (_%lp-hd202296202910%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202295202907%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202296202910%_))
                            (let ((_%e202300202915%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202296202910%_))))
                              (let ((_%tl202302202920%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202300202915%_)))
                                    (_%hd202301202918%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202300202915%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202301202918%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202301202918%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202302202920%_))
                                            (let ((_%e202303202923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202302202920%_))))
                                              (let ((_%tl202305202928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202303202923%_)))
                                                    (_%hd202304202926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202303202923%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202305202928%_))
                                                    (_%loop202294202900%_
                                                     _%lp-tl202297202912%_
                                                     (cons _%hd202304202926%_
                                                           _%xarg202298202905%_))
                                                    (_%__match204551204552%_
                                                     _%e202264202825%_
                                                     _%hd202265202828%_
                                                     _%tl202266202830%_
                                                     _%__splice204512204513%_
                                                     _%target202267202833%_
                                                     _%tl202269202835%_))))
                                            (_%__match204551204552%_
                                             _%e202264202825%_
                                             _%hd202265202828%_
                                             _%tl202266202830%_
                                             _%__splice204512204513%_
                                             _%target202267202833%_
                                             _%tl202269202835%_))
                                        (_%__match204551204552%_
                                         _%e202264202825%_
                                         _%hd202265202828%_
                                         _%tl202266202830%_
                                         _%__splice204512204513%_
                                         _%target202267202833%_
                                         _%tl202269202835%_))
                                    (_%__match204551204552%_
                                     _%e202264202825%_
                                     _%hd202265202828%_
                                     _%tl202266202830%_
                                     _%__splice204512204513%_
                                     _%target202267202833%_
                                     _%tl202269202835%_))))
                            (_%__match204551204552%_
                             _%e202264202825%_
                             _%hd202265202828%_
                             _%tl202266202830%_
                             _%__splice204512204513%_
                             _%target202267202833%_
                             _%tl202269202835%_))))
                    (let ((_%xarg202299202931%_
                           (reverse _%xarg202298202905%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202278202860%_))
                          (let ((_%g202261202933%_ _%xarg202299202931%_)
                                (_%g202262202934%_ _%hd202289202890%_)
                                (_%g202263202935%_ _%arg202275202853%_))
                            (if (and (let ((__tmp205805
                                            (let ((__tmp205806
                                                   (lambda (_%g202963202966%_
                                                            _%g202964202968%_)
                                                     (cons _%g202963202966%_
                                                           _%g202964202968%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205806
                                               '()
                                               _%g202263202935%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp205805))
                                     (let ((__tmp205809
                                            (length (let ((__tmp205810
                                                           (lambda (_%g202970202973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g202971202975%_)
                     (cons _%g202970202973%_ _%g202971202975%_))))
              (declare (not safe))
              (foldr__0 __tmp205810 '() _%g202263202935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp205807
                                            (length (let ((__tmp205808
                                                           (lambda (_%g202977202980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g202978202982%_)
                     (cons _%g202977202980%_ _%g202978202982%_))))
              (declare (not safe))
              (foldr__0 __tmp205808 '() _%g202261202933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp205809 __tmp205807))
                                     (let ((__tmp205813
                                            (let ((__tmp205814
                                                   (lambda (_%g202984202987%_
                                                            _%g202985202989%_)
                                                     (cons _%g202984202987%_
                                                           _%g202985202989%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205814
                                               '()
                                               _%g202263202935%_)))
                                           (__tmp205811
                                            (let ((__tmp205812
                                                   (lambda (_%g202991202994%_
                                                            _%g202992202996%_)
                                                     (cons _%g202991202994%_
                                                           _%g202992202996%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205812
                                               '()
                                               _%g202261202933%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp205813
                                        __tmp205811))
                                     (not (let ((__tmp205817
                                                 (lambda (_%g202998203000%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g202998203000%_
                                                      _%g202262202934%_))))
                                                (__tmp205815
                                                 (let ((__tmp205816
                                                        (lambda (_%g203002203005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g203003203007%_)
                  (cons _%g203002203005%_ _%g203003203007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp205816
                                                    '()
                                                    _%g202263202935%_))))
                                            (declare (not safe))
                                            (__find __tmp205817 __tmp205815))))
                                (_%__kont204510204511%_
                                 _%g202261202933%_
                                 _%g202262202934%_
                                 _%g202263202935%_)
                                (_%__match204551204552%_
                                 _%e202264202825%_
                                 _%hd202265202828%_
                                 _%tl202266202830%_
                                 _%__splice204512204513%_
                                 _%target202267202833%_
                                 _%tl202269202835%_)))
                          (_%__match204551204552%_
                           _%e202264202825%_
                           _%hd202265202828%_
                           _%tl202266202830%_
                           _%__splice204512204513%_
                           _%target202267202833%_
                           _%tl202269202835%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202294202900%_
                                               _%target202291202895%_
                                               '()))
                                            (_%__match204551204552%_
                                             _%e202264202825%_
                                             _%hd202265202828%_
                                             _%tl202266202830%_
                                             _%__splice204512204513%_
                                             _%target202267202833%_
                                             _%tl202269202835%_))))
                                    (_%__match204551204552%_
                                     _%e202264202825%_
                                     _%hd202265202828%_
                                     _%tl202266202830%_
                                     _%__splice204512204513%_
                                     _%target202267202833%_
                                     _%tl202269202835%_))
                                (_%__match204551204552%_
                                 _%e202264202825%_
                                 _%hd202265202828%_
                                 _%tl202266202830%_
                                 _%__splice204512204513%_
                                 _%target202267202833%_
                                 _%tl202269202835%_))))
                        (_%__match204551204552%_
                         _%e202264202825%_
                         _%hd202265202828%_
                         _%tl202266202830%_
                         _%__splice204512204513%_
                         _%target202267202833%_
                         _%tl202269202835%_))
                    (_%__match204551204552%_
                     _%e202264202825%_
                     _%hd202265202828%_
                     _%tl202266202830%_
                     _%__splice204512204513%_
                     _%target202267202833%_
                     _%tl202269202835%_))
                (_%__match204551204552%_
                 _%e202264202825%_
                 _%hd202265202828%_
                 _%tl202266202830%_
                 _%__splice204512204513%_
                 _%target202267202833%_
                 _%tl202269202835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match204551204552%_
                                                 _%e202264202825%_
                                                 _%hd202265202828%_
                                                 _%tl202266202830%_
                                                 _%__splice204512204513%_
                                                 _%target202267202833%_
                                                 _%tl202269202835%_))))
                                        (_%__match204551204552%_
                                         _%e202264202825%_
                                         _%hd202265202828%_
                                         _%tl202266202830%_
                                         _%__splice204512204513%_
                                         _%target202267202833%_
                                         _%tl202269202835%_))
                                    (_%__match204551204552%_
                                     _%e202264202825%_
                                     _%hd202265202828%_
                                     _%tl202266202830%_
                                     _%__splice204512204513%_
                                     _%target202267202833%_
                                     _%tl202269202835%_))
                                (_%__match204551204552%_
                                 _%e202264202825%_
                                 _%hd202265202828%_
                                 _%tl202266202830%_
                                 _%__splice204512204513%_
                                 _%target202267202833%_
                                 _%tl202269202835%_))))
                        (_%__match204551204552%_
                         _%e202264202825%_
                         _%hd202265202828%_
                         _%tl202266202830%_
                         _%__splice204512204513%_
                         _%target202267202833%_
                         _%tl202269202835%_))))
                (_%__match204551204552%_
                 _%e202264202825%_
                 _%hd202265202828%_
                 _%tl202266202830%_
                 _%__splice204512204513%_
                 _%target202267202833%_
                 _%tl202269202835%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202270202838%_
                                     _%target202267202833%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204508204509%_))
                              (let ((_%e202264202825%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204508204509%_))))
                                (let ((_%tl202266202830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202264202825%_)))
                                      (_%hd202265202828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202264202825%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202265202828%_))
                                      (let ((_%__splice204512204513%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202265202828%_
                                                '0))))
                                        (let ((_%tl202269202835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204512204513%_
                                                  '1)))
                                              (_%target202267202833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204512204513%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202269202835%_))
                                              (_%__match204539204540%_
                                               _%e202264202825%_
                                               _%hd202265202828%_
                                               _%tl202266202830%_
                                               _%__splice204512204513%_
                                               _%target202267202833%_
                                               _%tl202269202835%_)
                                              (_%__match204551204552%_
                                               _%e202264202825%_
                                               _%hd202265202828%_
                                               _%tl202266202830%_
                                               _%__splice204512204513%_
                                               _%target202267202833%_
                                               _%tl202269202835%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202266202830%_))
                                          (let ((_%e202379202436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202266202830%_))))
                                            (let ((_%tl202381202441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202379202436%_)))
                                                  (_%hd202380202439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202379202436%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202380202439%_))
                                                  (let ((_%e202382202444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202380202439%_))))
                                                    (let ((_%tl202384202449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202382202444%_)))
                                                          (_%hd202383202447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202382202444%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202383202447%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202383202447%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202384202449%_))
                          (let ((_%e202385202452%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202384202449%_))))
                            (let ((_%tl202387202457%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202385202452%_)))
                                  (_%hd202386202455%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202385202452%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202386202455%_))
                                  (let ((_%e202388202460%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202386202455%_))))
                                    (let ((_%tl202390202465%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202388202460%_)))
                                          (_%hd202389202463%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202388202460%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202389202463%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202389202463%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202390202465%_))
                                                  (let ((_%e202391202468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202390202465%_))))
                                                    (let ((_%tl202393202473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202391202468%_)))
                                                          (_%hd202392202471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202391202468%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202393202473%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202387202457%_))
                      (let ((_%e202394202476%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202387202457%_))))
                        (let ((_%tl202396202481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202394202476%_)))
                              (_%hd202395202479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202394202476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202395202479%_))
                              (let ((_%e202397202484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202395202479%_))))
                                (let ((_%tl202399202489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202397202484%_)))
                                      (_%hd202398202487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202397202484%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202398202487%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202398202487%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202399202489%_))
                                              (let ((_%e202400202492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202399202489%_))))
                                                (let ((_%tl202402202497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202400202492%_)))
                                                      (_%hd202401202495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202400202492%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202402202497%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202396202481%_))
                                                          (let ((_%e202403202500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202396202481%_))))
                    (let ((_%tl202405202505%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202403202500%_)))
                          (_%hd202404202503%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202403202500%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd202404202503%_))
                          (let ((_%e202406202508%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202404202503%_))))
                            (let ((_%tl202408202513%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202406202508%_)))
                                  (_%hd202407202511%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202406202508%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd202407202511%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd202407202511%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202408202513%_))
                                          (let ((_%e202409202516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202408202513%_))))
                                            (let ((_%tl202411202521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202409202516%_)))
                                                  (_%hd202410202519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202409202516%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202411202521%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202405202505%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202381202441%_))
                                                          (_%__match204649204650%_
                                                           _%e202264202825%_
                                                           _%hd202265202828%_
                                                           _%tl202266202830%_
                                                           _%e202379202436%_
                                                           _%hd202380202439%_
                                                           _%tl202381202441%_
                                                           _%e202382202444%_
                                                           _%hd202383202447%_
                                                           _%tl202384202449%_
                                                           _%e202385202452%_
                                                           _%hd202386202455%_
                                                           _%tl202387202457%_
                                                           _%e202388202460%_
                                                           _%hd202389202463%_
                                                           _%tl202390202465%_
                                                           _%e202391202468%_
                                                           _%hd202392202471%_
                                                           _%tl202393202473%_
                                                           _%e202394202476%_
                                                           _%hd202395202479%_
                                                           _%tl202396202481%_
                                                           _%e202397202484%_
                                                           _%hd202398202487%_
                                                           _%tl202399202489%_
                                                           _%e202400202492%_
                                                           _%hd202401202495%_
                                                           _%tl202402202497%_
                                                           _%e202403202500%_
                                                           _%hd202404202503%_
                                                           _%tl202405202505%_
                                                           _%e202406202508%_
                                                           _%hd202407202511%_
                                                           _%tl202408202513%_
                                                           _%e202409202516%_
                                                           _%hd202410202519%_
                                                           _%tl202411202521%_)
                                                          (_%__kont204524204525%_))
                                                      (_%__kont204524204525%_))
                                                  (_%__kont204524204525%_))))
                                          (_%__kont204524204525%_))
                                      (_%__kont204524204525%_))
                                  (_%__kont204524204525%_))))
                          (_%__kont204524204525%_))))
                  (_%__kont204524204525%_))
              (_%__kont204524204525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont204524204525%_))
                                          (_%__kont204524204525%_))
                                      (_%__kont204524204525%_))))
                              (_%__kont204524204525%_))))
                      (_%__kont204524204525%_))
                  (_%__kont204524204525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont204524204525%_))
                                              (_%__kont204524204525%_))
                                          (_%__kont204524204525%_))))
                                  (_%__kont204524204525%_))))
                          (_%__kont204524204525%_))
                      (_%__kont204524204525%_))
                  (_%__kont204524204525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont204524204525%_))))
                                          (_%__kont204524204525%_)))))
                              (_%__kont204524204525%_)))))))
                 (_%dispatch-case-e201574%_
                  (lambda (_%hd201721%_ _%body201722%_)
                    (let* ((_%form201724%_
                            (cons _%hd201721%_ (cons _%body201722%_ '())))
                           (_%__stx204652204653%_ _%form201724%_)
                           (_%g201728201852%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx204652204653%_)))))
                      (let ((_%__kont204654204655%_
                             (lambda (_%g201730202217%_
                                      _%g201731202218%_
                                      _%g201732202219%_)
                               (let ((__tmp205818
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201731202218%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201570%_
                                  __tmp205818))))
                            (_%__kont204660204661%_
                             (lambda (_%g201775202069%_
                                      _%g201776202070%_
                                      _%g201777202071%_
                                      _%g201778202072%_)
                               (let ((__tmp205819
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201775202069%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201570%_
                                  __tmp205819))))
                            (_%__kont204664204665%_
                             (lambda (_%g201815201937%_
                                      _%g201816201938%_
                                      _%g201817201939%_)
                               (let ((__tmp205820
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201815201937%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201570%_
                                  __tmp205820)))))
                        (let* ((_%__match204761204762%_
                                (lambda (_%e201818201857%_
                                         _%hd201819201860%_
                                         _%tl201820201862%_
                                         _%e201821201865%_
                                         _%hd201822201868%_
                                         _%tl201823201870%_
                                         _%e201824201873%_
                                         _%hd201825201876%_
                                         _%tl201826201878%_
                                         _%e201827201881%_
                                         _%hd201828201884%_
                                         _%tl201829201886%_
                                         _%e201830201889%_
                                         _%hd201831201892%_
                                         _%tl201832201894%_
                                         _%e201833201897%_
                                         _%hd201834201900%_
                                         _%tl201835201902%_
                                         _%e201836201905%_
                                         _%hd201837201908%_
                                         _%tl201838201910%_
                                         _%e201839201913%_
                                         _%hd201840201916%_
                                         _%tl201841201918%_
                                         _%e201842201921%_
                                         _%hd201843201924%_
                                         _%tl201844201926%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201838201910%_))
                                      (let ((_%e201845201929%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201838201910%_))))
                                        (let ((_%tl201847201934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201845201929%_)))
                                              (_%hd201846201932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201845201929%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201847201934%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201823201870%_))
                                                  (_%__kont204664204665%_
                                                   _%hd201843201924%_
                                                   _%hd201834201900%_
                                                   _%hd201819201860%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201728201852%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201728201852%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201728201852%_)))))
                               (_%__match204691204692%_
                                (lambda (_%e201779201975%_
                                         _%hd201780201978%_
                                         _%tl201781201980%_
                                         _%__splice204662204663%_
                                         _%target201782201983%_
                                         _%tl201784201985%_)
                                  (letrec ((_%loop201785201988%_
                                            (lambda (_%hd201783201991%_
                                                     _%arg201789201993%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201783201991%_))
                                                  (let ((_%e201786201995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201783201991%_))))
                                                    (let ((_%lp-tl201788202000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201786201995%_)))
                                                          (_%lp-hd201787201998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201786201995%_))))
                                                      (_%loop201785201988%_
                                                       _%lp-tl201788202000%_
                                                       (cons _%lp-hd201787201998%_
                                                             _%arg201789201993%_))))
                                                  (let ((_%arg201790202003%_
                                                         (reverse _%arg201789201993%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201781201980%_))
                                                        (let ((_%e201791202005%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201781201980%_))))
                  (let ((_%tl201793202010%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201791202005%_)))
                        (_%hd201792202008%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201791202005%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201792202008%_))
                        (let ((_%e201794202013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201792202008%_))))
                          (let ((_%tl201796202018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201794202013%_)))
                                (_%hd201795202016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201794202013%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201795202016%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd201795202016%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201796202018%_))
                                        (let ((_%e201797202021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201796202018%_))))
                                          (let ((_%tl201799202026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201797202021%_)))
                                                (_%hd201798202024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201797202021%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201798202024%_))
                                                (let ((_%e201800202029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201798202024%_))))
                                                  (let ((_%tl201802202034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201800202029%_)))
                                                        (_%hd201801202032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201800202029%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd201801202032%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd201801202032%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201802202034%_))
                        (let ((_%e201803202037%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl201802202034%_))))
                          (let ((_%tl201805202042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201803202037%_)))
                                (_%hd201804202040%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201803202037%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201805202042%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl201799202026%_))
                                    (let ((_%e201806202045%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl201799202026%_))))
                                      (let ((_%tl201808202050%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201806202045%_)))
                                            (_%hd201807202048%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201806202045%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201807202048%_))
                                            (let ((_%e201809202053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd201807202048%_))))
                                              (let ((_%tl201811202058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201809202053%_)))
                                                    (_%hd201810202056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201809202053%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd201810202056%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd201810202056%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201811202058%_))
                                                            (let ((_%e201812202061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201811202058%_))))
                      (let ((_%tl201814202066%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201812202061%_)))
                            (_%hd201813202064%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201812202061%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201814202066%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201793202010%_))
                                (_%__kont204660204661%_
                                 _%hd201813202064%_
                                 _%hd201804202040%_
                                 _%tl201784201985%_
                                 _%arg201790202003%_)
                                (_%__match204761204762%_
                                 _%e201779201975%_
                                 _%hd201780201978%_
                                 _%tl201781201980%_
                                 _%e201791202005%_
                                 _%hd201792202008%_
                                 _%tl201793202010%_
                                 _%e201794202013%_
                                 _%hd201795202016%_
                                 _%tl201796202018%_
                                 _%e201797202021%_
                                 _%hd201798202024%_
                                 _%tl201799202026%_
                                 _%e201800202029%_
                                 _%hd201801202032%_
                                 _%tl201802202034%_
                                 _%e201803202037%_
                                 _%hd201804202040%_
                                 _%tl201805202042%_
                                 _%e201806202045%_
                                 _%hd201807202048%_
                                 _%tl201808202050%_
                                 _%e201809202053%_
                                 _%hd201810202056%_
                                 _%tl201811202058%_
                                 _%e201812202061%_
                                 _%hd201813202064%_
                                 _%tl201814202066%_))
                            (let ()
                              (declare (not safe))
                              (_%g201728201852%_)))))
                    (let () (declare (not safe)) (_%g201728201852%_)))
                (let () (declare (not safe)) (_%g201728201852%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201728201852%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g201728201852%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g201728201852%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201728201852%_)))))
                        (let () (declare (not safe)) (_%g201728201852%_)))
                    (let () (declare (not safe)) (_%g201728201852%_)))
                (let () (declare (not safe)) (_%g201728201852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201728201852%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201728201852%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g201728201852%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201728201852%_)))))
                        (let () (declare (not safe)) (_%g201728201852%_)))))
                (let () (declare (not safe)) (_%g201728201852%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop201785201988%_
                                     _%target201782201983%_
                                     '()))))
                               (_%__match204679204680%_
                                (lambda (_%e201733202109%_
                                         _%hd201734202112%_
                                         _%tl201735202114%_
                                         _%__splice204656204657%_
                                         _%target201736202117%_
                                         _%tl201738202119%_)
                                  (letrec ((_%loop201739202122%_
                                            (lambda (_%hd201737202125%_
                                                     _%arg201743202127%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201737202125%_))
                                                  (let ((_%e201740202129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201737202125%_))))
                                                    (let ((_%lp-tl201742202134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201740202129%_)))
                                                          (_%lp-hd201741202132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201740202129%_))))
                                                      (_%loop201739202122%_
                                                       _%lp-tl201742202134%_
                                                       (cons _%lp-hd201741202132%_
                                                             _%arg201743202127%_))))
                                                  (let ((_%arg201744202137%_
                                                         (reverse _%arg201743202127%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201735202114%_))
                                                        (let ((_%e201745202139%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201735202114%_))))
                  (let ((_%tl201747202144%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201745202139%_)))
                        (_%hd201746202142%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201745202139%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201746202142%_))
                        (let ((_%e201748202147%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201746202142%_))))
                          (let ((_%tl201750202152%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201748202147%_)))
                                (_%hd201749202150%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201748202147%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201749202150%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd201749202150%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201750202152%_))
                                        (let ((_%e201751202155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201750202152%_))))
                                          (let ((_%tl201753202160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201751202155%_)))
                                                (_%hd201752202158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201751202155%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201752202158%_))
                                                (let ((_%e201754202163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201752202158%_))))
                                                  (let ((_%tl201756202168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201754202163%_)))
                                                        (_%hd201755202166%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201754202163%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd201755202166%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd201755202166%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201756202168%_))
                        (let ((_%e201757202171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl201756202168%_))))
                          (let ((_%tl201759202176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201757202171%_)))
                                (_%hd201758202174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201757202171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201759202176%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl201753202160%_))
                                    (let ((_%__splice204658204659%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl201753202160%_
                                              '0))))
                                      (let ((_%tl201762202181%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204658204659%_
                                                '1)))
                                            (_%target201760202179%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204658204659%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl201762202181%_))
                                            (letrec ((_%loop201763202184%_
                                                      (lambda (_%hd201761202187%_
                                                               _%xarg201767202189%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd201761202187%_))
                                                            (let ((_%e201764202191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd201761202187%_))))
                      (let ((_%lp-tl201766202196%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201764202191%_)))
                            (_%lp-hd201765202194%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201764202191%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd201765202194%_))
                            (let ((_%e201769202199%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd201765202194%_))))
                              (let ((_%tl201771202204%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201769202199%_)))
                                    (_%hd201770202202%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201769202199%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201770202202%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd201770202202%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201771202204%_))
                                            (let ((_%e201772202207%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201771202204%_))))
                                              (let ((_%tl201774202212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201772202207%_)))
                                                    (_%hd201773202210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201772202207%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl201774202212%_))
                                                    (_%loop201763202184%_
                                                     _%lp-tl201766202196%_
                                                     (cons _%hd201773202210%_
                                                           _%xarg201767202189%_))
                                                    (_%__match204691204692%_
                                                     _%e201733202109%_
                                                     _%hd201734202112%_
                                                     _%tl201735202114%_
                                                     _%__splice204656204657%_
                                                     _%target201736202117%_
                                                     _%tl201738202119%_))))
                                            (_%__match204691204692%_
                                             _%e201733202109%_
                                             _%hd201734202112%_
                                             _%tl201735202114%_
                                             _%__splice204656204657%_
                                             _%target201736202117%_
                                             _%tl201738202119%_))
                                        (_%__match204691204692%_
                                         _%e201733202109%_
                                         _%hd201734202112%_
                                         _%tl201735202114%_
                                         _%__splice204656204657%_
                                         _%target201736202117%_
                                         _%tl201738202119%_))
                                    (_%__match204691204692%_
                                     _%e201733202109%_
                                     _%hd201734202112%_
                                     _%tl201735202114%_
                                     _%__splice204656204657%_
                                     _%target201736202117%_
                                     _%tl201738202119%_))))
                            (_%__match204691204692%_
                             _%e201733202109%_
                             _%hd201734202112%_
                             _%tl201735202114%_
                             _%__splice204656204657%_
                             _%target201736202117%_
                             _%tl201738202119%_))))
                    (let ((_%xarg201768202215%_
                           (reverse _%xarg201767202189%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201747202144%_))
                          (_%__kont204654204655%_
                           _%xarg201768202215%_
                           _%hd201758202174%_
                           _%arg201744202137%_)
                          (_%__match204691204692%_
                           _%e201733202109%_
                           _%hd201734202112%_
                           _%tl201735202114%_
                           _%__splice204656204657%_
                           _%target201736202117%_
                           _%tl201738202119%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop201763202184%_
                                               _%target201760202179%_
                                               '()))
                                            (_%__match204691204692%_
                                             _%e201733202109%_
                                             _%hd201734202112%_
                                             _%tl201735202114%_
                                             _%__splice204656204657%_
                                             _%target201736202117%_
                                             _%tl201738202119%_))))
                                    (_%__match204691204692%_
                                     _%e201733202109%_
                                     _%hd201734202112%_
                                     _%tl201735202114%_
                                     _%__splice204656204657%_
                                     _%target201736202117%_
                                     _%tl201738202119%_))
                                (_%__match204691204692%_
                                 _%e201733202109%_
                                 _%hd201734202112%_
                                 _%tl201735202114%_
                                 _%__splice204656204657%_
                                 _%target201736202117%_
                                 _%tl201738202119%_))))
                        (_%__match204691204692%_
                         _%e201733202109%_
                         _%hd201734202112%_
                         _%tl201735202114%_
                         _%__splice204656204657%_
                         _%target201736202117%_
                         _%tl201738202119%_))
                    (_%__match204691204692%_
                     _%e201733202109%_
                     _%hd201734202112%_
                     _%tl201735202114%_
                     _%__splice204656204657%_
                     _%target201736202117%_
                     _%tl201738202119%_))
                (_%__match204691204692%_
                 _%e201733202109%_
                 _%hd201734202112%_
                 _%tl201735202114%_
                 _%__splice204656204657%_
                 _%target201736202117%_
                 _%tl201738202119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match204691204692%_
                                                 _%e201733202109%_
                                                 _%hd201734202112%_
                                                 _%tl201735202114%_
                                                 _%__splice204656204657%_
                                                 _%target201736202117%_
                                                 _%tl201738202119%_))))
                                        (_%__match204691204692%_
                                         _%e201733202109%_
                                         _%hd201734202112%_
                                         _%tl201735202114%_
                                         _%__splice204656204657%_
                                         _%target201736202117%_
                                         _%tl201738202119%_))
                                    (_%__match204691204692%_
                                     _%e201733202109%_
                                     _%hd201734202112%_
                                     _%tl201735202114%_
                                     _%__splice204656204657%_
                                     _%target201736202117%_
                                     _%tl201738202119%_))
                                (_%__match204691204692%_
                                 _%e201733202109%_
                                 _%hd201734202112%_
                                 _%tl201735202114%_
                                 _%__splice204656204657%_
                                 _%target201736202117%_
                                 _%tl201738202119%_))))
                        (_%__match204691204692%_
                         _%e201733202109%_
                         _%hd201734202112%_
                         _%tl201735202114%_
                         _%__splice204656204657%_
                         _%target201736202117%_
                         _%tl201738202119%_))))
                (_%__match204691204692%_
                 _%e201733202109%_
                 _%hd201734202112%_
                 _%tl201735202114%_
                 _%__splice204656204657%_
                 _%target201736202117%_
                 _%tl201738202119%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop201739202122%_
                                     _%target201736202117%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204652204653%_))
                              (let ((_%e201733202109%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204652204653%_))))
                                (let ((_%tl201735202114%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201733202109%_)))
                                      (_%hd201734202112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201733202109%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd201734202112%_))
                                      (let ((_%__splice204656204657%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd201734202112%_
                                                '0))))
                                        (let ((_%tl201738202119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204656204657%_
                                                  '1)))
                                              (_%target201736202117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204656204657%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201738202119%_))
                                              (_%__match204679204680%_
                                               _%e201733202109%_
                                               _%hd201734202112%_
                                               _%tl201735202114%_
                                               _%__splice204656204657%_
                                               _%target201736202117%_
                                               _%tl201738202119%_)
                                              (_%__match204691204692%_
                                               _%e201733202109%_
                                               _%hd201734202112%_
                                               _%tl201735202114%_
                                               _%__splice204656204657%_
                                               _%target201736202117%_
                                               _%tl201738202119%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201735202114%_))
                                          (let ((_%e201821201865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201735202114%_))))
                                            (let ((_%tl201823201870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201821201865%_)))
                                                  (_%hd201822201868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201821201865%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201822201868%_))
                                                  (let ((_%e201824201873%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201822201868%_))))
                                                    (let ((_%tl201826201878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201824201873%_)))
                                                          (_%hd201825201876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201824201873%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd201825201876%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd201825201876%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201826201878%_))
                          (let ((_%e201827201881%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201826201878%_))))
                            (let ((_%tl201829201886%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201827201881%_)))
                                  (_%hd201828201884%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201827201881%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201828201884%_))
                                  (let ((_%e201830201889%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201828201884%_))))
                                    (let ((_%tl201832201894%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201830201889%_)))
                                          (_%hd201831201892%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201830201889%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201831201892%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd201831201892%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201832201894%_))
                                                  (let ((_%e201833201897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201832201894%_))))
                                                    (let ((_%tl201835201902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201833201897%_)))
                                                          (_%hd201834201900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201833201897%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201835201902%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201829201886%_))
                      (let ((_%e201836201905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201829201886%_))))
                        (let ((_%tl201838201910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201836201905%_)))
                              (_%hd201837201908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201836201905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd201837201908%_))
                              (let ((_%e201839201913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd201837201908%_))))
                                (let ((_%tl201841201918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201839201913%_)))
                                      (_%hd201840201916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201839201913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd201840201916%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd201840201916%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201841201918%_))
                                              (let ((_%e201842201921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201841201918%_))))
                                                (let ((_%tl201844201926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201842201921%_)))
                                                      (_%hd201843201924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201842201921%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201844201926%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201838201910%_))
                                                          (let ((_%e201845201929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201838201910%_))))
                    (let ((_%tl201847201934%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201845201929%_)))
                          (_%hd201846201932%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201845201929%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201847201934%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201823201870%_))
                              (_%__kont204664204665%_
                               _%hd201843201924%_
                               _%hd201834201900%_
                               _%hd201734202112%_)
                              (let ()
                                (declare (not safe))
                                (_%g201728201852%_)))
                          (let () (declare (not safe)) (_%g201728201852%_)))))
                  (let () (declare (not safe)) (_%g201728201852%_)))
              (let () (declare (not safe)) (_%g201728201852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201728201852%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201728201852%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201728201852%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g201728201852%_)))))
                      (let () (declare (not safe)) (_%g201728201852%_)))
                  (let () (declare (not safe)) (_%g201728201852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201728201852%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201728201852%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201728201852%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201728201852%_)))))
                          (let () (declare (not safe)) (_%g201728201852%_)))
                      (let () (declare (not safe)) (_%g201728201852%_)))
                  (let () (declare (not safe)) (_%g201728201852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201728201852%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201728201852%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g201728201852%_))))))))
                 (_%generate1201575%_
                  (lambda (_%args201706%_
                           _%arglen201707%_
                           _%hd201708%_
                           _%body201709%_)
                    (let* ((_%len201711%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd201708%_)))
                           (_%condition201716%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd201708%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen201707%_
                                                (cons _%len201711%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen201707%_ (cons _%len201711%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len201711%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen201707%_
                                                    (cons _%len201711%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen201707%_ (cons _%len201711%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch201718%_
                            (if (_%dispatch-case?201573%_
                                 _%hd201708%_
                                 _%body201709%_)
                                (_%dispatch-case-e201574%_
                                 _%hd201708%_
                                 _%body201709%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self201570%_
                                 _%hd201708%_
                                 _%body201709%_))))
                      (cons _%condition201716%_
                            (cons (cons 'apply
                                        (cons _%dispatch201718%_
                                              (cons _%args201706%_ '())))
                                  '()))))))
          (let* ((_%g201577201605%_
                  (lambda (_%g201578201602%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201578201602%_))))
                 (_%g201576201703%_
                  (lambda (_%g201578201608%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201578201608%_))
                        (let ((_%e201581201610%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201578201608%_))))
                          (let ((_%hd201582201613%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201581201610%_)))
                                (_%tl201583201615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201581201610%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl201583201615%_))
                                (let ((_g205821_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl201583201615%_
                                          '0))))
                                  (begin
                                    (let ((_g205822_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g205821_)
                                                 (##values-length _g205821_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g205822_ 2)))
                                          (error "Context expects 2 values"
                                                 _g205822_)))
                                    (let ((_%target201584201618%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205821_ 0)))
                                          (_%tl201586201620%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205821_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201586201620%_))
                                          (letrec ((_%loop201587201623%_
                                                    (lambda (_%hd201585201626%_
                                                             _%body201591201628%_
                                                             _%hd201592201629%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd201585201626%_))
                                                          (let ((_%e201588201631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd201585201626%_))))
                    (let ((_%lp-hd201589201634%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201588201631%_)))
                          (_%lp-tl201590201636%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201588201631%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd201589201634%_))
                          (let ((_%e201595201639%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd201589201634%_))))
                            (let ((_%hd201596201642%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201595201639%_)))
                                  (_%tl201597201644%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201595201639%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201597201644%_))
                                  (let ((_%e201598201647%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201597201644%_))))
                                    (let ((_%hd201599201650%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201598201647%_)))
                                          (_%tl201600201652%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201598201647%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201600201652%_))
                                          (_%loop201587201623%_
                                           _%lp-tl201590201636%_
                                           (cons _%hd201599201650%_
                                                 _%body201591201628%_)
                                           (cons _%hd201596201642%_
                                                 _%hd201592201629%_))
                                          (_%g201577201605%_
                                           _%g201578201608%_))))
                                  (_%g201577201605%_ _%g201578201608%_))))
                          (_%g201577201605%_ _%g201578201608%_))))
                  (let ((_%body201593201655%_ (reverse _%body201591201628%_))
                        (_%hd201594201656%_ (reverse _%hd201592201629%_)))
                    ((lambda (_%g201579201658%_ _%g201580201659%_)
                       (let ((_%args201678%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen201679%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name201680%_
                              (let ((_%$e201675%_
                                     (let ((__tmp205823
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp205823 _%stx201571%_))))
                                (if _%$e201675%_
                                    _%$e201675%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args201678%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen201679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args201678%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args201678%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp205827
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name201680%_
                                                                (cons _%args201678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp205824
                                  (map (lambda (_%g201681201684%_
                                                _%g201682201686%_)
                                         (_%generate1201575%_
                                          _%args201678%_
                                          _%arglen201679%_
                                          _%g201681201684%_
                                          _%g201682201686%_))
                                       (let ((__tmp205825
                                              (lambda (_%g201688201691%_
                                                       _%g201689201693%_)
                                                (cons _%g201688201691%_
                                                      _%g201689201693%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp205825
                                          '()
                                          _%g201580201659%_))
                                       (let ((__tmp205826
                                              (lambda (_%g201695201698%_
                                                       _%g201696201700%_)
                                                (cons _%g201695201698%_
                                                      _%g201696201700%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp205826
                                          '()
                                          _%g201579201658%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp205827 __tmp205824)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body201593201655%_
                     _%hd201594201656%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop201587201623%_
                                             _%target201584201618%_
                                             '()
                                             '()))
                                          (_%g201577201605%_
                                           _%g201578201608%_)))))
                                (_%g201577201605%_ _%g201578201608%_))))
                        (_%g201577201605%_ _%g201578201608%_)))))
            (_%g201576201703%_ _%stx201571%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self200807%_ _%stx200808%_ _%compiled-body?200809%_)
        (letrec ((_%generate-simple200811%_
                  (lambda (_%hd201555%_ _%body201556%_)
                    (_%coalesce-boolean200812%_
                     (_%simplify-let200813%_
                      (gxc#generate-runtime-simple-let
                       _%self200807%_
                       'let
                       _%hd201555%_
                       _%body201556%_
                       _%compiled-body?200809%_)))))
                 (_%coalesce-boolean200812%_
                  (lambda (_%code201416%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code201417201443%_ _%code201416%_)
                               (_%else201419201451%_
                                (lambda () _%code201416%_))
                               (_%K201421201488%_
                                (lambda (_%expr2201454%_
                                         _%expr1201455%_
                                         _%id201456%_)
                                  (let* ((_%expr2201457201465%_
                                          _%expr2201454%_)
                                         (_%else201459201473%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1201455%_
                                                        (cons _%expr2201454%_
                                                              '())))))
                                         (_%K201461201478%_
                                          (lambda (_%exprs201476%_)
                                            (cons 'or
                                                  (cons _%expr1201455%_
                                                        _%exprs201476%_)))))
                                    (if (pair? _%expr2201457201465%_)
                                        (let ((_%hd201462201481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2201457201465%_)))
                                              (_%tl201463201483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2201457201465%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201462201481%_ 'or))
                                              (let ((_%exprs201486%_
                                                     _%tl201463201483%_))
                                                (_%K201461201478%_
                                                 _%exprs201486%_))
                                              (_%else201459201473%_)))
                                        (_%else201459201473%_))))))
                          (if (pair? _%code201417201443%_)
                              (let ((_%hd201422201491%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code201417201443%_)))
                                    (_%tl201423201493%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code201417201443%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd201422201491%_ 'let))
                                    (if (pair? _%tl201423201493%_)
                                        (let ((_%hd201424201496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl201423201493%_)))
                                              (_%tl201425201498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl201423201493%_))))
                                          (if (pair? _%hd201424201496%_)
                                              (let ((_%hd201436201501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd201424201496%_)))
                                                    (_%tl201437201503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd201424201496%_))))
                                                (if (pair? _%hd201436201501%_)
                                                    (let ((_%hd201438201506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd201436201501%_)))
                                                          (_%tl201439201508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd201436201501%_))))
                                                      (let ((_%id201511%_
                                                             _%hd201438201506%_))
                                                        (if (pair? _%tl201439201508%_)
                                                            (let ((_%hd201440201513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl201439201508%_)))
                          (_%tl201441201515%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201439201508%_))))
                      (let ((_%expr1201518%_ _%hd201440201513%_))
                        (if (null? _%tl201441201515%_)
                            (if (null? _%tl201437201503%_)
                                (if (pair? _%tl201425201498%_)
                                    (let ((_%hd201426201520%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl201425201498%_)))
                                          (_%tl201427201522%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl201425201498%_))))
                                      (if (pair? _%hd201426201520%_)
                                          (let ((_%hd201428201525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd201426201520%_)))
                                                (_%tl201429201527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd201426201520%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201428201525%_
                                                         'if))
                                                (if (pair? _%tl201429201527%_)
                                                    (let ((_%hd201430201530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl201429201527%_)))
                                                          (_%tl201431201532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl201429201527%_))))
                                                      (if ((lambda (_%g201534201536%_)
                                                             (eq? _%g201534201536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id201511%_))
                   _%hd201430201530%_)
                  (if (pair? _%tl201431201532%_)
                      (let ((_%hd201432201539%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl201431201532%_)))
                            (_%tl201433201541%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl201431201532%_))))
                        (if ((lambda (_%g201543201545%_)
                               (eq? _%g201543201545%_ _%id201511%_))
                             _%hd201432201539%_)
                            (if (pair? _%tl201433201541%_)
                                (let ((_%hd201434201548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201433201541%_)))
                                      (_%tl201435201550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201433201541%_))))
                                  (let ((_%expr2201553%_ _%hd201434201548%_))
                                    (if (null? _%tl201435201550%_)
                                        (if (null? _%tl201427201522%_)
                                            (_%K201421201488%_
                                             _%expr2201553%_
                                             _%expr1201518%_
                                             _%id201511%_)
                                            (_%else201419201451%_))
                                        (_%else201419201451%_))))
                                (_%else201419201451%_))
                            (_%else201419201451%_)))
                      (_%else201419201451%_))
                  (_%else201419201451%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201419201451%_))
                                                (_%else201419201451%_)))
                                          (_%else201419201451%_)))
                                    (_%else201419201451%_))
                                (_%else201419201451%_))
                            (_%else201419201451%_))))
                    (_%else201419201451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201419201451%_)))
                                              (_%else201419201451%_)))
                                        (_%else201419201451%_))
                                    (_%else201419201451%_)))
                              (_%else201419201451%_)))
                        _%code201416%_)))
                 (_%simplify-let200813%_
                  (lambda (_%code201115%_)
                    (let* ((_%code201116201188%_ _%code201115%_)
                           (_%else201121201196%_ (lambda () _%code201115%_)))
                      (let ((_%K201180201396%_
                             (lambda (_%expr201394%_) _%expr201394%_))
                            (_%K201163201342%_
                             (lambda (_%body201338%_
                                      _%expr201339%_
                                      _%id201340%_)
                               (cons 'let
                                     (cons (cons (cons _%id201340%_
                                                       (cons _%expr201339%_
                                                             '()))
                                                 '())
                                           _%body201338%_))))
                            (_%K201140201266%_
                             (lambda (_%body201260%_
                                      _%expr2201261%_
                                      _%id2201262%_
                                      _%expr1201263%_
                                      _%id1201264%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201264%_
                                                       (cons _%expr1201263%_
                                                             '()))
                                                 (cons (cons _%id2201262%_
                                                             (cons _%expr2201261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body201260%_))))
                            (_%K201123201205%_
                             (lambda (_%body201200%_
                                      _%bind201201%_
                                      _%expr1201202%_
                                      _%id1201203%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201203%_
                                                       (cons _%expr1201202%_
                                                             '()))
                                                 _%bind201201%_)
                                           _%body201200%_)))))
                        (if (pair? _%code201116201188%_)
                            (let ((_%tl201182201401%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code201116201188%_)))
                                  (_%hd201181201399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code201116201188%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd201181201399%_ 'let))
                                  (if (pair? _%tl201182201401%_)
                                      (let ((_%tl201184201406%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl201182201401%_)))
                                            (_%hd201183201404%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl201182201401%_))))
                                        (if (null? _%hd201183201404%_)
                                            (if (pair? _%tl201184201406%_)
                                                (let ((_%tl201186201411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl201184201406%_)))
                                                      (_%hd201185201409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl201184201406%_))))
                                                  (if (null? _%tl201186201411%_)
                                                      (let ((_%expr201414%_
                                                             _%hd201185201409%_))
                                                        (_%K201180201396%_
                                                         _%expr201414%_))
                                                      (_%else201121201196%_)))
                                                (_%else201121201196%_))
                                            (if (pair? _%hd201183201404%_)
                                                (let ((_%tl201175201357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd201183201404%_)))
                                                      (_%hd201174201355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd201183201404%_))))
                                                  (if (pair? _%hd201174201355%_)
                                                      (let ((_%tl201177201362%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd201174201355%_)))
                    (_%hd201176201360%_
                     (let () (declare (not safe)) (##car _%hd201174201355%_))))
                (if (pair? _%tl201177201362%_)
                    (let ((_%tl201179201369%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201177201362%_)))
                          (_%hd201178201367%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl201177201362%_))))
                      (if (null? _%tl201179201369%_)
                          (if (null? _%tl201175201357%_)
                              (if (pair? _%tl201184201406%_)
                                  (let ((_%tl201169201376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201184201406%_)))
                                        (_%hd201168201374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201184201406%_))))
                                    (if (pair? _%hd201168201374%_)
                                        (let ((_%tl201171201381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd201168201374%_)))
                                              (_%hd201170201379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd201168201374%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201170201379%_
                                                       'let))
                                              (if (pair? _%tl201171201381%_)
                                                  (let ((_%tl201173201386%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201171201381%_)))
                                                        (_%hd201172201384%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201171201381%_))))
                                                    (if (null? _%hd201172201384%_)
                                                        (if (null? _%tl201169201376%_)
                                                            (let ((_%id201365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd201176201360%_)
                          (_%expr201372%_ _%hd201178201367%_)
                          (_%body201389%_ _%tl201173201386%_))
                      (_%K201163201342%_
                       _%body201389%_
                       _%expr201372%_
                       _%id201365%_))
                    (_%else201121201196%_))
                (if (pair? _%hd201172201384%_)
                    (let ((_%tl201152201315%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd201172201384%_)))
                          (_%hd201151201313%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd201172201384%_))))
                      (if (pair? _%hd201151201313%_)
                          (let ((_%tl201154201320%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd201151201313%_)))
                                (_%hd201153201318%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd201151201313%_))))
                            (if (pair? _%tl201154201320%_)
                                (let ((_%tl201156201327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201154201320%_)))
                                      (_%hd201155201325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201154201320%_))))
                                  (if (null? _%tl201156201327%_)
                                      (if (null? _%tl201152201315%_)
                                          (if (null? _%tl201169201376%_)
                                              (let ((_%id1201289%_
                                                     _%hd201176201360%_)
                                                    (_%expr1201296%_
                                                     _%hd201178201367%_)
                                                    (_%id2201323%_
                                                     _%hd201153201318%_)
                                                    (_%expr2201330%_
                                                     _%hd201155201325%_)
                                                    (_%body201332%_
                                                     _%tl201173201386%_))
                                                (_%K201140201266%_
                                                 _%body201332%_
                                                 _%expr2201330%_
                                                 _%id2201323%_
                                                 _%expr1201296%_
                                                 _%id1201289%_))
                                              (_%else201121201196%_))
                                          (_%else201121201196%_))
                                      (_%else201121201196%_)))
                                (_%else201121201196%_)))
                          (_%else201121201196%_)))
                    (_%else201121201196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201121201196%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd201170201379%_
                                                           'let*))
                                                  (if (pair? _%tl201171201381%_)
                                                      (let ((_%tl201133201249%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl201171201381%_)))
                    (_%hd201132201247%_
                     (let () (declare (not safe)) (##car _%tl201171201381%_))))
                (if (null? _%tl201169201376%_)
                    (let ((_%id1201228%_ _%hd201176201360%_)
                          (_%expr1201235%_ _%hd201178201367%_)
                          (_%bind201252%_ _%hd201132201247%_)
                          (_%body201254%_ _%tl201133201249%_))
                      (_%K201123201205%_
                       _%body201254%_
                       _%bind201252%_
                       _%expr1201235%_
                       _%id1201228%_))
                    (_%else201121201196%_)))
              (_%else201121201196%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201121201196%_))))
                                        (_%else201121201196%_)))
                                  (_%else201121201196%_))
                              (_%else201121201196%_))
                          (_%else201121201196%_)))
                    (_%else201121201196%_)))
              (_%else201121201196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else201121201196%_))))
                                      (_%else201121201196%_))
                                  (_%else201121201196%_)))
                            (_%else201121201196%_))))))
                 (_%generate-values200814%_
                  (lambda (_%hd200928%_ _%body200929%_)
                    (let _%lp200931%_ ((_%rest200933%_ _%hd200928%_)
                                       (_%bind200934%_ '())
                                       (_%check200935%_ '())
                                       (_%post200936%_ '()))
                      (let* ((_%__stx204981204982%_ _%rest200933%_)
                             (_%g200939200950%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx204981204982%_)))))
                        (let ((_%__kont204983204984%_
                               (lambda (_%g200941200977%_ _%g200942200978%_)
                                 (let* ((_%__stx204937204938%_
                                         _%g200942200978%_)
                                        (_%g200993201018%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx204937204938%_)))))
                                   (let ((_%__kont204939204940%_
                                          (lambda (_%g200995201091%_
                                                   _%g200996201092%_)
                                            (let ((_%eid201106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g200996201092%_)))
                                                  (_%expr201107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200807%_
                                                      _%g200995201091%_))))
                                              (_%lp200931%_
                                               _%g200941200977%_
                                               (cons (cons _%eid201106%_
                                                           (cons _%expr201107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200934%_)
                                               _%check200935%_
                                               _%post200936%_))))
                                         (_%__kont204941204942%_
                                          (lambda (_%g201006201039%_
                                                   _%g201007201040%_)
                                            (let* ((_%vals201053%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201055%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201053%_
                                                     _%g201007201040%_
                                                     _%g201006201039%_))
                                                   (_%refs201057%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201053%_
                                                     _%g201007201040%_))
                                                   (_%expr201059%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200807%_
                                                       _%g201006201039%_))))
                                              (_%lp200931%_
                                               _%g200941200977%_
                                               (cons (cons _%vals201053%_
                                                           (cons _%expr201059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200934%_)
                                               (cons _%check-values201055%_
                                                     _%check200935%_)
                                               (cons _%refs201057%_
                                                     _%post200936%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx204937204938%_))
                                         (let ((_%e200997201067%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx204937204938%_))))
                                           (let ((_%tl200999201072%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200997201067%_)))
                                                 (_%hd200998201070%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200997201067%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd200998201070%_))
                                                 (let ((_%e201000201075%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd200998201070%_))))
                                                   (let ((_%tl201002201080%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201000201075%_)))
                                                         (_%hd201001201078%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201000201075%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201002201080%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200999201072%_))
                     (let ((_%e201003201083%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200999201072%_))))
                       (let ((_%tl201005201088%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201003201083%_)))
                             (_%hd201004201086%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201003201083%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201005201088%_))
                             (_%__kont204939204940%_
                              _%hd201004201086%_
                              _%hd201001201078%_)
                             (let ()
                               (declare (not safe))
                               (_%g200993201018%_)))))
                     (let () (declare (not safe)) (_%g200993201018%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl200999201072%_))
                     (let ((_%e201011201031%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200999201072%_))))
                       (let ((_%tl201013201036%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201011201031%_)))
                             (_%hd201012201034%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201011201031%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201013201036%_))
                             (_%__kont204941204942%_
                              _%hd201012201034%_
                              _%hd200998201070%_)
                             (let ()
                               (declare (not safe))
                               (_%g200993201018%_)))))
                     (let () (declare (not safe)) (_%g200993201018%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl200999201072%_))
                                                     (let ((_%e201011201031%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl200999201072%_))))
                                                       (let ((_%tl201013201036%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201011201031%_)))
                     (_%hd201012201034%_
                      (let () (declare (not safe)) (##car _%e201011201031%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201013201036%_))
                     (_%__kont204941204942%_
                      _%hd201012201034%_
                      _%hd200998201070%_)
                     (let () (declare (not safe)) (_%g200993201018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200993201018%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g200993201018%_)))))))
                              (_%__kont204985204986%_
                               (lambda ()
                                 (let* ((_%body200957%_
                                         (if _%compiled-body?200809%_
                                             _%body200929%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200807%_
                                                _%body200929%_))))
                                        (_%body200959%_
                                         (_%generate-values-post200815%_
                                          _%post200936%_
                                          _%body200957%_))
                                        (_%body200961%_
                                         (_%generate-values-check200816%_
                                          _%check200935%_
                                          _%body200959%_)))
                                   (cons 'let
                                         (cons (reverse _%bind200934%_)
                                               (cons _%body200961%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204981204982%_))
                              (let ((_%e200943200969%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204981204982%_))))
                                (let ((_%tl200945200974%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200943200969%_)))
                                      (_%hd200944200972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200943200969%_))))
                                  (_%__kont204983204984%_
                                   _%tl200945200974%_
                                   _%hd200944200972%_)))
                              (_%__kont204985204986%_)))))))
                 (_%generate-values-post200815%_
                  (lambda (_%post200887%_ _%body200888%_)
                    (let _%lp200890%_ ((_%rest200892%_ _%post200887%_)
                                       (_%body200893%_ _%body200888%_))
                      (let* ((_%rest200894200902%_ _%rest200892%_)
                             (_%else200896200910%_ (lambda () _%body200893%_))
                             (_%K200898200916%_
                              (lambda (_%rest200913%_ _%bind200914%_)
                                (_%lp200890%_
                                 _%rest200913%_
                                 (cons 'let
                                       (cons _%bind200914%_
                                             (cons _%body200893%_ '())))))))
                        (if (pair? _%rest200894200902%_)
                            (let ((_%hd200899200919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200894200902%_)))
                                  (_%tl200900200921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200894200902%_))))
                              (let* ((_%bind200924%_ _%hd200899200919%_)
                                     (_%rest200926%_ _%tl200900200921%_))
                                (_%K200898200916%_
                                 _%rest200926%_
                                 _%bind200924%_)))
                            (_%else200896200910%_))))))
                 (_%generate-values-check200816%_
                  (lambda (_%check200884%_ _%body200885%_)
                    (cons 'begin
                          (let ((__tmp205829 (cons _%body200885%_ '()))
                                (__tmp205828 (reverse _%check200884%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp205829 __tmp205828))))))
          (let* ((_%g200818200835%_
                  (lambda (_%g200819200832%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200819200832%_))))
                 (_%g200817200881%_
                  (lambda (_%g200819200838%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200819200838%_))
                        (let ((_%e200822200840%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200819200838%_))))
                          (let ((_%hd200823200843%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200822200840%_)))
                                (_%tl200824200845%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200822200840%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200824200845%_))
                                (let ((_%e200825200848%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200824200845%_))))
                                  (let ((_%hd200826200851%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200825200848%_)))
                                        (_%tl200827200853%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200825200848%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200827200853%_))
                                        (let ((_%e200828200856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200827200853%_))))
                                          (let ((_%hd200829200859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200828200856%_)))
                                                (_%tl200830200861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200828200856%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200830200861%_))
                                                ((lambda (_%g200820200864%_
                                                          _%g200821200865%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200821200865%_)
                                                       (_%generate-simple200811%_
                                                        _%g200821200865%_
                                                        _%g200820200864%_)
                                                       (_%generate-values200814%_
                                                        _%g200821200865%_
                                                        _%g200820200864%_)))
                                                 _%hd200829200859%_
                                                 _%hd200826200851%_)
                                                (_%g200818200835%_
                                                 _%g200819200838%_))))
                                        (_%g200818200835%_
                                         _%g200819200838%_))))
                                (_%g200818200835%_ _%g200819200838%_))))
                        (_%g200818200835%_ _%g200819200838%_)))))
            (_%g200817200881%_ _%stx200808%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self201561%_ _%stx201562%_)
        (let ((_%compiled-body?201564%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self201561%_
           _%stx201562%_
           _%compiled-body?201564%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g205830_
        (let ((_g205831_ (let () (declare (not safe)) (##length _g205830_))))
          (cond ((let () (declare (not safe)) (##fx= _g205831_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g205830_))
                ((let () (declare (not safe)) (##fx= _g205831_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g205830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g205830_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals200701%_ _%hd200702%_)
        (let _%lp200704%_ ((_%rest200706%_ _%hd200702%_)
                           (_%k200707%_ '0)
                           (_%r200708%_ '()))
          (let* ((_%__stx204995204996%_ _%rest200706%_)
                 (_%g200713200730%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx204995204996%_)))))
            (let ((_%__kont204997204998%_
                   (lambda (_%g200715200793%_)
                     (_%lp200704%_
                      _%g200715200793%_
                      (let () (declare (not safe)) (##fx+ _%k200707%_ '1))
                      _%r200708%_)))
                  (_%__kont204999205000%_
                   (lambda (_%g200720200766%_ _%g200721200767%_)
                     (_%lp200704%_
                      _%g200720200766%_
                      (let () (declare (not safe)) (##fx+ _%k200707%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g200721200767%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals200701%_
                                         _%k200707%_
                                         _%g200720200766%_)
                                        '()))
                            _%r200708%_))))
                  (_%__kont205001205002%_
                   (lambda (_%g200725200742%_)
                     (let ((__tmp205832
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g200725200742%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals200701%_
                                               _%k200707%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp205832 _%r200708%_))))
                  (_%__kont205003205004%_ (lambda () (reverse _%r200708%_))))
              (let ((_%g200711200753%_
                     (lambda ()
                       (let ((_%g200725200742%_ _%__stx204995204996%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g200725200742%_))
                             (_%__kont205001205002%_ _%g200725200742%_)
                             (_%__kont205003205004%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx204995204996%_))
                    (let ((_%e200716200782%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx204995204996%_))))
                      (let ((_%tl200718200787%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200716200782%_)))
                            (_%hd200717200785%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200716200782%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd200717200785%_))
                            (let ((_%e200719200790%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200717200785%_))))
                              (if (equal? _%e200719200790%_ '#f)
                                  (_%__kont204997204998%_ _%tl200718200787%_)
                                  (_%__kont204999205000%_
                                   _%tl200718200787%_
                                   _%hd200717200785%_)))
                            (_%__kont204999205000%_
                             _%tl200718200787%_
                             _%hd200717200785%_))))
                    (let () (declare (not safe)) (_%g200711200753%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self200380%_ _%stx200381%_ _%compiled-body?200382%_)
        (letrec ((_%generate-simple200384%_
                  (lambda (_%hd200686%_ _%body200687%_)
                    (gxc#generate-runtime-simple-let
                     _%self200380%_
                     'letrec
                     _%hd200686%_
                     _%body200687%_
                     _%compiled-body?200382%_)))
                 (_%generate-values200385%_
                  (lambda (_%hd200465%_ _%body200466%_)
                    (let _%lp200468%_ ((_%rest200470%_ _%hd200465%_)
                                       (_%bind200471%_ '())
                                       (_%check200472%_ '())
                                       (_%post200473%_ '()))
                      (let* ((_%__stx205069205070%_ _%rest200470%_)
                             (_%g200476200487%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205069205070%_)))))
                        (let ((_%__kont205071205072%_
                               (lambda (_%g200478200514%_ _%g200479200515%_)
                                 (let* ((_%__stx205025205026%_
                                         _%g200479200515%_)
                                        (_%g200530200555%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205025205026%_)))))
                                   (let ((_%__kont205027205028%_
                                          (lambda (_%g200532200662%_
                                                   _%g200533200663%_)
                                            (let ((_%eid200677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g200533200663%_)))
                                                  (_%expr200678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200380%_
                                                      _%g200532200662%_))))
                                              (_%lp200468%_
                                               _%g200478200514%_
                                               (cons (cons _%eid200677%_
                                                           (cons _%expr200678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200471%_)
                                               _%check200472%_
                                               _%post200473%_))))
                                         (_%__kont205029205030%_
                                          (lambda (_%g200543200576%_
                                                   _%g200544200577%_)
                                            (let* ((_%vals200590%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values200592%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals200590%_
                                                     _%g200544200577%_
                                                     _%g200543200576%_))
                                                   (_%refs200594%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals200590%_
                                                     _%g200544200577%_))
                                                   (_%expr200596%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200380%_
                                                       _%g200543200576%_))))
                                              (_%lp200468%_
                                               _%g200478200514%_
                                               (let ((__tmp205834
                                                      (cons (cons _%vals200590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr200596%_ '()))
                    _%bind200471%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp205833
                                                      (map (lambda (_%e200598200600%_)
                                                             (let* ((_%e200598200602200611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e200598200600%_)
                            (_%E200604200615%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e200598200602200611%_
                                        '([eid _])))
                               '#!void))
                            (_%K200605200620%_
                             (lambda (_%eid200618%_)
                               (cons _%eid200618%_ (cons '#!void '())))))
                       (if (pair? _%e200598200602200611%_)
                           (let ((_%hd200606200623%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200598200602200611%_)))
                                 (_%tl200607200625%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200598200602200611%_))))
                             (let ((_%eid200628%_ _%hd200606200623%_))
                               (if (pair? _%tl200607200625%_)
                                   (let ((_%tl200609200630%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl200607200625%_))))
                                     (if (null? _%tl200609200630%_)
                                         (_%K200605200620%_ _%eid200628%_)
                                         (_%E200604200615%_)))
                                   (_%E200604200615%_))))
                           (_%E200604200615%_))))
                   _%refs200594%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp205834
                                                  __tmp205833))
                                               (cons _%check-values200592%_
                                                     _%check200472%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs200594%_
                                                  _%post200473%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205025205026%_))
                                         (let ((_%e200534200638%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205025205026%_))))
                                           (let ((_%tl200536200643%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200534200638%_)))
                                                 (_%hd200535200641%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200534200638%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd200535200641%_))
                                                 (let ((_%e200537200646%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd200535200641%_))))
                                                   (let ((_%tl200539200651%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200537200646%_)))
                                                         (_%hd200538200649%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200537200646%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200539200651%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200536200643%_))
                     (let ((_%e200540200654%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200536200643%_))))
                       (let ((_%tl200542200659%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200540200654%_)))
                             (_%hd200541200657%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200540200654%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200542200659%_))
                             (_%__kont205027205028%_
                              _%hd200541200657%_
                              _%hd200538200649%_)
                             (let ()
                               (declare (not safe))
                               (_%g200530200555%_)))))
                     (let () (declare (not safe)) (_%g200530200555%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl200536200643%_))
                     (let ((_%e200548200568%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200536200643%_))))
                       (let ((_%tl200550200573%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200548200568%_)))
                             (_%hd200549200571%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200548200568%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200550200573%_))
                             (_%__kont205029205030%_
                              _%hd200549200571%_
                              _%hd200535200641%_)
                             (let ()
                               (declare (not safe))
                               (_%g200530200555%_)))))
                     (let () (declare (not safe)) (_%g200530200555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl200536200643%_))
                                                     (let ((_%e200548200568%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl200536200643%_))))
                                                       (let ((_%tl200550200573%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e200548200568%_)))
                     (_%hd200549200571%_
                      (let () (declare (not safe)) (##car _%e200548200568%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl200550200573%_))
                     (_%__kont205029205030%_
                      _%hd200549200571%_
                      _%hd200535200641%_)
                     (let () (declare (not safe)) (_%g200530200555%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200530200555%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g200530200555%_)))))))
                              (_%__kont205073205074%_
                               (lambda ()
                                 (let* ((_%body200494%_
                                         (if _%compiled-body?200382%_
                                             _%body200466%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200380%_
                                                _%body200466%_))))
                                        (_%body200496%_
                                         (_%generate-values-post200387%_
                                          _%post200473%_
                                          _%body200494%_))
                                        (_%body200498%_
                                         (_%generate-values-check200386%_
                                          _%check200472%_
                                          _%body200496%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind200471%_)
                                               (cons _%body200498%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205069205070%_))
                              (let ((_%e200480200506%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205069205070%_))))
                                (let ((_%tl200482200511%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200480200506%_)))
                                      (_%hd200481200509%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200480200506%_))))
                                  (_%__kont205071205072%_
                                   _%tl200482200511%_
                                   _%hd200481200509%_)))
                              (_%__kont205073205074%_)))))))
                 (_%generate-values-check200386%_
                  (lambda (_%check200462%_ _%body200463%_)
                    (cons 'begin
                          (let ((__tmp205836 (cons _%body200463%_ '()))
                                (__tmp205835 (reverse _%check200462%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp205836 __tmp205835)))))
                 (_%generate-values-post200387%_
                  (lambda (_%post200455%_ _%body200456%_)
                    (cons 'begin
                          (let ((__tmp205840 (cons _%body200456%_ '()))
                                (__tmp205837
                                 (let ((__tmp205839
                                        (lambda (_%g200457200459%_)
                                          (cons 'set! _%g200457200459%_)))
                                       (__tmp205838 (reverse _%post200455%_)))
                                   (declare (not safe))
                                   (##map __tmp205839 __tmp205838))))
                            (declare (not safe))
                            (foldr__0 cons __tmp205840 __tmp205837))))))
          (let* ((_%g200389200406%_
                  (lambda (_%g200390200403%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200390200403%_))))
                 (_%g200388200452%_
                  (lambda (_%g200390200409%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200390200409%_))
                        (let ((_%e200393200411%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200390200409%_))))
                          (let ((_%hd200394200414%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200393200411%_)))
                                (_%tl200395200416%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200393200411%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200395200416%_))
                                (let ((_%e200396200419%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200395200416%_))))
                                  (let ((_%hd200397200422%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200396200419%_)))
                                        (_%tl200398200424%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200396200419%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200398200424%_))
                                        (let ((_%e200399200427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200398200424%_))))
                                          (let ((_%hd200400200430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200399200427%_)))
                                                (_%tl200401200432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200399200427%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200401200432%_))
                                                ((lambda (_%g200391200435%_
                                                          _%g200392200436%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200392200436%_)
                                                       (_%generate-simple200384%_
                                                        _%g200392200436%_
                                                        _%g200391200435%_)
                                                       (_%generate-values200385%_
                                                        _%g200392200436%_
                                                        _%g200391200435%_)))
                                                 _%hd200400200430%_
                                                 _%hd200397200422%_)
                                                (_%g200389200406%_
                                                 _%g200390200409%_))))
                                        (_%g200389200406%_
                                         _%g200390200409%_))))
                                (_%g200389200406%_ _%g200390200409%_))))
                        (_%g200389200406%_ _%g200390200409%_)))))
            (_%g200388200452%_ _%stx200381%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self200692%_ _%stx200693%_)
        (let ((_%compiled-body?200695%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self200692%_
           _%stx200693%_
           _%compiled-body?200695%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g205841_
        (let ((_g205842_ (let () (declare (not safe)) (##length _g205841_))))
          (cond ((let () (declare (not safe)) (##fx= _g205842_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g205841_))
                ((let () (declare (not safe)) (##fx= _g205842_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g205841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g205841_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self199961%_ _%stx199962%_)
        (letrec ((_%generate-values199964%_
                  (lambda (_%hd200207%_ _%body200208%_)
                    (let _%lp200210%_ ((_%rest200212%_ _%hd200207%_)
                                       (_%bind200213%_ '()))
                      (let* ((_%rest200214200222%_ _%rest200212%_)
                             (_%else200216200233%_
                              (lambda ()
                                (let ((_%bind200230%_ (reverse _%bind200213%_))
                                      (_%body200231%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self199961%_
                                          _%body200208%_))))
                                  (cons 'letrec*
                                        (cons _%bind200230%_
                                              (cons _%body200231%_ '()))))))
                             (_%K200218200367%_
                              (lambda (_%rest200236%_ _%hd-bind200237%_)
                                (let* ((_%__stx205083205084%_
                                        _%hd-bind200237%_)
                                       (_%g200240200265%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205083205084%_)))))
                                  (let ((_%__kont205085205086%_
                                         (lambda (_%g200242200346%_
                                                  _%g200243200347%_)
                                           (let ((_%eid200361%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g200243200347%_)))
                                                 (_%expr200362%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self199961%_
                                                     _%g200242200346%_))))
                                             (_%lp200210%_
                                              _%rest200236%_
                                              (cons (cons _%eid200361%_
                                                          (cons _%expr200362%_
                                                                '()))
                                                    _%bind200213%_)))))
                                        (_%__kont205087205088%_
                                         (lambda (_%g200253200286%_
                                                  _%g200254200287%_)
                                           (let* ((_%vals200306%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp200308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values200310%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp200308%_
                                                    _%g200254200287%_
                                                    _%g200253200286%_))
                                                  (_%refs200312%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals200306%_
                                                    _%g200254200287%_))
                                                  (_%expr200314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self199961%_
                                                      _%g200253200286%_))))
                                             (_%lp200210%_
                                              _%rest200236%_
                                              (let ((__tmp205843
                                                     (cons (cons _%vals200306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp200308%_
                                                       (cons _%expr200314%_
                                                             '()))
                                                 '())
                                           (cons _%check-values200310%_
                                                 (cons _%tmp200308%_ '()))))
                               '()))
                   _%bind200213%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp205843
                                                 _%refs200312%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205083205084%_))
                                        (let ((_%e200244200322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205083205084%_))))
                                          (let ((_%tl200246200327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200244200322%_)))
                                                (_%hd200245200325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200244200322%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200245200325%_))
                                                (let ((_%e200247200330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200245200325%_))))
                                                  (let ((_%tl200249200335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200247200330%_)))
                                                        (_%hd200248200333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200247200330%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200249200335%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200246200327%_))
                                                            (let ((_%e200250200338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200246200327%_))))
                      (let ((_%tl200252200343%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200250200338%_)))
                            (_%hd200251200341%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200250200338%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200252200343%_))
                            (_%__kont205085205086%_
                             _%hd200251200341%_
                             _%hd200248200333%_)
                            (let ()
                              (declare (not safe))
                              (_%g200240200265%_)))))
                    (let () (declare (not safe)) (_%g200240200265%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200246200327%_))
                    (let ((_%e200258200278%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200246200327%_))))
                      (let ((_%tl200260200283%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200258200278%_)))
                            (_%hd200259200281%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200258200278%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200260200283%_))
                            (_%__kont205087205088%_
                             _%hd200259200281%_
                             _%hd200245200325%_)
                            (let ()
                              (declare (not safe))
                              (_%g200240200265%_)))))
                    (let () (declare (not safe)) (_%g200240200265%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200246200327%_))
                                                    (let ((_%e200258200278%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200246200327%_))))
                                                      (let ((_%tl200260200283%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200258200278%_)))
                    (_%hd200259200281%_
                     (let () (declare (not safe)) (##car _%e200258200278%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200260200283%_))
                    (_%__kont205087205088%_
                     _%hd200259200281%_
                     _%hd200245200325%_)
                    (let () (declare (not safe)) (_%g200240200265%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200240200265%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200240200265%_))))))))
                        (if (pair? _%rest200214200222%_)
                            (let ((_%hd200219200370%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200214200222%_)))
                                  (_%tl200220200372%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200214200222%_))))
                              (let* ((_%hd-bind200375%_ _%hd200219200370%_)
                                     (_%rest200377%_ _%tl200220200372%_))
                                (_%K200218200367%_
                                 _%rest200377%_
                                 _%hd-bind200375%_)))
                            (_%else200216200233%_))))))
                 (_%generate-letrec?199965%_
                  (lambda (_%hd200097%_)
                    (let _%lp200099%_ ((_%rest200101%_ _%hd200097%_))
                      (let* ((_%rest200102200110%_ _%rest200101%_)
                             (_%else200104200118%_ (lambda () '#t))
                             (_%K200106200195%_
                              (lambda (_%rest200121%_ _%hd-bind200122%_)
                                (let* ((_%g200124200141%_
                                        (lambda (_%g200125200138%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g200125200138%_))))
                                       (_%g200123200192%_
                                        (lambda (_%g200125200144%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g200125200144%_))
                                              (let ((_%e200128200146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g200125200144%_))))
                                                (let ((_%hd200129200149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200128200146%_)))
                                                      (_%tl200130200151%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200128200146%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd200129200149%_))
                                                      (let ((_%e200131200154%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd200129200149%_))))
                (let ((_%hd200132200157%_
                       (let () (declare (not safe)) (##car _%e200131200154%_)))
                      (_%tl200133200159%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200131200154%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200133200159%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200130200151%_))
                          (let ((_%e200134200162%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200130200151%_))))
                            (let ((_%hd200135200165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200134200162%_)))
                                  (_%tl200136200167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200134200162%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200136200167%_))
                                  ((lambda (_%g200126200170%_
                                            _%g200127200171%_)
                                     (if (_%is-lambda-expr?199966%_
                                          _%g200126200170%_)
                                         (_%lp200099%_ _%rest200121%_)
                                         '#f))
                                   _%hd200135200165%_
                                   _%hd200132200157%_)
                                  (_%g200124200141%_ _%g200125200144%_))))
                          (_%g200124200141%_ _%g200125200144%_))
                      (_%g200124200141%_ _%g200125200144%_))))
              (_%g200124200141%_ _%g200125200144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200124200141%_
                                               _%g200125200144%_)))))
                                  (_%g200123200192%_ _%hd-bind200122%_)))))
                        (if (pair? _%rest200102200110%_)
                            (let ((_%hd200107200198%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200102200110%_)))
                                  (_%tl200108200200%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200102200110%_))))
                              (let* ((_%hd-bind200203%_ _%hd200107200198%_)
                                     (_%rest200205%_ _%tl200108200200%_))
                                (_%K200106200195%_
                                 _%rest200205%_
                                 _%hd-bind200203%_)))
                            (_%else200104200118%_))))))
                 (_%is-lambda-expr?199966%_
                  (lambda (_%expr200034%_)
                    (let* ((_%__stx205127205128%_ _%expr200034%_)
                           (_%g200037200051%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205127205128%_)))))
                      (let ((_%__kont205129205130%_
                             (lambda (_%g200039200079%_ _%g200040200080%_)
                               '#t))
                            (_%__kont205131205132%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx205127205128%_))
                            (let ((_%e200041200063%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx205127205128%_))))
                              (let ((_%tl200043200068%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200041200063%_)))
                                    (_%hd200042200066%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200041200063%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200042200066%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd200042200066%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200043200068%_))
                                            (let ((_%e200044200071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200043200068%_))))
                                              (let ((_%tl200046200076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200044200071%_)))
                                                    (_%hd200045200074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200044200071%_))))
                                                (_%__kont205129205130%_
                                                 _%tl200046200076%_
                                                 _%hd200045200074%_)))
                                            (_%__kont205131205132%_))
                                        (_%__kont205131205132%_))
                                    (_%__kont205131205132%_))))
                            (_%__kont205131205132%_)))))))
          (let* ((_%g199968199985%_
                  (lambda (_%g199969199982%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199969199982%_))))
                 (_%g199967200031%_
                  (lambda (_%g199969199988%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199969199988%_))
                        (let ((_%e199972199990%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199969199988%_))))
                          (let ((_%hd199973199993%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199972199990%_)))
                                (_%tl199974199995%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199972199990%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199974199995%_))
                                (let ((_%e199975199998%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199974199995%_))))
                                  (let ((_%hd199976200001%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199975199998%_)))
                                        (_%tl199977200003%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199975199998%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199977200003%_))
                                        (let ((_%e199978200006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199977200003%_))))
                                          (let ((_%hd199979200009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199978200006%_)))
                                                (_%tl199980200011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199978200006%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199980200011%_))
                                                ((lambda (_%g199970200014%_
                                                          _%g199971200015%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g199971200015%_)
                                                       (if (_%generate-letrec?199965%_
                                                            _%g199971200015%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self199961%_
                                                            'letrec
                                                            _%g199971200015%_
                                                            _%g199970200014%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self199961%_
                                                            'letrec*
                                                            _%g199971200015%_
                                                            _%g199970200014%_
                                                            '#f))
                                                       (_%generate-values199964%_
                                                        _%g199971200015%_
                                                        _%g199970200014%_)))
                                                 _%hd199979200009%_
                                                 _%hd199976200001%_)
                                                (_%g199968199985%_
                                                 _%g199969199988%_))))
                                        (_%g199968199985%_
                                         _%g199969199988%_))))
                                (_%g199968199985%_ _%g199969199988%_))))
                        (_%g199968199985%_ _%g199969199988%_)))))
            (_%g199967200031%_ _%stx199962%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd199898%_)
        (let _%lp199900%_ ((_%rest199902%_ _%hd199898%_))
          (let* ((_%rest199903199919%_ _%rest199902%_)
                 (_%else199906199927%_ (lambda () '#f)))
            (let ((_%K199909199940%_
                   (lambda (_%rest199938%_) (_%lp199900%_ _%rest199938%_)))
                  (_%K199908199932%_ (lambda () '#t)))
              (let ((_%try-match199905199935%_
                     (lambda ()
                       (if (null? _%rest199903199919%_)
                           (_%K199908199932%_)
                           (_%else199906199927%_)))))
                (if (pair? _%rest199903199919%_)
                    (let ((_%tl199911199945%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199903199919%_)))
                          (_%hd199910199943%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199903199919%_))))
                      (if (pair? _%hd199910199943%_)
                          (let ((_%tl199913199950%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd199910199943%_)))
                                (_%hd199912199948%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd199910199943%_))))
                            (if (pair? _%hd199912199948%_)
                                (let ((_%tl199917199953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd199912199948%_))))
                                  (if (null? _%tl199917199953%_)
                                      (if (pair? _%tl199913199950%_)
                                          (let ((_%tl199915199956%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199913199950%_))))
                                            (if (null? _%tl199915199956%_)
                                                (let ((_%rest199959%_
                                                       _%tl199911199945%_))
                                                  (_%lp199900%_
                                                   _%rest199959%_))
                                                (_%else199906199927%_)))
                                          (_%else199906199927%_))
                                      (_%else199906199927%_)))
                                (_%else199906199927%_)))
                          (_%else199906199927%_)))
                    (_%try-match199905199935%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self199810%_
               _%form199811%_
               _%hd199812%_
               _%body199813%_
               _%compiled-body?199814%_)
        (letrec ((_%generate1199816%_
                  (lambda (_%bind199855%_)
                    (let* ((_%bind199856199867%_ _%bind199855%_)
                           (_%E199858199870%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind199856199867%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K199859199876%_
                            (lambda (_%expr199873%_ _%id199874%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id199874%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self199810%_
                                             _%expr199873%_))
                                          '())))))
                      (if (pair? _%bind199856199867%_)
                          (let ((_%hd199860199879%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind199856199867%_)))
                                (_%tl199861199881%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind199856199867%_))))
                            (if (pair? _%hd199860199879%_)
                                (let ((_%hd199864199884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd199860199879%_)))
                                      (_%tl199865199886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd199860199879%_))))
                                  (let ((_%id199889%_ _%hd199864199884%_))
                                    (if (null? _%tl199865199886%_)
                                        (if (pair? _%tl199861199881%_)
                                            (let ((_%hd199862199891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl199861199881%_)))
                                                  (_%tl199863199893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl199861199881%_))))
                                              (let ((_%expr199896%_
                                                     _%hd199862199891%_))
                                                (if (null? _%tl199863199893%_)
                                                    (_%K199859199876%_
                                                     _%expr199896%_
                                                     _%id199889%_)
                                                    (_%E199858199870%_))))
                                            (_%E199858199870%_))
                                        (_%E199858199870%_))))
                                (_%E199858199870%_)))
                          (_%E199858199870%_))))))
          (let* ((_%bind199818%_ (map _%generate1199816%_ _%hd199812%_))
                 (_%body199820%_
                  (if _%compiled-body?199814%_
                      _%body199813%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self199810%_ _%body199813%_))))
                 (_%body199852%_
                  (let* ((_%body199821199829%_ _%body199820%_)
                         (_%else199823199837%_
                          (lambda () (cons _%body199820%_ '())))
                         (_%K199825199842%_
                          (lambda (_%exprs199840%_) _%exprs199840%_)))
                    (if (pair? _%body199821199829%_)
                        (let ((_%hd199826199845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body199821199829%_)))
                              (_%tl199827199847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body199821199829%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd199826199845%_ 'begin))
                              (let ((_%exprs199850%_ _%tl199827199847%_))
                                (_%K199825199842%_ _%exprs199850%_))
                              (_%else199823199837%_)))
                        (_%else199823199837%_)))))
            (cons _%form199811%_ (cons _%bind199818%_ _%body199852%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self199710%_ _%stx199711%_)
        (letrec ((_%generate1199713%_
                  (lambda (_%datum199765%_)
                    (if (or (null? _%datum199765%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum199765%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum199765%_))
                            (eof-object? _%datum199765%_))
                        _%datum199765%_
                        (if (uninterned-symbol? _%datum199765%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum199765%_
                               '#t))
                            (if (pair? _%datum199765%_)
                                (cons (_%generate1199713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum199765%_)))
                                      (_%generate1199713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum199765%_))))
                                (if (box? _%datum199765%_)
                                    (box (_%generate1199713%_
                                          (unbox _%datum199765%_)))
                                    (if (vector? _%datum199765%_)
                                        (vector-map
                                         _%generate1199713%_
                                         _%datum199765%_)
                                        (if (or (s8vector? _%datum199765%_)
                                                (u8vector? _%datum199765%_)
                                                (s16vector? _%datum199765%_)
                                                (u16vector? _%datum199765%_)
                                                (s32vector? _%datum199765%_)
                                                (u32vector? _%datum199765%_)
                                                (s64vector? _%datum199765%_)
                                                (u64vector? _%datum199765%_)
                                                (f32vector? _%datum199765%_)
                                                (f64vector? _%datum199765%_))
                                            _%datum199765%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx199711%_)))))))))))
          (let* ((_%g199715199728%_
                  (lambda (_%g199716199725%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199716199725%_))))
                 (_%g199714199762%_
                  (lambda (_%g199716199731%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199716199731%_))
                        (let ((_%e199718199733%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199716199731%_))))
                          (let ((_%hd199719199736%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199718199733%_)))
                                (_%tl199720199738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199718199733%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199720199738%_))
                                (let ((_%e199721199741%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199720199738%_))))
                                  (let ((_%hd199722199744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199721199741%_)))
                                        (_%tl199723199746%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199721199741%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199723199746%_))
                                        ((lambda (_%g199717199749%_)
                                           (cons 'quote
                                                 (cons (_%generate1199713%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g199717199749%_)))
                                                       '())))
                                         _%hd199722199744%_)
                                        (_%g199715199728%_
                                         _%g199716199731%_))))
                                (_%g199715199728%_ _%g199716199731%_))))
                        (_%g199715199728%_ _%g199716199731%_)))))
            (_%g199714199762%_ _%stx199711%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self199157%_ _%stx199158%_)
        (letrec ((_%compile-call199160%_
                  (lambda (_%rator199447%_ _%rands199448%_)
                    (let ((_%rator199454%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199157%_
                              _%rator199447%_)))
                          (_%rands199455%_
                           (map (lambda (_%g199449199451%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self199157%_
                                     _%g199449199451%_)))
                                _%rands199448%_)))
                      (let* ((_%__stx205174205175%_ _%rator199454%_)
                             (_%g199458199510%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205174205175%_)))))
                        (let ((_%__kont205176205177%_
                               (lambda (_%g199460199630%_
                                        _%g199461199631%_
                                        _%g199462199632%_
                                        _%g199463199633%_)
                                 (if (let ((__tmp205846
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands199455%_)))
                                           (__tmp205844
                                            (length (let ((__tmp205845
                                                           (lambda (_%g199669199672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g199670199674%_)
                     (cons _%g199669199672%_ _%g199670199674%_))))
              (declare (not safe))
              (foldr__0 __tmp205845 '() _%g199462199632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp205846 __tmp205844))
                                     (let* ((_%id199677%_ _%g199463199633%_)
                                            (_%args199686%_
                                             (let ((__tmp205847
                                                    (lambda (_%g199678199681%_
                                                             _%g199679199683%_)
                                                      (cons _%g199678199681%_
                                                            _%g199679199683%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205847
                                                '()
                                                _%g199462199632%_)))
                                            (_%body199695%_
                                             (let ((__tmp205848
                                                    (lambda (_%g199687199690%_
                                                             _%g199688199692%_)
                                                      (cons _%g199687199690%_
                                                            _%g199688199692%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205848
                                                '()
                                                _%g199461199631%_)))
                                            (_%init199697%_
                                             (map list
                                                  _%args199686%_
                                                  _%rands199455%_)))
                                       (cons 'let
                                             (cons _%id199677%_
                                                   (cons _%init199697%_
                                                         _%body199695%_))))
                                     (let ((__tmp205849
                                            (let ((__tmp205850
                                                   (lambda (_%g199699199702%_
                                                            _%g199700199704%_)
                                                     (cons _%g199699199702%_
                                                           _%g199700199704%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205850
                                               '()
                                               _%g199462199632%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx199158%_
                                        __tmp205849
                                        _%rands199455%_)))))
                              (_%__kont205182205183%_
                               (lambda ()
                                 (cons _%rator199454%_ _%rands199455%_))))
                          (let ((_%__match205241205242%_
                                 (lambda (_%e199464199522%_
                                          _%hd199465199525%_
                                          _%tl199466199527%_
                                          _%e199467199530%_
                                          _%hd199468199533%_
                                          _%tl199469199535%_
                                          _%e199470199538%_
                                          _%hd199471199541%_
                                          _%tl199472199543%_
                                          _%e199473199546%_
                                          _%hd199474199549%_
                                          _%tl199475199551%_
                                          _%e199476199554%_
                                          _%hd199477199557%_
                                          _%tl199478199559%_
                                          _%e199479199562%_
                                          _%hd199480199565%_
                                          _%tl199481199567%_
                                          _%e199482199570%_
                                          _%hd199483199573%_
                                          _%tl199484199575%_
                                          _%__splice205178205179%_
                                          _%target199485199578%_
                                          _%tl199487199580%_)
                                   (letrec ((_%loop199488199583%_
                                             (lambda (_%hd199486199586%_
                                                      _%arg199492199588%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd199486199586%_))
                                                   (let ((_%e199489199590%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd199486199586%_))))
                                                     (let ((_%lp-tl199491199595%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199489199590%_)))
                                                           (_%lp-hd199490199593%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199489199590%_))))
                                                       (_%loop199488199583%_
                                                        _%lp-tl199491199595%_
                                                        (cons _%lp-hd199490199593%_
                                                              _%arg199492199588%_))))
                                                   (let ((_%arg199493199598%_
                                                          (reverse _%arg199492199588%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl199484199575%_))
                                                         (let ((_%__splice205180205181%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl199484199575%_
                           '0))))
                   (let ((_%tl199496199602%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205180205181%_ '1)))
                         (_%target199494199600%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205180205181%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl199496199602%_))
                         (letrec ((_%loop199497199605%_
                                   (lambda (_%hd199495199608%_
                                            _%body199501199610%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd199495199608%_))
                                         (let ((_%e199498199612%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd199495199608%_))))
                                           (let ((_%lp-tl199500199617%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199498199612%_)))
                                                 (_%lp-hd199499199615%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199498199612%_))))
                                             (_%loop199497199605%_
                                              _%lp-tl199500199617%_
                                              (cons _%lp-hd199499199615%_
                                                    _%body199501199610%_))))
                                         (let ((_%body199502199620%_
                                                (reverse _%body199501199610%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199478199559%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199472199543%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199469199535%_))
                                                       (let ((_%e199503199622%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl199469199535%_))))
                 (let ((_%tl199505199627%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199503199622%_)))
                       (_%hd199504199625%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199503199622%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199505199627%_))
                       (let ((_%g199460199630%_ _%hd199504199625%_)
                             (_%g199461199631%_ _%body199502199620%_)
                             (_%g199462199632%_ _%arg199493199598%_)
                             (_%g199463199633%_ _%hd199474199549%_))
                         (if (eq? _%g199463199633%_ _%g199460199630%_)
                             (_%__kont205176205177%_
                              _%g199460199630%_
                              _%g199461199631%_
                              _%g199462199632%_
                              _%g199463199633%_)
                             (_%__kont205182205183%_)))
                       (_%__kont205182205183%_))))
               (_%__kont205182205183%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205182205183%_))
                                               (_%__kont205182205183%_)))))))
                           (_%loop199497199605%_ _%target199494199600%_ '()))
                         (_%__kont205182205183%_))))
                 (_%__kont205182205183%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop199488199583%_
                                      _%target199485199578%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205174205175%_))
                                (let ((_%e199464199522%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205174205175%_))))
                                  (let ((_%tl199466199527%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199464199522%_)))
                                        (_%hd199465199525%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199464199522%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199465199525%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd199465199525%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199466199527%_))
                                                (let ((_%e199467199530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199466199527%_))))
                                                  (let ((_%tl199469199535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199467199530%_)))
                                                        (_%hd199468199533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199467199530%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199468199533%_))
                                                        (let ((_%e199470199538%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199468199533%_))))
                  (let ((_%tl199472199543%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199470199538%_)))
                        (_%hd199471199541%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199470199538%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199471199541%_))
                        (let ((_%e199473199546%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199471199541%_))))
                          (let ((_%tl199475199551%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199473199546%_)))
                                (_%hd199474199549%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199473199546%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199475199551%_))
                                (let ((_%e199476199554%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199475199551%_))))
                                  (let ((_%tl199478199559%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199476199554%_)))
                                        (_%hd199477199557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199476199554%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199477199557%_))
                                        (let ((_%e199479199562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199477199557%_))))
                                          (let ((_%tl199481199567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199479199562%_)))
                                                (_%hd199480199565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199479199562%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199480199565%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd199480199565%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199481199567%_))
                                                        (let ((_%e199482199570%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199481199567%_))))
                  (let ((_%tl199484199575%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199482199570%_)))
                        (_%hd199483199573%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199482199570%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd199483199573%_))
                        (let ((_%__splice205178205179%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd199483199573%_
                                  '0))))
                          (let ((_%tl199487199580%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice205178205179%_ '1)))
                                (_%target199485199578%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice205178205179%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199487199580%_))
                                (_%__match205241205242%_
                                 _%e199464199522%_
                                 _%hd199465199525%_
                                 _%tl199466199527%_
                                 _%e199467199530%_
                                 _%hd199468199533%_
                                 _%tl199469199535%_
                                 _%e199470199538%_
                                 _%hd199471199541%_
                                 _%tl199472199543%_
                                 _%e199473199546%_
                                 _%hd199474199549%_
                                 _%tl199475199551%_
                                 _%e199476199554%_
                                 _%hd199477199557%_
                                 _%tl199478199559%_
                                 _%e199479199562%_
                                 _%hd199480199565%_
                                 _%tl199481199567%_
                                 _%e199482199570%_
                                 _%hd199483199573%_
                                 _%tl199484199575%_
                                 _%__splice205178205179%_
                                 _%target199485199578%_
                                 _%tl199487199580%_)
                                (_%__kont205182205183%_))))
                        (_%__kont205182205183%_))))
                (_%__kont205182205183%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205182205183%_))
                                                (_%__kont205182205183%_))))
                                        (_%__kont205182205183%_))))
                                (_%__kont205182205183%_))))
                        (_%__kont205182205183%_))))
                (_%__kont205182205183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205182205183%_))
                                            (_%__kont205182205183%_))
                                        (_%__kont205182205183%_))))
                                (_%__kont205182205183%_)))))))))
          (let* ((_%g199162199185%_
                  (lambda (_%g199163199182%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199163199182%_))))
                 (_%g199161199444%_
                  (lambda (_%g199163199188%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199163199188%_))
                        (let ((_%e199166199190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199163199188%_))))
                          (let ((_%hd199167199193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199166199190%_)))
                                (_%tl199168199195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199166199190%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199168199195%_))
                                (let ((_%e199169199198%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199168199195%_))))
                                  (let ((_%hd199170199201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199169199198%_)))
                                        (_%tl199171199203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199169199198%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl199171199203%_))
                                        (let ((_g205851_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl199171199203%_
                                                  '0))))
                                          (begin
                                            (let ((_g205852_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g205851_)
                                                         (##values-length
                                                          _g205851_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g205852_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g205852_)))
                                            (let ((_%target199172199206%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g205851_
                                                      0)))
                                                  (_%tl199174199208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g205851_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199174199208%_))
                                                  (letrec ((_%loop199175199211%_
                                                            (lambda (_%hd199173199214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand199179199216%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199173199214%_))
                          (let ((_%e199176199218%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199173199214%_))))
                            (let ((_%lp-hd199177199221%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199176199218%_)))
                                  (_%lp-tl199178199223%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199176199218%_))))
                              (_%loop199175199211%_
                               _%lp-tl199178199223%_
                               (cons _%lp-hd199177199221%_
                                     _%rand199179199216%_))))
                          (let ((_%rand199180199226%_
                                 (reverse _%rand199179199216%_)))
                            ((lambda (_%g199164199228%_ _%g199165199229%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call199160%_
                                    _%g199165199229%_
                                    (let ((__tmp205853
                                           (lambda (_%g199246199249%_
                                                    _%g199247199251%_)
                                             (cons _%g199246199249%_
                                                   _%g199247199251%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp205853
                                       '()
                                       _%g199164199228%_)))
                                   (let* ((_%__stx205290205291%_
                                           _%g199165199229%_)
                                          (_%g199255199267%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx205290205291%_)))))
                                     (let ((_%__kont205292205293%_
                                            (lambda ()
                                              (let ((_%f199304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self199157%_
                                                        _%g199165199229%_))))
                                                (if (and (let ((__tmp205854
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f199304%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp205854))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f199304%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp199306%_ ((_%rest199309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp205856
                                                (lambda (_%g199426199429%_
                                                         _%g199427199431%_)
                                                  (cons _%g199426199429%_
                                                        _%g199427199431%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp205856
                                            '()
                                            _%g199164199228%_))))
                               (_%bind199311%_ '())
                               (_%args199312%_ '()))
              (let* ((_%rest199313199321%_ _%rest199309%_)
                     (_%else199315199329%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind199311%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f199304%_
                                                      _%args199312%_)
                                                '()))))))
                     (_%K199317199415%_
                      (lambda (_%rest199332%_ _%e199333%_)
                        (let* ((_%__stx205244205245%_ _%e199333%_)
                               (_%g199338199356%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx205244205245%_)))))
                          (let ((_%__kont205246205247%_
                                 (lambda ()
                                   (_%lp199306%_
                                    _%rest199332%_
                                    _%bind199311%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199333%_))
                                          _%args199312%_))))
                                (_%__kont205248205249%_
                                 (lambda ()
                                   (_%lp199306%_
                                    _%rest199332%_
                                    _%bind199311%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199333%_))
                                          _%args199312%_))))
                                (_%__kont205250205251%_
                                 (lambda ()
                                   (let ((_%tmp199363%_
                                          (let ((__tmp205855
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp205855))))
                                     (_%lp199306%_
                                      _%rest199332%_
                                      (cons (cons _%tmp199363%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199333%_))
                                                        '()))
                                            _%bind199311%_)
                                      (cons _%tmp199363%_ _%args199312%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205244205245%_))
                                (let ((_%e199340199394%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205244205245%_))))
                                  (let ((_%tl199342199399%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199340199394%_)))
                                        (_%hd199341199397%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199340199394%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199341199397%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd199341199397%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199342199399%_))
                                                (let ((_%e199343199402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199342199399%_))))
                                                  (let ((_%tl199345199407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199343199402%_)))
                                                        (_%hd199344199405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199343199402%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199345199407%_))
                                                        (_%__kont205246205247%_)
                                                        (_%__kont205250205251%_))))
                                                (_%__kont205250205251%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd199341199397%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199342199399%_))
                                                    (let ((_%e199349199379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199342199399%_))))
                                                      (let ((_%tl199351199384%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199349199379%_)))
                    (_%hd199350199382%_
                     (let () (declare (not safe)) (##car _%e199349199379%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199351199384%_))
                    (_%__kont205248205249%_)
                    (_%__kont205250205251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205250205251%_))
                                                (_%__kont205250205251%_)))
                                        (_%__kont205250205251%_))))
                                (_%__kont205250205251%_)))))))
                (if (pair? _%rest199313199321%_)
                    (let ((_%hd199318199418%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199313199321%_)))
                          (_%tl199319199420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199313199321%_))))
                      (let* ((_%e199423%_ _%hd199318199418%_)
                             (_%rest199425%_ _%tl199319199420%_))
                        (_%K199317199415%_ _%rest199425%_ _%e199423%_)))
                    (_%else199315199329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call199160%_
                                                     _%g199165199229%_
                                                     (let ((__tmp205857
                                                            (lambda (_%g199433199436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g199434199438%_)
                      (cons _%g199433199436%_ _%g199434199438%_))))
               (declare (not safe))
               (foldr__0 __tmp205857 '() _%g199164199228%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont205294205295%_
                                            (lambda ()
                                              (_%compile-call199160%_
                                               _%g199165199229%_
                                               (let ((__tmp205858
                                                      (lambda (_%g199273199276%_
                                                               _%g199274199278%_)
                                                        (cons _%g199273199276%_
                                                              _%g199274199278%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp205858
                                                  '()
                                                  _%g199164199228%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx205290205291%_))
                                           (let ((_%e199257199286%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx205290205291%_))))
                                             (let ((_%tl199259199291%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199257199286%_)))
                                                   (_%hd199258199289%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199257199286%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd199258199289%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd199258199289%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199259199291%_))
                                                           (let ((_%e199260199294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199259199291%_))))
                     (let ((_%tl199262199299%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199260199294%_)))
                           (_%hd199261199297%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199260199294%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199262199299%_))
                           (_%__kont205292205293%_)
                           (_%__kont205294205295%_))))
                   (_%__kont205294205295%_))
               (_%__kont205294205295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205294205295%_))))
                                           (_%__kont205294205295%_))))))
                             _%rand199180199226%_
                             _%hd199170199201%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop199175199211%_
                                                     _%target199172199206%_
                                                     '()))
                                                  (_%g199162199185%_
                                                   _%g199163199188%_)))))
                                        (_%g199162199185%_
                                         _%g199163199188%_))))
                                (_%g199162199185%_ _%g199163199188%_))))
                        (_%g199162199185%_ _%g199163199188%_)))))
            (_%g199161199444%_ _%stx199158%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self198902%_ _%stx198903%_)
        (let* ((_%__stx205362205363%_ _%stx198903%_)
               (_%g198906198935%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205362205363%_)))))
          (let ((_%__kont205364205365%_
                 (lambda (_%g198908199001%_ _%g198909199002%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self198902%_
                        _%stx198903%_)
                       (let ((_%f199024%_
                              (let ((__tmp205859
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g198909199002%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self198902%_
                                 __tmp205859))))
                         (let _%lp199026%_ ((_%rest199029%_
                                             (reverse (let ((__tmp205861
                                                             (lambda (_%g199146199149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g199147199151%_)
                       (cons _%g199146199149%_ _%g199147199151%_))))
                (declare (not safe))
                (foldr__0 __tmp205861 '() _%g198908199001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind199031%_ '())
                                            (_%args199032%_ '()))
                           (let* ((_%rest199033199041%_ _%rest199029%_)
                                  (_%else199035199049%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind199031%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f199024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args199032%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K199037199135%_
                                   (lambda (_%rest199052%_ _%e199053%_)
                                     (let* ((_%__stx205316205317%_ _%e199053%_)
                                            (_%g199058199076%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx205316205317%_)))))
                                       (let ((_%__kont205318205319%_
                                              (lambda ()
                                                (_%lp199026%_
                                                 _%rest199052%_
                                                 _%bind199031%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199053%_))
                                                       _%args199032%_))))
                                             (_%__kont205320205321%_
                                              (lambda ()
                                                (_%lp199026%_
                                                 _%rest199052%_
                                                 _%bind199031%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199053%_))
                                                       _%args199032%_))))
                                             (_%__kont205322205323%_
                                              (lambda ()
                                                (let ((_%tmp199083%_
                                                       (let ((__tmp205860
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp205860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp199026%_
                                                   _%rest199052%_
                                                   (cons (cons _%tmp199083%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e199053%_))
                             '()))
                 _%bind199031%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp199083%_
                                                         _%args199032%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx205316205317%_))
                                             (let ((_%e199060199114%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx205316205317%_))))
                                               (let ((_%tl199062199119%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199060199114%_)))
                                                     (_%hd199061199117%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199060199114%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd199061199117%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd199061199117%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199062199119%_))
                     (let ((_%e199063199122%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199062199119%_))))
                       (let ((_%tl199065199127%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199063199122%_)))
                             (_%hd199064199125%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199063199122%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199065199127%_))
                             (_%__kont205318205319%_)
                             (_%__kont205322205323%_))))
                     (_%__kont205322205323%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd199061199117%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199062199119%_))
                         (let ((_%e199069199099%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl199062199119%_))))
                           (let ((_%tl199071199104%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199069199099%_)))
                                 (_%hd199070199102%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199069199099%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199071199104%_))
                                 (_%__kont205320205321%_)
                                 (_%__kont205322205323%_))))
                         (_%__kont205322205323%_))
                     (_%__kont205322205323%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205322205323%_))))
                                             (_%__kont205322205323%_)))))))
                             (if (pair? _%rest199033199041%_)
                                 (let ((_%hd199038199138%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199033199041%_)))
                                       (_%tl199039199140%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199033199041%_))))
                                   (let* ((_%e199143%_ _%hd199038199138%_)
                                          (_%rest199145%_ _%tl199039199140%_))
                                     (_%K199037199135%_
                                      _%rest199145%_
                                      _%e199143%_)))
                                 (_%else199035199049%_))))))))
                (_%__kont205368205369%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self198902%_ _%stx198903%_))))
            (let ((_%__match205407205408%_
                   (lambda (_%e198910198947%_
                            _%hd198911198950%_
                            _%tl198912198952%_
                            _%e198913198955%_
                            _%hd198914198958%_
                            _%tl198915198960%_
                            _%e198916198963%_
                            _%hd198917198966%_
                            _%tl198918198968%_
                            _%e198919198971%_
                            _%hd198920198974%_
                            _%tl198921198976%_
                            _%__splice205366205367%_
                            _%target198922198979%_
                            _%tl198924198981%_)
                     (letrec ((_%loop198925198984%_
                               (lambda (_%hd198923198987%_
                                        _%rand198929198989%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198923198987%_))
                                     (let ((_%e198926198991%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd198923198987%_))))
                                       (let ((_%lp-tl198928198996%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198926198991%_)))
                                             (_%lp-hd198927198994%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198926198991%_))))
                                         (_%loop198925198984%_
                                          _%lp-tl198928198996%_
                                          (cons _%lp-hd198927198994%_
                                                _%rand198929198989%_))))
                                     (let ((_%rand198930198999%_
                                            (reverse _%rand198929198989%_)))
                                       (_%__kont205364205365%_
                                        _%rand198930198999%_
                                        _%hd198920198974%_))))))
                       (_%loop198925198984%_ _%target198922198979%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205362205363%_))
                  (let ((_%e198910198947%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205362205363%_))))
                    (let ((_%tl198912198952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198910198947%_)))
                          (_%hd198911198950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198910198947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198912198952%_))
                          (let ((_%e198913198955%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198912198952%_))))
                            (let ((_%tl198915198960%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198913198955%_)))
                                  (_%hd198914198958%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198913198955%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd198914198958%_))
                                  (let ((_%e198916198963%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198914198958%_))))
                                    (let ((_%tl198918198968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198916198963%_)))
                                          (_%hd198917198966%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198916198963%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd198917198966%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd198917198966%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198918198968%_))
                                                  (let ((_%e198919198971%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198918198968%_))))
                                                    (let ((_%tl198921198976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198919198971%_)))
                                                          (_%hd198920198974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198919198971%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198921198976%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl198915198960%_))
                      (let ((_%__splice205366205367%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl198915198960%_
                                '0))))
                        (let ((_%tl198924198981%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205366205367%_ '1)))
                              (_%target198922198979%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205366205367%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198924198981%_))
                              (_%__match205407205408%_
                               _%e198910198947%_
                               _%hd198911198950%_
                               _%tl198912198952%_
                               _%e198913198955%_
                               _%hd198914198958%_
                               _%tl198915198960%_
                               _%e198916198963%_
                               _%hd198917198966%_
                               _%tl198918198968%_
                               _%e198919198971%_
                               _%hd198920198974%_
                               _%tl198921198976%_
                               _%__splice205366205367%_
                               _%target198922198979%_
                               _%tl198924198981%_)
                              (_%__kont205368205369%_))))
                      (_%__kont205368205369%_))
                  (_%__kont205368205369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205368205369%_))
                                              (_%__kont205368205369%_))
                                          (_%__kont205368205369%_))))
                                  (_%__kont205368205369%_))))
                          (_%__kont205368205369%_))))
                  (_%__kont205368205369%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self198714%_ _%stx198715%_)
        (letrec ((_%simplify198717%_
                  (lambda (_%code198802%_)
                    (let* ((_%code198803198821%_ _%code198802%_)
                           (_%else198805198829%_ (lambda () _%code198802%_))
                           (_%K198807198865%_
                            (lambda (_%expr198832%_ _%test198833%_)
                              (let* ((_%expr198834198842%_ _%expr198832%_)
                                     (_%else198836198850%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test198833%_
                                                    (cons _%expr198832%_
                                                          '())))))
                                     (_%K198838198855%_
                                      (lambda (_%exprs198853%_)
                                        (cons 'and
                                              (cons _%test198833%_
                                                    _%exprs198853%_)))))
                                (if (pair? _%expr198834198842%_)
                                    (let ((_%hd198839198858%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr198834198842%_)))
                                          (_%tl198840198860%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr198834198842%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd198839198858%_ 'and))
                                          (let ((_%exprs198863%_
                                                 _%tl198840198860%_))
                                            (_%K198838198855%_
                                             _%exprs198863%_))
                                          (_%else198836198850%_)))
                                    (_%else198836198850%_))))))
                      (if (pair? _%code198803198821%_)
                          (let ((_%hd198808198868%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code198803198821%_)))
                                (_%tl198809198870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code198803198821%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd198808198868%_ 'if))
                                (if (pair? _%tl198809198870%_)
                                    (let ((_%hd198810198873%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl198809198870%_)))
                                          (_%tl198811198875%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl198809198870%_))))
                                      (let ((_%test198878%_
                                             _%hd198810198873%_))
                                        (if (pair? _%tl198811198875%_)
                                            (let ((_%hd198812198880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl198811198875%_)))
                                                  (_%tl198813198882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl198811198875%_))))
                                              (let ((_%expr198885%_
                                                     _%hd198812198880%_))
                                                (if (pair? _%tl198813198882%_)
                                                    (let ((_%hd198814198887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl198813198882%_)))
                                                          (_%tl198815198889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl198813198882%_))))
                                                      (if (pair? _%hd198814198887%_)
                                                          (let ((_%hd198816198892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd198814198887%_)))
                        (_%tl198817198894%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd198814198887%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd198816198892%_ 'quote))
                        (if (pair? _%tl198817198894%_)
                            (let ((_%hd198818198897%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl198817198894%_)))
                                  (_%tl198819198899%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl198817198894%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd198818198897%_ '#f))
                                  (if (null? _%tl198819198899%_)
                                      (if (null? _%tl198815198889%_)
                                          (_%K198807198865%_
                                           _%expr198885%_
                                           _%test198878%_)
                                          (_%else198805198829%_))
                                      (_%else198805198829%_))
                                  (_%else198805198829%_)))
                            (_%else198805198829%_))
                        (_%else198805198829%_)))
                  (_%else198805198829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198805198829%_))))
                                            (_%else198805198829%_))))
                                    (_%else198805198829%_))
                                (_%else198805198829%_)))
                          (_%else198805198829%_))))))
          (let* ((_%g198719198740%_
                  (lambda (_%g198720198737%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198720198737%_))))
                 (_%g198718198799%_
                  (lambda (_%g198720198743%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198720198743%_))
                        (let ((_%e198724198745%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198720198743%_))))
                          (let ((_%hd198725198748%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198724198745%_)))
                                (_%tl198726198750%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198724198745%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198726198750%_))
                                (let ((_%e198727198753%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198726198750%_))))
                                  (let ((_%hd198728198756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198727198753%_)))
                                        (_%tl198729198758%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198727198753%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198729198758%_))
                                        (let ((_%e198730198761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198729198758%_))))
                                          (let ((_%hd198731198764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198730198761%_)))
                                                (_%tl198732198766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198730198761%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198732198766%_))
                                                (let ((_%e198733198769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198732198766%_))))
                                                  (let ((_%hd198734198772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198733198769%_)))
                                                        (_%tl198735198774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198733198769%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198735198774%_))
                                                        ((lambda (_%g198721198777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g198722198778%_
                          _%g198723198779%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify198717%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self198714%_
                                       _%g198723198779%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self198714%_
                                             _%g198722198778%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self198714%_
                                                   _%g198721198777%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp205862
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self198714%_
                                               _%g198723198779%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp205862
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198714%_
                                            _%g198722198778%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198714%_
                                                  _%g198721198777%_))
                                               '()))))))
                 _%hd198734198772%_
                 _%hd198731198764%_
                 _%hd198728198756%_)
                (_%g198719198740%_ _%g198720198743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198719198740%_
                                                 _%g198720198743%_))))
                                        (_%g198719198740%_
                                         _%g198720198743%_))))
                                (_%g198719198740%_ _%g198720198743%_))))
                        (_%g198719198740%_ _%g198720198743%_)))))
            (_%g198718198799%_ _%stx198715%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self198662%_ _%stx198663%_)
        (let* ((_%g198665198678%_
                (lambda (_%g198666198675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198666198675%_))))
               (_%g198664198711%_
                (lambda (_%g198666198681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198666198681%_))
                      (let ((_%e198668198683%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198666198681%_))))
                        (let ((_%hd198669198686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198668198683%_)))
                              (_%tl198670198688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198668198683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198670198688%_))
                              (let ((_%e198671198691%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198670198688%_))))
                                (let ((_%hd198672198694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198671198691%_)))
                                      (_%tl198673198696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198671198691%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198673198696%_))
                                      ((lambda (_%g198667198699%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g198667198699%_)))
                                       _%hd198672198694%_)
                                      (_%g198665198678%_ _%g198666198681%_))))
                              (_%g198665198678%_ _%g198666198681%_))))
                      (_%g198665198678%_ _%g198666198681%_)))))
          (_%g198664198711%_ _%stx198663%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self198594%_ _%stx198595%_)
        (let* ((_%g198597198614%_
                (lambda (_%g198598198611%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198598198611%_))))
               (_%g198596198659%_
                (lambda (_%g198598198617%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198598198617%_))
                      (let ((_%e198601198619%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198598198617%_))))
                        (let ((_%hd198602198622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198601198619%_)))
                              (_%tl198603198624%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198601198619%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198603198624%_))
                              (let ((_%e198604198627%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198603198624%_))))
                                (let ((_%hd198605198630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198604198627%_)))
                                      (_%tl198606198632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198604198627%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198606198632%_))
                                      (let ((_%e198607198635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198606198632%_))))
                                        (let ((_%hd198608198638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198607198635%_)))
                                              (_%tl198609198640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198607198635%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198609198640%_))
                                              ((lambda (_%g198599198643%_
                                                        _%g198600198644%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g198600198644%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self198594%_
                              _%g198599198643%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198608198638%_
                                               _%hd198605198630%_)
                                              (_%g198597198614%_
                                               _%g198598198617%_))))
                                      (_%g198597198614%_ _%g198598198617%_))))
                              (_%g198597198614%_ _%g198598198617%_))))
                      (_%g198597198614%_ _%g198598198617%_)))))
          (_%g198596198659%_ _%stx198595%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self198405%_ _%stx198406%_)
        (let* ((_%g198408198425%_
                (lambda (_%g198409198422%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198409198422%_))))
               (_%g198407198591%_
                (lambda (_%g198409198428%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198409198428%_))
                      (let ((_%e198412198430%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198409198428%_))))
                        (let ((_%hd198413198433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198412198430%_)))
                              (_%tl198414198435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198412198430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198414198435%_))
                              (let ((_%e198415198438%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198414198435%_))))
                                (let ((_%hd198416198441%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198415198438%_)))
                                      (_%tl198417198443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198415198438%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198417198443%_))
                                      (let ((_%e198418198446%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198417198443%_))))
                                        (let ((_%hd198419198449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198418198446%_)))
                                              (_%tl198420198451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198418198446%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198420198451%_))
                                              ((lambda (_%g198410198454%_
                                                        _%g198411198455%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198405%_ _%g198410198454%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198405%_
                                  _%g198411198455%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198470%_ ((_%rest198473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198411198455%_
                                       (cons _%g198410198454%_ '())))
                                (_%bind198475%_ '())
                                (_%args198476%_ '()))
               (let* ((_%rest198477198485%_ _%rest198473%_)
                      (_%else198479198493%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198475%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args198476%_)
                                                 '()))))))
                      (_%K198481198579%_
                       (lambda (_%rest198496%_ _%e198497%_)
                         (let* ((_%__stx205410205411%_ _%e198497%_)
                                (_%g198502198520%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205410205411%_)))))
                           (let ((_%__kont205412205413%_
                                  (lambda ()
                                    (_%lp198470%_
                                     _%rest198496%_
                                     _%bind198475%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198497%_))
                                           _%args198476%_))))
                                 (_%__kont205414205415%_
                                  (lambda ()
                                    (_%lp198470%_
                                     _%rest198496%_
                                     _%bind198475%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198497%_))
                                           _%args198476%_))))
                                 (_%__kont205416205417%_
                                  (lambda ()
                                    (let ((_%tmp198527%_
                                           (let ((__tmp205863
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp205863))))
                                      (_%lp198470%_
                                       _%rest198496%_
                                       (cons (cons _%tmp198527%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198497%_))
                                                         '()))
                                             _%bind198475%_)
                                       (cons _%tmp198527%_ _%args198476%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205410205411%_))
                                 (let ((_%e198504198558%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205410205411%_))))
                                   (let ((_%tl198506198563%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198504198558%_)))
                                         (_%hd198505198561%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198504198558%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198505198561%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198505198561%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198506198563%_))
                                                 (let ((_%e198507198566%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198506198563%_))))
                                                   (let ((_%tl198509198571%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198507198566%_)))
                                                         (_%hd198508198569%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198507198566%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198509198571%_))
                                                         (_%__kont205412205413%_)
                                                         (_%__kont205416205417%_))))
                                                 (_%__kont205416205417%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198505198561%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198506198563%_))
                                                     (let ((_%e198513198543%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198506198563%_))))
                                                       (let ((_%tl198515198548%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198513198543%_)))
                     (_%hd198514198546%_
                      (let () (declare (not safe)) (##car _%e198513198543%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198515198548%_))
                     (_%__kont205414205415%_)
                     (_%__kont205416205417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205416205417%_))
                                                 (_%__kont205416205417%_)))
                                         (_%__kont205416205417%_))))
                                 (_%__kont205416205417%_)))))))
                 (if (pair? _%rest198477198485%_)
                     (let ((_%hd198482198582%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198477198485%_)))
                           (_%tl198483198584%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198477198485%_))))
                       (let* ((_%e198587%_ _%hd198482198582%_)
                              (_%rest198589%_ _%tl198483198584%_))
                         (_%K198481198579%_ _%rest198589%_ _%e198587%_)))
                     (_%else198479198493%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198419198449%_
                                               _%hd198416198441%_)
                                              (_%g198408198425%_
                                               _%g198409198428%_))))
                                      (_%g198408198425%_ _%g198409198428%_))))
                              (_%g198408198425%_ _%g198409198428%_))))
                      (_%g198408198425%_ _%g198409198428%_)))))
          (_%g198407198591%_ _%stx198406%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self198216%_ _%stx198217%_)
        (let* ((_%g198219198236%_
                (lambda (_%g198220198233%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198220198233%_))))
               (_%g198218198402%_
                (lambda (_%g198220198239%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198220198239%_))
                      (let ((_%e198223198241%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198220198239%_))))
                        (let ((_%hd198224198244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198223198241%_)))
                              (_%tl198225198246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198223198241%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198225198246%_))
                              (let ((_%e198226198249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198225198246%_))))
                                (let ((_%hd198227198252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198226198249%_)))
                                      (_%tl198228198254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198226198249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198228198254%_))
                                      (let ((_%e198229198257%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198228198254%_))))
                                        (let ((_%hd198230198260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198229198257%_)))
                                              (_%tl198231198262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198229198257%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198231198262%_))
                                              ((lambda (_%g198221198265%_
                                                        _%g198222198266%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198216%_ _%g198221198265%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198216%_
                                  _%g198222198266%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198281%_ ((_%rest198284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198222198266%_
                                       (cons _%g198221198265%_ '())))
                                (_%bind198286%_ '())
                                (_%args198287%_ '()))
               (let* ((_%rest198288198296%_ _%rest198284%_)
                      (_%else198290198304%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198286%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args198287%_)
                                                 '()))))))
                      (_%K198292198390%_
                       (lambda (_%rest198307%_ _%e198308%_)
                         (let* ((_%__stx205456205457%_ _%e198308%_)
                                (_%g198313198331%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205456205457%_)))))
                           (let ((_%__kont205458205459%_
                                  (lambda ()
                                    (_%lp198281%_
                                     _%rest198307%_
                                     _%bind198286%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198308%_))
                                           _%args198287%_))))
                                 (_%__kont205460205461%_
                                  (lambda ()
                                    (_%lp198281%_
                                     _%rest198307%_
                                     _%bind198286%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198308%_))
                                           _%args198287%_))))
                                 (_%__kont205462205463%_
                                  (lambda ()
                                    (let ((_%tmp198338%_
                                           (let ((__tmp205864
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp205864))))
                                      (_%lp198281%_
                                       _%rest198307%_
                                       (cons (cons _%tmp198338%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198308%_))
                                                         '()))
                                             _%bind198286%_)
                                       (cons _%tmp198338%_ _%args198287%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205456205457%_))
                                 (let ((_%e198315198369%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205456205457%_))))
                                   (let ((_%tl198317198374%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198315198369%_)))
                                         (_%hd198316198372%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198315198369%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198316198372%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198316198372%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198317198374%_))
                                                 (let ((_%e198318198377%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198317198374%_))))
                                                   (let ((_%tl198320198382%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198318198377%_)))
                                                         (_%hd198319198380%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198318198377%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198320198382%_))
                                                         (_%__kont205458205459%_)
                                                         (_%__kont205462205463%_))))
                                                 (_%__kont205462205463%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198316198372%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198317198374%_))
                                                     (let ((_%e198324198354%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198317198374%_))))
                                                       (let ((_%tl198326198359%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198324198354%_)))
                     (_%hd198325198357%_
                      (let () (declare (not safe)) (##car _%e198324198354%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198326198359%_))
                     (_%__kont205460205461%_)
                     (_%__kont205462205463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205462205463%_))
                                                 (_%__kont205462205463%_)))
                                         (_%__kont205462205463%_))))
                                 (_%__kont205462205463%_)))))))
                 (if (pair? _%rest198288198296%_)
                     (let ((_%hd198293198393%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198288198296%_)))
                           (_%tl198294198395%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198288198296%_))))
                       (let* ((_%e198398%_ _%hd198293198393%_)
                              (_%rest198400%_ _%tl198294198395%_))
                         (_%K198292198390%_ _%rest198400%_ _%e198398%_)))
                     (_%else198290198304%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198230198260%_
                                               _%hd198227198252%_)
                                              (_%g198219198236%_
                                               _%g198220198239%_))))
                                      (_%g198219198236%_ _%g198220198239%_))))
                              (_%g198219198236%_ _%g198220198239%_))))
                      (_%g198219198236%_ _%g198220198239%_)))))
          (_%g198218198402%_ _%stx198217%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self198132%_ _%stx198133%_)
        (let* ((_%g198135198156%_
                (lambda (_%g198136198153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198136198153%_))))
               (_%g198134198213%_
                (lambda (_%g198136198159%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198136198159%_))
                      (let ((_%e198140198161%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198136198159%_))))
                        (let ((_%hd198141198164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198140198161%_)))
                              (_%tl198142198166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198140198161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198142198166%_))
                              (let ((_%e198143198169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198142198166%_))))
                                (let ((_%hd198144198172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198143198169%_)))
                                      (_%tl198145198174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198143198169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198145198174%_))
                                      (let ((_%e198146198177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198145198174%_))))
                                        (let ((_%hd198147198180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198146198177%_)))
                                              (_%tl198148198182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198146198177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198148198182%_))
                                              (let ((_%e198149198185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198148198182%_))))
                                                (let ((_%hd198150198188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198149198185%_)))
                                                      (_%tl198151198190%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198149198185%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198151198190%_))
                                                      ((lambda (_%g198137198193%_
                                                                _%g198138198194%_
                                                                _%g198139198195%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self198132%_
                                _%g198137198193%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self198132%_
                                      _%g198138198194%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198132%_
                                            _%g198139198195%_))
                                         (cons ''#f '()))))))
               _%hd198150198188%_
               _%hd198147198180%_
               _%hd198144198172%_)
              (_%g198135198156%_ _%g198136198159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198135198156%_
                                               _%g198136198159%_))))
                                      (_%g198135198156%_ _%g198136198159%_))))
                              (_%g198135198156%_ _%g198136198159%_))))
                      (_%g198135198156%_ _%g198136198159%_)))))
          (_%g198134198213%_ _%stx198133%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self198032%_ _%stx198033%_)
        (let* ((_%g198035198060%_
                (lambda (_%g198036198057%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198036198057%_))))
               (_%g198034198129%_
                (lambda (_%g198036198063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198036198063%_))
                      (let ((_%e198041198065%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198036198063%_))))
                        (let ((_%hd198042198068%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198041198065%_)))
                              (_%tl198043198070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198041198065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198043198070%_))
                              (let ((_%e198044198073%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198043198070%_))))
                                (let ((_%hd198045198076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198044198073%_)))
                                      (_%tl198046198078%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198044198073%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198046198078%_))
                                      (let ((_%e198047198081%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198046198078%_))))
                                        (let ((_%hd198048198084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198047198081%_)))
                                              (_%tl198049198086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198047198081%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198049198086%_))
                                              (let ((_%e198050198089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198049198086%_))))
                                                (let ((_%hd198051198092%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198050198089%_)))
                                                      (_%tl198052198094%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198050198089%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198052198094%_))
                                                      (let ((_%e198053198097%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198052198094%_))))
                (let ((_%hd198054198100%_
                       (let () (declare (not safe)) (##car _%e198053198097%_)))
                      (_%tl198055198102%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198053198097%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198055198102%_))
                      ((lambda (_%g198037198105%_
                                _%g198038198106%_
                                _%g198039198107%_
                                _%g198040198108%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198032%_
                                        _%g198038198106%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198032%_
                                              _%g198037198105%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198032%_
                                                    _%g198039198107%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198032%_
                                                          _%g198040198108%_))
                                                       (cons ''#f '())))))))
                       _%hd198054198100%_
                       _%hd198051198092%_
                       _%hd198048198084%_
                       _%hd198045198076%_)
                      (_%g198035198060%_ _%g198036198063%_))))
              (_%g198035198060%_ _%g198036198063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198035198060%_
                                               _%g198036198063%_))))
                                      (_%g198035198060%_ _%g198036198063%_))))
                              (_%g198035198060%_ _%g198036198063%_))))
                      (_%g198035198060%_ _%g198036198063%_)))))
          (_%g198034198129%_ _%stx198033%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self197948%_ _%stx197949%_)
        (let* ((_%g197951197972%_
                (lambda (_%g197952197969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197952197969%_))))
               (_%g197950198029%_
                (lambda (_%g197952197975%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197952197975%_))
                      (let ((_%e197956197977%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197952197975%_))))
                        (let ((_%hd197957197980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197956197977%_)))
                              (_%tl197958197982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197956197977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197958197982%_))
                              (let ((_%e197959197985%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197958197982%_))))
                                (let ((_%hd197960197988%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197959197985%_)))
                                      (_%tl197961197990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197959197985%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197961197990%_))
                                      (let ((_%e197962197993%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197961197990%_))))
                                        (let ((_%hd197963197996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197962197993%_)))
                                              (_%tl197964197998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197962197993%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197964197998%_))
                                              (let ((_%e197965198001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197964197998%_))))
                                                (let ((_%hd197966198004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197965198001%_)))
                                                      (_%tl197967198006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197965198001%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197967198006%_))
                                                      ((lambda (_%g197953198009%_
                                                                _%g197954198010%_
                                                                _%g197955198011%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self197948%_
                                _%g197953198009%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self197948%_
                                      _%g197954198010%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197948%_
                                            _%g197955198011%_))
                                         (cons ''#f '()))))))
               _%hd197966198004%_
               _%hd197963197996%_
               _%hd197960197988%_)
              (_%g197951197972%_ _%g197952197975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197951197972%_
                                               _%g197952197975%_))))
                                      (_%g197951197972%_ _%g197952197975%_))))
                              (_%g197951197972%_ _%g197952197975%_))))
                      (_%g197951197972%_ _%g197952197975%_)))))
          (_%g197950198029%_ _%stx197949%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self197848%_ _%stx197849%_)
        (let* ((_%g197851197876%_
                (lambda (_%g197852197873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197852197873%_))))
               (_%g197850197945%_
                (lambda (_%g197852197879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197852197879%_))
                      (let ((_%e197857197881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197852197879%_))))
                        (let ((_%hd197858197884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197857197881%_)))
                              (_%tl197859197886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197857197881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197859197886%_))
                              (let ((_%e197860197889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197859197886%_))))
                                (let ((_%hd197861197892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197860197889%_)))
                                      (_%tl197862197894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197860197889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197862197894%_))
                                      (let ((_%e197863197897%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197862197894%_))))
                                        (let ((_%hd197864197900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197863197897%_)))
                                              (_%tl197865197902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197863197897%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197865197902%_))
                                              (let ((_%e197866197905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197865197902%_))))
                                                (let ((_%hd197867197908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197866197905%_)))
                                                      (_%tl197868197910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197866197905%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197868197910%_))
                                                      (let ((_%e197869197913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197868197910%_))))
                (let ((_%hd197870197916%_
                       (let () (declare (not safe)) (##car _%e197869197913%_)))
                      (_%tl197871197918%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197869197913%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197871197918%_))
                      ((lambda (_%g197853197921%_
                                _%g197854197922%_
                                _%g197855197923%_
                                _%g197856197924%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self197848%_
                                        _%g197854197922%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self197848%_
                                              _%g197853197921%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self197848%_
                                                    _%g197855197923%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self197848%_
                                                          _%g197856197924%_))
                                                       (cons ''#f '())))))))
                       _%hd197870197916%_
                       _%hd197867197908%_
                       _%hd197864197900%_
                       _%hd197861197892%_)
                      (_%g197851197876%_ _%g197852197879%_))))
              (_%g197851197876%_ _%g197852197879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197851197876%_
                                               _%g197852197879%_))))
                                      (_%g197851197876%_ _%g197852197879%_))))
                              (_%g197851197876%_ _%g197852197879%_))))
                      (_%g197851197876%_ _%g197852197879%_)))))
          (_%g197850197945%_ _%stx197849%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self197643%_ _%stx197644%_)
        (let* ((_%g197646197667%_
                (lambda (_%g197647197664%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197647197664%_))))
               (_%g197645197845%_
                (lambda (_%g197647197670%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197647197670%_))
                      (let ((_%e197651197672%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197647197670%_))))
                        (let ((_%hd197652197675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197651197672%_)))
                              (_%tl197653197677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197651197672%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197653197677%_))
                              (let ((_%e197654197680%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197653197677%_))))
                                (let ((_%hd197655197683%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197654197680%_)))
                                      (_%tl197656197685%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197654197680%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197656197685%_))
                                      (let ((_%e197657197688%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197656197685%_))))
                                        (let ((_%hd197658197691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197657197688%_)))
                                              (_%tl197659197693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197657197688%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197659197693%_))
                                              (let ((_%e197660197696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197659197693%_))))
                                                (let ((_%hd197661197699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197660197696%_)))
                                                      (_%tl197662197701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197660197696%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197662197701%_))
                                                      ((lambda (_%g197648197704%_
                                                                _%g197649197705%_
                                                                _%g197650197706%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self197643%_
                                    _%g197648197704%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self197643%_
                                          _%g197649197705%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp197724%_ ((_%rest197727%_
                                         (cons _%g197649197705%_
                                               (cons _%g197648197704%_ '())))
                                        (_%bind197729%_ '())
                                        (_%args197730%_ '()))
                       (let* ((_%rest197731197739%_ _%rest197727%_)
                              (_%else197733197747%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind197729%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp205865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp205865 _%args197730%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K197735197833%_
                               (lambda (_%rest197750%_ _%e197751%_)
                                 (let* ((_%__stx205502205503%_ _%e197751%_)
                                        (_%g197756197774%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205502205503%_)))))
                                   (let ((_%__kont205504205505%_
                                          (lambda ()
                                            (_%lp197724%_
                                             _%rest197750%_
                                             _%bind197729%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e197751%_))
                                                   _%args197730%_))))
                                         (_%__kont205506205507%_
                                          (lambda ()
                                            (_%lp197724%_
                                             _%rest197750%_
                                             _%bind197729%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e197751%_))
                                                   _%args197730%_))))
                                         (_%__kont205508205509%_
                                          (lambda ()
                                            (let ((_%tmp197781%_
                                                   (let ((__tmp205866
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp205866))))
                                              (_%lp197724%_
                                               _%rest197750%_
                                               (cons (cons _%tmp197781%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e197751%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197729%_)
                                               (cons _%tmp197781%_
                                                     _%args197730%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205502205503%_))
                                         (let ((_%e197758197812%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205502205503%_))))
                                           (let ((_%tl197760197817%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197758197812%_)))
                                                 (_%hd197759197815%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197758197812%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197759197815%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd197759197815%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197760197817%_))
                                                         (let ((_%e197761197820%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197760197817%_))))
                   (let ((_%tl197763197825%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197761197820%_)))
                         (_%hd197762197823%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197761197820%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl197763197825%_))
                         (_%__kont205504205505%_)
                         (_%__kont205508205509%_))))
                 (_%__kont205508205509%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd197759197815%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197760197817%_))
                     (let ((_%e197767197797%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197760197817%_))))
                       (let ((_%tl197769197802%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197767197797%_)))
                             (_%hd197768197800%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197767197797%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197769197802%_))
                             (_%__kont205506205507%_)
                             (_%__kont205508205509%_))))
                     (_%__kont205508205509%_))
                 (_%__kont205508205509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont205508205509%_))))
                                         (_%__kont205508205509%_)))))))
                         (if (pair? _%rest197731197739%_)
                             (let ((_%hd197736197836%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest197731197739%_)))
                                   (_%tl197737197838%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest197731197739%_))))
                               (let* ((_%e197841%_ _%hd197736197836%_)
                                      (_%rest197843%_ _%tl197737197838%_))
                                 (_%K197735197833%_
                                  _%rest197843%_
                                  _%e197841%_)))
                             (_%else197733197747%_))))))
               _%hd197661197699%_
               _%hd197658197691%_
               _%hd197655197683%_)
              (_%g197646197667%_ _%g197647197670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197646197667%_
                                               _%g197647197670%_))))
                                      (_%g197646197667%_ _%g197647197670%_))))
                              (_%g197646197667%_ _%g197647197670%_))))
                      (_%g197646197667%_ _%g197647197670%_)))))
          (_%g197645197845%_ _%stx197644%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self197422%_ _%stx197423%_)
        (let* ((_%g197425197450%_
                (lambda (_%g197426197447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197426197447%_))))
               (_%g197424197640%_
                (lambda (_%g197426197453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197426197453%_))
                      (let ((_%e197431197455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197426197453%_))))
                        (let ((_%hd197432197458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197431197455%_)))
                              (_%tl197433197460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197431197455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197433197460%_))
                              (let ((_%e197434197463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197433197460%_))))
                                (let ((_%hd197435197466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197434197463%_)))
                                      (_%tl197436197468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197434197463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197436197468%_))
                                      (let ((_%e197437197471%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197436197468%_))))
                                        (let ((_%hd197438197474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197437197471%_)))
                                              (_%tl197439197476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197437197471%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197439197476%_))
                                              (let ((_%e197440197479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197439197476%_))))
                                                (let ((_%hd197441197482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197440197479%_)))
                                                      (_%tl197442197484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197440197479%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197442197484%_))
                                                      (let ((_%e197443197487%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197442197484%_))))
                (let ((_%hd197444197490%_
                       (let () (declare (not safe)) (##car _%e197443197487%_)))
                      (_%tl197445197492%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197443197487%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197445197492%_))
                      ((lambda (_%g197427197495%_
                                _%g197428197496%_
                                _%g197429197497%_
                                _%g197430197498%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197422%_
                                            _%g197428197496%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self197422%_
                                                  _%g197427197495%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self197422%_
                                                        _%g197429197497%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp197519%_ ((_%rest197522%_
                                                 (cons _%g197429197497%_
                                                       (cons _%g197427197495%_
                                                             (cons _%g197428197496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind197524%_ '())
                                                (_%args197525%_ '()))
                               (let* ((_%rest197526197534%_ _%rest197522%_)
                                      (_%else197528197542%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind197524%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp205867 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp205867 _%args197525%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K197530197628%_
                                       (lambda (_%rest197545%_ _%e197546%_)
                                         (let* ((_%__stx205548205549%_
                                                 _%e197546%_)
                                                (_%g197551197569%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx205548205549%_)))))
                                           (let ((_%__kont205550205551%_
                                                  (lambda ()
                                                    (_%lp197519%_
                                                     _%rest197545%_
                                                     _%bind197524%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e197546%_))
                                                           _%args197525%_))))
                                                 (_%__kont205552205553%_
                                                  (lambda ()
                                                    (_%lp197519%_
                                                     _%rest197545%_
                                                     _%bind197524%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e197546%_))
                                                           _%args197525%_))))
                                                 (_%__kont205554205555%_
                                                  (lambda ()
                                                    (let ((_%tmp197576%_
                                                           (let ((__tmp205868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp205868))))
              (_%lp197519%_
               _%rest197545%_
               (cons (cons _%tmp197576%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e197546%_))
                                 '()))
                     _%bind197524%_)
               (cons _%tmp197576%_ _%args197525%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx205548205549%_))
                                                 (let ((_%e197553197607%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx205548205549%_))))
                                                   (let ((_%tl197555197612%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197553197607%_)))
                                                         (_%hd197554197610%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197553197607%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd197554197610%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd197554197610%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl197555197612%_))
                         (let ((_%e197556197615%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl197555197612%_))))
                           (let ((_%tl197558197620%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197556197615%_)))
                                 (_%hd197557197618%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197556197615%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl197558197620%_))
                                 (_%__kont205550205551%_)
                                 (_%__kont205554205555%_))))
                         (_%__kont205554205555%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd197554197610%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl197555197612%_))
                             (let ((_%e197562197592%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl197555197612%_))))
                               (let ((_%tl197564197597%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e197562197592%_)))
                                     (_%hd197563197595%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e197562197592%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl197564197597%_))
                                     (_%__kont205552205553%_)
                                     (_%__kont205554205555%_))))
                             (_%__kont205554205555%_))
                         (_%__kont205554205555%_)))
                 (_%__kont205554205555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont205554205555%_)))))))
                                 (if (pair? _%rest197526197534%_)
                                     (let ((_%hd197531197631%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest197526197534%_)))
                                           (_%tl197532197633%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest197526197534%_))))
                                       (let* ((_%e197636%_ _%hd197531197631%_)
                                              (_%rest197638%_
                                               _%tl197532197633%_))
                                         (_%K197530197628%_
                                          _%rest197638%_
                                          _%e197636%_)))
                                     (_%else197528197542%_))))))
                       _%hd197444197490%_
                       _%hd197441197482%_
                       _%hd197438197474%_
                       _%hd197435197466%_)
                      (_%g197425197450%_ _%g197426197453%_))))
              (_%g197425197450%_ _%g197426197453%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197425197450%_
                                               _%g197426197453%_))))
                                      (_%g197425197450%_ _%g197426197453%_))))
                              (_%g197425197450%_ _%g197426197453%_))))
                      (_%g197425197450%_ _%g197426197453%_)))))
          (_%g197424197640%_ _%stx197423%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self197261%_ _%stx197262%_)
        (letrec ((_%import-set-template197264%_
                  (lambda (_%in197367%_ _%phi197368%_)
                    (let ((_%iphi197370%_
                           (fx+ _%phi197368%_
                                (##direct-structure-ref
                                 _%in197367%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports197371%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in197367%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp197373%_ ((_%rest197375%_ _%imports197371%_)
                                         (_%r197376%_ '()))
                        (let* ((_%rest197377197385%_ _%rest197375%_)
                               (_%else197379197393%_ (lambda () _%r197376%_))
                               (_%K197381197410%_
                                (lambda (_%rest197396%_ _%in197397%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in197397%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi197370%_))
                                          (_%lp197373%_
                                           _%rest197396%_
                                           (cons _%in197397%_ _%r197376%_))
                                          (_%lp197373%_
                                           _%rest197396%_
                                           _%r197376%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in197397%_
                                             'gx#module-import::t))
                                          (let ((_%iphi197401%_
                                                 (fx+ _%phi197368%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in197397%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi197401%_))
                                                (_%lp197373%_
                                                 _%rest197396%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in197397%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r197376%_))
                                                (_%lp197373%_
                                                 _%rest197396%_
                                                 _%r197376%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in197397%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi197404%_
                                                     (fx+ _%iphi197370%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in197397%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi197404%_))
                                                    (_%lp197373%_
                                                     _%rest197396%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197397%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r197376%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi197404%_))
                                                        (_%lp197373%_
                                                         _%rest197396%_
                                                         (let ((__tmp205869
                                                                (_%import-set-template197264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in197397%_
                         _%iphi197370%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r197376%_ __tmp205869)))
                (_%lp197373%_ _%rest197396%_ _%r197376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp197373%_
                                               _%rest197396%_
                                               _%r197376%_)))))))
                          (if (pair? _%rest197377197385%_)
                              (let ((_%hd197382197413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest197377197385%_)))
                                    (_%tl197383197415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest197377197385%_))))
                                (let* ((_%in197418%_ _%hd197382197413%_)
                                       (_%rest197420%_ _%tl197383197415%_))
                                  (_%K197381197410%_
                                   _%rest197420%_
                                   _%in197418%_)))
                              (_%else197379197393%_))))))))
          (let* ((_%g197266197276%_
                  (lambda (_%g197267197273%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197267197273%_))))
                 (_%g197265197364%_
                  (lambda (_%g197267197279%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197267197279%_))
                        (let ((_%e197269197281%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197267197279%_))))
                          (let ((_%hd197270197284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197269197281%_)))
                                (_%tl197271197286%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197269197281%_))))
                            ((lambda (_%g197268197289%_)
                               (let ((_%ht197300%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp197302%_ ((_%rest197304%_
                                                     _%g197268197289%_)
                                                    (_%loads197305%_ '()))
                                   (letrec ((_%K197307%_
                                             (lambda (_%ctx197357%_
                                                      _%rest197358%_)
                                               (let ((_%id197360%_
                                                      (##structure-ref
                                                       _%ctx197357%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht197300%_
                                                        _%id197360%_))
                                                     (_%lp197302%_
                                                      _%rest197358%_
                                                      _%loads197305%_)
                                                     (let ((_%rt197362%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id197360%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht197300%_
                                                          _%id197360%_
                                                          _%rt197362%_))
                                                       (_%lp197302%_
                                                        _%rest197358%_
                                                        (cons _%rt197362%_
                                                              _%loads197305%_))))))))
                                     (let* ((_%rest197308197316%_
                                             _%rest197304%_)
                                            (_%else197310197328%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp205871
                                                            (lambda (_%g197323197325%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197323197325%_)))
                   (__tmp205870 (reverse _%loads197305%_)))
               (declare (not safe))
               (##map __tmp205871 __tmp205870)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K197312197345%_
                                             (lambda (_%rest197331%_
                                                      _%in197332%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in197332%_
                                                      'gx#module-context::t))
                                                   (_%K197307%_
                                                    _%in197332%_
                                                    _%rest197331%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in197332%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in197332%_
                               '3
                               '#f
                               '#f)))
                   (_%K197307%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in197332%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest197331%_)
                   (_%lp197302%_ _%rest197331%_ _%loads197305%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in197332%_
                      'gx#import-set::t))
                   (let ((_%phi197337%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197332%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi197337%_)
                         (_%K197307%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197332%_
                             '1
                             '#f
                             '#f))
                          _%rest197331%_)
                         (if (fxpositive? _%phi197337%_)
                             (let ((_%deps197341%_
                                    (_%import-set-template197264%_
                                     _%in197332%_
                                     '0)))
                               (_%lp197302%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest197331%_
                                   _%deps197341%_))
                                _%loads197305%_))
                             (_%lp197302%_ _%rest197331%_ _%loads197305%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx197262%_
                      _%in197332%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest197308197316%_)
                                           (let ((_%hd197313197348%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest197308197316%_)))
                                                 (_%tl197314197350%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest197308197316%_))))
                                             (let* ((_%in197353%_
                                                     _%hd197313197348%_)
                                                    (_%rest197355%_
                                                     _%tl197314197350%_))
                                               (_%K197312197345%_
                                                _%rest197355%_
                                                _%in197353%_)))
                                           (_%else197310197328%_)))))))
                             _%tl197271197286%_)))
                        (_%g197266197276%_ _%g197267197279%_)))))
            (_%g197265197364%_ _%stx197262%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self197075%_ _%stx197076%_)
        (letrec ((_%add-lift!197078%_
                  (lambda (_%expr197259%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr197259%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote197079%_
                  (lambda (_%id197256%_ _%marks197257%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id197256%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks197257%_
                                                        '()))))))))
                 (_%generate-simple197080%_
                  (lambda (_%stxq197251%_)
                    (let ((_%gid197253%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid197254%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq197251%_))))
                      (_%add-lift!197078%_
                       (cons 'define
                             (cons _%gid197253%_
                                   (cons (_%generate-syntax-quote197079%_
                                          _%qid197254%_
                                          ''())
                                         '()))))
                      (let ((__tmp205872
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp205872 _%stxq197251%_ _%gid197253%_))
                      _%gid197253%_)))
                 (_%generate-serialized197081%_
                  (lambda (_%stxq197241%_ _%marks197242%_)
                    (let* ((_%mark-refs197244%_
                            (map _%generate-mark197082%_ _%marks197242%_))
                           (_%gid197246%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid197248%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq197241%_))))
                      (_%add-lift!197078%_
                       (cons 'define
                             (cons _%gid197246%_
                                   (cons (_%generate-syntax-quote197079%_
                                          _%qid197248%_
                                          (cons 'list _%mark-refs197244%_))
                                         '()))))
                      (let ((__tmp205873
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp205873 _%stxq197241%_ _%gid197246%_))
                      _%gid197246%_)))
                 (_%generate-mark197082%_
                  (lambda (_%mark197226%_)
                    (let ((_%$e197228%_
                           (let ((__tmp205874
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp205874 _%mark197226%_))))
                      (if _%$e197228%_
                          _%$e197228%_
                          (let* ((_%gid197232%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr197234%_
                                  (_%serialize-mark197083%_ _%mark197226%_))
                                 (_%ctx197236%_
                                  (let ((__tmp205875
                                         (##structure-ref
                                          _%mark197226%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp205875)))
                                 (_%ctx-ref197238%_
                                  (if (eq? _%ctx197236%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref197084%_
                                                               _%ctx197236%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp205876
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp205876
                               _%mark197226%_
                               _%gid197232%_))
                            (_%add-lift!197078%_
                             (cons 'define
                                   (cons _%gid197232%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr197234%_ '()))
                   (cons _%ctx-ref197238%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid197232%_)))))
                 (_%serialize-mark197083%_
                  (lambda (_%mark197174%_)
                    (letrec ((_%quote-e197176%_
                              (lambda (_%sym197224%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym197224%_))
                                    _%sym197224%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym197224%_))))))
                      (let* ((_%mark197177197186%_ _%mark197174%_)
                             (_%E197179197189%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark197177197186%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K197180197201%_
                              (lambda (_%trace197192%_
                                       _%phi197193%_
                                       _%ctx197194%_
                                       _%subst197195%_)
                                (let ((_%subs197197%_
                                       (if _%subst197195%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst197195%_))
                                           '())))
                                  (cons _%phi197193%_
                                        (let ((__tmp205877
                                               (lambda (_%pair197199%_)
                                                 (cons (_%quote-e197176%_
                                                        (car _%pair197199%_))
                                                       (_%quote-e197176%_
                                                        (cdr _%pair197199%_))))))
                                          (declare (not safe))
                                          (##map __tmp205877
                                                 _%subs197197%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark197177197186%_
                               'gx#expander-mark::t))
                            (let* ((_%e197181197204%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197177197186%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst197207%_ _%e197181197204%_)
                                   (_%e197182197209%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197177197186%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx197212%_ _%e197182197209%_)
                                   (_%e197183197214%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197177197186%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi197217%_ _%e197183197214%_)
                                   (_%e197184197219%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197177197186%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace197222%_ _%e197184197219%_))
                              (_%K197180197201%_
                               _%trace197222%_
                               _%phi197217%_
                               _%ctx197212%_
                               _%subst197207%_))
                            (_%E197179197189%_))))))
                 (_%context-ref197084%_
                  (lambda (_%ctx197161%_)
                    (if (let ((__tmp205878
                               (##structure-ref
                                _%ctx197161%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp205878
                           'gx#module-context::t))
                        (let ((_%ctx-ref197163%_
                               (_%context-ref-nested197086%_ _%ctx197161%_))
                              (_%ctx-origin197164%_
                               (_%context-ref-origin197085%_ _%ctx197161%_))
                              (_%origin197165%_
                               (_%context-ref-origin197085%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin197165%_ _%ctx-origin197164%_)
                              (let ((_%ref197167%_
                                     (_%context-ref-nested197086%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp197169%_ ((_%ref197171%_
                                                    (cdr _%ref197167%_))
                                                   (_%ctx-ref197172%_
                                                    (cdr _%ctx-ref197163%_)))
                                  (if (and (pair? _%ref197171%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref197171%_))
                                                (car _%ctx-ref197172%_)))
                                      (_%lp197169%_
                                       (cdr _%ref197171%_)
                                       (cdr _%ctx-ref197172%_))
                                      (cons '#f _%ctx-ref197172%_))))
                              _%ctx-ref197163%_))
                        (let ((__tmp205879
                               (##structure-ref
                                _%ctx197161%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp205879)))))
                 (_%context-ref-origin197085%_
                  (lambda (_%ctx197153%_)
                    (let _%lp197155%_ ((_%ctx197157%_ _%ctx197153%_))
                      (let ((_%super197159%_
                             (##structure-ref
                              _%ctx197157%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197159%_
                               'gx#module-context::t))
                            (_%lp197155%_ _%super197159%_)
                            _%ctx197157%_)))))
                 (_%context-ref-nested197086%_
                  (lambda (_%ctx197144%_)
                    (let _%lp197146%_ ((_%ctx197148%_ _%ctx197144%_)
                                       (_%r197149%_ '()))
                      (let ((_%super197151%_
                             (##structure-ref
                              _%ctx197148%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197151%_
                               'gx#module-context::t))
                            (_%lp197146%_
                             _%super197151%_
                             (cons (car (##structure-ref
                                         _%ctx197148%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r197149%_))
                            (cons (let ((__tmp205880
                                         (##structure-ref
                                          _%ctx197148%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp205880))
                                  _%r197149%_)))))))
          (let* ((_%g197088197101%_
                  (lambda (_%g197089197098%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197089197098%_))))
                 (_%g197087197141%_
                  (lambda (_%g197089197104%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197089197104%_))
                        (let ((_%e197091197106%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197089197104%_))))
                          (let ((_%hd197092197109%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197091197106%_)))
                                (_%tl197093197111%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197091197106%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197093197111%_))
                                (let ((_%e197094197114%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197093197111%_))))
                                  (let ((_%hd197095197117%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197094197114%_)))
                                        (_%tl197096197119%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197094197114%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197096197119%_))
                                        ((lambda (_%g197090197122%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g197090197122%_))
                                               (let ((_%$e197135%_
                                                      (let ((__tmp205881
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp205881 _%g197090197122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e197135%_
                                                     _%$e197135%_
                                                     (let ((_%marks197139%_
                                                            (##direct-structure-ref
                                                             _%g197090197122%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks197139%_)
                                                           (_%generate-simple197080%_
                                                            _%g197090197122%_)
                                                           (_%generate-serialized197081%_
                                                            _%g197090197122%_
                                                            _%marks197139%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g197090197122%_))))
                                         _%hd197095197117%_)
                                        (_%g197088197101%_
                                         _%g197089197104%_))))
                                (_%g197088197101%_ _%g197089197104%_))))
                        (_%g197088197101%_ _%g197089197104%_)))))
            (_%g197087197141%_ _%stx197076%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self197007%_ _%stx197008%_)
        (let* ((_%g197010197027%_
                (lambda (_%g197011197024%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197011197024%_))))
               (_%g197009197072%_
                (lambda (_%g197011197030%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197011197030%_))
                      (let ((_%e197014197032%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197011197030%_))))
                        (let ((_%hd197015197035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197014197032%_)))
                              (_%tl197016197037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197014197032%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197016197037%_))
                              (let ((_%e197017197040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197016197037%_))))
                                (let ((_%hd197018197043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197017197040%_)))
                                      (_%tl197019197045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197017197040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197019197045%_))
                                      (let ((_%e197020197048%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197019197045%_))))
                                        (let ((_%hd197021197051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197020197048%_)))
                                              (_%tl197022197053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197020197048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197022197053%_))
                                              ((lambda (_%g197012197056%_
                                                        _%g197013197057%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g197013197057%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self197007%_
                              _%g197012197056%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197021197051%_
                                               _%hd197018197043%_)
                                              (_%g197010197027%_
                                               _%g197011197030%_))))
                                      (_%g197010197027%_ _%g197011197030%_))))
                              (_%g197010197027%_ _%g197011197030%_))))
                      (_%g197010197027%_ _%g197011197030%_)))))
          (_%g197009197072%_ _%stx197008%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self196956%_ _%stx196957%_)
        (let* ((_%g196959196969%_
                (lambda (_%g196960196966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196960196966%_))))
               (_%g196958197004%_
                (lambda (_%g196960196972%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196960196972%_))
                      (let ((_%e196962196974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196960196972%_))))
                        (let ((_%hd196963196977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196962196974%_)))
                              (_%tl196964196979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196962196974%_))))
                          ((lambda (_%g196961196982%_)
                             (let* ((_%c-body196996%_
                                     (map (lambda (_%g196991196993%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196956%_
                                               _%g196991196993%_)))
                                          _%g196961196982%_))
                                    (_%c-body197001%_
                                     (let ((__tmp205882
                                            (lambda (_%$obj196998%_)
                                              (not (eq? _%$obj196998%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp205882
                                        _%c-body196996%_))))
                               (cons '%#begin _%c-body197001%_)))
                           _%tl196964196979%_)))
                      (_%g196959196969%_ _%g196960196972%_)))))
          (_%g196958197004%_ _%stx196957%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self196861%_ _%stx196862%_)
        (let* ((_%g196864196874%_
                (lambda (_%g196865196871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196865196871%_))))
               (_%g196863196953%_
                (lambda (_%g196865196877%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196865196877%_))
                      (let ((_%e196867196879%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196865196877%_))))
                        (let ((_%hd196868196882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196867196879%_)))
                              (_%tl196869196884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196867196879%_))))
                          ((lambda (_%g196866196887%_)
                             (let* ((_%phi196897%_
                                     (let ((__tmp205883
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp205883 '1)))
                                    (_%block196899%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self196861%_ 'state))
                                      _%phi196897%_))
                                    (_%compiled196902%_
                                     (let ((__tmp205884
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self196861%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g196866196887%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp205884
                                        gx#current-expander-phi
                                        _%phi196897%_)))
                                    (_%g196905196915%_
                                     (lambda (_%g196906196912%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g196906196912%_))))
                                    (_%g196904196950%_
                                     (lambda (_%g196906196918%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g196906196918%_))
                                           (let ((_%e196908196920%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g196906196918%_))))
                                             (let ((_%hd196909196923%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e196908196920%_)))
                                                   (_%tl196910196925%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e196908196920%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd196909196923%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd196909196923%_))
                                                       ((lambda (_%g196907196928%_)
                                                          (let ((_%c-body196945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj196942%_)
                                   (not (eq? _%$obj196942%_ '#!void)))
                                 _%g196907196928%_)))
                    (if _%block196899%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block196899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body196945%_))
                        (if (null? _%c-body196945%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body196945%_)))))
                _%tl196910196925%_)
               (_%g196905196915%_ _%g196906196918%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g196905196915%_
                                                    _%g196906196918%_))))
                                           (_%g196905196915%_
                                            _%g196906196918%_)))))
                               (_%g196904196950%_ _%compiled196902%_)))
                           _%tl196869196884%_)))
                      (_%g196864196874%_ _%g196865196877%_)))))
          (_%g196863196953%_ _%stx196862%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self196792%_ _%stx196793%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196792%_ 'state)))
        (let* ((_%g196795196809%_
                (lambda (_%g196796196806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196796196806%_))))
               (_%g196794196858%_
                (lambda (_%g196796196812%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196796196812%_))
                      (let ((_%e196799196814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196796196812%_))))
                        (let ((_%hd196800196817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196799196814%_)))
                              (_%tl196801196819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196799196814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196801196819%_))
                              (let ((_%e196802196822%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196801196819%_))))
                                (let ((_%hd196803196825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196802196822%_)))
                                      (_%tl196804196827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196802196822%_))))
                                  ((lambda (_%g196797196830%_
                                            _%g196798196831%_)
                                     (let ((_%key196844%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g196798196831%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key196844%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx196793%_
                                              _%g196798196831%_
                                              _%key196844%_)))
                                       (let* ((_%ctx196846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g196798196831%_)))
                                              (_%code196849%_
                                               (let ((__tmp205885
                                                      (lambda ()
                                                        (let ((__tmp205886
                                                               (##structure-ref
                                                                _%ctx196846%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self196792%_
                                                           __tmp205886)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp205885
                                                  gx#current-expander-context
                                                  _%ctx196846%_)))
                                              (_%rt196851%_
                                               (let ((__tmp205887
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp205887
                                                  _%ctx196846%_)))
                                              (_%loader196853%_
                                               (if _%rt196851%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt196851%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid196855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g196798196831%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self196792%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid196855%_
                                                     (cons _%code196849%_
                                                           _%loader196853%_))))))
                                   _%tl196804196827%_
                                   _%hd196803196825%_)))
                              (_%g196795196809%_ _%g196796196812%_))))
                      (_%g196795196809%_ _%g196796196812%_)))))
          (_%g196794196858%_ _%stx196793%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx196779%_ _%context-chain196780%_)
        (let _%lp196782%_ ((_%ctx196784%_ _%ctx196779%_) (_%path196785%_ '()))
          (let ((_%super196787%_
                 (##structure-ref _%ctx196784%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super196787%_ _%context-chain196780%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx196784%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path196785%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super196787%_
                       'gx#module-context::t))
                    (_%lp196782%_
                     _%super196787%_
                     (cons (car (##structure-ref
                                 _%ctx196784%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path196785%_))
                    (cons (let ((__tmp205888
                                 (##structure-ref
                                  _%ctx196784%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp205888))
                          _%path196785%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp196772%_ ((_%ctx196774%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r196775%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx196774%_ 'gx#module-context::t))
              (_%lp196772%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx196774%_ '3 '#f '#f))
               (cons _%ctx196774%_ _%r196775%_))
              _%r196775%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self196537%_ _%stx196538%_)
        (letrec* ((_%context-chain196540%_ (gxc#current-context-chain))
                  (_%make-import-spec196541%_
                   (lambda (_%in196709%_)
                     (let* ((_%in196710196722%_ _%in196709%_)
                            (_%E196712196725%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in196710196722%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K196713196735%_
                             (lambda (_%phi196728%_
                                      _%name196729%_
                                      _%src-name196730%_
                                      _%src-phi196731%_
                                      _%src-key196732%_
                                      _%src-ctx196733%_)
                               (cons _%phi196728%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name196729%_))
                                           (cons _%src-phi196731%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name196730%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in196710196722%_
                              'gx#module-import::t))
                           (let ((_%e196714196738%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in196710196722%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e196714196738%_
                                    'gx#module-export::t))
                                 (let* ((_%e196717196741%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196714196738%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx196744%_ _%e196717196741%_)
                                        (_%e196718196746%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196714196738%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key196749%_ _%e196718196746%_)
                                        (_%e196719196751%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196714196738%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi196754%_ _%e196719196751%_)
                                        (_%e196720196756%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196714196738%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name196759%_ _%e196720196756%_)
                                        (_%e196715196761%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in196710196722%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name196764%_ _%e196715196761%_)
                                        (_%e196716196766%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in196710196722%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi196769%_ _%e196716196766%_))
                                   (_%K196713196735%_
                                    _%phi196769%_
                                    _%name196764%_
                                    _%src-name196759%_
                                    _%src-phi196754%_
                                    _%src-key196749%_
                                    _%src-ctx196744%_))
                                 (_%E196712196725%_)))
                           (_%E196712196725%_)))))
                  (_%make-import-path196542%_
                   (lambda (_%ctx196707%_)
                     (gxc#generate-meta-import-path
                      _%ctx196707%_
                      _%context-chain196540%_)))
                  (_%make-import-spec-in196543%_
                   (lambda (_%ctx196704%_ _%in196705%_)
                     (cons 'spec:
                           (cons (_%make-import-path196542%_ _%ctx196704%_)
                                 (reverse _%in196705%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self196537%_ 'state)))
          (let* ((_%g196545196555%_
                  (lambda (_%g196546196552%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196546196552%_))))
                 (_%g196544196701%_
                  (lambda (_%g196546196558%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196546196558%_))
                        (let ((_%e196548196560%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196546196558%_))))
                          (let ((_%hd196549196563%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196548196560%_)))
                                (_%tl196550196565%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196548196560%_))))
                            ((lambda (_%g196547196568%_)
                               (let _%lp196579%_ ((_%rest196581%_
                                                   _%g196547196568%_)
                                                  (_%current-src196582%_ '#f)
                                                  (_%current-in196583%_ '())
                                                  (_%r196584%_ '()))
                                 (let* ((_%rest196585196593%_ _%rest196581%_)
                                        (_%else196587196603%_
                                         (lambda ()
                                           (let ((_%r196601%_
                                                  (if _%current-src196582%_
                                                      (cons (_%make-import-spec-in196543%_
                                                             _%current-src196582%_
                                                             _%current-in196583%_)
                                                            _%r196584%_)
                                                      _%r196584%_)))
                                             (cons '%#import
                                                   (reverse _%r196601%_)))))
                                        (_%K196589196689%_
                                         (lambda (_%rest196606%_ _%in196607%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in196607%_
                                                  'gx#module-import::t))
                                               (let* ((_%in196609196616%_
                                                       _%in196607%_)
                                                      (_%E196611196619%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in196609196616%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K196612196627%_
               (lambda (_%src-ctx196622%_)
                 (if (eq? _%current-src196582%_ _%src-ctx196622%_)
                     (_%lp196579%_
                      _%rest196606%_
                      _%current-src196582%_
                      (cons (_%make-import-spec196541%_ _%in196607%_)
                            _%current-in196583%_)
                      _%r196584%_)
                     (if _%current-src196582%_
                         (_%lp196579%_
                          _%rest196606%_
                          _%src-ctx196622%_
                          (cons (_%make-import-spec196541%_ _%in196607%_) '())
                          (cons (_%make-import-spec-in196543%_
                                 _%current-src196582%_
                                 _%current-in196583%_)
                                _%r196584%_))
                         (_%lp196579%_
                          _%rest196606%_
                          _%src-ctx196622%_
                          (cons (_%make-import-spec196541%_ _%in196607%_) '())
                          _%r196584%_)))))
              (_%e196613196630%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in196609196616%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e196613196630%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e196614196633%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e196613196630%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx196636%_ _%e196614196633%_))
               (_%K196612196627%_ _%src-ctx196636%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E196611196619%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in196607%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi196639%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in196607%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src196641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in196607%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in196681%_
                                                           (let* ((_%g196642196651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path196542%_ _%src196641%_))
                          (_%E196645196655%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g196642196651%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K196647196671%_
                            (lambda (_%path196669%_) _%path196669%_))
                           (_%K196646196661%_
                            (lambda (_%path196659%_)
                              (cons 'in: _%path196659%_))))
                       (if (pair? _%g196642196651%_)
                           (let ((_%tl196649196676%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g196642196651%_)))
                                 (_%hd196648196674%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g196642196651%_))))
                             (if (null? _%tl196649196676%_)
                                 (let ((_%path196679%_ _%hd196648196674%_))
                                   (_%K196647196671%_ _%path196679%_))
                                 (let ((_%path196664%_ _%g196642196651%_))
                                   (_%K196646196661%_ _%path196664%_))))
                           (let ((_%path196664%_ _%g196642196651%_))
                             (_%K196646196661%_ _%path196664%_))))))
                  (_%r196683%_
                   (if _%current-src196582%_
                       (cons (_%make-import-spec-in196543%_
                              _%current-src196582%_
                              _%current-in196583%_)
                             _%r196584%_)
                       _%r196584%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp196579%_
                                                      _%rest196606%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi196639%_)
                                                                _%src-in196681%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi196639%_
                                    (cons _%src-in196681%_ '()))))
                    _%r196683%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in196607%_
                                                          'gx#module-context::t))
                                                       (let ((_%r196687%_
                                                              (if _%current-src196582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in196543%_
                                 _%current-src196582%_
                                 _%current-in196583%_)
                                _%r196584%_)
                          _%r196584%_)))
                 (_%lp196579%_
                  _%rest196606%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path196542%_ _%in196607%_))
                        _%r196687%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest196585196593%_)
                                       (let ((_%hd196590196692%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest196585196593%_)))
                                             (_%tl196591196694%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest196585196593%_))))
                                         (let* ((_%in196697%_
                                                 _%hd196590196692%_)
                                                (_%rest196699%_
                                                 _%tl196591196694%_))
                                           (_%K196589196689%_
                                            _%rest196699%_
                                            _%in196697%_)))
                                       (_%else196587196603%_)))))
                             _%tl196550196565%_)))
                        (_%g196545196555%_ _%g196546196558%_)))))
            (_%g196544196701%_ _%stx196538%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self196347%_ _%stx196348%_)
        (letrec* ((_%context-chain196350%_ (gxc#current-context-chain))
                  (_%make-import-path196351%_
                   (lambda (_%ctx196535%_)
                     (gxc#generate-meta-import-path
                      _%ctx196535%_
                      _%context-chain196350%_))))
          (let* ((_%g196353196363%_
                  (lambda (_%g196354196360%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196354196360%_))))
                 (_%g196352196532%_
                  (lambda (_%g196354196366%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196354196366%_))
                        (let ((_%e196356196368%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196354196366%_))))
                          (let ((_%hd196357196371%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196356196368%_)))
                                (_%tl196358196373%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196356196368%_))))
                            ((lambda (_%g196355196376%_)
                               (let _%lp196387%_ ((_%rest196389%_
                                                   _%g196355196376%_)
                                                  (_%r196390%_ '()))
                                 (let* ((_%rest196391196399%_ _%rest196389%_)
                                        (_%else196393196407%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r196390%_))))
                                        (_%K196395196520%_
                                         (lambda (_%rest196410%_ _%out196411%_)
                                           (let* ((_%out196412196425%_
                                                   _%out196411%_)
                                                  (_%E196415196429%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out196412196425%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K196419196499%_
                                                    (lambda (_%name196495%_
                                                             _%phi196496%_
                                                             _%key196497%_)
                                                      (_%lp196387%_
                                                       _%rest196410%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi196496%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key196497%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name196495%_))
                                             '()))))
                     _%r196390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K196416196479%_
                                                    (lambda (_%phi196433%_
                                                             _%src196434%_)
                                                      (let* ((_%out196474%_
                                                              (if _%src196434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g196435196444%_
                                              (_%make-import-path196351%_
                                               _%src196434%_))
                                             (_%E196438196448%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g196435196444%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K196440196464%_
                                               (lambda (_%path196462%_)
                                                 _%path196462%_))
                                              (_%K196439196454%_
                                               (lambda (_%path196452%_)
                                                 (cons 'in: _%path196452%_))))
                                          (if (pair? _%g196435196444%_)
                                              (let ((_%tl196442196469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g196435196444%_)))
                                                    (_%hd196441196467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g196435196444%_))))
                                                (if (null? _%tl196442196469%_)
                                                    (let ((_%path196472%_
                                                           _%hd196441196467%_))
                                                      (_%K196440196464%_
                                                       _%path196472%_))
                                                    (let ((_%path196457%_
                                                           _%g196435196444%_))
                                                      (_%K196439196454%_
                                                       _%path196457%_))))
                                              (let ((_%path196457%_
                                                     _%g196435196444%_))
                                                (_%K196439196454%_
                                                 _%path196457%_)))))
                                      '()))
                          '#t))
                     (_%out196476%_
                      (if (fxzero? _%phi196433%_)
                          _%out196474%_
                          (cons 'phi:
                                (cons _%phi196433%_
                                      (cons _%out196474%_ '()))))))
                (_%lp196387%_
                 _%rest196410%_
                 (cons _%out196476%_ _%r196390%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match196414196492%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out196412196425%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e196417196482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196412196425%_
                               '1
                               '#f
                               '#f)))
                           (_%e196418196487%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196412196425%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src196485%_ _%e196417196482%_)
                            (_%phi196490%_ _%e196418196487%_))
                        (_%K196416196479%_ _%phi196490%_ _%src196485%_)))
                    (_%E196415196429%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out196412196425%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e196420196502%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out196412196425%_
                        '1
                        '#f
                        '#f)))
                    (_%e196421196505%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196412196425%_
                        '2
                        '#f
                        '#f)))
                    (_%e196422196510%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196412196425%_
                        '3
                        '#f
                        '#f)))
                    (_%e196423196515%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196412196425%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key196508%_ _%e196421196505%_)
                     (_%phi196513%_ _%e196422196510%_)
                     (_%name196518%_ _%e196423196515%_))
                 (_%K196419196499%_
                  _%name196518%_
                  _%phi196513%_
                  _%key196508%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match196414196492%_))))))))
                                   (if (pair? _%rest196391196399%_)
                                       (let ((_%hd196396196523%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest196391196399%_)))
                                             (_%tl196397196525%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest196391196399%_))))
                                         (let* ((_%out196528%_
                                                 _%hd196396196523%_)
                                                (_%rest196530%_
                                                 _%tl196397196525%_))
                                           (_%K196395196520%_
                                            _%rest196530%_
                                            _%out196528%_)))
                                       (_%else196393196407%_)))))
                             _%tl196358196373%_)))
                        (_%g196353196363%_ _%g196354196366%_)))))
            (_%g196352196532%_ _%stx196348%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self196308%_ _%stx196309%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196308%_ 'state)))
        (let* ((_%g196311196321%_
                (lambda (_%g196312196318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196312196318%_))))
               (_%g196310196344%_
                (lambda (_%g196312196324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196312196324%_))
                      (let ((_%e196314196326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196312196324%_))))
                        (let ((_%hd196315196329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196314196326%_)))
                              (_%tl196316196331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196314196326%_))))
                          ((lambda (_%g196313196334%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g196313196334%_)))
                           _%tl196316196331%_)))
                      (_%g196311196321%_ _%g196312196324%_)))))
          (_%g196310196344%_ _%stx196309%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self196183%_ _%stx196184%_)
        (letrec ((_%generate1196186%_
                  (lambda (_%id196303%_ _%eid196304%_)
                    (let ((_%eid196306%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid196304%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid196306%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx196184%_
                             _%eid196306%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id196303%_))
                            (cons _%eid196306%_ '()))))))
          (let* ((_%g196188196216%_
                  (lambda (_%g196189196213%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196189196213%_))))
                 (_%g196187196300%_
                  (lambda (_%g196189196219%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196189196219%_))
                        (let ((_%e196192196221%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196189196219%_))))
                          (let ((_%hd196193196224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196192196221%_)))
                                (_%tl196194196226%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196192196221%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl196194196226%_))
                                (let ((_g205889_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl196194196226%_
                                          '0))))
                                  (begin
                                    (let ((_g205890_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g205889_)
                                                 (##values-length _g205889_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g205890_ 2)))
                                          (error "Context expects 2 values"
                                                 _g205890_)))
                                    (let ((_%target196195196229%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205889_ 0)))
                                          (_%tl196197196231%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205889_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196197196231%_))
                                          (letrec ((_%loop196198196234%_
                                                    (lambda (_%hd196196196237%_
                                                             _%eid196202196239%_
                                                             _%id196203196240%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd196196196237%_))
                                                          (let ((_%e196199196242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd196196196237%_))))
                    (let ((_%lp-hd196200196245%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196199196242%_)))
                          (_%lp-tl196201196247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196199196242%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd196200196245%_))
                          (let ((_%e196206196250%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd196200196245%_))))
                            (let ((_%hd196207196253%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196206196250%_)))
                                  (_%tl196208196255%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196206196250%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196208196255%_))
                                  (let ((_%e196209196258%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196208196255%_))))
                                    (let ((_%hd196210196261%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196209196258%_)))
                                          (_%tl196211196263%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196209196258%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196211196263%_))
                                          (_%loop196198196234%_
                                           _%lp-tl196201196247%_
                                           (cons _%hd196210196261%_
                                                 _%eid196202196239%_)
                                           (cons _%hd196207196253%_
                                                 _%id196203196240%_))
                                          (_%g196188196216%_
                                           _%g196189196219%_))))
                                  (_%g196188196216%_ _%g196189196219%_))))
                          (_%g196188196216%_ _%g196189196219%_))))
                  (let ((_%eid196204196266%_ (reverse _%eid196202196239%_))
                        (_%id196205196267%_ (reverse _%id196203196240%_)))
                    ((lambda (_%g196190196269%_ _%g196191196270%_)
                       (cons '%#extern
                             (map _%generate1196186%_
                                  (let ((__tmp205891
                                         (lambda (_%g196285196288%_
                                                  _%g196286196290%_)
                                           (cons _%g196285196288%_
                                                 _%g196286196290%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp205891
                                     '()
                                     _%g196191196270%_))
                                  (let ((__tmp205892
                                         (lambda (_%g196292196295%_
                                                  _%g196293196297%_)
                                           (cons _%g196292196295%_
                                                 _%g196293196297%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp205892
                                     '()
                                     _%g196190196269%_)))))
                     _%eid196204196266%_
                     _%id196205196267%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop196198196234%_
                                             _%target196195196229%_
                                             '()
                                             '()))
                                          (_%g196188196216%_
                                           _%g196189196219%_)))))
                                (_%g196188196216%_ _%g196189196219%_))))
                        (_%g196188196216%_ _%g196189196219%_)))))
            (_%g196187196300%_ _%stx196184%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self195972%_ _%stx195973%_)
        (letrec ((_%generate1195975%_
                  (lambda (_%id196177%_)
                    (let ((_%eid196179%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id196177%_)))
                          (_%ident196180%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id196177%_)))
                          (_%props196181%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id196177%_))))
                      (cons '%#define-runtime
                            (cons _%ident196180%_
                                  (cons _%eid196179%_ _%props196181%_))))))
                 (_%generate*195976%_
                  (lambda (_%all196145%_)
                    (let* ((_%all196146196154%_ _%all196145%_)
                           (_%else196148196162%_
                            (lambda () (cons '%#begin _%all196145%_)))
                           (_%K196150196167%_
                            (lambda (_%one196165%_) _%one196165%_)))
                      (if (pair? _%all196146196154%_)
                          (let ((_%hd196151196170%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all196146196154%_)))
                                (_%tl196152196172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all196146196154%_))))
                            (let ((_%one196175%_ _%hd196151196170%_))
                              (if (null? _%tl196152196172%_)
                                  (_%K196150196167%_ _%one196175%_)
                                  (_%else196148196162%_))))
                          (_%else196148196162%_))))))
          (let* ((_%g195978195995%_
                  (lambda (_%g195979195992%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195979195992%_))))
                 (_%g195977196142%_
                  (lambda (_%g195979195998%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195979195998%_))
                        (let ((_%e195982196000%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195979195998%_))))
                          (let ((_%hd195983196003%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195982196000%_)))
                                (_%tl195984196005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195982196000%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195984196005%_))
                                (let ((_%e195985196008%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195984196005%_))))
                                  (let ((_%hd195986196011%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195985196008%_)))
                                        (_%tl195987196013%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195985196008%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195987196013%_))
                                        (let ((_%e195988196016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195987196013%_))))
                                          (let ((_%hd195989196019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195988196016%_)))
                                                (_%tl195990196021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195988196016%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195990196021%_))
                                                ((lambda (_%g195980196024%_
                                                          _%g195981196025%_)
                                                   (let _%lp196041%_ ((_%rest196043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g195981196025%_)
                              (_%r196044%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx205627205628%_
                                                             _%rest196043%_)
                                                            (_%g196049196066%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx205627205628%_)))))
               (let ((_%__kont205629205630%_
                      (lambda (_%g196051196129%_)
                        (_%lp196041%_ _%g196051196129%_ _%r196044%_)))
                     (_%__kont205631205632%_
                      (lambda (_%g196056196102%_ _%g196057196103%_)
                        (_%lp196041%_
                         _%g196056196102%_
                         (cons (_%generate1195975%_ _%g196057196103%_)
                               _%r196044%_))))
                     (_%__kont205633205634%_
                      (lambda (_%g196061196078%_)
                        (_%generate*195976%_
                         (let ((__tmp205893
                                (cons (_%generate1195975%_ _%g196061196078%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp205893 _%r196044%_)))))
                     (_%__kont205635205636%_
                      (lambda ()
                        (_%generate*195976%_ (reverse! _%r196044%_)))))
                 (let ((_%g196047196089%_
                        (lambda ()
                          (let ((_%g196061196078%_ _%__stx205627205628%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g196061196078%_))
                                (_%__kont205633205634%_ _%g196061196078%_)
                                (_%__kont205635205636%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx205627205628%_))
                       (let ((_%e196052196118%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx205627205628%_))))
                         (let ((_%tl196054196123%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e196052196118%_)))
                               (_%hd196053196121%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e196052196118%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd196053196121%_))
                               (let ((_%e196055196126%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd196053196121%_))))
                                 (if (equal? _%e196055196126%_ '#f)
                                     (_%__kont205629205630%_
                                      _%tl196054196123%_)
                                     (_%__kont205631205632%_
                                      _%tl196054196123%_
                                      _%hd196053196121%_)))
                               (_%__kont205631205632%_
                                _%tl196054196123%_
                                _%hd196053196121%_))))
                       (let () (declare (not safe)) (_%g196047196089%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd195989196019%_
                                                 _%hd195986196011%_)
                                                (_%g195978195995%_
                                                 _%g195979195998%_))))
                                        (_%g195978195995%_
                                         _%g195979195998%_))))
                                (_%g195978195995%_ _%g195979195998%_))))
                        (_%g195978195995%_ _%g195979195998%_)))))
            (_%g195977196142%_ _%stx195973%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self195869%_ _%stx195870%_)
        (let* ((_%g195872195889%_
                (lambda (_%g195873195886%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195873195886%_))))
               (_%g195871195969%_
                (lambda (_%g195873195892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195873195892%_))
                      (let ((_%e195876195894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195873195892%_))))
                        (let ((_%hd195877195897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195876195894%_)))
                              (_%tl195878195899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195876195894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195878195899%_))
                              (let ((_%e195879195902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195878195899%_))))
                                (let ((_%hd195880195905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195879195902%_)))
                                      (_%tl195881195907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195879195902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195881195907%_))
                                      (let ((_%e195882195910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195881195907%_))))
                                        (let ((_%hd195883195913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195882195910%_)))
                                              (_%tl195884195915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195882195910%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195884195915%_))
                                              ((lambda (_%g195874195918%_
                                                        _%g195875195919%_)
                                                 (let* ((_%eid195934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g195875195919%_)))
                                                        (_%phi195936%_
                                                         (let ((__tmp205894
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp205894 '1)))
                (_%block195938%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self195869%_ 'state))
                  _%phi195936%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g195941195948%_
                                                           (lambda (_%g195942195945%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g195942195945%_))))
                  (_%g195940195966%_
                   (lambda (_%g195942195951%_)
                     ((lambda (_%g195943195953%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self195869%_ 'state))
                         _%phi195936%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g195943195953%_
                                     (cons _%g195874195918%_ '())))))
                      _%g195942195951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195940195966%_
                                                      _%eid195934%_))
                                                   (if _%block195938%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block195938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g195875195919%_))
                                             (cons _%eid195934%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g195875195919%_))
                           (cons _%eid195934%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195883195913%_
                                               _%hd195880195905%_)
                                              (_%g195872195889%_
                                               _%g195873195892%_))))
                                      (_%g195872195889%_ _%g195873195892%_))))
                              (_%g195872195889%_ _%g195873195892%_))))
                      (_%g195872195889%_ _%g195873195892%_)))))
          (_%g195871195969%_ _%stx195870%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self195801%_ _%stx195802%_)
        (let* ((_%g195804195821%_
                (lambda (_%g195805195818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195805195818%_))))
               (_%g195803195866%_
                (lambda (_%g195805195824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195805195824%_))
                      (let ((_%e195808195826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195805195824%_))))
                        (let ((_%hd195809195829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195808195826%_)))
                              (_%tl195810195831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195808195826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195810195831%_))
                              (let ((_%e195811195834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195810195831%_))))
                                (let ((_%hd195812195837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195811195834%_)))
                                      (_%tl195813195839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195811195834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195813195839%_))
                                      (let ((_%e195814195842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195813195839%_))))
                                        (let ((_%hd195815195845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195814195842%_)))
                                              (_%tl195816195847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195814195842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195816195847%_))
                                              ((lambda (_%g195806195850%_
                                                        _%g195807195851%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g195807195851%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g195806195850%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195815195845%_
                                               _%hd195812195837%_)
                                              (_%g195804195821%_
                                               _%g195805195824%_))))
                                      (_%g195804195821%_ _%g195805195824%_))))
                              (_%g195804195821%_ _%g195805195824%_))))
                      (_%g195804195821%_ _%g195805195824%_)))))
          (_%g195803195866%_ _%stx195802%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self195798%_ _%stx195799%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self195798%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx195799%_)
        (gxc#generate-meta-define-values% _%self195798%_ _%stx195799%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self195795%_ _%stx195796%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self195795%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx195796%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp205896 (list)) (__tmp205895 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp205896
         '(src n open blocks)
         __tmp205895
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args195792%_
        (apply make-instance gxc#meta-state::t _%$args195792%_)))
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
      (lambda (_%self195778%_ _%ctx195779%_)
        (let ((_%self195782%_ _%self195778%_))
          (if (let ((__tmp205897
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self195782%_))))
                (declare (not safe))
                (##fx< '4 __tmp205897))
              (begin
                (let ((__tmp205898
                       (let ((__tmp205899
                              (##structure-ref
                               _%ctx195779%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp205899))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self195782%_
                   __tmp205898
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self195782%_ '1 '2 '#f '#f))
                (let ((__tmp205900
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self195782%_
                   __tmp205900
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self195782%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp205901
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self195782%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self195782%_
                       '4
                       __tmp205901))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp205903 (list)) (__tmp205902 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp205903
         '(ctx phi n code)
         __tmp205902
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args195653%_
        (apply make-instance gxc#meta-state-block::t _%$args195653%_)))
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
      (lambda (_%state195613%_ _%phi195614%_)
        (let* ((_%state195615195623%_ _%state195613%_)
               (_%E195617195626%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state195615195623%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K195618195635%_
                (lambda (_%open195629%_ _%n195630%_ _%src195631%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open195629%_ _%phi195614%_))
                      '#f
                      (let ((_%block-ref195633%_
                             (let ((__tmp205904 (number->string _%n195630%_)))
                               (declare (not safe))
                               (##string-append
                                _%src195631%_
                                '"~"
                                __tmp205904))))
                        (##structure-set!
                         _%state195613%_
                         (let () (declare (not safe)) (##fx+ _%n195630%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp205905
                               (let ((__tmp205906
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp205906
                                  _%phi195614%_
                                  _%n195630%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open195629%_ _%phi195614%_ __tmp205905))
                        _%block-ref195633%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state195615195623%_
                 'gxc#meta-state::t))
              (let* ((_%e195619195638%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195615195623%_
                         '1
                         '#f
                         '#f)))
                     (_%src195641%_ _%e195619195638%_)
                     (_%e195620195643%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195615195623%_
                         '2
                         '#f
                         '#f)))
                     (_%n195646%_ _%e195620195643%_)
                     (_%e195621195648%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195615195623%_
                         '3
                         '#f
                         '#f)))
                     (_%open195651%_ _%e195621195648%_))
                (_%K195618195635%_ _%open195651%_ _%n195646%_ _%src195641%_))
              (_%E195617195626%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state195607%_ _%phi195608%_ _%stx195609%_)
        (let ((_%block195611%_
               (let ((__tmp205907
                      (##structure-ref
                       _%state195607%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp205907 _%phi195608%_))))
          (##structure-set!
           _%block195611%_
           (cons _%stx195609%_
                 (##structure-ref
                  _%block195611%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state195601%_)
        (##structure-set!
         _%state195601%_
         (let ((__tmp205910
                (lambda (_%_195603%_ _%block195604%_ _%r195605%_)
                  (cons _%block195604%_ _%r195605%_)))
               (__tmp205909
                (##structure-ref _%state195601%_ '4 gxc#meta-state::t '#f))
               (__tmp205908
                (##structure-ref _%state195601%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp205910 __tmp205909 __tmp205908))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state195601%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state195554%_)
        (gxc#meta-state-end-phi! _%state195554%_)
        (let ((__tmp205912
               (lambda (_%block195556%_ _%r195557%_)
                 (let* ((_%block195558195567%_ _%block195556%_)
                        (_%E195560195570%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block195558195567%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K195561195578%_
                         (lambda (_%code195573%_
                                  _%n195574%_
                                  _%phi195575%_
                                  _%ctx195576%_)
                           (if (null? _%code195573%_)
                               _%r195557%_
                               (cons (cons _%ctx195576%_
                                           (cons _%phi195575%_
                                                 (cons _%n195574%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code195573%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r195557%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block195558195567%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e195562195581%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195558195567%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx195584%_ _%e195562195581%_)
                              (_%e195563195586%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195558195567%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi195589%_ _%e195563195586%_)
                              (_%e195564195591%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195558195567%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n195594%_ _%e195564195591%_)
                              (_%e195565195596%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195558195567%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code195599%_ _%e195565195596%_))
                         (_%K195561195578%_
                          _%code195599%_
                          _%n195594%_
                          _%phi195589%_
                          _%ctx195584%_))
                       (_%E195560195570%_)))))
              (__tmp205911
               (##structure-ref _%state195554%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp205912 '() __tmp205911))))
    (define gxc#collect-expression-refs
      (lambda (_%stx195550%_)
        (let ((_%ht195552%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht195552%_ _%stx195550%_)
          _%ht195552%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self195493%_ _%stx195494%_)
        (let* ((_%g195496195509%_
                (lambda (_%g195497195506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195497195506%_))))
               (_%g195495195547%_
                (lambda (_%g195497195512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195497195512%_))
                      (let ((_%e195499195514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195497195512%_))))
                        (let ((_%hd195500195517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195499195514%_)))
                              (_%tl195501195519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195499195514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195501195519%_))
                              (let ((_%e195502195522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195501195519%_))))
                                (let ((_%hd195503195525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195502195522%_)))
                                      (_%tl195504195527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195502195522%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195504195527%_))
                                      ((lambda (_%g195498195530%_)
                                         (let* ((_%bind195542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g195498195530%_)))
                                                (_%eid195544%_
                                                 (if _%bind195542%_
                                                     (##structure-ref
                                                      _%bind195542%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g195498195530%_))))
                                                (__tmp205913
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self195493%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp205913
                                            _%eid195544%_
                                            _%eid195544%_)))
                                       _%hd195503195525%_)
                                      (_%g195496195509%_ _%g195497195512%_))))
                              (_%g195496195509%_ _%g195497195512%_))))
                      (_%g195496195509%_ _%g195497195512%_)))))
          (_%g195495195547%_ _%stx195494%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self195420%_ _%stx195421%_)
        (let* ((_%g195423195440%_
                (lambda (_%g195424195437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195424195437%_))))
               (_%g195422195490%_
                (lambda (_%g195424195443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195424195443%_))
                      (let ((_%e195427195445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195424195443%_))))
                        (let ((_%hd195428195448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195427195445%_)))
                              (_%tl195429195450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195427195445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195429195450%_))
                              (let ((_%e195430195453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195429195450%_))))
                                (let ((_%hd195431195456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195430195453%_)))
                                      (_%tl195432195458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195430195453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195432195458%_))
                                      (let ((_%e195433195461%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195432195458%_))))
                                        (let ((_%hd195434195464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195433195461%_)))
                                              (_%tl195435195466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195433195461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195435195466%_))
                                              ((lambda (_%g195425195469%_
                                                        _%g195426195470%_)
                                                 (let* ((_%bind195485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g195426195470%_)))
                                                        (_%eid195487%_
                                                         (if _%bind195485%_
                                                             (##structure-ref
                                                              _%bind195485%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g195426195470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp205914
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self195420%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp205914
                                                      _%eid195487%_
                                                      _%eid195487%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self195420%_
                                                      _%g195425195469%_))))
                                               _%hd195434195464%_
                                               _%hd195431195456%_)
                                              (_%g195423195440%_
                                               _%g195424195443%_))))
                                      (_%g195423195440%_ _%g195424195443%_))))
                              (_%g195423195440%_ _%g195424195443%_))))
                      (_%g195423195440%_ _%g195424195443%_)))))
          (_%g195422195490%_ _%stx195421%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self195377%_ _%stx195378%_)
        (let* ((_%g195380195390%_
                (lambda (_%g195381195387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195381195387%_))))
               (_%g195379195417%_
                (lambda (_%g195381195393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195381195393%_))
                      (let ((_%e195383195395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195381195393%_))))
                        (let ((_%hd195384195398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195383195395%_)))
                              (_%tl195385195400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195383195395%_))))
                          ((lambda (_%g195382195403%_)
                             (let ((__tmp205915
                                    (lambda (_%g195412195414%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self195377%_
                                         _%g195412195414%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp205915 _%g195382195403%_)))
                           _%tl195385195400%_)))
                      (_%g195380195390%_ _%g195381195393%_)))))
          (_%g195379195417%_ _%stx195378%_))))
    (define gxc#count-values-single%
      (lambda (_%self195374%_ _%stx195375%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self195242%_ _%stx195243%_)
        (let* ((_%__stx205657205658%_ _%stx195243%_)
               (_%g195246195275%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205657205658%_)))))
          (let ((_%__kont205659205660%_
                 (lambda (_%g195248195341%_ _%g195249195342%_)
                   (length (let ((__tmp205916
                                  (lambda (_%g195363195366%_ _%g195364195368%_)
                                    (cons _%g195363195366%_
                                          _%g195364195368%_))))
                             (declare (not safe))
                             (foldr__0 __tmp205916 '() _%g195248195341%_)))))
                (_%__kont205663205664%_ (lambda () '#f)))
            (let ((_%__match205702205703%_
                   (lambda (_%e195250195287%_
                            _%hd195251195290%_
                            _%tl195252195292%_
                            _%e195253195295%_
                            _%hd195254195298%_
                            _%tl195255195300%_
                            _%e195256195303%_
                            _%hd195257195306%_
                            _%tl195258195308%_
                            _%e195259195311%_
                            _%hd195260195314%_
                            _%tl195261195316%_
                            _%__splice205661205662%_
                            _%target195262195319%_
                            _%tl195264195321%_)
                     (letrec ((_%loop195265195324%_
                               (lambda (_%hd195263195327%_
                                        _%rand195269195329%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195263195327%_))
                                     (let ((_%e195266195331%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195263195327%_))))
                                       (let ((_%lp-tl195268195336%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195266195331%_)))
                                             (_%lp-hd195267195334%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195266195331%_))))
                                         (_%loop195265195324%_
                                          _%lp-tl195268195336%_
                                          (cons _%lp-hd195267195334%_
                                                _%rand195269195329%_))))
                                     (let ((_%rand195270195339%_
                                            (reverse _%rand195269195329%_)))
                                       (let ((_%g195248195341%_
                                              _%rand195270195339%_)
                                             (_%g195249195342%_
                                              _%hd195260195314%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g195249195342%_
                                                'values))
                                             (_%__kont205659205660%_
                                              _%g195248195341%_
                                              _%g195249195342%_)
                                             (_%__kont205663205664%_))))))))
                       (_%loop195265195324%_ _%target195262195319%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205657205658%_))
                  (let ((_%e195250195287%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205657205658%_))))
                    (let ((_%tl195252195292%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195250195287%_)))
                          (_%hd195251195290%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195250195287%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195252195292%_))
                          (let ((_%e195253195295%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195252195292%_))))
                            (let ((_%tl195255195300%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195253195295%_)))
                                  (_%hd195254195298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195253195295%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195254195298%_))
                                  (let ((_%e195256195303%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195254195298%_))))
                                    (let ((_%tl195258195308%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195256195303%_)))
                                          (_%hd195257195306%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195256195303%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195257195306%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195257195306%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195258195308%_))
                                                  (let ((_%e195259195311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195258195308%_))))
                                                    (let ((_%tl195261195316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195259195311%_)))
                                                          (_%hd195260195314%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195259195311%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195261195316%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195255195300%_))
                      (let ((_%__splice205661205662%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl195255195300%_
                                '0))))
                        (let ((_%tl195264195321%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205661205662%_ '1)))
                              (_%target195262195319%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205661205662%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195264195321%_))
                              (_%__match205702205703%_
                               _%e195250195287%_
                               _%hd195251195290%_
                               _%tl195252195292%_
                               _%e195253195295%_
                               _%hd195254195298%_
                               _%tl195255195300%_
                               _%e195256195303%_
                               _%hd195257195306%_
                               _%tl195258195308%_
                               _%e195259195311%_
                               _%hd195260195314%_
                               _%tl195261195316%_
                               _%__splice205661205662%_
                               _%target195262195319%_
                               _%tl195264195321%_)
                              (_%__kont205663205664%_))))
                      (_%__kont205663205664%_))
                  (_%__kont205663205664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205663205664%_))
                                              (_%__kont205663205664%_))
                                          (_%__kont205663205664%_))))
                                  (_%__kont205663205664%_))))
                          (_%__kont205663205664%_))))
                  (_%__kont205663205664%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self195147%_ _%stx195148%_)
        (let* ((_%g195150195171%_
                (lambda (_%g195151195168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195151195168%_))))
               (_%g195149195239%_
                (lambda (_%g195151195174%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195151195174%_))
                      (let ((_%e195155195176%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195151195174%_))))
                        (let ((_%hd195156195179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195155195176%_)))
                              (_%tl195157195181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195155195176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195157195181%_))
                              (let ((_%e195158195184%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195157195181%_))))
                                (let ((_%hd195159195187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195158195184%_)))
                                      (_%tl195160195189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195158195184%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195160195189%_))
                                      (let ((_%e195161195192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195160195189%_))))
                                        (let ((_%hd195162195195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195161195192%_)))
                                              (_%tl195163195197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195161195192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195163195197%_))
                                              (let ((_%e195164195200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195163195197%_))))
                                                (let ((_%hd195165195203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195164195200%_)))
                                                      (_%tl195166195205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195164195200%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195166195205%_))
                                                      ((lambda (_%g195152195208%_
                                                                _%g195153195209%_
                                                                _%g195154195210%_)
                                                         (let ((_%c1195227195229%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self195147%_
                           _%g195153195209%_))))
                   (if _%c1195227195229%_
                       (let* ((_%c1195231%_ _%c1195227195229%_)
                              (_%c2195232195234%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195147%_
                                  _%g195152195208%_))))
                         (if _%c2195232195234%_
                             (let ((_%c2195236%_ _%c2195232195234%_))
                               (if (fx= _%c1195231%_ _%c2195236%_)
                                   _%c1195231%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd195165195203%_
               _%hd195162195195%_
               _%hd195159195187%_)
              (_%g195150195171%_ _%g195151195174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195150195171%_
                                               _%g195151195174%_))))
                                      (_%g195150195171%_ _%g195151195174%_))))
                              (_%g195150195171%_ _%g195151195174%_))))
                      (_%g195150195171%_ _%g195151195174%_)))))
          (_%g195149195239%_ _%stx195148%_))))))
