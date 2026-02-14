(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1771092629)
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
      (let ((__tmp205726 (list gxc#::void::t))
            (__tmp205725 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp205726
         '()
         __tmp205725
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args204340%_
        (apply make-instance gxc#::collect-bindings::t _%$args204340%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp205727
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
        (__make-atomic-promise __tmp205727)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx204332%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self204335%_
                (let ((__obj205701
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj205701))
               (__tmp205728
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204335%_ _%stx204332%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205728
           gxc#current-compile-method
           _%self204335%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp205730 (list gxc#::void::t))
            (__tmp205729 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp205730
         '(modules)
         __tmp205729
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args204329%_
        (apply make-instance gxc#::lift-modules::t _%$args204329%_)))
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
      (let ((__tmp205731
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
        (__make-atomic-promise __tmp205731)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords204304%_ _%modules204301204305%_ _%stx204306%_)
        (let ((_%modules204309%_
               (if (eq? _%modules204301204305%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules204301204305%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self204311%_
                  (let ((__obj205703
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205703
                       _%modules204309%_
                       '1
                       '#f
                       '#f))
                    __obj205703))
                 (__tmp205732
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204311%_ _%stx204306%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205732
             gxc#current-compile-method
             _%self204311%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords204318%_ . _%args204319%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords204318%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204318%_
                  'modules:
                  absent-value))
               _%args204319%_)))
    (define gxc#apply-lift-modules
      (lambda _%args204302204325%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args204302204325%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp205734 (list)) (__tmp205733 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp205734
         '()
         __tmp205733
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args204297%_
        (apply make-instance gxc#::find-runtime-code::t _%$args204297%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp205735
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
        (__make-atomic-promise __tmp205735)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx204289%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self204292%_
                (let ((__obj205705
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj205705))
               (__tmp205736
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204292%_ _%stx204289%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205736
           gxc#current-compile-method
           _%self204292%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp205738 (list gxc#::false::t))
            (__tmp205737 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp205738
         '()
         __tmp205737
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args204286%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args204286%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp205739
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
        (__make-atomic-promise __tmp205739)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx204278%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self204281%_
                (let ((__obj205707
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj205707))
               (__tmp205740
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204281%_ _%stx204278%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205740
           gxc#current-compile-method
           _%self204281%_))))
    (define gxc#::count-values::t
      (let ((__tmp205742 (list gxc#::false-expression::t))
            (__tmp205741 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp205742
         '()
         __tmp205741
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args204275%_
        (apply make-instance gxc#::count-values::t _%$args204275%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp205743
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
        (__make-atomic-promise __tmp205743)))
    (define gxc#apply-count-values
      (lambda (_%stx204267%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self204270%_
                (let ((__obj205709
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj205709))
               (__tmp205744
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204270%_ _%stx204267%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205744
           gxc#current-compile-method
           _%self204270%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp205745 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp205745
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args204264%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args204264%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp205746
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
        (__make-atomic-promise __tmp205746)))
    (define gxc#::generate-loader::t
      (let ((__tmp205748 (list gxc#::generate-runtime-empty::t))
            (__tmp205747 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp205748
         '()
         __tmp205747
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args204260%_
        (apply make-instance gxc#::generate-loader::t _%$args204260%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp205749
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
        (__make-atomic-promise __tmp205749)))
    (define gxc#apply-generate-loader
      (lambda (_%stx204252%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self204255%_
                (let ((__obj205712
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj205712))
               (__tmp205750
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204255%_ _%stx204252%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205750
           gxc#current-compile-method
           _%self204255%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp205751 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp205751
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args204249%_
        (apply make-instance gxc#::generate-runtime::t _%$args204249%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp205752
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
        (__make-atomic-promise __tmp205752)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx204241%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self204244%_
                (let ((__obj205714
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj205714))
               (__tmp205753
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204244%_ _%stx204241%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205753
           gxc#current-compile-method
           _%self204244%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp205755 (list gxc#::generate-runtime::t))
            (__tmp205754 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp205755
         '()
         __tmp205754
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args204238%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args204238%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp205756
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
        (__make-atomic-promise __tmp205756)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx204230%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self204233%_
                (let ((__obj205716
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj205716))
               (__tmp205757
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204233%_ _%stx204230%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205757
           gxc#current-compile-method
           _%self204233%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp205758 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp205758
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args204227%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args204227%_)))
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
      (let ((__tmp205759
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
        (__make-atomic-promise __tmp205759)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords204202%_ _%table204199204203%_ _%stx204204%_)
        (let ((_%table204207%_
               (if (eq? _%table204199204203%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table204199204203%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self204209%_
                  (let ((__obj205718
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205718
                       _%table204207%_
                       '1
                       '#f
                       '#f))
                    __obj205718))
                 (__tmp205760
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204209%_ _%stx204204%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205760
             gxc#current-compile-method
             _%self204209%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords204216%_ . _%args204217%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords204216%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204216%_
                  'table:
                  absent-value))
               _%args204217%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args204200204223%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args204200204223%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp205762 (list gxc#::void-expression::t))
            (__tmp205761 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp205762
         '(state)
         __tmp205761
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args204195%_
        (apply make-instance gxc#::generate-meta::t _%$args204195%_)))
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
      (let ((__tmp205763
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
        (__make-atomic-promise __tmp205763)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords204170%_ _%state204167204171%_ _%stx204172%_)
        (let ((_%state204175%_
               (if (eq? _%state204167204171%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204167204171%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self204177%_
                  (let ((__obj205720
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205720
                       _%state204175%_
                       '1
                       '#f
                       '#f))
                    __obj205720))
                 (__tmp205764
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204177%_ _%stx204172%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205764
             gxc#current-compile-method
             _%self204177%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords204184%_ . _%args204185%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords204184%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204184%_
                  'state:
                  absent-value))
               _%args204185%_)))
    (define gxc#apply-generate-meta
      (lambda _%args204168204191%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args204168204191%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp205766 (list)) (__tmp205765 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp205766
         '(state)
         __tmp205765
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args204163%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args204163%_)))
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
      (let ((__tmp205767
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
        (__make-atomic-promise __tmp205767)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords204138%_ _%state204135204139%_ _%stx204140%_)
        (let ((_%state204143%_
               (if (eq? _%state204135204139%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204135204139%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self204145%_
                  (let ((__obj205722
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205722
                       _%state204143%_
                       '1
                       '#f
                       '#f))
                    __obj205722))
                 (__tmp205768
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204145%_ _%stx204140%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205768
             gxc#current-compile-method
             _%self204145%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords204152%_ . _%args204153%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords204152%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204152%_
                  'state:
                  absent-value))
               _%args204153%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args204136204159%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args204136204159%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self204064%_ _%stx204065%_)
        (let* ((_%g204067204084%_
                (lambda (_%g204068204081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204068204081%_))))
               (_%g204066204131%_
                (lambda (_%g204068204087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204068204087%_))
                      (let ((_%e204071204089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204068204087%_))))
                        (let ((_%hd204072204092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204071204089%_)))
                              (_%tl204073204094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204071204089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204073204094%_))
                              (let ((_%e204074204097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204073204094%_))))
                                (let ((_%hd204075204100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204074204097%_)))
                                      (_%tl204076204102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204074204097%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204076204102%_))
                                      (let ((_%e204077204105%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204076204102%_))))
                                        (let ((_%hd204078204108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204077204105%_)))
                                              (_%tl204079204110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204077204105%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204079204110%_))
                                              ((lambda (_%g204069204113%_
                                                        _%g204070204114%_)
                                                 (let ((__tmp205769
                                                        (lambda (_%bind204129%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind204129%_))
                      (gxc#add-module-binding! _%bind204129%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp205769
                                                    _%g204070204114%_)))
                                               _%hd204078204108%_
                                               _%hd204075204100%_)
                                              (_%g204067204084%_
                                               _%g204068204087%_))))
                                      (_%g204067204084%_ _%g204068204087%_))))
                              (_%g204067204084%_ _%g204068204087%_))))
                      (_%g204067204084%_ _%g204068204087%_)))))
          (_%g204066204131%_ _%stx204065%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self203996%_ _%stx203997%_)
        (let* ((_%g203999204016%_
                (lambda (_%g204000204013%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204000204013%_))))
               (_%g203998204061%_
                (lambda (_%g204000204019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204000204019%_))
                      (let ((_%e204003204021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204000204019%_))))
                        (let ((_%hd204004204024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204003204021%_)))
                              (_%tl204005204026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204003204021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204005204026%_))
                              (let ((_%e204006204029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204005204026%_))))
                                (let ((_%hd204007204032%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204006204029%_)))
                                      (_%tl204008204034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204006204029%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204008204034%_))
                                      (let ((_%e204009204037%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204008204034%_))))
                                        (let ((_%hd204010204040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204009204037%_)))
                                              (_%tl204011204042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204009204037%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204011204042%_))
                                              ((lambda (_%g204001204045%_
                                                        _%g204002204046%_)
                                                 (gxc#add-module-binding!
                                                  _%g204002204046%_
                                                  '#t))
                                               _%hd204010204040%_
                                               _%hd204007204032%_)
                                              (_%g203999204016%_
                                               _%g204000204019%_))))
                                      (_%g203999204016%_ _%g204000204019%_))))
                              (_%g203999204016%_ _%g204000204019%_))))
                      (_%g203999204016%_ _%g204000204019%_)))))
          (_%g203998204061%_ _%stx203997%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self203938%_ _%stx203939%_)
        (let* ((_%g203941203955%_
                (lambda (_%g203942203952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203942203952%_))))
               (_%g203940203993%_
                (lambda (_%g203942203958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203942203958%_))
                      (let ((_%e203945203960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203942203958%_))))
                        (let ((_%hd203946203963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203945203960%_)))
                              (_%tl203947203965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203945203960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203947203965%_))
                              (let ((_%e203948203968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203947203965%_))))
                                (let ((_%hd203949203971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203948203968%_)))
                                      (_%tl203950203973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203948203968%_))))
                                  ((lambda (_%g203943203976%_
                                            _%g203944203977%_)
                                     (let ((_%ctx203990%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g203944203977%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self203938%_
                                           'modules))
                                        (cons _%ctx203990%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self203938%_
                                                        'modules)))))
                                       (let ((__tmp205770
                                              (lambda ()
                                                (let ((__tmp205771
                                                       (##structure-ref
                                                        _%ctx203990%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self203938%_
                                                   __tmp205771)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp205770
                                          gx#current-expander-context
                                          _%ctx203990%_))))
                                   _%tl203950203973%_
                                   _%hd203949203971%_)))
                              (_%g203941203955%_ _%g203942203958%_))))
                      (_%g203941203955%_ _%g203942203958%_)))))
          (_%g203940203993%_ _%stx203939%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls203892203894%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls203892203894%_
              (let ((_%decls203896%_ _%decls203892203894%_))
                (let _%lp203898%_ ((_%rest203900%_ _%decls203896%_))
                  (let* ((_%rest203901203909%_ _%rest203900%_)
                         (_%else203903203917%_ (lambda () '#f))
                         (_%K203905203926%_
                          (lambda (_%decls203920%_ _%decl203921%_)
                            (if (equal? _%decl203921%_ '(not safe))
                                '#t
                                (if (equal? _%decl203921%_ '(safe))
                                    '#f
                                    (_%lp203898%_ _%decls203920%_))))))
                    (if (pair? _%rest203901203909%_)
                        (let ((_%hd203906203929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest203901203909%_)))
                              (_%tl203907203931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest203901203909%_))))
                          (let* ((_%decl203934%_ _%hd203906203929%_)
                                 (_%decls203936%_ _%tl203907203931%_))
                            (_%K203905203926%_
                             _%decls203936%_
                             _%decl203934%_)))
                        (_%else203903203917%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id203886%_ _%syntax?203887%_)
        (let ((_%eid203889%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id203886%_))
                '1
                gx#binding::t
                '#f))
              (_%ht203890%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid203889%_))
              '#!void
              (let ((__tmp205772
                     (let ((__tmp205773
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid203889%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp205773 _%syntax?203887%_))))
                (declare (not safe))
                (hash-put! _%ht203890%_ _%eid203889%_ __tmp205772))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self203883%_ _%stx203884%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self203730%_ _%stx203731%_)
        (letrec ((_%simplify203733%_
                  (lambda (_%body203781%_)
                    (let _%lp203783%_ ((_%rest203785%_ _%body203781%_)
                                       (_%r203786%_ '()))
                      (let* ((_%rest203787203795%_ _%rest203785%_)
                             (_%else203789203803%_
                              (lambda () (reverse _%r203786%_)))
                             (_%K203791203871%_
                              (lambda (_%rest203806%_ _%hd203807%_)
                                (let* ((_%hd203808203824%_ _%hd203807%_)
                                       (_%else203812203832%_
                                        (lambda ()
                                          (_%lp203783%_
                                           _%rest203806%_
                                           (cons _%hd203807%_ _%r203786%_)))))
                                  (let ((_%K203820203861%_
                                         (lambda (_%exprs203859%_)
                                           (_%lp203783%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest203806%_
                                               _%exprs203859%_))
                                            _%r203786%_)))
                                        (_%K203815203845%_
                                         (lambda ()
                                           (if (null? _%rest203806%_)
                                               (_%lp203783%_
                                                _%rest203806%_
                                                (cons _%hd203807%_
                                                      _%r203786%_))
                                               (_%lp203783%_
                                                _%rest203806%_
                                                _%r203786%_))))
                                        (_%K203814203837%_
                                         (lambda ()
                                           (if (null? _%rest203806%_)
                                               (_%lp203783%_
                                                _%rest203806%_
                                                (cons _%hd203807%_
                                                      _%r203786%_))
                                               (_%lp203783%_
                                                _%rest203806%_
                                                _%r203786%_)))))
                                    (let ((_%try-match203811203840%_
                                           (lambda ()
                                             (if (symbol? _%hd203808203824%_)
                                                 (_%K203814203837%_)
                                                 (_%else203812203832%_)))))
                                      (if (pair? _%hd203808203824%_)
                                          (let ((_%tl203822203866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd203808203824%_)))
                                                (_%hd203821203864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd203808203824%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203821203864%_
                                                         'begin))
                                                (let ((_%exprs203869%_
                                                       _%tl203822203866%_))
                                                  (_%K203820203861%_
                                                   _%exprs203869%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203821203864%_
                                                             'quote))
                                                    (if (pair? _%tl203822203866%_)
                                                        (let ((_%tl203819203853%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl203822203866%_))))
                  (if (null? _%tl203819203853%_)
                      (_%K203815203845%_)
                      (_%try-match203811203840%_)))
                (_%try-match203811203840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match203811203840%_))))
                                          (_%try-match203811203840%_))))))))
                        (if (pair? _%rest203787203795%_)
                            (let ((_%hd203792203874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203787203795%_)))
                                  (_%tl203793203876%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203787203795%_))))
                              (let* ((_%hd203879%_ _%hd203792203874%_)
                                     (_%rest203881%_ _%tl203793203876%_))
                                (_%K203791203871%_
                                 _%rest203881%_
                                 _%hd203879%_)))
                            (_%else203789203803%_)))))))
          (let* ((_%g203735203745%_
                  (lambda (_%g203736203742%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g203736203742%_))))
                 (_%g203734203778%_
                  (lambda (_%g203736203748%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g203736203748%_))
                        (let ((_%e203738203750%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g203736203748%_))))
                          (let ((_%hd203739203753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203738203750%_)))
                                (_%tl203740203755%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203738203750%_))))
                            ((lambda (_%g203737203758%_)
                               (let* ((_%body203773%_
                                       (map (lambda (_%g203768203770%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self203730%_
                                                 _%g203768203770%_)))
                                            _%g203737203758%_))
                                      (_%body203775%_
                                       (_%simplify203733%_ _%body203773%_)))
                                 (if (let ((__tmp205774
                                            (length _%body203775%_)))
                                       (declare (not safe))
                                       (##fx= __tmp205774 '1))
                                     (car _%body203775%_)
                                     (cons 'begin _%body203775%_))))
                             _%tl203740203755%_)))
                        (_%g203735203745%_ _%g203736203748%_)))))
            (_%g203734203778%_ _%stx203731%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self203691%_ _%stx203692%_)
        (let* ((_%g203694203704%_
                (lambda (_%g203695203701%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203695203701%_))))
               (_%g203693203727%_
                (lambda (_%g203695203707%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203695203707%_))
                      (let ((_%e203697203709%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203695203707%_))))
                        (let ((_%hd203698203712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203697203709%_)))
                              (_%tl203699203714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203697203709%_))))
                          ((lambda (_%g203696203717%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g203696203717%_))))
                           _%tl203699203714%_)))
                      (_%g203694203704%_ _%g203695203707%_)))))
          (_%g203693203727%_ _%stx203692%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self203457%_ _%stx203458%_)
        (let* ((_%__stx204364204365%_ _%stx203458%_)
               (_%g203462203514%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204364204365%_)))))
          (let ((_%__kont204366204367%_
                 (lambda (_%g203464203673%_ _%g203465203674%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self203457%_ _%g203464203673%_))))
                (_%__kont204368204369%_
                 (lambda (_%g203475203621%_
                          _%g203476203622%_
                          _%g203477203623%_)
                   (if (let ((__tmp205775
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g203477203623%_))))
                         (declare (not safe))
                         (##memq __tmp205775 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self203457%_
                          _%g203475203621%_)))))
                (_%__kont204372204373%_
                 (lambda (_%g203499203543%_ _%g203500203544%_)
                   (let ((_%decls203559%_
                          (map gx#syntax->datum _%g203500203544%_)))
                     (let ((__tmp205778
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls203559%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self203457%_
                                                   _%g203499203543%_))
                                                '())))))
                           (__tmp205776
                            (let ((__tmp205777
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp205777 _%decls203559%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp205778
                        gxc#current-compile-decls
                        __tmp205776))))))
            (let* ((_%__match204419204420%_
                    (lambda (_%e203478203567%_
                             _%hd203479203570%_
                             _%tl203480203572%_
                             _%e203481203575%_
                             _%hd203482203578%_
                             _%tl203483203580%_
                             _%e203484203583%_
                             _%hd203485203586%_
                             _%tl203486203588%_
                             _%__splice204370204371%_
                             _%target203487203591%_
                             _%tl203489203593%_)
                      (letrec ((_%loop203490203596%_
                                (lambda (_%hd203488203599%_
                                         _%param203494203601%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203488203599%_))
                                      (let ((_%e203491203603%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203488203599%_))))
                                        (let ((_%lp-tl203493203608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203491203603%_)))
                                              (_%lp-hd203492203606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203491203603%_))))
                                          (_%loop203490203596%_
                                           _%lp-tl203493203608%_
                                           (cons _%lp-hd203492203606%_
                                                 _%param203494203601%_))))
                                      (let ((_%param203495203611%_
                                             (reverse _%param203494203601%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203483203580%_))
                                            (let ((_%e203496203613%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203483203580%_))))
                                              (let ((_%tl203498203618%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203496203613%_)))
                                                    (_%hd203497203616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203496203613%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203498203618%_))
                                                    (let ((_%g203475203621%_
                                                           _%hd203497203616%_)
                                                          (_%g203476203622%_
                                                           _%param203495203611%_)
                                                          (_%g203477203623%_
                                                           _%hd203485203586%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g203477203623%_))
                       (not (let ((__tmp205779
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g203477203623%_))))
                              (declare (not safe))
                              (##memq __tmp205779 gxc#gambit-annotations))))
                  (_%__kont204368204369%_
                   _%g203475203621%_
                   _%g203476203622%_
                   _%g203477203623%_)
                  (_%__kont204372204373%_
                   _%hd203497203616%_
                   _%hd203482203578%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203462203514%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203462203514%_))))))))
                        (_%loop203490203596%_ _%target203487203591%_ '()))))
                   (_%__match204393204394%_
                    (lambda (_%e203466203649%_
                             _%hd203467203652%_
                             _%tl203468203654%_
                             _%e203469203657%_
                             _%hd203470203660%_
                             _%tl203471203662%_
                             _%e203472203665%_
                             _%hd203473203668%_
                             _%tl203474203670%_)
                      (let ((_%g203464203673%_ _%hd203473203668%_)
                            (_%g203465203674%_ _%hd203470203660%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g203465203674%_))
                            (_%__kont204366204367%_
                             _%g203464203673%_
                             _%g203465203674%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd203470203660%_))
                                (let ((_%e203484203583%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd203470203660%_))))
                                  (let ((_%tl203486203588%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203484203583%_)))
                                        (_%hd203485203586%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203484203583%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl203486203588%_))
                                        (let ((_%__splice204370204371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl203486203588%_
                                                  '0))))
                                          (let ((_%tl203489203593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204370204371%_
                                                    '1)))
                                                (_%target203487203591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204370204371%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203489203593%_))
                                                (_%__match204419204420%_
                                                 _%e203466203649%_
                                                 _%hd203467203652%_
                                                 _%tl203468203654%_
                                                 _%e203469203657%_
                                                 _%hd203470203660%_
                                                 _%tl203471203662%_
                                                 _%e203484203583%_
                                                 _%hd203485203586%_
                                                 _%tl203486203588%_
                                                 _%__splice204370204371%_
                                                 _%target203487203591%_
                                                 _%tl203489203593%_)
                                                (_%__kont204372204373%_
                                                 _%hd203473203668%_
                                                 _%hd203470203660%_))))
                                        (_%__kont204372204373%_
                                         _%hd203473203668%_
                                         _%hd203470203660%_))))
                                (_%__kont204372204373%_
                                 _%hd203473203668%_
                                 _%hd203470203660%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204364204365%_))
                  (let ((_%e203466203649%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204364204365%_))))
                    (let ((_%tl203468203654%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203466203649%_)))
                          (_%hd203467203652%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203466203649%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203468203654%_))
                          (let ((_%e203469203657%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203468203654%_))))
                            (let ((_%tl203471203662%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203469203657%_)))
                                  (_%hd203470203660%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203469203657%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203471203662%_))
                                  (let ((_%e203472203665%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203471203662%_))))
                                    (let ((_%tl203474203670%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203472203665%_)))
                                          (_%hd203473203668%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203472203665%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203474203670%_))
                                          (_%__match204393204394%_
                                           _%e203466203649%_
                                           _%hd203467203652%_
                                           _%tl203468203654%_
                                           _%e203469203657%_
                                           _%hd203470203660%_
                                           _%tl203471203662%_
                                           _%e203472203665%_
                                           _%hd203473203668%_
                                           _%tl203474203670%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203470203660%_))
                                              (let ((_%e203484203583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203470203660%_))))
                                                (let ((_%tl203486203588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203484203583%_)))
                                                      (_%hd203485203586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203484203583%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203486203588%_))
                                                      (let ((_%__splice204370204371%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl203486203588%_
                        '0))))
                (let ((_%tl203489203593%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204370204371%_ '1)))
                      (_%target203487203591%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204370204371%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203489203593%_))
                      (_%__match204419204420%_
                       _%e203466203649%_
                       _%hd203467203652%_
                       _%tl203468203654%_
                       _%e203469203657%_
                       _%hd203470203660%_
                       _%tl203471203662%_
                       _%e203484203583%_
                       _%hd203485203586%_
                       _%tl203486203588%_
                       _%__splice204370204371%_
                       _%target203487203591%_
                       _%tl203489203593%_)
                      (let () (declare (not safe)) (_%g203462203514%_)))))
              (let () (declare (not safe)) (_%g203462203514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203462203514%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203470203660%_))
                                      (let ((_%e203484203583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203470203660%_))))
                                        (let ((_%tl203486203588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203484203583%_)))
                                              (_%hd203485203586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203484203583%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203486203588%_))
                                              (let ((_%__splice204370204371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl203486203588%_
                                                        '0))))
                                                (let ((_%tl203489203593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204370204371%_
                                                          '1)))
                                                      (_%target203487203591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204370204371%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203489203593%_))
                                                      (_%__match204419204420%_
                                                       _%e203466203649%_
                                                       _%hd203467203652%_
                                                       _%tl203468203654%_
                                                       _%e203469203657%_
                                                       _%hd203470203660%_
                                                       _%tl203471203662%_
                                                       _%e203484203583%_
                                                       _%hd203485203586%_
                                                       _%tl203486203588%_
                                                       _%__splice204370204371%_
                                                       _%target203487203591%_
                                                       _%tl203489203593%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203462203514%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203462203514%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203462203514%_))))))
                          (let () (declare (not safe)) (_%g203462203514%_)))))
                  (let () (declare (not safe)) (_%g203462203514%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self203416%_ _%stx203417%_)
        (let* ((_%g203419203429%_
                (lambda (_%g203420203426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203420203426%_))))
               (_%g203418203454%_
                (lambda (_%g203420203432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203420203432%_))
                      (let ((_%e203422203434%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203420203432%_))))
                        (let ((_%hd203423203437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203422203434%_)))
                              (_%tl203424203439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203422203434%_))))
                          ((lambda (_%g203421203442%_)
                             (let ((_%decls203452%_
                                    (map gx#syntax->datum _%g203421203442%_)))
                               (let ((__tmp205780
                                      (let ((__tmp205781
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp205781
                                         _%decls203452%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp205780))
                               (cons 'declare _%decls203452%_)))
                           _%tl203424203439%_)))
                      (_%g203419203429%_ _%g203420203432%_)))))
          (_%g203418203454%_ _%stx203417%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self203163%_ _%stx203164%_)
        (let* ((_%g203166203183%_
                (lambda (_%g203167203180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203167203180%_))))
               (_%g203165203413%_
                (lambda (_%g203167203186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203167203186%_))
                      (let ((_%e203170203188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203167203186%_))))
                        (let ((_%hd203171203191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203170203188%_)))
                              (_%tl203172203193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203170203188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203172203193%_))
                              (let ((_%e203173203196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203172203193%_))))
                                (let ((_%hd203174203199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203173203196%_)))
                                      (_%tl203175203201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203173203196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203175203201%_))
                                      (let ((_%e203176203204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203175203201%_))))
                                        (let ((_%hd203177203207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203176203204%_)))
                                              (_%tl203178203209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203176203204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203178203209%_))
                                              ((lambda (_%g203168203212%_
                                                        _%g203169203213%_)
                                                 (let* ((_%__stx204472204473%_
                                                         _%g203169203213%_)
                                                        (_%g203230203244%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx204472204473%_)))))
                                                   (let ((_%__kont204474204475%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self203163%_
                                                               _%g203168203212%_))))
                                                         (_%__kont204476204477%_
                                                          (lambda (_%g203236203376%_)
                                                            (let ((_%eid203385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g203236203376%_))))
                      (let ((_%lambda-expr203386203388%_
                             (gxc#apply-find-lambda-expression
                              _%g203168203212%_)))
                        (if _%lambda-expr203386203388%_
                            (let* ((_%lambda-expr203390%_
                                    _%lambda-expr203386203388%_)
                                   (__tmp205782
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp205782
                               _%lambda-expr203390%_
                               _%eid203385%_))
                            '#f))
                      (cons 'define
                            (cons _%eid203385%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self203163%_
                                           _%g203168203212%_))
                                        '()))))))
                 (_%__kont204478204479%_
                  (lambda ()
                    (let* ((_%tmp203251%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body203360%_
                            (let _%lp203253%_ ((_%rest203255%_
                                                _%g203169203213%_)
                                               (_%k203256%_ '0)
                                               (_%r203257%_ '()))
                              (let* ((_%__stx204442204443%_ _%rest203255%_)
                                     (_%g203262203279%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx204442204443%_)))))
                                (let ((_%__kont204444204445%_
                                       (lambda (_%g203264203347%_)
                                         (_%lp203253%_
                                          _%g203264203347%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203256%_ '1))
                                          _%r203257%_)))
                                      (_%__kont204446204447%_
                                       (lambda (_%g203269203320%_
                                                _%g203270203321%_)
                                         (_%lp203253%_
                                          _%g203269203320%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203256%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g203270203321%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp203251%_
                           _%k203256%_
                           _%g203269203320%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r203257%_))))
                                      (_%__kont204448204449%_
                                       (lambda (_%g203274203291%_)
                                         (let ((__tmp205783
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g203274203291%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp203251%_
                                 _%k203256%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp205783
                                            _%r203257%_))))
                                      (_%__kont204450204451%_
                                       (lambda () (reverse _%r203257%_))))
                                  (let ((_%g203260203307%_
                                         (lambda ()
                                           (let ((_%g203274203291%_
                                                  _%__stx204442204443%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g203274203291%_))
                                                 (_%__kont204448204449%_
                                                  _%g203274203291%_)
                                                 (_%__kont204450204451%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx204442204443%_))
                                        (let ((_%e203265203336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx204442204443%_))))
                                          (let ((_%tl203267203341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203265203336%_)))
                                                (_%hd203266203339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203265203336%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd203266203339%_))
                                                (let ((_%e203268203344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203266203339%_))))
                                                  (if (equal? _%e203268203344%_
                                                              '#f)
                                                      (_%__kont204444204445%_
                                                       _%tl203267203341%_)
                                                      (_%__kont204446204447%_
                                                       _%tl203267203341%_
                                                       _%hd203266203339%_)))
                                                (_%__kont204446204447%_
                                                 _%tl203267203341%_
                                                 _%hd203266203339%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g203260203307%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp203251%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203163%_
                                                       _%g203168203212%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp203251%_
                                         _%g203169203213%_
                                         _%g203168203212%_)
                                        _%body203360%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx204472204473%_))
                                                         (let ((_%e203232203397%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx204472204473%_))))
                   (let ((_%tl203234203402%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e203232203397%_)))
                         (_%hd203233203400%_
                          (let ()
                            (declare (not safe))
                            (##car _%e203232203397%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd203233203400%_))
                         (let ((_%e203235203405%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd203233203400%_))))
                           (if (equal? _%e203235203405%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203234203402%_))
                                   (_%__kont204474204475%_)
                                   (_%__kont204478204479%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203234203402%_))
                                   (_%__kont204476204477%_ _%hd203233203400%_)
                                   (_%__kont204478204479%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl203234203402%_))
                             (_%__kont204476204477%_ _%hd203233203400%_)
                             (_%__kont204478204479%_)))))
                 (_%__kont204478204479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203177203207%_
                                               _%hd203174203199%_)
                                              (_%g203166203183%_
                                               _%g203167203186%_))))
                                      (_%g203166203183%_ _%g203167203186%_))))
                              (_%g203166203183%_ _%g203167203186%_))))
                      (_%g203166203183%_ _%g203167203186%_)))))
          (_%g203165203413%_ _%stx203164%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals203138%_ _%hd203139%_ _%expr203140%_)
        (let ((_%$e203142%_ (gxc#apply-count-values _%expr203140%_)))
          (if _%$e203142%_
              ((lambda (_%count203145%_)
                 (let ((_%len203147%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd203139%_)))
                       (_%cmp203148%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd203139%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len203147%_ '0))
                           (_%cmp203148%_ _%count203145%_ _%len203147%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr203140%_
                          _%hd203139%_)))))
               _%$e203142%_)
              (let* ((_%len203154%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd203139%_)))
                     (_%cmp203156%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd203139%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg203158%_
                      (let ((__tmp205785
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd203139%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp205784 (number->string _%len203154%_)))
                        (declare (not safe))
                        (##string-append __tmp205785 __tmp205784 '" values")))
                     (_%count203160%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd203139%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len203154%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count203160%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals203138%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp203156%_
                                (cons _%count203160%_
                                      (cons _%len203154%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp203156%_
                                                        (cons _%count203160%_
                                                              (cons _%len203154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg203158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count203160%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var203133%_)
        (letrec ((_%generate-inline203135%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var203133%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var203133%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203135%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203135%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var203126%_ _%i203127%_ _%rest203128%_)
        (letrec ((_%generate-inline203130%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i203127%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest203128%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var203126%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var203126%_
                                                      (cons '0 '())))
                                          (cons _%var203126%_ '()))))
                        (cons '##values-ref
                              (cons _%var203126%_ (cons _%i203127%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203130%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203130%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var203120%_ _%i203121%_)
        (if (let () (declare (not safe)) (##fx= _%i203121%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var203120%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var203120%_ '()))
                                  (cons (cons 'list (cons _%var203120%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var203120%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var203120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var203120%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i203121%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var203120%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var203120%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var203120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var203120%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var203120%_ '()))
                                (cons _%i203121%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var203120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i203121%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self203052%_ _%stx203053%_)
        (let* ((_%g203055203072%_
                (lambda (_%g203056203069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203056203069%_))))
               (_%g203054203117%_
                (lambda (_%g203056203075%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203056203075%_))
                      (let ((_%e203059203077%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203056203075%_))))
                        (let ((_%hd203060203080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203059203077%_)))
                              (_%tl203061203082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203059203077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203061203082%_))
                              (let ((_%e203062203085%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203061203082%_))))
                                (let ((_%hd203063203088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203062203085%_)))
                                      (_%tl203064203090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203062203085%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203064203090%_))
                                      (let ((_%e203065203093%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203064203090%_))))
                                        (let ((_%hd203066203096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203065203093%_)))
                                              (_%tl203067203098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203065203093%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203067203098%_))
                                              ((lambda (_%g203057203101%_
                                                        _%g203058203102%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self203052%_
                                                  _%g203058203102%_
                                                  _%g203057203101%_))
                                               _%hd203066203096%_
                                               _%hd203063203088%_)
                                              (_%g203055203072%_
                                               _%g203056203075%_))))
                                      (_%g203055203072%_ _%g203056203075%_))))
                              (_%g203055203072%_ _%g203056203075%_))))
                      (_%g203055203072%_ _%g203056203075%_)))))
          (_%g203054203117%_ _%stx203053%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self203011%_ _%hd203012%_ _%body203013%_)
        (let* ((_%hd203015%_ (gxc#generate-runtime-lambda-head _%hd203012%_))
               (_%body203017%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self203011%_ _%body203013%_)))
               (_%body203049%_
                (let* ((_%body203018203026%_ _%body203017%_)
                       (_%else203020203034%_
                        (lambda () (cons _%body203017%_ '())))
                       (_%K203022203039%_
                        (lambda (_%exprs203037%_) _%exprs203037%_)))
                  (if (pair? _%body203018203026%_)
                      (let ((_%hd203023203042%_
                             (let ()
                               (declare (not safe))
                               (##car _%body203018203026%_)))
                            (_%tl203024203044%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body203018203026%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd203023203042%_ 'begin))
                            (let ((_%exprs203047%_ _%tl203024203044%_))
                              (_%K203022203039%_ _%exprs203047%_))
                            (_%else203020203034%_)))
                      (_%else203020203034%_)))))
          (cons 'lambda (cons _%hd203015%_ _%body203049%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd203009%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd203009%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self201566%_ _%stx201567%_)
        (letrec ((_%dispatch-case?201569%_
                  (lambda (_%hd202247%_ _%body202248%_)
                    (let* ((_%form202250%_
                            (cons _%hd202247%_ (cons _%body202248%_ '())))
                           (_%__stx204504204505%_ _%form202250%_)
                           (_%g202255202412%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx204504204505%_)))))
                      (let ((_%__kont204506204507%_
                             (lambda (_%g202257202929%_
                                      _%g202258202930%_
                                      _%g202259202931%_)
                               '#t))
                            (_%__kont204512204513%_
                             (lambda (_%g202302202721%_
                                      _%g202303202722%_
                                      _%g202304202723%_
                                      _%g202305202724%_
                                      _%g202306202725%_
                                      _%g202307202726%_)
                               '#t))
                            (_%__kont204518204519%_
                             (lambda (_%g202368202520%_
                                      _%g202369202521%_
                                      _%g202370202522%_
                                      _%g202371202523%_)
                               '#t))
                            (_%__kont204520204521%_ (lambda () '#f)))
                        (let* ((_%__match204645204646%_
                                (lambda (_%e202372202424%_
                                         _%hd202373202427%_
                                         _%tl202374202429%_
                                         _%e202375202432%_
                                         _%hd202376202435%_
                                         _%tl202377202437%_
                                         _%e202378202440%_
                                         _%hd202379202443%_
                                         _%tl202380202445%_
                                         _%e202381202448%_
                                         _%hd202382202451%_
                                         _%tl202383202453%_
                                         _%e202384202456%_
                                         _%hd202385202459%_
                                         _%tl202386202461%_
                                         _%e202387202464%_
                                         _%hd202388202467%_
                                         _%tl202389202469%_
                                         _%e202390202472%_
                                         _%hd202391202475%_
                                         _%tl202392202477%_
                                         _%e202393202480%_
                                         _%hd202394202483%_
                                         _%tl202395202485%_
                                         _%e202396202488%_
                                         _%hd202397202491%_
                                         _%tl202398202493%_
                                         _%e202399202496%_
                                         _%hd202400202499%_
                                         _%tl202401202501%_
                                         _%e202402202504%_
                                         _%hd202403202507%_
                                         _%tl202404202509%_
                                         _%e202405202512%_
                                         _%hd202406202515%_
                                         _%tl202407202517%_)
                                  (let ((_%g202368202520%_ _%hd202406202515%_)
                                        (_%g202369202521%_ _%hd202397202491%_)
                                        (_%g202370202522%_ _%hd202388202467%_)
                                        (_%g202371202523%_ _%hd202373202427%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g202371202523%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g202370202522%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g202371202523%_
                                                _%g202368202520%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g202369202521%_
                                                     _%g202371202523%_))))
                                        (_%__kont204518204519%_
                                         _%g202368202520%_
                                         _%g202369202521%_
                                         _%g202370202522%_
                                         _%g202371202523%_)
                                        (_%__kont204520204521%_)))))
                               (_%__match204617204618%_
                                (lambda (_%e202372202424%_
                                         _%hd202373202427%_
                                         _%tl202374202429%_
                                         _%e202375202432%_
                                         _%hd202376202435%_
                                         _%tl202377202437%_
                                         _%e202378202440%_
                                         _%hd202379202443%_
                                         _%tl202380202445%_
                                         _%e202381202448%_
                                         _%hd202382202451%_
                                         _%tl202383202453%_
                                         _%e202384202456%_
                                         _%hd202385202459%_
                                         _%tl202386202461%_
                                         _%e202387202464%_
                                         _%hd202388202467%_
                                         _%tl202389202469%_
                                         _%e202390202472%_
                                         _%hd202391202475%_
                                         _%tl202392202477%_
                                         _%e202393202480%_
                                         _%hd202394202483%_
                                         _%tl202395202485%_
                                         _%e202396202488%_
                                         _%hd202397202491%_
                                         _%tl202398202493%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202392202477%_))
                                      (let ((_%e202399202496%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202392202477%_))))
                                        (let ((_%tl202401202501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202399202496%_)))
                                              (_%hd202400202499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202399202496%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd202400202499%_))
                                              (let ((_%e202402202504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202400202499%_))))
                                                (let ((_%tl202404202509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202402202504%_)))
                                                      (_%hd202403202507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202402202504%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd202403202507%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd202403202507%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202404202509%_))
                      (let ((_%e202405202512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202404202509%_))))
                        (let ((_%tl202407202517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202405202512%_)))
                              (_%hd202406202515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202405202512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202407202517%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202401202501%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202377202437%_))
                                      (_%__match204645204646%_
                                       _%e202372202424%_
                                       _%hd202373202427%_
                                       _%tl202374202429%_
                                       _%e202375202432%_
                                       _%hd202376202435%_
                                       _%tl202377202437%_
                                       _%e202378202440%_
                                       _%hd202379202443%_
                                       _%tl202380202445%_
                                       _%e202381202448%_
                                       _%hd202382202451%_
                                       _%tl202383202453%_
                                       _%e202384202456%_
                                       _%hd202385202459%_
                                       _%tl202386202461%_
                                       _%e202387202464%_
                                       _%hd202388202467%_
                                       _%tl202389202469%_
                                       _%e202390202472%_
                                       _%hd202391202475%_
                                       _%tl202392202477%_
                                       _%e202393202480%_
                                       _%hd202394202483%_
                                       _%tl202395202485%_
                                       _%e202396202488%_
                                       _%hd202397202491%_
                                       _%tl202398202493%_
                                       _%e202399202496%_
                                       _%hd202400202499%_
                                       _%tl202401202501%_
                                       _%e202402202504%_
                                       _%hd202403202507%_
                                       _%tl202404202509%_
                                       _%e202405202512%_
                                       _%hd202406202515%_
                                       _%tl202407202517%_)
                                      (_%__kont204520204521%_))
                                  (_%__kont204520204521%_))
                              (_%__kont204520204521%_))))
                      (_%__kont204520204521%_))
                  (_%__kont204520204521%_))
              (_%__kont204520204521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont204520204521%_))))
                                      (_%__kont204520204521%_))))
                               (_%__match204547204548%_
                                (lambda (_%e202308202565%_
                                         _%hd202309202568%_
                                         _%tl202310202570%_
                                         _%__splice204514204515%_
                                         _%target202311202573%_
                                         _%tl202313202575%_)
                                  (letrec ((_%loop202314202578%_
                                            (lambda (_%hd202312202581%_
                                                     _%arg202318202583%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202312202581%_))
                                                  (let ((_%e202315202585%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202312202581%_))))
                                                    (let ((_%lp-tl202317202590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202315202585%_)))
                                                          (_%lp-hd202316202588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202315202585%_))))
                                                      (_%loop202314202578%_
                                                       _%lp-tl202317202590%_
                                                       (cons _%lp-hd202316202588%_
                                                             _%arg202318202583%_))))
                                                  (let ((_%arg202319202593%_
                                                         (reverse _%arg202318202583%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202310202570%_))
                                                        (let ((_%e202320202595%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202310202570%_))))
                  (let ((_%tl202322202600%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202320202595%_)))
                        (_%hd202321202598%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202320202595%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202321202598%_))
                        (let ((_%e202323202603%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202321202598%_))))
                          (let ((_%tl202325202608%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202323202603%_)))
                                (_%hd202324202606%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202323202603%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202324202606%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202324202606%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202325202608%_))
                                        (let ((_%e202326202611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202325202608%_))))
                                          (let ((_%tl202328202616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202326202611%_)))
                                                (_%hd202327202614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202326202611%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202327202614%_))
                                                (let ((_%e202329202619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202327202614%_))))
                                                  (let ((_%tl202331202624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202329202619%_)))
                                                        (_%hd202330202622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202329202619%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202330202622%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202330202622%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202331202624%_))
                        (let ((_%e202332202627%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202331202624%_))))
                          (let ((_%tl202334202632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202332202627%_)))
                                (_%hd202333202630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202332202627%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202334202632%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202328202616%_))
                                    (let ((_%e202335202635%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202328202616%_))))
                                      (let ((_%tl202337202640%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202335202635%_)))
                                            (_%hd202336202638%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202335202635%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202336202638%_))
                                            (let ((_%e202338202643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202336202638%_))))
                                              (let ((_%tl202340202648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202338202643%_)))
                                                    (_%hd202339202646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202338202643%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202339202646%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202339202646%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202340202648%_))
                                                            (let ((_%e202341202651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202340202648%_))))
                      (let ((_%tl202343202656%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202341202651%_)))
                            (_%hd202342202654%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202341202651%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202343202656%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202337202640%_))
                                (if (let ((__tmp205786
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl202337202640%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp205786 '1))
                                    (let ((_%__splice204516204517%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202337202640%_
                                              '1))))
                                      (let ((_%tl202346202661%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204516204517%_
                                                '1)))
                                            (_%target202344202659%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204516204517%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202346202661%_))
                                            (let ((_%e202353202664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202346202661%_))))
                                              (let ((_%tl202355202669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202353202664%_)))
                                                    (_%hd202354202667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202353202664%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd202354202667%_))
                                                    (let ((_%e202356202672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202354202667%_))))
                                                      (let ((_%tl202358202677%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e202356202672%_)))
                    (_%hd202357202675%_
                     (let () (declare (not safe)) (##car _%e202356202672%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd202357202675%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd202357202675%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202358202677%_))
                            (let ((_%e202359202680%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl202358202677%_))))
                              (let ((_%tl202361202685%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202359202680%_)))
                                    (_%hd202360202683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202359202680%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202361202685%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202355202669%_))
                                        (letrec ((_%loop202347202688%_
                                                  (lambda (_%hd202345202691%_
                                                           _%xarg202351202693%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202345202691%_))
                                                        (let ((_%e202348202695%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202345202691%_))))
                  (let ((_%lp-tl202350202700%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202348202695%_)))
                        (_%lp-hd202349202698%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202348202695%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202349202698%_))
                        (let ((_%e202362202703%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd202349202698%_))))
                          (let ((_%tl202364202708%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202362202703%_)))
                                (_%hd202363202706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202362202703%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202363202706%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd202363202706%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202364202708%_))
                                        (let ((_%e202365202711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202364202708%_))))
                                          (let ((_%tl202367202716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202365202711%_)))
                                                (_%hd202366202714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202365202711%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202367202716%_))
                                                (_%loop202347202688%_
                                                 _%lp-tl202350202700%_
                                                 (cons _%hd202366202714%_
                                                       _%xarg202351202693%_))
                                                (_%__match204617204618%_
                                                 _%e202308202565%_
                                                 _%hd202309202568%_
                                                 _%tl202310202570%_
                                                 _%e202320202595%_
                                                 _%hd202321202598%_
                                                 _%tl202322202600%_
                                                 _%e202323202603%_
                                                 _%hd202324202606%_
                                                 _%tl202325202608%_
                                                 _%e202326202611%_
                                                 _%hd202327202614%_
                                                 _%tl202328202616%_
                                                 _%e202329202619%_
                                                 _%hd202330202622%_
                                                 _%tl202331202624%_
                                                 _%e202332202627%_
                                                 _%hd202333202630%_
                                                 _%tl202334202632%_
                                                 _%e202335202635%_
                                                 _%hd202336202638%_
                                                 _%tl202337202640%_
                                                 _%e202338202643%_
                                                 _%hd202339202646%_
                                                 _%tl202340202648%_
                                                 _%e202341202651%_
                                                 _%hd202342202654%_
                                                 _%tl202343202656%_))))
                                        (_%__match204617204618%_
                                         _%e202308202565%_
                                         _%hd202309202568%_
                                         _%tl202310202570%_
                                         _%e202320202595%_
                                         _%hd202321202598%_
                                         _%tl202322202600%_
                                         _%e202323202603%_
                                         _%hd202324202606%_
                                         _%tl202325202608%_
                                         _%e202326202611%_
                                         _%hd202327202614%_
                                         _%tl202328202616%_
                                         _%e202329202619%_
                                         _%hd202330202622%_
                                         _%tl202331202624%_
                                         _%e202332202627%_
                                         _%hd202333202630%_
                                         _%tl202334202632%_
                                         _%e202335202635%_
                                         _%hd202336202638%_
                                         _%tl202337202640%_
                                         _%e202338202643%_
                                         _%hd202339202646%_
                                         _%tl202340202648%_
                                         _%e202341202651%_
                                         _%hd202342202654%_
                                         _%tl202343202656%_))
                                    (_%__match204617204618%_
                                     _%e202308202565%_
                                     _%hd202309202568%_
                                     _%tl202310202570%_
                                     _%e202320202595%_
                                     _%hd202321202598%_
                                     _%tl202322202600%_
                                     _%e202323202603%_
                                     _%hd202324202606%_
                                     _%tl202325202608%_
                                     _%e202326202611%_
                                     _%hd202327202614%_
                                     _%tl202328202616%_
                                     _%e202329202619%_
                                     _%hd202330202622%_
                                     _%tl202331202624%_
                                     _%e202332202627%_
                                     _%hd202333202630%_
                                     _%tl202334202632%_
                                     _%e202335202635%_
                                     _%hd202336202638%_
                                     _%tl202337202640%_
                                     _%e202338202643%_
                                     _%hd202339202646%_
                                     _%tl202340202648%_
                                     _%e202341202651%_
                                     _%hd202342202654%_
                                     _%tl202343202656%_))
                                (_%__match204617204618%_
                                 _%e202308202565%_
                                 _%hd202309202568%_
                                 _%tl202310202570%_
                                 _%e202320202595%_
                                 _%hd202321202598%_
                                 _%tl202322202600%_
                                 _%e202323202603%_
                                 _%hd202324202606%_
                                 _%tl202325202608%_
                                 _%e202326202611%_
                                 _%hd202327202614%_
                                 _%tl202328202616%_
                                 _%e202329202619%_
                                 _%hd202330202622%_
                                 _%tl202331202624%_
                                 _%e202332202627%_
                                 _%hd202333202630%_
                                 _%tl202334202632%_
                                 _%e202335202635%_
                                 _%hd202336202638%_
                                 _%tl202337202640%_
                                 _%e202338202643%_
                                 _%hd202339202646%_
                                 _%tl202340202648%_
                                 _%e202341202651%_
                                 _%hd202342202654%_
                                 _%tl202343202656%_))))
                        (_%__match204617204618%_
                         _%e202308202565%_
                         _%hd202309202568%_
                         _%tl202310202570%_
                         _%e202320202595%_
                         _%hd202321202598%_
                         _%tl202322202600%_
                         _%e202323202603%_
                         _%hd202324202606%_
                         _%tl202325202608%_
                         _%e202326202611%_
                         _%hd202327202614%_
                         _%tl202328202616%_
                         _%e202329202619%_
                         _%hd202330202622%_
                         _%tl202331202624%_
                         _%e202332202627%_
                         _%hd202333202630%_
                         _%tl202334202632%_
                         _%e202335202635%_
                         _%hd202336202638%_
                         _%tl202337202640%_
                         _%e202338202643%_
                         _%hd202339202646%_
                         _%tl202340202648%_
                         _%e202341202651%_
                         _%hd202342202654%_
                         _%tl202343202656%_))))
                (let ((_%xarg202352202719%_ (reverse _%xarg202351202693%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202322202600%_))
                      (let ((_%g202302202721%_ _%hd202360202683%_)
                            (_%g202303202722%_ _%xarg202352202719%_)
                            (_%g202304202723%_ _%hd202342202654%_)
                            (_%g202305202724%_ _%hd202333202630%_)
                            (_%g202306202725%_ _%tl202313202575%_)
                            (_%g202307202726%_ _%arg202319202593%_))
                        (if (and (let ((__tmp205787
                                        (let ((__tmp205788
                                               (lambda (_%g202769202772%_
                                                        _%g202770202774%_)
                                                 (cons _%g202769202772%_
                                                       _%g202770202774%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205788
                                           '()
                                           _%g202307202726%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp205787))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g202306202725%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g202305202724%_
                                    'apply))
                                 (let ((__tmp205791
                                        (length (let ((__tmp205792
                                                       (lambda (_%g202776202779%_
                                                                _%g202777202781%_)
                                                         (cons _%g202776202779%_
                                                               _%g202777202781%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp205792
                                                   '()
                                                   _%g202307202726%_))))
                                       (__tmp205789
                                        (length (let ((__tmp205790
                                                       (lambda (_%g202783202786%_
                                                                _%g202784202788%_)
                                                         (cons _%g202783202786%_
                                                               _%g202784202788%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp205790
                                                   '()
                                                   _%g202303202722%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp205791 __tmp205789))
                                 (let ((__tmp205795
                                        (let ((__tmp205796
                                               (lambda (_%g202790202793%_
                                                        _%g202791202795%_)
                                                 (cons _%g202790202793%_
                                                       _%g202791202795%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205796
                                           '()
                                           _%g202307202726%_)))
                                       (__tmp205793
                                        (let ((__tmp205794
                                               (lambda (_%g202797202800%_
                                                        _%g202798202802%_)
                                                 (cons _%g202797202800%_
                                                       _%g202798202802%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205794
                                           '()
                                           _%g202303202722%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp205795
                                    __tmp205793))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g202306202725%_
                                    _%g202302202721%_))
                                 (not (let ((__tmp205800
                                             (lambda (_%g202804202806%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g202804202806%_
                                                  _%g202304202723%_))))
                                            (__tmp205797
                                             (let ((__tmp205799
                                                    (lambda (_%g202808202811%_
                                                             _%g202809202813%_)
                                                      (cons _%g202808202811%_
                                                            _%g202809202813%_)))
                                                   (__tmp205798
                                                    (cons _%g202306202725%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205799
                                                __tmp205798
                                                _%g202307202726%_))))
                                        (declare (not safe))
                                        (__find __tmp205800 __tmp205797))))
                            (_%__kont204512204513%_
                             _%g202302202721%_
                             _%g202303202722%_
                             _%g202304202723%_
                             _%g202305202724%_
                             _%g202306202725%_
                             _%g202307202726%_)
                            (_%__match204617204618%_
                             _%e202308202565%_
                             _%hd202309202568%_
                             _%tl202310202570%_
                             _%e202320202595%_
                             _%hd202321202598%_
                             _%tl202322202600%_
                             _%e202323202603%_
                             _%hd202324202606%_
                             _%tl202325202608%_
                             _%e202326202611%_
                             _%hd202327202614%_
                             _%tl202328202616%_
                             _%e202329202619%_
                             _%hd202330202622%_
                             _%tl202331202624%_
                             _%e202332202627%_
                             _%hd202333202630%_
                             _%tl202334202632%_
                             _%e202335202635%_
                             _%hd202336202638%_
                             _%tl202337202640%_
                             _%e202338202643%_
                             _%hd202339202646%_
                             _%tl202340202648%_
                             _%e202341202651%_
                             _%hd202342202654%_
                             _%tl202343202656%_)))
                      (_%__match204617204618%_
                       _%e202308202565%_
                       _%hd202309202568%_
                       _%tl202310202570%_
                       _%e202320202595%_
                       _%hd202321202598%_
                       _%tl202322202600%_
                       _%e202323202603%_
                       _%hd202324202606%_
                       _%tl202325202608%_
                       _%e202326202611%_
                       _%hd202327202614%_
                       _%tl202328202616%_
                       _%e202329202619%_
                       _%hd202330202622%_
                       _%tl202331202624%_
                       _%e202332202627%_
                       _%hd202333202630%_
                       _%tl202334202632%_
                       _%e202335202635%_
                       _%hd202336202638%_
                       _%tl202337202640%_
                       _%e202338202643%_
                       _%hd202339202646%_
                       _%tl202340202648%_
                       _%e202341202651%_
                       _%hd202342202654%_
                       _%tl202343202656%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202347202688%_
                                           _%target202344202659%_
                                           '()))
                                        (_%__match204617204618%_
                                         _%e202308202565%_
                                         _%hd202309202568%_
                                         _%tl202310202570%_
                                         _%e202320202595%_
                                         _%hd202321202598%_
                                         _%tl202322202600%_
                                         _%e202323202603%_
                                         _%hd202324202606%_
                                         _%tl202325202608%_
                                         _%e202326202611%_
                                         _%hd202327202614%_
                                         _%tl202328202616%_
                                         _%e202329202619%_
                                         _%hd202330202622%_
                                         _%tl202331202624%_
                                         _%e202332202627%_
                                         _%hd202333202630%_
                                         _%tl202334202632%_
                                         _%e202335202635%_
                                         _%hd202336202638%_
                                         _%tl202337202640%_
                                         _%e202338202643%_
                                         _%hd202339202646%_
                                         _%tl202340202648%_
                                         _%e202341202651%_
                                         _%hd202342202654%_
                                         _%tl202343202656%_))
                                    (_%__match204617204618%_
                                     _%e202308202565%_
                                     _%hd202309202568%_
                                     _%tl202310202570%_
                                     _%e202320202595%_
                                     _%hd202321202598%_
                                     _%tl202322202600%_
                                     _%e202323202603%_
                                     _%hd202324202606%_
                                     _%tl202325202608%_
                                     _%e202326202611%_
                                     _%hd202327202614%_
                                     _%tl202328202616%_
                                     _%e202329202619%_
                                     _%hd202330202622%_
                                     _%tl202331202624%_
                                     _%e202332202627%_
                                     _%hd202333202630%_
                                     _%tl202334202632%_
                                     _%e202335202635%_
                                     _%hd202336202638%_
                                     _%tl202337202640%_
                                     _%e202338202643%_
                                     _%hd202339202646%_
                                     _%tl202340202648%_
                                     _%e202341202651%_
                                     _%hd202342202654%_
                                     _%tl202343202656%_))))
                            (_%__match204617204618%_
                             _%e202308202565%_
                             _%hd202309202568%_
                             _%tl202310202570%_
                             _%e202320202595%_
                             _%hd202321202598%_
                             _%tl202322202600%_
                             _%e202323202603%_
                             _%hd202324202606%_
                             _%tl202325202608%_
                             _%e202326202611%_
                             _%hd202327202614%_
                             _%tl202328202616%_
                             _%e202329202619%_
                             _%hd202330202622%_
                             _%tl202331202624%_
                             _%e202332202627%_
                             _%hd202333202630%_
                             _%tl202334202632%_
                             _%e202335202635%_
                             _%hd202336202638%_
                             _%tl202337202640%_
                             _%e202338202643%_
                             _%hd202339202646%_
                             _%tl202340202648%_
                             _%e202341202651%_
                             _%hd202342202654%_
                             _%tl202343202656%_))
                        (_%__match204617204618%_
                         _%e202308202565%_
                         _%hd202309202568%_
                         _%tl202310202570%_
                         _%e202320202595%_
                         _%hd202321202598%_
                         _%tl202322202600%_
                         _%e202323202603%_
                         _%hd202324202606%_
                         _%tl202325202608%_
                         _%e202326202611%_
                         _%hd202327202614%_
                         _%tl202328202616%_
                         _%e202329202619%_
                         _%hd202330202622%_
                         _%tl202331202624%_
                         _%e202332202627%_
                         _%hd202333202630%_
                         _%tl202334202632%_
                         _%e202335202635%_
                         _%hd202336202638%_
                         _%tl202337202640%_
                         _%e202338202643%_
                         _%hd202339202646%_
                         _%tl202340202648%_
                         _%e202341202651%_
                         _%hd202342202654%_
                         _%tl202343202656%_))
                    (_%__match204617204618%_
                     _%e202308202565%_
                     _%hd202309202568%_
                     _%tl202310202570%_
                     _%e202320202595%_
                     _%hd202321202598%_
                     _%tl202322202600%_
                     _%e202323202603%_
                     _%hd202324202606%_
                     _%tl202325202608%_
                     _%e202326202611%_
                     _%hd202327202614%_
                     _%tl202328202616%_
                     _%e202329202619%_
                     _%hd202330202622%_
                     _%tl202331202624%_
                     _%e202332202627%_
                     _%hd202333202630%_
                     _%tl202334202632%_
                     _%e202335202635%_
                     _%hd202336202638%_
                     _%tl202337202640%_
                     _%e202338202643%_
                     _%hd202339202646%_
                     _%tl202340202648%_
                     _%e202341202651%_
                     _%hd202342202654%_
                     _%tl202343202656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match204617204618%_
                                                     _%e202308202565%_
                                                     _%hd202309202568%_
                                                     _%tl202310202570%_
                                                     _%e202320202595%_
                                                     _%hd202321202598%_
                                                     _%tl202322202600%_
                                                     _%e202323202603%_
                                                     _%hd202324202606%_
                                                     _%tl202325202608%_
                                                     _%e202326202611%_
                                                     _%hd202327202614%_
                                                     _%tl202328202616%_
                                                     _%e202329202619%_
                                                     _%hd202330202622%_
                                                     _%tl202331202624%_
                                                     _%e202332202627%_
                                                     _%hd202333202630%_
                                                     _%tl202334202632%_
                                                     _%e202335202635%_
                                                     _%hd202336202638%_
                                                     _%tl202337202640%_
                                                     _%e202338202643%_
                                                     _%hd202339202646%_
                                                     _%tl202340202648%_
                                                     _%e202341202651%_
                                                     _%hd202342202654%_
                                                     _%tl202343202656%_))))
                                            (_%__match204617204618%_
                                             _%e202308202565%_
                                             _%hd202309202568%_
                                             _%tl202310202570%_
                                             _%e202320202595%_
                                             _%hd202321202598%_
                                             _%tl202322202600%_
                                             _%e202323202603%_
                                             _%hd202324202606%_
                                             _%tl202325202608%_
                                             _%e202326202611%_
                                             _%hd202327202614%_
                                             _%tl202328202616%_
                                             _%e202329202619%_
                                             _%hd202330202622%_
                                             _%tl202331202624%_
                                             _%e202332202627%_
                                             _%hd202333202630%_
                                             _%tl202334202632%_
                                             _%e202335202635%_
                                             _%hd202336202638%_
                                             _%tl202337202640%_
                                             _%e202338202643%_
                                             _%hd202339202646%_
                                             _%tl202340202648%_
                                             _%e202341202651%_
                                             _%hd202342202654%_
                                             _%tl202343202656%_))))
                                    (_%__match204617204618%_
                                     _%e202308202565%_
                                     _%hd202309202568%_
                                     _%tl202310202570%_
                                     _%e202320202595%_
                                     _%hd202321202598%_
                                     _%tl202322202600%_
                                     _%e202323202603%_
                                     _%hd202324202606%_
                                     _%tl202325202608%_
                                     _%e202326202611%_
                                     _%hd202327202614%_
                                     _%tl202328202616%_
                                     _%e202329202619%_
                                     _%hd202330202622%_
                                     _%tl202331202624%_
                                     _%e202332202627%_
                                     _%hd202333202630%_
                                     _%tl202334202632%_
                                     _%e202335202635%_
                                     _%hd202336202638%_
                                     _%tl202337202640%_
                                     _%e202338202643%_
                                     _%hd202339202646%_
                                     _%tl202340202648%_
                                     _%e202341202651%_
                                     _%hd202342202654%_
                                     _%tl202343202656%_))
                                (_%__match204617204618%_
                                 _%e202308202565%_
                                 _%hd202309202568%_
                                 _%tl202310202570%_
                                 _%e202320202595%_
                                 _%hd202321202598%_
                                 _%tl202322202600%_
                                 _%e202323202603%_
                                 _%hd202324202606%_
                                 _%tl202325202608%_
                                 _%e202326202611%_
                                 _%hd202327202614%_
                                 _%tl202328202616%_
                                 _%e202329202619%_
                                 _%hd202330202622%_
                                 _%tl202331202624%_
                                 _%e202332202627%_
                                 _%hd202333202630%_
                                 _%tl202334202632%_
                                 _%e202335202635%_
                                 _%hd202336202638%_
                                 _%tl202337202640%_
                                 _%e202338202643%_
                                 _%hd202339202646%_
                                 _%tl202340202648%_
                                 _%e202341202651%_
                                 _%hd202342202654%_
                                 _%tl202343202656%_))
                            (_%__kont204520204521%_))))
                    (_%__kont204520204521%_))
                (_%__kont204520204521%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont204520204521%_))))
                                            (_%__kont204520204521%_))))
                                    (_%__kont204520204521%_))
                                (_%__kont204520204521%_))))
                        (_%__kont204520204521%_))
                    (_%__kont204520204521%_))
                (_%__kont204520204521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont204520204521%_))))
                                        (_%__kont204520204521%_))
                                    (_%__kont204520204521%_))
                                (_%__kont204520204521%_))))
                        (_%__kont204520204521%_))))
                (_%__kont204520204521%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202314202578%_
                                     _%target202311202573%_
                                     '()))))
                               (_%__match204535204536%_
                                (lambda (_%e202260202821%_
                                         _%hd202261202824%_
                                         _%tl202262202826%_
                                         _%__splice204508204509%_
                                         _%target202263202829%_
                                         _%tl202265202831%_)
                                  (letrec ((_%loop202266202834%_
                                            (lambda (_%hd202264202837%_
                                                     _%arg202270202839%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202264202837%_))
                                                  (let ((_%e202267202841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202264202837%_))))
                                                    (let ((_%lp-tl202269202846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202267202841%_)))
                                                          (_%lp-hd202268202844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202267202841%_))))
                                                      (_%loop202266202834%_
                                                       _%lp-tl202269202846%_
                                                       (cons _%lp-hd202268202844%_
                                                             _%arg202270202839%_))))
                                                  (let ((_%arg202271202849%_
                                                         (reverse _%arg202270202839%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202262202826%_))
                                                        (let ((_%e202272202851%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202262202826%_))))
                  (let ((_%tl202274202856%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202272202851%_)))
                        (_%hd202273202854%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202272202851%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202273202854%_))
                        (let ((_%e202275202859%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202273202854%_))))
                          (let ((_%tl202277202864%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202275202859%_)))
                                (_%hd202276202862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202275202859%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202276202862%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202276202862%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202277202864%_))
                                        (let ((_%e202278202867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202277202864%_))))
                                          (let ((_%tl202280202872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202278202867%_)))
                                                (_%hd202279202870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202278202867%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202279202870%_))
                                                (let ((_%e202281202875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202279202870%_))))
                                                  (let ((_%tl202283202880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202281202875%_)))
                                                        (_%hd202282202878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202281202875%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202282202878%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202282202878%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202283202880%_))
                        (let ((_%e202284202883%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202283202880%_))))
                          (let ((_%tl202286202888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202284202883%_)))
                                (_%hd202285202886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202284202883%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202286202888%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202280202872%_))
                                    (let ((_%__splice204510204511%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202280202872%_
                                              '0))))
                                      (let ((_%tl202289202893%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204510204511%_
                                                '1)))
                                            (_%target202287202891%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204510204511%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202289202893%_))
                                            (letrec ((_%loop202290202896%_
                                                      (lambda (_%hd202288202899%_
                                                               _%xarg202294202901%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202288202899%_))
                                                            (let ((_%e202291202903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202288202899%_))))
                      (let ((_%lp-tl202293202908%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202291202903%_)))
                            (_%lp-hd202292202906%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202291202903%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202292202906%_))
                            (let ((_%e202296202911%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202292202906%_))))
                              (let ((_%tl202298202916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202296202911%_)))
                                    (_%hd202297202914%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202296202911%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202297202914%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202297202914%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202298202916%_))
                                            (let ((_%e202299202919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202298202916%_))))
                                              (let ((_%tl202301202924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202299202919%_)))
                                                    (_%hd202300202922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202299202919%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202301202924%_))
                                                    (_%loop202290202896%_
                                                     _%lp-tl202293202908%_
                                                     (cons _%hd202300202922%_
                                                           _%xarg202294202901%_))
                                                    (_%__match204547204548%_
                                                     _%e202260202821%_
                                                     _%hd202261202824%_
                                                     _%tl202262202826%_
                                                     _%__splice204508204509%_
                                                     _%target202263202829%_
                                                     _%tl202265202831%_))))
                                            (_%__match204547204548%_
                                             _%e202260202821%_
                                             _%hd202261202824%_
                                             _%tl202262202826%_
                                             _%__splice204508204509%_
                                             _%target202263202829%_
                                             _%tl202265202831%_))
                                        (_%__match204547204548%_
                                         _%e202260202821%_
                                         _%hd202261202824%_
                                         _%tl202262202826%_
                                         _%__splice204508204509%_
                                         _%target202263202829%_
                                         _%tl202265202831%_))
                                    (_%__match204547204548%_
                                     _%e202260202821%_
                                     _%hd202261202824%_
                                     _%tl202262202826%_
                                     _%__splice204508204509%_
                                     _%target202263202829%_
                                     _%tl202265202831%_))))
                            (_%__match204547204548%_
                             _%e202260202821%_
                             _%hd202261202824%_
                             _%tl202262202826%_
                             _%__splice204508204509%_
                             _%target202263202829%_
                             _%tl202265202831%_))))
                    (let ((_%xarg202295202927%_
                           (reverse _%xarg202294202901%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202274202856%_))
                          (let ((_%g202257202929%_ _%xarg202295202927%_)
                                (_%g202258202930%_ _%hd202285202886%_)
                                (_%g202259202931%_ _%arg202271202849%_))
                            (if (and (let ((__tmp205801
                                            (let ((__tmp205802
                                                   (lambda (_%g202959202962%_
                                                            _%g202960202964%_)
                                                     (cons _%g202959202962%_
                                                           _%g202960202964%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205802
                                               '()
                                               _%g202259202931%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp205801))
                                     (let ((__tmp205805
                                            (length (let ((__tmp205806
                                                           (lambda (_%g202966202969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g202967202971%_)
                     (cons _%g202966202969%_ _%g202967202971%_))))
              (declare (not safe))
              (foldr__0 __tmp205806 '() _%g202259202931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp205803
                                            (length (let ((__tmp205804
                                                           (lambda (_%g202973202976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g202974202978%_)
                     (cons _%g202973202976%_ _%g202974202978%_))))
              (declare (not safe))
              (foldr__0 __tmp205804 '() _%g202257202929%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp205805 __tmp205803))
                                     (let ((__tmp205809
                                            (let ((__tmp205810
                                                   (lambda (_%g202980202983%_
                                                            _%g202981202985%_)
                                                     (cons _%g202980202983%_
                                                           _%g202981202985%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205810
                                               '()
                                               _%g202259202931%_)))
                                           (__tmp205807
                                            (let ((__tmp205808
                                                   (lambda (_%g202987202990%_
                                                            _%g202988202992%_)
                                                     (cons _%g202987202990%_
                                                           _%g202988202992%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205808
                                               '()
                                               _%g202257202929%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp205809
                                        __tmp205807))
                                     (not (let ((__tmp205813
                                                 (lambda (_%g202994202996%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g202994202996%_
                                                      _%g202258202930%_))))
                                                (__tmp205811
                                                 (let ((__tmp205812
                                                        (lambda (_%g202998203001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g202999203003%_)
                  (cons _%g202998203001%_ _%g202999203003%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp205812
                                                    '()
                                                    _%g202259202931%_))))
                                            (declare (not safe))
                                            (__find __tmp205813 __tmp205811))))
                                (_%__kont204506204507%_
                                 _%g202257202929%_
                                 _%g202258202930%_
                                 _%g202259202931%_)
                                (_%__match204547204548%_
                                 _%e202260202821%_
                                 _%hd202261202824%_
                                 _%tl202262202826%_
                                 _%__splice204508204509%_
                                 _%target202263202829%_
                                 _%tl202265202831%_)))
                          (_%__match204547204548%_
                           _%e202260202821%_
                           _%hd202261202824%_
                           _%tl202262202826%_
                           _%__splice204508204509%_
                           _%target202263202829%_
                           _%tl202265202831%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202290202896%_
                                               _%target202287202891%_
                                               '()))
                                            (_%__match204547204548%_
                                             _%e202260202821%_
                                             _%hd202261202824%_
                                             _%tl202262202826%_
                                             _%__splice204508204509%_
                                             _%target202263202829%_
                                             _%tl202265202831%_))))
                                    (_%__match204547204548%_
                                     _%e202260202821%_
                                     _%hd202261202824%_
                                     _%tl202262202826%_
                                     _%__splice204508204509%_
                                     _%target202263202829%_
                                     _%tl202265202831%_))
                                (_%__match204547204548%_
                                 _%e202260202821%_
                                 _%hd202261202824%_
                                 _%tl202262202826%_
                                 _%__splice204508204509%_
                                 _%target202263202829%_
                                 _%tl202265202831%_))))
                        (_%__match204547204548%_
                         _%e202260202821%_
                         _%hd202261202824%_
                         _%tl202262202826%_
                         _%__splice204508204509%_
                         _%target202263202829%_
                         _%tl202265202831%_))
                    (_%__match204547204548%_
                     _%e202260202821%_
                     _%hd202261202824%_
                     _%tl202262202826%_
                     _%__splice204508204509%_
                     _%target202263202829%_
                     _%tl202265202831%_))
                (_%__match204547204548%_
                 _%e202260202821%_
                 _%hd202261202824%_
                 _%tl202262202826%_
                 _%__splice204508204509%_
                 _%target202263202829%_
                 _%tl202265202831%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match204547204548%_
                                                 _%e202260202821%_
                                                 _%hd202261202824%_
                                                 _%tl202262202826%_
                                                 _%__splice204508204509%_
                                                 _%target202263202829%_
                                                 _%tl202265202831%_))))
                                        (_%__match204547204548%_
                                         _%e202260202821%_
                                         _%hd202261202824%_
                                         _%tl202262202826%_
                                         _%__splice204508204509%_
                                         _%target202263202829%_
                                         _%tl202265202831%_))
                                    (_%__match204547204548%_
                                     _%e202260202821%_
                                     _%hd202261202824%_
                                     _%tl202262202826%_
                                     _%__splice204508204509%_
                                     _%target202263202829%_
                                     _%tl202265202831%_))
                                (_%__match204547204548%_
                                 _%e202260202821%_
                                 _%hd202261202824%_
                                 _%tl202262202826%_
                                 _%__splice204508204509%_
                                 _%target202263202829%_
                                 _%tl202265202831%_))))
                        (_%__match204547204548%_
                         _%e202260202821%_
                         _%hd202261202824%_
                         _%tl202262202826%_
                         _%__splice204508204509%_
                         _%target202263202829%_
                         _%tl202265202831%_))))
                (_%__match204547204548%_
                 _%e202260202821%_
                 _%hd202261202824%_
                 _%tl202262202826%_
                 _%__splice204508204509%_
                 _%target202263202829%_
                 _%tl202265202831%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202266202834%_
                                     _%target202263202829%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204504204505%_))
                              (let ((_%e202260202821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204504204505%_))))
                                (let ((_%tl202262202826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202260202821%_)))
                                      (_%hd202261202824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202260202821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202261202824%_))
                                      (let ((_%__splice204508204509%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202261202824%_
                                                '0))))
                                        (let ((_%tl202265202831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204508204509%_
                                                  '1)))
                                              (_%target202263202829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204508204509%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202265202831%_))
                                              (_%__match204535204536%_
                                               _%e202260202821%_
                                               _%hd202261202824%_
                                               _%tl202262202826%_
                                               _%__splice204508204509%_
                                               _%target202263202829%_
                                               _%tl202265202831%_)
                                              (_%__match204547204548%_
                                               _%e202260202821%_
                                               _%hd202261202824%_
                                               _%tl202262202826%_
                                               _%__splice204508204509%_
                                               _%target202263202829%_
                                               _%tl202265202831%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202262202826%_))
                                          (let ((_%e202375202432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202262202826%_))))
                                            (let ((_%tl202377202437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202375202432%_)))
                                                  (_%hd202376202435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202375202432%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202376202435%_))
                                                  (let ((_%e202378202440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202376202435%_))))
                                                    (let ((_%tl202380202445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202378202440%_)))
                                                          (_%hd202379202443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202378202440%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202379202443%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202379202443%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202380202445%_))
                          (let ((_%e202381202448%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202380202445%_))))
                            (let ((_%tl202383202453%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202381202448%_)))
                                  (_%hd202382202451%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202381202448%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202382202451%_))
                                  (let ((_%e202384202456%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202382202451%_))))
                                    (let ((_%tl202386202461%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202384202456%_)))
                                          (_%hd202385202459%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202384202456%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202385202459%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202385202459%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202386202461%_))
                                                  (let ((_%e202387202464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202386202461%_))))
                                                    (let ((_%tl202389202469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202387202464%_)))
                                                          (_%hd202388202467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202387202464%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202389202469%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202383202453%_))
                      (let ((_%e202390202472%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202383202453%_))))
                        (let ((_%tl202392202477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202390202472%_)))
                              (_%hd202391202475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202390202472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202391202475%_))
                              (let ((_%e202393202480%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202391202475%_))))
                                (let ((_%tl202395202485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202393202480%_)))
                                      (_%hd202394202483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202393202480%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202394202483%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202394202483%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202395202485%_))
                                              (let ((_%e202396202488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202395202485%_))))
                                                (let ((_%tl202398202493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202396202488%_)))
                                                      (_%hd202397202491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202396202488%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202398202493%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202392202477%_))
                                                          (let ((_%e202399202496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202392202477%_))))
                    (let ((_%tl202401202501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202399202496%_)))
                          (_%hd202400202499%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202399202496%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd202400202499%_))
                          (let ((_%e202402202504%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202400202499%_))))
                            (let ((_%tl202404202509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202402202504%_)))
                                  (_%hd202403202507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202402202504%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd202403202507%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd202403202507%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202404202509%_))
                                          (let ((_%e202405202512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202404202509%_))))
                                            (let ((_%tl202407202517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202405202512%_)))
                                                  (_%hd202406202515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202405202512%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202407202517%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202401202501%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202377202437%_))
                                                          (_%__match204645204646%_
                                                           _%e202260202821%_
                                                           _%hd202261202824%_
                                                           _%tl202262202826%_
                                                           _%e202375202432%_
                                                           _%hd202376202435%_
                                                           _%tl202377202437%_
                                                           _%e202378202440%_
                                                           _%hd202379202443%_
                                                           _%tl202380202445%_
                                                           _%e202381202448%_
                                                           _%hd202382202451%_
                                                           _%tl202383202453%_
                                                           _%e202384202456%_
                                                           _%hd202385202459%_
                                                           _%tl202386202461%_
                                                           _%e202387202464%_
                                                           _%hd202388202467%_
                                                           _%tl202389202469%_
                                                           _%e202390202472%_
                                                           _%hd202391202475%_
                                                           _%tl202392202477%_
                                                           _%e202393202480%_
                                                           _%hd202394202483%_
                                                           _%tl202395202485%_
                                                           _%e202396202488%_
                                                           _%hd202397202491%_
                                                           _%tl202398202493%_
                                                           _%e202399202496%_
                                                           _%hd202400202499%_
                                                           _%tl202401202501%_
                                                           _%e202402202504%_
                                                           _%hd202403202507%_
                                                           _%tl202404202509%_
                                                           _%e202405202512%_
                                                           _%hd202406202515%_
                                                           _%tl202407202517%_)
                                                          (_%__kont204520204521%_))
                                                      (_%__kont204520204521%_))
                                                  (_%__kont204520204521%_))))
                                          (_%__kont204520204521%_))
                                      (_%__kont204520204521%_))
                                  (_%__kont204520204521%_))))
                          (_%__kont204520204521%_))))
                  (_%__kont204520204521%_))
              (_%__kont204520204521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont204520204521%_))
                                          (_%__kont204520204521%_))
                                      (_%__kont204520204521%_))))
                              (_%__kont204520204521%_))))
                      (_%__kont204520204521%_))
                  (_%__kont204520204521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont204520204521%_))
                                              (_%__kont204520204521%_))
                                          (_%__kont204520204521%_))))
                                  (_%__kont204520204521%_))))
                          (_%__kont204520204521%_))
                      (_%__kont204520204521%_))
                  (_%__kont204520204521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont204520204521%_))))
                                          (_%__kont204520204521%_)))))
                              (_%__kont204520204521%_)))))))
                 (_%dispatch-case-e201570%_
                  (lambda (_%hd201717%_ _%body201718%_)
                    (let* ((_%form201720%_
                            (cons _%hd201717%_ (cons _%body201718%_ '())))
                           (_%__stx204648204649%_ _%form201720%_)
                           (_%g201724201848%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx204648204649%_)))))
                      (let ((_%__kont204650204651%_
                             (lambda (_%g201726202213%_
                                      _%g201727202214%_
                                      _%g201728202215%_)
                               (let ((__tmp205814
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201727202214%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201566%_
                                  __tmp205814))))
                            (_%__kont204656204657%_
                             (lambda (_%g201771202065%_
                                      _%g201772202066%_
                                      _%g201773202067%_
                                      _%g201774202068%_)
                               (let ((__tmp205815
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201771202065%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201566%_
                                  __tmp205815))))
                            (_%__kont204660204661%_
                             (lambda (_%g201811201933%_
                                      _%g201812201934%_
                                      _%g201813201935%_)
                               (let ((__tmp205816
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201811201933%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201566%_
                                  __tmp205816)))))
                        (let* ((_%__match204757204758%_
                                (lambda (_%e201814201853%_
                                         _%hd201815201856%_
                                         _%tl201816201858%_
                                         _%e201817201861%_
                                         _%hd201818201864%_
                                         _%tl201819201866%_
                                         _%e201820201869%_
                                         _%hd201821201872%_
                                         _%tl201822201874%_
                                         _%e201823201877%_
                                         _%hd201824201880%_
                                         _%tl201825201882%_
                                         _%e201826201885%_
                                         _%hd201827201888%_
                                         _%tl201828201890%_
                                         _%e201829201893%_
                                         _%hd201830201896%_
                                         _%tl201831201898%_
                                         _%e201832201901%_
                                         _%hd201833201904%_
                                         _%tl201834201906%_
                                         _%e201835201909%_
                                         _%hd201836201912%_
                                         _%tl201837201914%_
                                         _%e201838201917%_
                                         _%hd201839201920%_
                                         _%tl201840201922%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201834201906%_))
                                      (let ((_%e201841201925%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201834201906%_))))
                                        (let ((_%tl201843201930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201841201925%_)))
                                              (_%hd201842201928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201841201925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201843201930%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201819201866%_))
                                                  (_%__kont204660204661%_
                                                   _%hd201839201920%_
                                                   _%hd201830201896%_
                                                   _%hd201815201856%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201724201848%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201724201848%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201724201848%_)))))
                               (_%__match204687204688%_
                                (lambda (_%e201775201971%_
                                         _%hd201776201974%_
                                         _%tl201777201976%_
                                         _%__splice204658204659%_
                                         _%target201778201979%_
                                         _%tl201780201981%_)
                                  (letrec ((_%loop201781201984%_
                                            (lambda (_%hd201779201987%_
                                                     _%arg201785201989%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201779201987%_))
                                                  (let ((_%e201782201991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201779201987%_))))
                                                    (let ((_%lp-tl201784201996%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201782201991%_)))
                                                          (_%lp-hd201783201994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201782201991%_))))
                                                      (_%loop201781201984%_
                                                       _%lp-tl201784201996%_
                                                       (cons _%lp-hd201783201994%_
                                                             _%arg201785201989%_))))
                                                  (let ((_%arg201786201999%_
                                                         (reverse _%arg201785201989%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201777201976%_))
                                                        (let ((_%e201787202001%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201777201976%_))))
                  (let ((_%tl201789202006%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201787202001%_)))
                        (_%hd201788202004%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201787202001%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201788202004%_))
                        (let ((_%e201790202009%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201788202004%_))))
                          (let ((_%tl201792202014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201790202009%_)))
                                (_%hd201791202012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201790202009%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201791202012%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd201791202012%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201792202014%_))
                                        (let ((_%e201793202017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201792202014%_))))
                                          (let ((_%tl201795202022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201793202017%_)))
                                                (_%hd201794202020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201793202017%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201794202020%_))
                                                (let ((_%e201796202025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201794202020%_))))
                                                  (let ((_%tl201798202030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201796202025%_)))
                                                        (_%hd201797202028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201796202025%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd201797202028%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd201797202028%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201798202030%_))
                        (let ((_%e201799202033%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl201798202030%_))))
                          (let ((_%tl201801202038%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201799202033%_)))
                                (_%hd201800202036%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201799202033%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201801202038%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl201795202022%_))
                                    (let ((_%e201802202041%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl201795202022%_))))
                                      (let ((_%tl201804202046%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201802202041%_)))
                                            (_%hd201803202044%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201802202041%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201803202044%_))
                                            (let ((_%e201805202049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd201803202044%_))))
                                              (let ((_%tl201807202054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201805202049%_)))
                                                    (_%hd201806202052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201805202049%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd201806202052%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd201806202052%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201807202054%_))
                                                            (let ((_%e201808202057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201807202054%_))))
                      (let ((_%tl201810202062%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201808202057%_)))
                            (_%hd201809202060%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201808202057%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201810202062%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201789202006%_))
                                (_%__kont204656204657%_
                                 _%hd201809202060%_
                                 _%hd201800202036%_
                                 _%tl201780201981%_
                                 _%arg201786201999%_)
                                (_%__match204757204758%_
                                 _%e201775201971%_
                                 _%hd201776201974%_
                                 _%tl201777201976%_
                                 _%e201787202001%_
                                 _%hd201788202004%_
                                 _%tl201789202006%_
                                 _%e201790202009%_
                                 _%hd201791202012%_
                                 _%tl201792202014%_
                                 _%e201793202017%_
                                 _%hd201794202020%_
                                 _%tl201795202022%_
                                 _%e201796202025%_
                                 _%hd201797202028%_
                                 _%tl201798202030%_
                                 _%e201799202033%_
                                 _%hd201800202036%_
                                 _%tl201801202038%_
                                 _%e201802202041%_
                                 _%hd201803202044%_
                                 _%tl201804202046%_
                                 _%e201805202049%_
                                 _%hd201806202052%_
                                 _%tl201807202054%_
                                 _%e201808202057%_
                                 _%hd201809202060%_
                                 _%tl201810202062%_))
                            (let ()
                              (declare (not safe))
                              (_%g201724201848%_)))))
                    (let () (declare (not safe)) (_%g201724201848%_)))
                (let () (declare (not safe)) (_%g201724201848%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201724201848%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g201724201848%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g201724201848%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201724201848%_)))))
                        (let () (declare (not safe)) (_%g201724201848%_)))
                    (let () (declare (not safe)) (_%g201724201848%_)))
                (let () (declare (not safe)) (_%g201724201848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201724201848%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201724201848%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g201724201848%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201724201848%_)))))
                        (let () (declare (not safe)) (_%g201724201848%_)))))
                (let () (declare (not safe)) (_%g201724201848%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop201781201984%_
                                     _%target201778201979%_
                                     '()))))
                               (_%__match204675204676%_
                                (lambda (_%e201729202105%_
                                         _%hd201730202108%_
                                         _%tl201731202110%_
                                         _%__splice204652204653%_
                                         _%target201732202113%_
                                         _%tl201734202115%_)
                                  (letrec ((_%loop201735202118%_
                                            (lambda (_%hd201733202121%_
                                                     _%arg201739202123%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201733202121%_))
                                                  (let ((_%e201736202125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201733202121%_))))
                                                    (let ((_%lp-tl201738202130%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201736202125%_)))
                                                          (_%lp-hd201737202128%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201736202125%_))))
                                                      (_%loop201735202118%_
                                                       _%lp-tl201738202130%_
                                                       (cons _%lp-hd201737202128%_
                                                             _%arg201739202123%_))))
                                                  (let ((_%arg201740202133%_
                                                         (reverse _%arg201739202123%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201731202110%_))
                                                        (let ((_%e201741202135%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201731202110%_))))
                  (let ((_%tl201743202140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201741202135%_)))
                        (_%hd201742202138%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201741202135%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201742202138%_))
                        (let ((_%e201744202143%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201742202138%_))))
                          (let ((_%tl201746202148%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201744202143%_)))
                                (_%hd201745202146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201744202143%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201745202146%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd201745202146%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201746202148%_))
                                        (let ((_%e201747202151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201746202148%_))))
                                          (let ((_%tl201749202156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201747202151%_)))
                                                (_%hd201748202154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201747202151%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201748202154%_))
                                                (let ((_%e201750202159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201748202154%_))))
                                                  (let ((_%tl201752202164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201750202159%_)))
                                                        (_%hd201751202162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201750202159%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd201751202162%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd201751202162%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201752202164%_))
                        (let ((_%e201753202167%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl201752202164%_))))
                          (let ((_%tl201755202172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201753202167%_)))
                                (_%hd201754202170%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201753202167%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201755202172%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl201749202156%_))
                                    (let ((_%__splice204654204655%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl201749202156%_
                                              '0))))
                                      (let ((_%tl201758202177%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204654204655%_
                                                '1)))
                                            (_%target201756202175%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204654204655%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl201758202177%_))
                                            (letrec ((_%loop201759202180%_
                                                      (lambda (_%hd201757202183%_
                                                               _%xarg201763202185%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd201757202183%_))
                                                            (let ((_%e201760202187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd201757202183%_))))
                      (let ((_%lp-tl201762202192%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201760202187%_)))
                            (_%lp-hd201761202190%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201760202187%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd201761202190%_))
                            (let ((_%e201765202195%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd201761202190%_))))
                              (let ((_%tl201767202200%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201765202195%_)))
                                    (_%hd201766202198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201765202195%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201766202198%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd201766202198%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201767202200%_))
                                            (let ((_%e201768202203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201767202200%_))))
                                              (let ((_%tl201770202208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201768202203%_)))
                                                    (_%hd201769202206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201768202203%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl201770202208%_))
                                                    (_%loop201759202180%_
                                                     _%lp-tl201762202192%_
                                                     (cons _%hd201769202206%_
                                                           _%xarg201763202185%_))
                                                    (_%__match204687204688%_
                                                     _%e201729202105%_
                                                     _%hd201730202108%_
                                                     _%tl201731202110%_
                                                     _%__splice204652204653%_
                                                     _%target201732202113%_
                                                     _%tl201734202115%_))))
                                            (_%__match204687204688%_
                                             _%e201729202105%_
                                             _%hd201730202108%_
                                             _%tl201731202110%_
                                             _%__splice204652204653%_
                                             _%target201732202113%_
                                             _%tl201734202115%_))
                                        (_%__match204687204688%_
                                         _%e201729202105%_
                                         _%hd201730202108%_
                                         _%tl201731202110%_
                                         _%__splice204652204653%_
                                         _%target201732202113%_
                                         _%tl201734202115%_))
                                    (_%__match204687204688%_
                                     _%e201729202105%_
                                     _%hd201730202108%_
                                     _%tl201731202110%_
                                     _%__splice204652204653%_
                                     _%target201732202113%_
                                     _%tl201734202115%_))))
                            (_%__match204687204688%_
                             _%e201729202105%_
                             _%hd201730202108%_
                             _%tl201731202110%_
                             _%__splice204652204653%_
                             _%target201732202113%_
                             _%tl201734202115%_))))
                    (let ((_%xarg201764202211%_
                           (reverse _%xarg201763202185%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201743202140%_))
                          (_%__kont204650204651%_
                           _%xarg201764202211%_
                           _%hd201754202170%_
                           _%arg201740202133%_)
                          (_%__match204687204688%_
                           _%e201729202105%_
                           _%hd201730202108%_
                           _%tl201731202110%_
                           _%__splice204652204653%_
                           _%target201732202113%_
                           _%tl201734202115%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop201759202180%_
                                               _%target201756202175%_
                                               '()))
                                            (_%__match204687204688%_
                                             _%e201729202105%_
                                             _%hd201730202108%_
                                             _%tl201731202110%_
                                             _%__splice204652204653%_
                                             _%target201732202113%_
                                             _%tl201734202115%_))))
                                    (_%__match204687204688%_
                                     _%e201729202105%_
                                     _%hd201730202108%_
                                     _%tl201731202110%_
                                     _%__splice204652204653%_
                                     _%target201732202113%_
                                     _%tl201734202115%_))
                                (_%__match204687204688%_
                                 _%e201729202105%_
                                 _%hd201730202108%_
                                 _%tl201731202110%_
                                 _%__splice204652204653%_
                                 _%target201732202113%_
                                 _%tl201734202115%_))))
                        (_%__match204687204688%_
                         _%e201729202105%_
                         _%hd201730202108%_
                         _%tl201731202110%_
                         _%__splice204652204653%_
                         _%target201732202113%_
                         _%tl201734202115%_))
                    (_%__match204687204688%_
                     _%e201729202105%_
                     _%hd201730202108%_
                     _%tl201731202110%_
                     _%__splice204652204653%_
                     _%target201732202113%_
                     _%tl201734202115%_))
                (_%__match204687204688%_
                 _%e201729202105%_
                 _%hd201730202108%_
                 _%tl201731202110%_
                 _%__splice204652204653%_
                 _%target201732202113%_
                 _%tl201734202115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match204687204688%_
                                                 _%e201729202105%_
                                                 _%hd201730202108%_
                                                 _%tl201731202110%_
                                                 _%__splice204652204653%_
                                                 _%target201732202113%_
                                                 _%tl201734202115%_))))
                                        (_%__match204687204688%_
                                         _%e201729202105%_
                                         _%hd201730202108%_
                                         _%tl201731202110%_
                                         _%__splice204652204653%_
                                         _%target201732202113%_
                                         _%tl201734202115%_))
                                    (_%__match204687204688%_
                                     _%e201729202105%_
                                     _%hd201730202108%_
                                     _%tl201731202110%_
                                     _%__splice204652204653%_
                                     _%target201732202113%_
                                     _%tl201734202115%_))
                                (_%__match204687204688%_
                                 _%e201729202105%_
                                 _%hd201730202108%_
                                 _%tl201731202110%_
                                 _%__splice204652204653%_
                                 _%target201732202113%_
                                 _%tl201734202115%_))))
                        (_%__match204687204688%_
                         _%e201729202105%_
                         _%hd201730202108%_
                         _%tl201731202110%_
                         _%__splice204652204653%_
                         _%target201732202113%_
                         _%tl201734202115%_))))
                (_%__match204687204688%_
                 _%e201729202105%_
                 _%hd201730202108%_
                 _%tl201731202110%_
                 _%__splice204652204653%_
                 _%target201732202113%_
                 _%tl201734202115%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop201735202118%_
                                     _%target201732202113%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204648204649%_))
                              (let ((_%e201729202105%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204648204649%_))))
                                (let ((_%tl201731202110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201729202105%_)))
                                      (_%hd201730202108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201729202105%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd201730202108%_))
                                      (let ((_%__splice204652204653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd201730202108%_
                                                '0))))
                                        (let ((_%tl201734202115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204652204653%_
                                                  '1)))
                                              (_%target201732202113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204652204653%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201734202115%_))
                                              (_%__match204675204676%_
                                               _%e201729202105%_
                                               _%hd201730202108%_
                                               _%tl201731202110%_
                                               _%__splice204652204653%_
                                               _%target201732202113%_
                                               _%tl201734202115%_)
                                              (_%__match204687204688%_
                                               _%e201729202105%_
                                               _%hd201730202108%_
                                               _%tl201731202110%_
                                               _%__splice204652204653%_
                                               _%target201732202113%_
                                               _%tl201734202115%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201731202110%_))
                                          (let ((_%e201817201861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201731202110%_))))
                                            (let ((_%tl201819201866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201817201861%_)))
                                                  (_%hd201818201864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201817201861%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201818201864%_))
                                                  (let ((_%e201820201869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201818201864%_))))
                                                    (let ((_%tl201822201874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201820201869%_)))
                                                          (_%hd201821201872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201820201869%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd201821201872%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd201821201872%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201822201874%_))
                          (let ((_%e201823201877%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201822201874%_))))
                            (let ((_%tl201825201882%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201823201877%_)))
                                  (_%hd201824201880%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201823201877%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201824201880%_))
                                  (let ((_%e201826201885%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201824201880%_))))
                                    (let ((_%tl201828201890%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201826201885%_)))
                                          (_%hd201827201888%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201826201885%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201827201888%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd201827201888%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201828201890%_))
                                                  (let ((_%e201829201893%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201828201890%_))))
                                                    (let ((_%tl201831201898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201829201893%_)))
                                                          (_%hd201830201896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201829201893%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201831201898%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201825201882%_))
                      (let ((_%e201832201901%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201825201882%_))))
                        (let ((_%tl201834201906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201832201901%_)))
                              (_%hd201833201904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201832201901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd201833201904%_))
                              (let ((_%e201835201909%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd201833201904%_))))
                                (let ((_%tl201837201914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201835201909%_)))
                                      (_%hd201836201912%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201835201909%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd201836201912%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd201836201912%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201837201914%_))
                                              (let ((_%e201838201917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201837201914%_))))
                                                (let ((_%tl201840201922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201838201917%_)))
                                                      (_%hd201839201920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201838201917%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201840201922%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201834201906%_))
                                                          (let ((_%e201841201925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201834201906%_))))
                    (let ((_%tl201843201930%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201841201925%_)))
                          (_%hd201842201928%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201841201925%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201843201930%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201819201866%_))
                              (_%__kont204660204661%_
                               _%hd201839201920%_
                               _%hd201830201896%_
                               _%hd201730202108%_)
                              (let ()
                                (declare (not safe))
                                (_%g201724201848%_)))
                          (let () (declare (not safe)) (_%g201724201848%_)))))
                  (let () (declare (not safe)) (_%g201724201848%_)))
              (let () (declare (not safe)) (_%g201724201848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201724201848%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201724201848%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201724201848%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g201724201848%_)))))
                      (let () (declare (not safe)) (_%g201724201848%_)))
                  (let () (declare (not safe)) (_%g201724201848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201724201848%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201724201848%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201724201848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201724201848%_)))))
                          (let () (declare (not safe)) (_%g201724201848%_)))
                      (let () (declare (not safe)) (_%g201724201848%_)))
                  (let () (declare (not safe)) (_%g201724201848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201724201848%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201724201848%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g201724201848%_))))))))
                 (_%generate1201571%_
                  (lambda (_%args201702%_
                           _%arglen201703%_
                           _%hd201704%_
                           _%body201705%_)
                    (let* ((_%len201707%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd201704%_)))
                           (_%condition201712%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd201704%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen201703%_
                                                (cons _%len201707%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen201703%_ (cons _%len201707%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len201707%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen201703%_
                                                    (cons _%len201707%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen201703%_ (cons _%len201707%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch201714%_
                            (if (_%dispatch-case?201569%_
                                 _%hd201704%_
                                 _%body201705%_)
                                (_%dispatch-case-e201570%_
                                 _%hd201704%_
                                 _%body201705%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self201566%_
                                 _%hd201704%_
                                 _%body201705%_))))
                      (cons _%condition201712%_
                            (cons (cons 'apply
                                        (cons _%dispatch201714%_
                                              (cons _%args201702%_ '())))
                                  '()))))))
          (let* ((_%g201573201601%_
                  (lambda (_%g201574201598%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201574201598%_))))
                 (_%g201572201699%_
                  (lambda (_%g201574201604%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201574201604%_))
                        (let ((_%e201577201606%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201574201604%_))))
                          (let ((_%hd201578201609%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201577201606%_)))
                                (_%tl201579201611%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201577201606%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl201579201611%_))
                                (let ((_g205817_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl201579201611%_
                                          '0))))
                                  (begin
                                    (let ((_g205818_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g205817_)
                                                 (##values-length _g205817_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g205818_ 2)))
                                          (error "Context expects 2 values"
                                                 _g205818_)))
                                    (let ((_%target201580201614%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205817_ 0)))
                                          (_%tl201582201616%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205817_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201582201616%_))
                                          (letrec ((_%loop201583201619%_
                                                    (lambda (_%hd201581201622%_
                                                             _%body201587201624%_
                                                             _%hd201588201625%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd201581201622%_))
                                                          (let ((_%e201584201627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd201581201622%_))))
                    (let ((_%lp-hd201585201630%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201584201627%_)))
                          (_%lp-tl201586201632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201584201627%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd201585201630%_))
                          (let ((_%e201591201635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd201585201630%_))))
                            (let ((_%hd201592201638%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201591201635%_)))
                                  (_%tl201593201640%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201591201635%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201593201640%_))
                                  (let ((_%e201594201643%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201593201640%_))))
                                    (let ((_%hd201595201646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201594201643%_)))
                                          (_%tl201596201648%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201594201643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201596201648%_))
                                          (_%loop201583201619%_
                                           _%lp-tl201586201632%_
                                           (cons _%hd201595201646%_
                                                 _%body201587201624%_)
                                           (cons _%hd201592201638%_
                                                 _%hd201588201625%_))
                                          (_%g201573201601%_
                                           _%g201574201604%_))))
                                  (_%g201573201601%_ _%g201574201604%_))))
                          (_%g201573201601%_ _%g201574201604%_))))
                  (let ((_%body201589201651%_ (reverse _%body201587201624%_))
                        (_%hd201590201652%_ (reverse _%hd201588201625%_)))
                    ((lambda (_%g201575201654%_ _%g201576201655%_)
                       (let ((_%args201674%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen201675%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name201676%_
                              (let ((_%$e201671%_
                                     (let ((__tmp205819
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp205819 _%stx201567%_))))
                                (if _%$e201671%_
                                    _%$e201671%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args201674%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen201675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args201674%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args201674%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp205823
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name201676%_
                                                                (cons _%args201674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp205820
                                  (map (lambda (_%g201677201680%_
                                                _%g201678201682%_)
                                         (_%generate1201571%_
                                          _%args201674%_
                                          _%arglen201675%_
                                          _%g201677201680%_
                                          _%g201678201682%_))
                                       (let ((__tmp205821
                                              (lambda (_%g201684201687%_
                                                       _%g201685201689%_)
                                                (cons _%g201684201687%_
                                                      _%g201685201689%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp205821
                                          '()
                                          _%g201576201655%_))
                                       (let ((__tmp205822
                                              (lambda (_%g201691201694%_
                                                       _%g201692201696%_)
                                                (cons _%g201691201694%_
                                                      _%g201692201696%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp205822
                                          '()
                                          _%g201575201654%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp205823 __tmp205820)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body201589201651%_
                     _%hd201590201652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop201583201619%_
                                             _%target201580201614%_
                                             '()
                                             '()))
                                          (_%g201573201601%_
                                           _%g201574201604%_)))))
                                (_%g201573201601%_ _%g201574201604%_))))
                        (_%g201573201601%_ _%g201574201604%_)))))
            (_%g201572201699%_ _%stx201567%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self200803%_ _%stx200804%_ _%compiled-body?200805%_)
        (letrec ((_%generate-simple200807%_
                  (lambda (_%hd201551%_ _%body201552%_)
                    (_%coalesce-boolean200808%_
                     (_%simplify-let200809%_
                      (gxc#generate-runtime-simple-let
                       _%self200803%_
                       'let
                       _%hd201551%_
                       _%body201552%_
                       _%compiled-body?200805%_)))))
                 (_%coalesce-boolean200808%_
                  (lambda (_%code201412%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code201413201439%_ _%code201412%_)
                               (_%else201415201447%_
                                (lambda () _%code201412%_))
                               (_%K201417201484%_
                                (lambda (_%expr2201450%_
                                         _%expr1201451%_
                                         _%id201452%_)
                                  (let* ((_%expr2201453201461%_
                                          _%expr2201450%_)
                                         (_%else201455201469%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1201451%_
                                                        (cons _%expr2201450%_
                                                              '())))))
                                         (_%K201457201474%_
                                          (lambda (_%exprs201472%_)
                                            (cons 'or
                                                  (cons _%expr1201451%_
                                                        _%exprs201472%_)))))
                                    (if (pair? _%expr2201453201461%_)
                                        (let ((_%hd201458201477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2201453201461%_)))
                                              (_%tl201459201479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2201453201461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201458201477%_ 'or))
                                              (let ((_%exprs201482%_
                                                     _%tl201459201479%_))
                                                (_%K201457201474%_
                                                 _%exprs201482%_))
                                              (_%else201455201469%_)))
                                        (_%else201455201469%_))))))
                          (if (pair? _%code201413201439%_)
                              (let ((_%hd201418201487%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code201413201439%_)))
                                    (_%tl201419201489%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code201413201439%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd201418201487%_ 'let))
                                    (if (pair? _%tl201419201489%_)
                                        (let ((_%hd201420201492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl201419201489%_)))
                                              (_%tl201421201494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl201419201489%_))))
                                          (if (pair? _%hd201420201492%_)
                                              (let ((_%hd201432201497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd201420201492%_)))
                                                    (_%tl201433201499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd201420201492%_))))
                                                (if (pair? _%hd201432201497%_)
                                                    (let ((_%hd201434201502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd201432201497%_)))
                                                          (_%tl201435201504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd201432201497%_))))
                                                      (let ((_%id201507%_
                                                             _%hd201434201502%_))
                                                        (if (pair? _%tl201435201504%_)
                                                            (let ((_%hd201436201509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl201435201504%_)))
                          (_%tl201437201511%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201435201504%_))))
                      (let ((_%expr1201514%_ _%hd201436201509%_))
                        (if (null? _%tl201437201511%_)
                            (if (null? _%tl201433201499%_)
                                (if (pair? _%tl201421201494%_)
                                    (let ((_%hd201422201516%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl201421201494%_)))
                                          (_%tl201423201518%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl201421201494%_))))
                                      (if (pair? _%hd201422201516%_)
                                          (let ((_%hd201424201521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd201422201516%_)))
                                                (_%tl201425201523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd201422201516%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201424201521%_
                                                         'if))
                                                (if (pair? _%tl201425201523%_)
                                                    (let ((_%hd201426201526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl201425201523%_)))
                                                          (_%tl201427201528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl201425201523%_))))
                                                      (if ((lambda (_%g201530201532%_)
                                                             (eq? _%g201530201532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id201507%_))
                   _%hd201426201526%_)
                  (if (pair? _%tl201427201528%_)
                      (let ((_%hd201428201535%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl201427201528%_)))
                            (_%tl201429201537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl201427201528%_))))
                        (if ((lambda (_%g201539201541%_)
                               (eq? _%g201539201541%_ _%id201507%_))
                             _%hd201428201535%_)
                            (if (pair? _%tl201429201537%_)
                                (let ((_%hd201430201544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201429201537%_)))
                                      (_%tl201431201546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201429201537%_))))
                                  (let ((_%expr2201549%_ _%hd201430201544%_))
                                    (if (null? _%tl201431201546%_)
                                        (if (null? _%tl201423201518%_)
                                            (_%K201417201484%_
                                             _%expr2201549%_
                                             _%expr1201514%_
                                             _%id201507%_)
                                            (_%else201415201447%_))
                                        (_%else201415201447%_))))
                                (_%else201415201447%_))
                            (_%else201415201447%_)))
                      (_%else201415201447%_))
                  (_%else201415201447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201415201447%_))
                                                (_%else201415201447%_)))
                                          (_%else201415201447%_)))
                                    (_%else201415201447%_))
                                (_%else201415201447%_))
                            (_%else201415201447%_))))
                    (_%else201415201447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201415201447%_)))
                                              (_%else201415201447%_)))
                                        (_%else201415201447%_))
                                    (_%else201415201447%_)))
                              (_%else201415201447%_)))
                        _%code201412%_)))
                 (_%simplify-let200809%_
                  (lambda (_%code201111%_)
                    (let* ((_%code201112201184%_ _%code201111%_)
                           (_%else201117201192%_ (lambda () _%code201111%_)))
                      (let ((_%K201176201392%_
                             (lambda (_%expr201390%_) _%expr201390%_))
                            (_%K201159201338%_
                             (lambda (_%body201334%_
                                      _%expr201335%_
                                      _%id201336%_)
                               (cons 'let
                                     (cons (cons (cons _%id201336%_
                                                       (cons _%expr201335%_
                                                             '()))
                                                 '())
                                           _%body201334%_))))
                            (_%K201136201262%_
                             (lambda (_%body201256%_
                                      _%expr2201257%_
                                      _%id2201258%_
                                      _%expr1201259%_
                                      _%id1201260%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201260%_
                                                       (cons _%expr1201259%_
                                                             '()))
                                                 (cons (cons _%id2201258%_
                                                             (cons _%expr2201257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body201256%_))))
                            (_%K201119201201%_
                             (lambda (_%body201196%_
                                      _%bind201197%_
                                      _%expr1201198%_
                                      _%id1201199%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201199%_
                                                       (cons _%expr1201198%_
                                                             '()))
                                                 _%bind201197%_)
                                           _%body201196%_)))))
                        (if (pair? _%code201112201184%_)
                            (let ((_%tl201178201397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code201112201184%_)))
                                  (_%hd201177201395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code201112201184%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd201177201395%_ 'let))
                                  (if (pair? _%tl201178201397%_)
                                      (let ((_%tl201180201402%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl201178201397%_)))
                                            (_%hd201179201400%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl201178201397%_))))
                                        (if (null? _%hd201179201400%_)
                                            (if (pair? _%tl201180201402%_)
                                                (let ((_%tl201182201407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl201180201402%_)))
                                                      (_%hd201181201405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl201180201402%_))))
                                                  (if (null? _%tl201182201407%_)
                                                      (let ((_%expr201410%_
                                                             _%hd201181201405%_))
                                                        (_%K201176201392%_
                                                         _%expr201410%_))
                                                      (_%else201117201192%_)))
                                                (_%else201117201192%_))
                                            (if (pair? _%hd201179201400%_)
                                                (let ((_%tl201171201353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd201179201400%_)))
                                                      (_%hd201170201351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd201179201400%_))))
                                                  (if (pair? _%hd201170201351%_)
                                                      (let ((_%tl201173201358%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd201170201351%_)))
                    (_%hd201172201356%_
                     (let () (declare (not safe)) (##car _%hd201170201351%_))))
                (if (pair? _%tl201173201358%_)
                    (let ((_%tl201175201365%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201173201358%_)))
                          (_%hd201174201363%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl201173201358%_))))
                      (if (null? _%tl201175201365%_)
                          (if (null? _%tl201171201353%_)
                              (if (pair? _%tl201180201402%_)
                                  (let ((_%tl201165201372%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201180201402%_)))
                                        (_%hd201164201370%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201180201402%_))))
                                    (if (pair? _%hd201164201370%_)
                                        (let ((_%tl201167201377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd201164201370%_)))
                                              (_%hd201166201375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd201164201370%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201166201375%_
                                                       'let))
                                              (if (pair? _%tl201167201377%_)
                                                  (let ((_%tl201169201382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201167201377%_)))
                                                        (_%hd201168201380%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201167201377%_))))
                                                    (if (null? _%hd201168201380%_)
                                                        (if (null? _%tl201165201372%_)
                                                            (let ((_%id201361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd201172201356%_)
                          (_%expr201368%_ _%hd201174201363%_)
                          (_%body201385%_ _%tl201169201382%_))
                      (_%K201159201338%_
                       _%body201385%_
                       _%expr201368%_
                       _%id201361%_))
                    (_%else201117201192%_))
                (if (pair? _%hd201168201380%_)
                    (let ((_%tl201148201311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd201168201380%_)))
                          (_%hd201147201309%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd201168201380%_))))
                      (if (pair? _%hd201147201309%_)
                          (let ((_%tl201150201316%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd201147201309%_)))
                                (_%hd201149201314%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd201147201309%_))))
                            (if (pair? _%tl201150201316%_)
                                (let ((_%tl201152201323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201150201316%_)))
                                      (_%hd201151201321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201150201316%_))))
                                  (if (null? _%tl201152201323%_)
                                      (if (null? _%tl201148201311%_)
                                          (if (null? _%tl201165201372%_)
                                              (let ((_%id1201285%_
                                                     _%hd201172201356%_)
                                                    (_%expr1201292%_
                                                     _%hd201174201363%_)
                                                    (_%id2201319%_
                                                     _%hd201149201314%_)
                                                    (_%expr2201326%_
                                                     _%hd201151201321%_)
                                                    (_%body201328%_
                                                     _%tl201169201382%_))
                                                (_%K201136201262%_
                                                 _%body201328%_
                                                 _%expr2201326%_
                                                 _%id2201319%_
                                                 _%expr1201292%_
                                                 _%id1201285%_))
                                              (_%else201117201192%_))
                                          (_%else201117201192%_))
                                      (_%else201117201192%_)))
                                (_%else201117201192%_)))
                          (_%else201117201192%_)))
                    (_%else201117201192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201117201192%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd201166201375%_
                                                           'let*))
                                                  (if (pair? _%tl201167201377%_)
                                                      (let ((_%tl201129201245%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl201167201377%_)))
                    (_%hd201128201243%_
                     (let () (declare (not safe)) (##car _%tl201167201377%_))))
                (if (null? _%tl201165201372%_)
                    (let ((_%id1201224%_ _%hd201172201356%_)
                          (_%expr1201231%_ _%hd201174201363%_)
                          (_%bind201248%_ _%hd201128201243%_)
                          (_%body201250%_ _%tl201129201245%_))
                      (_%K201119201201%_
                       _%body201250%_
                       _%bind201248%_
                       _%expr1201231%_
                       _%id1201224%_))
                    (_%else201117201192%_)))
              (_%else201117201192%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201117201192%_))))
                                        (_%else201117201192%_)))
                                  (_%else201117201192%_))
                              (_%else201117201192%_))
                          (_%else201117201192%_)))
                    (_%else201117201192%_)))
              (_%else201117201192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else201117201192%_))))
                                      (_%else201117201192%_))
                                  (_%else201117201192%_)))
                            (_%else201117201192%_))))))
                 (_%generate-values200810%_
                  (lambda (_%hd200924%_ _%body200925%_)
                    (let _%lp200927%_ ((_%rest200929%_ _%hd200924%_)
                                       (_%bind200930%_ '())
                                       (_%check200931%_ '())
                                       (_%post200932%_ '()))
                      (let* ((_%__stx204977204978%_ _%rest200929%_)
                             (_%g200935200946%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx204977204978%_)))))
                        (let ((_%__kont204979204980%_
                               (lambda (_%g200937200973%_ _%g200938200974%_)
                                 (let* ((_%__stx204933204934%_
                                         _%g200938200974%_)
                                        (_%g200989201014%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx204933204934%_)))))
                                   (let ((_%__kont204935204936%_
                                          (lambda (_%g200991201087%_
                                                   _%g200992201088%_)
                                            (let ((_%eid201102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g200992201088%_)))
                                                  (_%expr201103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200803%_
                                                      _%g200991201087%_))))
                                              (_%lp200927%_
                                               _%g200937200973%_
                                               (cons (cons _%eid201102%_
                                                           (cons _%expr201103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200930%_)
                                               _%check200931%_
                                               _%post200932%_))))
                                         (_%__kont204937204938%_
                                          (lambda (_%g201002201035%_
                                                   _%g201003201036%_)
                                            (let* ((_%vals201049%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201051%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201049%_
                                                     _%g201003201036%_
                                                     _%g201002201035%_))
                                                   (_%refs201053%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201049%_
                                                     _%g201003201036%_))
                                                   (_%expr201055%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200803%_
                                                       _%g201002201035%_))))
                                              (_%lp200927%_
                                               _%g200937200973%_
                                               (cons (cons _%vals201049%_
                                                           (cons _%expr201055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200930%_)
                                               (cons _%check-values201051%_
                                                     _%check200931%_)
                                               (cons _%refs201053%_
                                                     _%post200932%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx204933204934%_))
                                         (let ((_%e200993201063%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx204933204934%_))))
                                           (let ((_%tl200995201068%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200993201063%_)))
                                                 (_%hd200994201066%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200993201063%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd200994201066%_))
                                                 (let ((_%e200996201071%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd200994201066%_))))
                                                   (let ((_%tl200998201076%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200996201071%_)))
                                                         (_%hd200997201074%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200996201071%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200998201076%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200995201068%_))
                     (let ((_%e200999201079%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200995201068%_))))
                       (let ((_%tl201001201084%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200999201079%_)))
                             (_%hd201000201082%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200999201079%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201001201084%_))
                             (_%__kont204935204936%_
                              _%hd201000201082%_
                              _%hd200997201074%_)
                             (let ()
                               (declare (not safe))
                               (_%g200989201014%_)))))
                     (let () (declare (not safe)) (_%g200989201014%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl200995201068%_))
                     (let ((_%e201007201027%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200995201068%_))))
                       (let ((_%tl201009201032%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201007201027%_)))
                             (_%hd201008201030%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201007201027%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201009201032%_))
                             (_%__kont204937204938%_
                              _%hd201008201030%_
                              _%hd200994201066%_)
                             (let ()
                               (declare (not safe))
                               (_%g200989201014%_)))))
                     (let () (declare (not safe)) (_%g200989201014%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl200995201068%_))
                                                     (let ((_%e201007201027%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl200995201068%_))))
                                                       (let ((_%tl201009201032%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201007201027%_)))
                     (_%hd201008201030%_
                      (let () (declare (not safe)) (##car _%e201007201027%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201009201032%_))
                     (_%__kont204937204938%_
                      _%hd201008201030%_
                      _%hd200994201066%_)
                     (let () (declare (not safe)) (_%g200989201014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200989201014%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g200989201014%_)))))))
                              (_%__kont204981204982%_
                               (lambda ()
                                 (let* ((_%body200953%_
                                         (if _%compiled-body?200805%_
                                             _%body200925%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200803%_
                                                _%body200925%_))))
                                        (_%body200955%_
                                         (_%generate-values-post200811%_
                                          _%post200932%_
                                          _%body200953%_))
                                        (_%body200957%_
                                         (_%generate-values-check200812%_
                                          _%check200931%_
                                          _%body200955%_)))
                                   (cons 'let
                                         (cons (reverse _%bind200930%_)
                                               (cons _%body200957%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204977204978%_))
                              (let ((_%e200939200965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204977204978%_))))
                                (let ((_%tl200941200970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200939200965%_)))
                                      (_%hd200940200968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200939200965%_))))
                                  (_%__kont204979204980%_
                                   _%tl200941200970%_
                                   _%hd200940200968%_)))
                              (_%__kont204981204982%_)))))))
                 (_%generate-values-post200811%_
                  (lambda (_%post200883%_ _%body200884%_)
                    (let _%lp200886%_ ((_%rest200888%_ _%post200883%_)
                                       (_%body200889%_ _%body200884%_))
                      (let* ((_%rest200890200898%_ _%rest200888%_)
                             (_%else200892200906%_ (lambda () _%body200889%_))
                             (_%K200894200912%_
                              (lambda (_%rest200909%_ _%bind200910%_)
                                (_%lp200886%_
                                 _%rest200909%_
                                 (cons 'let
                                       (cons _%bind200910%_
                                             (cons _%body200889%_ '())))))))
                        (if (pair? _%rest200890200898%_)
                            (let ((_%hd200895200915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200890200898%_)))
                                  (_%tl200896200917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200890200898%_))))
                              (let* ((_%bind200920%_ _%hd200895200915%_)
                                     (_%rest200922%_ _%tl200896200917%_))
                                (_%K200894200912%_
                                 _%rest200922%_
                                 _%bind200920%_)))
                            (_%else200892200906%_))))))
                 (_%generate-values-check200812%_
                  (lambda (_%check200880%_ _%body200881%_)
                    (cons 'begin
                          (let ((__tmp205825 (cons _%body200881%_ '()))
                                (__tmp205824 (reverse _%check200880%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp205825 __tmp205824))))))
          (let* ((_%g200814200831%_
                  (lambda (_%g200815200828%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200815200828%_))))
                 (_%g200813200877%_
                  (lambda (_%g200815200834%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200815200834%_))
                        (let ((_%e200818200836%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200815200834%_))))
                          (let ((_%hd200819200839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200818200836%_)))
                                (_%tl200820200841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200818200836%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200820200841%_))
                                (let ((_%e200821200844%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200820200841%_))))
                                  (let ((_%hd200822200847%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200821200844%_)))
                                        (_%tl200823200849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200821200844%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200823200849%_))
                                        (let ((_%e200824200852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200823200849%_))))
                                          (let ((_%hd200825200855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200824200852%_)))
                                                (_%tl200826200857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200824200852%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200826200857%_))
                                                ((lambda (_%g200816200860%_
                                                          _%g200817200861%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200817200861%_)
                                                       (_%generate-simple200807%_
                                                        _%g200817200861%_
                                                        _%g200816200860%_)
                                                       (_%generate-values200810%_
                                                        _%g200817200861%_
                                                        _%g200816200860%_)))
                                                 _%hd200825200855%_
                                                 _%hd200822200847%_)
                                                (_%g200814200831%_
                                                 _%g200815200834%_))))
                                        (_%g200814200831%_
                                         _%g200815200834%_))))
                                (_%g200814200831%_ _%g200815200834%_))))
                        (_%g200814200831%_ _%g200815200834%_)))))
            (_%g200813200877%_ _%stx200804%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self201557%_ _%stx201558%_)
        (let ((_%compiled-body?201560%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self201557%_
           _%stx201558%_
           _%compiled-body?201560%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g205826_
        (let ((_g205827_ (let () (declare (not safe)) (##length _g205826_))))
          (cond ((let () (declare (not safe)) (##fx= _g205827_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g205826_))
                ((let () (declare (not safe)) (##fx= _g205827_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g205826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g205826_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals200697%_ _%hd200698%_)
        (let _%lp200700%_ ((_%rest200702%_ _%hd200698%_)
                           (_%k200703%_ '0)
                           (_%r200704%_ '()))
          (let* ((_%__stx204991204992%_ _%rest200702%_)
                 (_%g200709200726%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx204991204992%_)))))
            (let ((_%__kont204993204994%_
                   (lambda (_%g200711200789%_)
                     (_%lp200700%_
                      _%g200711200789%_
                      (let () (declare (not safe)) (##fx+ _%k200703%_ '1))
                      _%r200704%_)))
                  (_%__kont204995204996%_
                   (lambda (_%g200716200762%_ _%g200717200763%_)
                     (_%lp200700%_
                      _%g200716200762%_
                      (let () (declare (not safe)) (##fx+ _%k200703%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g200717200763%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals200697%_
                                         _%k200703%_
                                         _%g200716200762%_)
                                        '()))
                            _%r200704%_))))
                  (_%__kont204997204998%_
                   (lambda (_%g200721200738%_)
                     (let ((__tmp205828
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g200721200738%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals200697%_
                                               _%k200703%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp205828 _%r200704%_))))
                  (_%__kont204999205000%_ (lambda () (reverse _%r200704%_))))
              (let ((_%g200707200749%_
                     (lambda ()
                       (let ((_%g200721200738%_ _%__stx204991204992%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g200721200738%_))
                             (_%__kont204997204998%_ _%g200721200738%_)
                             (_%__kont204999205000%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx204991204992%_))
                    (let ((_%e200712200778%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx204991204992%_))))
                      (let ((_%tl200714200783%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200712200778%_)))
                            (_%hd200713200781%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200712200778%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd200713200781%_))
                            (let ((_%e200715200786%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200713200781%_))))
                              (if (equal? _%e200715200786%_ '#f)
                                  (_%__kont204993204994%_ _%tl200714200783%_)
                                  (_%__kont204995204996%_
                                   _%tl200714200783%_
                                   _%hd200713200781%_)))
                            (_%__kont204995204996%_
                             _%tl200714200783%_
                             _%hd200713200781%_))))
                    (let () (declare (not safe)) (_%g200707200749%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self200376%_ _%stx200377%_ _%compiled-body?200378%_)
        (letrec ((_%generate-simple200380%_
                  (lambda (_%hd200682%_ _%body200683%_)
                    (gxc#generate-runtime-simple-let
                     _%self200376%_
                     'letrec
                     _%hd200682%_
                     _%body200683%_
                     _%compiled-body?200378%_)))
                 (_%generate-values200381%_
                  (lambda (_%hd200461%_ _%body200462%_)
                    (let _%lp200464%_ ((_%rest200466%_ _%hd200461%_)
                                       (_%bind200467%_ '())
                                       (_%check200468%_ '())
                                       (_%post200469%_ '()))
                      (let* ((_%__stx205065205066%_ _%rest200466%_)
                             (_%g200472200483%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205065205066%_)))))
                        (let ((_%__kont205067205068%_
                               (lambda (_%g200474200510%_ _%g200475200511%_)
                                 (let* ((_%__stx205021205022%_
                                         _%g200475200511%_)
                                        (_%g200526200551%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205021205022%_)))))
                                   (let ((_%__kont205023205024%_
                                          (lambda (_%g200528200658%_
                                                   _%g200529200659%_)
                                            (let ((_%eid200673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g200529200659%_)))
                                                  (_%expr200674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200376%_
                                                      _%g200528200658%_))))
                                              (_%lp200464%_
                                               _%g200474200510%_
                                               (cons (cons _%eid200673%_
                                                           (cons _%expr200674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200467%_)
                                               _%check200468%_
                                               _%post200469%_))))
                                         (_%__kont205025205026%_
                                          (lambda (_%g200539200572%_
                                                   _%g200540200573%_)
                                            (let* ((_%vals200586%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values200588%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals200586%_
                                                     _%g200540200573%_
                                                     _%g200539200572%_))
                                                   (_%refs200590%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals200586%_
                                                     _%g200540200573%_))
                                                   (_%expr200592%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200376%_
                                                       _%g200539200572%_))))
                                              (_%lp200464%_
                                               _%g200474200510%_
                                               (let ((__tmp205830
                                                      (cons (cons _%vals200586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr200592%_ '()))
                    _%bind200467%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp205829
                                                      (map (lambda (_%e200594200596%_)
                                                             (let* ((_%e200594200598200607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e200594200596%_)
                            (_%E200600200611%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e200594200598200607%_
                                        '([eid _])))
                               '#!void))
                            (_%K200601200616%_
                             (lambda (_%eid200614%_)
                               (cons _%eid200614%_ (cons '#!void '())))))
                       (if (pair? _%e200594200598200607%_)
                           (let ((_%hd200602200619%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200594200598200607%_)))
                                 (_%tl200603200621%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200594200598200607%_))))
                             (let ((_%eid200624%_ _%hd200602200619%_))
                               (if (pair? _%tl200603200621%_)
                                   (let ((_%tl200605200626%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl200603200621%_))))
                                     (if (null? _%tl200605200626%_)
                                         (_%K200601200616%_ _%eid200624%_)
                                         (_%E200600200611%_)))
                                   (_%E200600200611%_))))
                           (_%E200600200611%_))))
                   _%refs200590%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp205830
                                                  __tmp205829))
                                               (cons _%check-values200588%_
                                                     _%check200468%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs200590%_
                                                  _%post200469%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205021205022%_))
                                         (let ((_%e200530200634%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205021205022%_))))
                                           (let ((_%tl200532200639%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200530200634%_)))
                                                 (_%hd200531200637%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200530200634%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd200531200637%_))
                                                 (let ((_%e200533200642%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd200531200637%_))))
                                                   (let ((_%tl200535200647%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200533200642%_)))
                                                         (_%hd200534200645%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200533200642%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200535200647%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200532200639%_))
                     (let ((_%e200536200650%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200532200639%_))))
                       (let ((_%tl200538200655%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200536200650%_)))
                             (_%hd200537200653%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200536200650%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200538200655%_))
                             (_%__kont205023205024%_
                              _%hd200537200653%_
                              _%hd200534200645%_)
                             (let ()
                               (declare (not safe))
                               (_%g200526200551%_)))))
                     (let () (declare (not safe)) (_%g200526200551%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl200532200639%_))
                     (let ((_%e200544200564%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200532200639%_))))
                       (let ((_%tl200546200569%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200544200564%_)))
                             (_%hd200545200567%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200544200564%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200546200569%_))
                             (_%__kont205025205026%_
                              _%hd200545200567%_
                              _%hd200531200637%_)
                             (let ()
                               (declare (not safe))
                               (_%g200526200551%_)))))
                     (let () (declare (not safe)) (_%g200526200551%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl200532200639%_))
                                                     (let ((_%e200544200564%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl200532200639%_))))
                                                       (let ((_%tl200546200569%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e200544200564%_)))
                     (_%hd200545200567%_
                      (let () (declare (not safe)) (##car _%e200544200564%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl200546200569%_))
                     (_%__kont205025205026%_
                      _%hd200545200567%_
                      _%hd200531200637%_)
                     (let () (declare (not safe)) (_%g200526200551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200526200551%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g200526200551%_)))))))
                              (_%__kont205069205070%_
                               (lambda ()
                                 (let* ((_%body200490%_
                                         (if _%compiled-body?200378%_
                                             _%body200462%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200376%_
                                                _%body200462%_))))
                                        (_%body200492%_
                                         (_%generate-values-post200383%_
                                          _%post200469%_
                                          _%body200490%_))
                                        (_%body200494%_
                                         (_%generate-values-check200382%_
                                          _%check200468%_
                                          _%body200492%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind200467%_)
                                               (cons _%body200494%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205065205066%_))
                              (let ((_%e200476200502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205065205066%_))))
                                (let ((_%tl200478200507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200476200502%_)))
                                      (_%hd200477200505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200476200502%_))))
                                  (_%__kont205067205068%_
                                   _%tl200478200507%_
                                   _%hd200477200505%_)))
                              (_%__kont205069205070%_)))))))
                 (_%generate-values-check200382%_
                  (lambda (_%check200458%_ _%body200459%_)
                    (cons 'begin
                          (let ((__tmp205832 (cons _%body200459%_ '()))
                                (__tmp205831 (reverse _%check200458%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp205832 __tmp205831)))))
                 (_%generate-values-post200383%_
                  (lambda (_%post200451%_ _%body200452%_)
                    (cons 'begin
                          (let ((__tmp205836 (cons _%body200452%_ '()))
                                (__tmp205833
                                 (let ((__tmp205835
                                        (lambda (_%g200453200455%_)
                                          (cons 'set! _%g200453200455%_)))
                                       (__tmp205834 (reverse _%post200451%_)))
                                   (declare (not safe))
                                   (##map __tmp205835 __tmp205834))))
                            (declare (not safe))
                            (foldr__0 cons __tmp205836 __tmp205833))))))
          (let* ((_%g200385200402%_
                  (lambda (_%g200386200399%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200386200399%_))))
                 (_%g200384200448%_
                  (lambda (_%g200386200405%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200386200405%_))
                        (let ((_%e200389200407%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200386200405%_))))
                          (let ((_%hd200390200410%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200389200407%_)))
                                (_%tl200391200412%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200389200407%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200391200412%_))
                                (let ((_%e200392200415%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200391200412%_))))
                                  (let ((_%hd200393200418%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200392200415%_)))
                                        (_%tl200394200420%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200392200415%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200394200420%_))
                                        (let ((_%e200395200423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200394200420%_))))
                                          (let ((_%hd200396200426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200395200423%_)))
                                                (_%tl200397200428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200395200423%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200397200428%_))
                                                ((lambda (_%g200387200431%_
                                                          _%g200388200432%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200388200432%_)
                                                       (_%generate-simple200380%_
                                                        _%g200388200432%_
                                                        _%g200387200431%_)
                                                       (_%generate-values200381%_
                                                        _%g200388200432%_
                                                        _%g200387200431%_)))
                                                 _%hd200396200426%_
                                                 _%hd200393200418%_)
                                                (_%g200385200402%_
                                                 _%g200386200405%_))))
                                        (_%g200385200402%_
                                         _%g200386200405%_))))
                                (_%g200385200402%_ _%g200386200405%_))))
                        (_%g200385200402%_ _%g200386200405%_)))))
            (_%g200384200448%_ _%stx200377%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self200688%_ _%stx200689%_)
        (let ((_%compiled-body?200691%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self200688%_
           _%stx200689%_
           _%compiled-body?200691%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g205837_
        (let ((_g205838_ (let () (declare (not safe)) (##length _g205837_))))
          (cond ((let () (declare (not safe)) (##fx= _g205838_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g205837_))
                ((let () (declare (not safe)) (##fx= _g205838_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g205837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g205837_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self199957%_ _%stx199958%_)
        (letrec ((_%generate-values199960%_
                  (lambda (_%hd200203%_ _%body200204%_)
                    (let _%lp200206%_ ((_%rest200208%_ _%hd200203%_)
                                       (_%bind200209%_ '()))
                      (let* ((_%rest200210200218%_ _%rest200208%_)
                             (_%else200212200229%_
                              (lambda ()
                                (let ((_%bind200226%_ (reverse _%bind200209%_))
                                      (_%body200227%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self199957%_
                                          _%body200204%_))))
                                  (cons 'letrec*
                                        (cons _%bind200226%_
                                              (cons _%body200227%_ '()))))))
                             (_%K200214200363%_
                              (lambda (_%rest200232%_ _%hd-bind200233%_)
                                (let* ((_%__stx205079205080%_
                                        _%hd-bind200233%_)
                                       (_%g200236200261%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205079205080%_)))))
                                  (let ((_%__kont205081205082%_
                                         (lambda (_%g200238200342%_
                                                  _%g200239200343%_)
                                           (let ((_%eid200357%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g200239200343%_)))
                                                 (_%expr200358%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self199957%_
                                                     _%g200238200342%_))))
                                             (_%lp200206%_
                                              _%rest200232%_
                                              (cons (cons _%eid200357%_
                                                          (cons _%expr200358%_
                                                                '()))
                                                    _%bind200209%_)))))
                                        (_%__kont205083205084%_
                                         (lambda (_%g200249200282%_
                                                  _%g200250200283%_)
                                           (let* ((_%vals200302%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp200304%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values200306%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp200304%_
                                                    _%g200250200283%_
                                                    _%g200249200282%_))
                                                  (_%refs200308%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals200302%_
                                                    _%g200250200283%_))
                                                  (_%expr200310%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self199957%_
                                                      _%g200249200282%_))))
                                             (_%lp200206%_
                                              _%rest200232%_
                                              (let ((__tmp205839
                                                     (cons (cons _%vals200302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp200304%_
                                                       (cons _%expr200310%_
                                                             '()))
                                                 '())
                                           (cons _%check-values200306%_
                                                 (cons _%tmp200304%_ '()))))
                               '()))
                   _%bind200209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp205839
                                                 _%refs200308%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205079205080%_))
                                        (let ((_%e200240200318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205079205080%_))))
                                          (let ((_%tl200242200323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200240200318%_)))
                                                (_%hd200241200321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200240200318%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200241200321%_))
                                                (let ((_%e200243200326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200241200321%_))))
                                                  (let ((_%tl200245200331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200243200326%_)))
                                                        (_%hd200244200329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200243200326%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200245200331%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200242200323%_))
                                                            (let ((_%e200246200334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200242200323%_))))
                      (let ((_%tl200248200339%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200246200334%_)))
                            (_%hd200247200337%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200246200334%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200248200339%_))
                            (_%__kont205081205082%_
                             _%hd200247200337%_
                             _%hd200244200329%_)
                            (let ()
                              (declare (not safe))
                              (_%g200236200261%_)))))
                    (let () (declare (not safe)) (_%g200236200261%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200242200323%_))
                    (let ((_%e200254200274%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200242200323%_))))
                      (let ((_%tl200256200279%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200254200274%_)))
                            (_%hd200255200277%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200254200274%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200256200279%_))
                            (_%__kont205083205084%_
                             _%hd200255200277%_
                             _%hd200241200321%_)
                            (let ()
                              (declare (not safe))
                              (_%g200236200261%_)))))
                    (let () (declare (not safe)) (_%g200236200261%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200242200323%_))
                                                    (let ((_%e200254200274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200242200323%_))))
                                                      (let ((_%tl200256200279%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200254200274%_)))
                    (_%hd200255200277%_
                     (let () (declare (not safe)) (##car _%e200254200274%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200256200279%_))
                    (_%__kont205083205084%_
                     _%hd200255200277%_
                     _%hd200241200321%_)
                    (let () (declare (not safe)) (_%g200236200261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200236200261%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200236200261%_))))))))
                        (if (pair? _%rest200210200218%_)
                            (let ((_%hd200215200366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200210200218%_)))
                                  (_%tl200216200368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200210200218%_))))
                              (let* ((_%hd-bind200371%_ _%hd200215200366%_)
                                     (_%rest200373%_ _%tl200216200368%_))
                                (_%K200214200363%_
                                 _%rest200373%_
                                 _%hd-bind200371%_)))
                            (_%else200212200229%_))))))
                 (_%generate-letrec?199961%_
                  (lambda (_%hd200093%_)
                    (let _%lp200095%_ ((_%rest200097%_ _%hd200093%_))
                      (let* ((_%rest200098200106%_ _%rest200097%_)
                             (_%else200100200114%_ (lambda () '#t))
                             (_%K200102200191%_
                              (lambda (_%rest200117%_ _%hd-bind200118%_)
                                (let* ((_%g200120200137%_
                                        (lambda (_%g200121200134%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g200121200134%_))))
                                       (_%g200119200188%_
                                        (lambda (_%g200121200140%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g200121200140%_))
                                              (let ((_%e200124200142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g200121200140%_))))
                                                (let ((_%hd200125200145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200124200142%_)))
                                                      (_%tl200126200147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200124200142%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd200125200145%_))
                                                      (let ((_%e200127200150%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd200125200145%_))))
                (let ((_%hd200128200153%_
                       (let () (declare (not safe)) (##car _%e200127200150%_)))
                      (_%tl200129200155%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200127200150%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200129200155%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200126200147%_))
                          (let ((_%e200130200158%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200126200147%_))))
                            (let ((_%hd200131200161%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200130200158%_)))
                                  (_%tl200132200163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200130200158%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200132200163%_))
                                  ((lambda (_%g200122200166%_
                                            _%g200123200167%_)
                                     (if (_%is-lambda-expr?199962%_
                                          _%g200122200166%_)
                                         (_%lp200095%_ _%rest200117%_)
                                         '#f))
                                   _%hd200131200161%_
                                   _%hd200128200153%_)
                                  (_%g200120200137%_ _%g200121200140%_))))
                          (_%g200120200137%_ _%g200121200140%_))
                      (_%g200120200137%_ _%g200121200140%_))))
              (_%g200120200137%_ _%g200121200140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200120200137%_
                                               _%g200121200140%_)))))
                                  (_%g200119200188%_ _%hd-bind200118%_)))))
                        (if (pair? _%rest200098200106%_)
                            (let ((_%hd200103200194%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200098200106%_)))
                                  (_%tl200104200196%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200098200106%_))))
                              (let* ((_%hd-bind200199%_ _%hd200103200194%_)
                                     (_%rest200201%_ _%tl200104200196%_))
                                (_%K200102200191%_
                                 _%rest200201%_
                                 _%hd-bind200199%_)))
                            (_%else200100200114%_))))))
                 (_%is-lambda-expr?199962%_
                  (lambda (_%expr200030%_)
                    (let* ((_%__stx205123205124%_ _%expr200030%_)
                           (_%g200033200047%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205123205124%_)))))
                      (let ((_%__kont205125205126%_
                             (lambda (_%g200035200075%_ _%g200036200076%_)
                               '#t))
                            (_%__kont205127205128%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx205123205124%_))
                            (let ((_%e200037200059%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx205123205124%_))))
                              (let ((_%tl200039200064%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200037200059%_)))
                                    (_%hd200038200062%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200037200059%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200038200062%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd200038200062%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200039200064%_))
                                            (let ((_%e200040200067%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200039200064%_))))
                                              (let ((_%tl200042200072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200040200067%_)))
                                                    (_%hd200041200070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200040200067%_))))
                                                (_%__kont205125205126%_
                                                 _%tl200042200072%_
                                                 _%hd200041200070%_)))
                                            (_%__kont205127205128%_))
                                        (_%__kont205127205128%_))
                                    (_%__kont205127205128%_))))
                            (_%__kont205127205128%_)))))))
          (let* ((_%g199964199981%_
                  (lambda (_%g199965199978%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199965199978%_))))
                 (_%g199963200027%_
                  (lambda (_%g199965199984%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199965199984%_))
                        (let ((_%e199968199986%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199965199984%_))))
                          (let ((_%hd199969199989%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199968199986%_)))
                                (_%tl199970199991%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199968199986%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199970199991%_))
                                (let ((_%e199971199994%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199970199991%_))))
                                  (let ((_%hd199972199997%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199971199994%_)))
                                        (_%tl199973199999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199971199994%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199973199999%_))
                                        (let ((_%e199974200002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199973199999%_))))
                                          (let ((_%hd199975200005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199974200002%_)))
                                                (_%tl199976200007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199974200002%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199976200007%_))
                                                ((lambda (_%g199966200010%_
                                                          _%g199967200011%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g199967200011%_)
                                                       (if (_%generate-letrec?199961%_
                                                            _%g199967200011%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self199957%_
                                                            'letrec
                                                            _%g199967200011%_
                                                            _%g199966200010%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self199957%_
                                                            'letrec*
                                                            _%g199967200011%_
                                                            _%g199966200010%_
                                                            '#f))
                                                       (_%generate-values199960%_
                                                        _%g199967200011%_
                                                        _%g199966200010%_)))
                                                 _%hd199975200005%_
                                                 _%hd199972199997%_)
                                                (_%g199964199981%_
                                                 _%g199965199984%_))))
                                        (_%g199964199981%_
                                         _%g199965199984%_))))
                                (_%g199964199981%_ _%g199965199984%_))))
                        (_%g199964199981%_ _%g199965199984%_)))))
            (_%g199963200027%_ _%stx199958%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd199894%_)
        (let _%lp199896%_ ((_%rest199898%_ _%hd199894%_))
          (let* ((_%rest199899199915%_ _%rest199898%_)
                 (_%else199902199923%_ (lambda () '#f)))
            (let ((_%K199905199936%_
                   (lambda (_%rest199934%_) (_%lp199896%_ _%rest199934%_)))
                  (_%K199904199928%_ (lambda () '#t)))
              (let ((_%try-match199901199931%_
                     (lambda ()
                       (if (null? _%rest199899199915%_)
                           (_%K199904199928%_)
                           (_%else199902199923%_)))))
                (if (pair? _%rest199899199915%_)
                    (let ((_%tl199907199941%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199899199915%_)))
                          (_%hd199906199939%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199899199915%_))))
                      (if (pair? _%hd199906199939%_)
                          (let ((_%tl199909199946%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd199906199939%_)))
                                (_%hd199908199944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd199906199939%_))))
                            (if (pair? _%hd199908199944%_)
                                (let ((_%tl199913199949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd199908199944%_))))
                                  (if (null? _%tl199913199949%_)
                                      (if (pair? _%tl199909199946%_)
                                          (let ((_%tl199911199952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199909199946%_))))
                                            (if (null? _%tl199911199952%_)
                                                (let ((_%rest199955%_
                                                       _%tl199907199941%_))
                                                  (_%lp199896%_
                                                   _%rest199955%_))
                                                (_%else199902199923%_)))
                                          (_%else199902199923%_))
                                      (_%else199902199923%_)))
                                (_%else199902199923%_)))
                          (_%else199902199923%_)))
                    (_%try-match199901199931%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self199806%_
               _%form199807%_
               _%hd199808%_
               _%body199809%_
               _%compiled-body?199810%_)
        (letrec ((_%generate1199812%_
                  (lambda (_%bind199851%_)
                    (let* ((_%bind199852199863%_ _%bind199851%_)
                           (_%E199854199866%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind199852199863%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K199855199872%_
                            (lambda (_%expr199869%_ _%id199870%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id199870%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self199806%_
                                             _%expr199869%_))
                                          '())))))
                      (if (pair? _%bind199852199863%_)
                          (let ((_%hd199856199875%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind199852199863%_)))
                                (_%tl199857199877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind199852199863%_))))
                            (if (pair? _%hd199856199875%_)
                                (let ((_%hd199860199880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd199856199875%_)))
                                      (_%tl199861199882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd199856199875%_))))
                                  (let ((_%id199885%_ _%hd199860199880%_))
                                    (if (null? _%tl199861199882%_)
                                        (if (pair? _%tl199857199877%_)
                                            (let ((_%hd199858199887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl199857199877%_)))
                                                  (_%tl199859199889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl199857199877%_))))
                                              (let ((_%expr199892%_
                                                     _%hd199858199887%_))
                                                (if (null? _%tl199859199889%_)
                                                    (_%K199855199872%_
                                                     _%expr199892%_
                                                     _%id199885%_)
                                                    (_%E199854199866%_))))
                                            (_%E199854199866%_))
                                        (_%E199854199866%_))))
                                (_%E199854199866%_)))
                          (_%E199854199866%_))))))
          (let* ((_%bind199814%_ (map _%generate1199812%_ _%hd199808%_))
                 (_%body199816%_
                  (if _%compiled-body?199810%_
                      _%body199809%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self199806%_ _%body199809%_))))
                 (_%body199848%_
                  (let* ((_%body199817199825%_ _%body199816%_)
                         (_%else199819199833%_
                          (lambda () (cons _%body199816%_ '())))
                         (_%K199821199838%_
                          (lambda (_%exprs199836%_) _%exprs199836%_)))
                    (if (pair? _%body199817199825%_)
                        (let ((_%hd199822199841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body199817199825%_)))
                              (_%tl199823199843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body199817199825%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd199822199841%_ 'begin))
                              (let ((_%exprs199846%_ _%tl199823199843%_))
                                (_%K199821199838%_ _%exprs199846%_))
                              (_%else199819199833%_)))
                        (_%else199819199833%_)))))
            (cons _%form199807%_ (cons _%bind199814%_ _%body199848%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self199706%_ _%stx199707%_)
        (letrec ((_%generate1199709%_
                  (lambda (_%datum199761%_)
                    (if (or (null? _%datum199761%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum199761%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum199761%_))
                            (eof-object? _%datum199761%_))
                        _%datum199761%_
                        (if (uninterned-symbol? _%datum199761%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum199761%_
                               '#t))
                            (if (pair? _%datum199761%_)
                                (cons (_%generate1199709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum199761%_)))
                                      (_%generate1199709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum199761%_))))
                                (if (box? _%datum199761%_)
                                    (box (_%generate1199709%_
                                          (unbox _%datum199761%_)))
                                    (if (vector? _%datum199761%_)
                                        (vector-map
                                         _%generate1199709%_
                                         _%datum199761%_)
                                        (if (or (s8vector? _%datum199761%_)
                                                (u8vector? _%datum199761%_)
                                                (s16vector? _%datum199761%_)
                                                (u16vector? _%datum199761%_)
                                                (s32vector? _%datum199761%_)
                                                (u32vector? _%datum199761%_)
                                                (s64vector? _%datum199761%_)
                                                (u64vector? _%datum199761%_)
                                                (f32vector? _%datum199761%_)
                                                (f64vector? _%datum199761%_))
                                            _%datum199761%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx199707%_)))))))))))
          (let* ((_%g199711199724%_
                  (lambda (_%g199712199721%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199712199721%_))))
                 (_%g199710199758%_
                  (lambda (_%g199712199727%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199712199727%_))
                        (let ((_%e199714199729%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199712199727%_))))
                          (let ((_%hd199715199732%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199714199729%_)))
                                (_%tl199716199734%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199714199729%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199716199734%_))
                                (let ((_%e199717199737%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199716199734%_))))
                                  (let ((_%hd199718199740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199717199737%_)))
                                        (_%tl199719199742%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199717199737%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199719199742%_))
                                        ((lambda (_%g199713199745%_)
                                           (cons 'quote
                                                 (cons (_%generate1199709%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g199713199745%_)))
                                                       '())))
                                         _%hd199718199740%_)
                                        (_%g199711199724%_
                                         _%g199712199727%_))))
                                (_%g199711199724%_ _%g199712199727%_))))
                        (_%g199711199724%_ _%g199712199727%_)))))
            (_%g199710199758%_ _%stx199707%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self199153%_ _%stx199154%_)
        (letrec ((_%compile-call199156%_
                  (lambda (_%rator199443%_ _%rands199444%_)
                    (let ((_%rator199450%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199153%_
                              _%rator199443%_)))
                          (_%rands199451%_
                           (map (lambda (_%g199445199447%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self199153%_
                                     _%g199445199447%_)))
                                _%rands199444%_)))
                      (let* ((_%__stx205170205171%_ _%rator199450%_)
                             (_%g199454199506%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205170205171%_)))))
                        (let ((_%__kont205172205173%_
                               (lambda (_%g199456199626%_
                                        _%g199457199627%_
                                        _%g199458199628%_
                                        _%g199459199629%_)
                                 (if (let ((__tmp205842
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands199451%_)))
                                           (__tmp205840
                                            (length (let ((__tmp205841
                                                           (lambda (_%g199665199668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g199666199670%_)
                     (cons _%g199665199668%_ _%g199666199670%_))))
              (declare (not safe))
              (foldr__0 __tmp205841 '() _%g199458199628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp205842 __tmp205840))
                                     (let* ((_%id199673%_ _%g199459199629%_)
                                            (_%args199682%_
                                             (let ((__tmp205843
                                                    (lambda (_%g199674199677%_
                                                             _%g199675199679%_)
                                                      (cons _%g199674199677%_
                                                            _%g199675199679%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205843
                                                '()
                                                _%g199458199628%_)))
                                            (_%body199691%_
                                             (let ((__tmp205844
                                                    (lambda (_%g199683199686%_
                                                             _%g199684199688%_)
                                                      (cons _%g199683199686%_
                                                            _%g199684199688%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205844
                                                '()
                                                _%g199457199627%_)))
                                            (_%init199693%_
                                             (map list
                                                  _%args199682%_
                                                  _%rands199451%_)))
                                       (cons 'let
                                             (cons _%id199673%_
                                                   (cons _%init199693%_
                                                         _%body199691%_))))
                                     (let ((__tmp205845
                                            (let ((__tmp205846
                                                   (lambda (_%g199695199698%_
                                                            _%g199696199700%_)
                                                     (cons _%g199695199698%_
                                                           _%g199696199700%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205846
                                               '()
                                               _%g199458199628%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx199154%_
                                        __tmp205845
                                        _%rands199451%_)))))
                              (_%__kont205178205179%_
                               (lambda ()
                                 (cons _%rator199450%_ _%rands199451%_))))
                          (let ((_%__match205237205238%_
                                 (lambda (_%e199460199518%_
                                          _%hd199461199521%_
                                          _%tl199462199523%_
                                          _%e199463199526%_
                                          _%hd199464199529%_
                                          _%tl199465199531%_
                                          _%e199466199534%_
                                          _%hd199467199537%_
                                          _%tl199468199539%_
                                          _%e199469199542%_
                                          _%hd199470199545%_
                                          _%tl199471199547%_
                                          _%e199472199550%_
                                          _%hd199473199553%_
                                          _%tl199474199555%_
                                          _%e199475199558%_
                                          _%hd199476199561%_
                                          _%tl199477199563%_
                                          _%e199478199566%_
                                          _%hd199479199569%_
                                          _%tl199480199571%_
                                          _%__splice205174205175%_
                                          _%target199481199574%_
                                          _%tl199483199576%_)
                                   (letrec ((_%loop199484199579%_
                                             (lambda (_%hd199482199582%_
                                                      _%arg199488199584%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd199482199582%_))
                                                   (let ((_%e199485199586%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd199482199582%_))))
                                                     (let ((_%lp-tl199487199591%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199485199586%_)))
                                                           (_%lp-hd199486199589%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199485199586%_))))
                                                       (_%loop199484199579%_
                                                        _%lp-tl199487199591%_
                                                        (cons _%lp-hd199486199589%_
                                                              _%arg199488199584%_))))
                                                   (let ((_%arg199489199594%_
                                                          (reverse _%arg199488199584%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl199480199571%_))
                                                         (let ((_%__splice205176205177%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl199480199571%_
                           '0))))
                   (let ((_%tl199492199598%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205176205177%_ '1)))
                         (_%target199490199596%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205176205177%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl199492199598%_))
                         (letrec ((_%loop199493199601%_
                                   (lambda (_%hd199491199604%_
                                            _%body199497199606%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd199491199604%_))
                                         (let ((_%e199494199608%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd199491199604%_))))
                                           (let ((_%lp-tl199496199613%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199494199608%_)))
                                                 (_%lp-hd199495199611%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199494199608%_))))
                                             (_%loop199493199601%_
                                              _%lp-tl199496199613%_
                                              (cons _%lp-hd199495199611%_
                                                    _%body199497199606%_))))
                                         (let ((_%body199498199616%_
                                                (reverse _%body199497199606%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199474199555%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199468199539%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199465199531%_))
                                                       (let ((_%e199499199618%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl199465199531%_))))
                 (let ((_%tl199501199623%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199499199618%_)))
                       (_%hd199500199621%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199499199618%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199501199623%_))
                       (let ((_%g199456199626%_ _%hd199500199621%_)
                             (_%g199457199627%_ _%body199498199616%_)
                             (_%g199458199628%_ _%arg199489199594%_)
                             (_%g199459199629%_ _%hd199470199545%_))
                         (if (eq? _%g199459199629%_ _%g199456199626%_)
                             (_%__kont205172205173%_
                              _%g199456199626%_
                              _%g199457199627%_
                              _%g199458199628%_
                              _%g199459199629%_)
                             (_%__kont205178205179%_)))
                       (_%__kont205178205179%_))))
               (_%__kont205178205179%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205178205179%_))
                                               (_%__kont205178205179%_)))))))
                           (_%loop199493199601%_ _%target199490199596%_ '()))
                         (_%__kont205178205179%_))))
                 (_%__kont205178205179%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop199484199579%_
                                      _%target199481199574%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205170205171%_))
                                (let ((_%e199460199518%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205170205171%_))))
                                  (let ((_%tl199462199523%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199460199518%_)))
                                        (_%hd199461199521%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199460199518%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199461199521%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd199461199521%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199462199523%_))
                                                (let ((_%e199463199526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199462199523%_))))
                                                  (let ((_%tl199465199531%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199463199526%_)))
                                                        (_%hd199464199529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199463199526%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199464199529%_))
                                                        (let ((_%e199466199534%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199464199529%_))))
                  (let ((_%tl199468199539%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199466199534%_)))
                        (_%hd199467199537%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199466199534%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199467199537%_))
                        (let ((_%e199469199542%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199467199537%_))))
                          (let ((_%tl199471199547%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199469199542%_)))
                                (_%hd199470199545%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199469199542%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199471199547%_))
                                (let ((_%e199472199550%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199471199547%_))))
                                  (let ((_%tl199474199555%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199472199550%_)))
                                        (_%hd199473199553%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199472199550%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199473199553%_))
                                        (let ((_%e199475199558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199473199553%_))))
                                          (let ((_%tl199477199563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199475199558%_)))
                                                (_%hd199476199561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199475199558%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199476199561%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd199476199561%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199477199563%_))
                                                        (let ((_%e199478199566%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199477199563%_))))
                  (let ((_%tl199480199571%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199478199566%_)))
                        (_%hd199479199569%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199478199566%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd199479199569%_))
                        (let ((_%__splice205174205175%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd199479199569%_
                                  '0))))
                          (let ((_%tl199483199576%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice205174205175%_ '1)))
                                (_%target199481199574%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice205174205175%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199483199576%_))
                                (_%__match205237205238%_
                                 _%e199460199518%_
                                 _%hd199461199521%_
                                 _%tl199462199523%_
                                 _%e199463199526%_
                                 _%hd199464199529%_
                                 _%tl199465199531%_
                                 _%e199466199534%_
                                 _%hd199467199537%_
                                 _%tl199468199539%_
                                 _%e199469199542%_
                                 _%hd199470199545%_
                                 _%tl199471199547%_
                                 _%e199472199550%_
                                 _%hd199473199553%_
                                 _%tl199474199555%_
                                 _%e199475199558%_
                                 _%hd199476199561%_
                                 _%tl199477199563%_
                                 _%e199478199566%_
                                 _%hd199479199569%_
                                 _%tl199480199571%_
                                 _%__splice205174205175%_
                                 _%target199481199574%_
                                 _%tl199483199576%_)
                                (_%__kont205178205179%_))))
                        (_%__kont205178205179%_))))
                (_%__kont205178205179%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205178205179%_))
                                                (_%__kont205178205179%_))))
                                        (_%__kont205178205179%_))))
                                (_%__kont205178205179%_))))
                        (_%__kont205178205179%_))))
                (_%__kont205178205179%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205178205179%_))
                                            (_%__kont205178205179%_))
                                        (_%__kont205178205179%_))))
                                (_%__kont205178205179%_)))))))))
          (let* ((_%g199158199181%_
                  (lambda (_%g199159199178%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199159199178%_))))
                 (_%g199157199440%_
                  (lambda (_%g199159199184%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199159199184%_))
                        (let ((_%e199162199186%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199159199184%_))))
                          (let ((_%hd199163199189%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199162199186%_)))
                                (_%tl199164199191%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199162199186%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199164199191%_))
                                (let ((_%e199165199194%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199164199191%_))))
                                  (let ((_%hd199166199197%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199165199194%_)))
                                        (_%tl199167199199%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199165199194%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl199167199199%_))
                                        (let ((_g205847_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl199167199199%_
                                                  '0))))
                                          (begin
                                            (let ((_g205848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g205847_)
                                                         (##values-length
                                                          _g205847_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g205848_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g205848_)))
                                            (let ((_%target199168199202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g205847_
                                                      0)))
                                                  (_%tl199170199204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g205847_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199170199204%_))
                                                  (letrec ((_%loop199171199207%_
                                                            (lambda (_%hd199169199210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand199175199212%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199169199210%_))
                          (let ((_%e199172199214%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199169199210%_))))
                            (let ((_%lp-hd199173199217%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199172199214%_)))
                                  (_%lp-tl199174199219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199172199214%_))))
                              (_%loop199171199207%_
                               _%lp-tl199174199219%_
                               (cons _%lp-hd199173199217%_
                                     _%rand199175199212%_))))
                          (let ((_%rand199176199222%_
                                 (reverse _%rand199175199212%_)))
                            ((lambda (_%g199160199224%_ _%g199161199225%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call199156%_
                                    _%g199161199225%_
                                    (let ((__tmp205849
                                           (lambda (_%g199242199245%_
                                                    _%g199243199247%_)
                                             (cons _%g199242199245%_
                                                   _%g199243199247%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp205849
                                       '()
                                       _%g199160199224%_)))
                                   (let* ((_%__stx205286205287%_
                                           _%g199161199225%_)
                                          (_%g199251199263%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx205286205287%_)))))
                                     (let ((_%__kont205288205289%_
                                            (lambda ()
                                              (let ((_%f199300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self199153%_
                                                        _%g199161199225%_))))
                                                (if (and (let ((__tmp205850
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f199300%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp205850))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f199300%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp199302%_ ((_%rest199305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp205852
                                                (lambda (_%g199422199425%_
                                                         _%g199423199427%_)
                                                  (cons _%g199422199425%_
                                                        _%g199423199427%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp205852
                                            '()
                                            _%g199160199224%_))))
                               (_%bind199307%_ '())
                               (_%args199308%_ '()))
              (let* ((_%rest199309199317%_ _%rest199305%_)
                     (_%else199311199325%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind199307%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f199300%_
                                                      _%args199308%_)
                                                '()))))))
                     (_%K199313199411%_
                      (lambda (_%rest199328%_ _%e199329%_)
                        (let* ((_%__stx205240205241%_ _%e199329%_)
                               (_%g199334199352%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx205240205241%_)))))
                          (let ((_%__kont205242205243%_
                                 (lambda ()
                                   (_%lp199302%_
                                    _%rest199328%_
                                    _%bind199307%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199329%_))
                                          _%args199308%_))))
                                (_%__kont205244205245%_
                                 (lambda ()
                                   (_%lp199302%_
                                    _%rest199328%_
                                    _%bind199307%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199329%_))
                                          _%args199308%_))))
                                (_%__kont205246205247%_
                                 (lambda ()
                                   (let ((_%tmp199359%_
                                          (let ((__tmp205851
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp205851))))
                                     (_%lp199302%_
                                      _%rest199328%_
                                      (cons (cons _%tmp199359%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199329%_))
                                                        '()))
                                            _%bind199307%_)
                                      (cons _%tmp199359%_ _%args199308%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205240205241%_))
                                (let ((_%e199336199390%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205240205241%_))))
                                  (let ((_%tl199338199395%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199336199390%_)))
                                        (_%hd199337199393%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199336199390%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199337199393%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd199337199393%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199338199395%_))
                                                (let ((_%e199339199398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199338199395%_))))
                                                  (let ((_%tl199341199403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199339199398%_)))
                                                        (_%hd199340199401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199339199398%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199341199403%_))
                                                        (_%__kont205242205243%_)
                                                        (_%__kont205246205247%_))))
                                                (_%__kont205246205247%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd199337199393%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199338199395%_))
                                                    (let ((_%e199345199375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199338199395%_))))
                                                      (let ((_%tl199347199380%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199345199375%_)))
                    (_%hd199346199378%_
                     (let () (declare (not safe)) (##car _%e199345199375%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199347199380%_))
                    (_%__kont205244205245%_)
                    (_%__kont205246205247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205246205247%_))
                                                (_%__kont205246205247%_)))
                                        (_%__kont205246205247%_))))
                                (_%__kont205246205247%_)))))))
                (if (pair? _%rest199309199317%_)
                    (let ((_%hd199314199414%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199309199317%_)))
                          (_%tl199315199416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199309199317%_))))
                      (let* ((_%e199419%_ _%hd199314199414%_)
                             (_%rest199421%_ _%tl199315199416%_))
                        (_%K199313199411%_ _%rest199421%_ _%e199419%_)))
                    (_%else199311199325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call199156%_
                                                     _%g199161199225%_
                                                     (let ((__tmp205853
                                                            (lambda (_%g199429199432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g199430199434%_)
                      (cons _%g199429199432%_ _%g199430199434%_))))
               (declare (not safe))
               (foldr__0 __tmp205853 '() _%g199160199224%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont205290205291%_
                                            (lambda ()
                                              (_%compile-call199156%_
                                               _%g199161199225%_
                                               (let ((__tmp205854
                                                      (lambda (_%g199269199272%_
                                                               _%g199270199274%_)
                                                        (cons _%g199269199272%_
                                                              _%g199270199274%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp205854
                                                  '()
                                                  _%g199160199224%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx205286205287%_))
                                           (let ((_%e199253199282%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx205286205287%_))))
                                             (let ((_%tl199255199287%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199253199282%_)))
                                                   (_%hd199254199285%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199253199282%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd199254199285%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd199254199285%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199255199287%_))
                                                           (let ((_%e199256199290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199255199287%_))))
                     (let ((_%tl199258199295%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199256199290%_)))
                           (_%hd199257199293%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199256199290%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199258199295%_))
                           (_%__kont205288205289%_)
                           (_%__kont205290205291%_))))
                   (_%__kont205290205291%_))
               (_%__kont205290205291%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205290205291%_))))
                                           (_%__kont205290205291%_))))))
                             _%rand199176199222%_
                             _%hd199166199197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop199171199207%_
                                                     _%target199168199202%_
                                                     '()))
                                                  (_%g199158199181%_
                                                   _%g199159199184%_)))))
                                        (_%g199158199181%_
                                         _%g199159199184%_))))
                                (_%g199158199181%_ _%g199159199184%_))))
                        (_%g199158199181%_ _%g199159199184%_)))))
            (_%g199157199440%_ _%stx199154%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self198898%_ _%stx198899%_)
        (let* ((_%__stx205358205359%_ _%stx198899%_)
               (_%g198902198931%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205358205359%_)))))
          (let ((_%__kont205360205361%_
                 (lambda (_%g198904198997%_ _%g198905198998%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self198898%_
                        _%stx198899%_)
                       (let ((_%f199020%_
                              (let ((__tmp205855
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g198905198998%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self198898%_
                                 __tmp205855))))
                         (let _%lp199022%_ ((_%rest199025%_
                                             (reverse (let ((__tmp205857
                                                             (lambda (_%g199142199145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g199143199147%_)
                       (cons _%g199142199145%_ _%g199143199147%_))))
                (declare (not safe))
                (foldr__0 __tmp205857 '() _%g198904198997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind199027%_ '())
                                            (_%args199028%_ '()))
                           (let* ((_%rest199029199037%_ _%rest199025%_)
                                  (_%else199031199045%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind199027%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f199020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args199028%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K199033199131%_
                                   (lambda (_%rest199048%_ _%e199049%_)
                                     (let* ((_%__stx205312205313%_ _%e199049%_)
                                            (_%g199054199072%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx205312205313%_)))))
                                       (let ((_%__kont205314205315%_
                                              (lambda ()
                                                (_%lp199022%_
                                                 _%rest199048%_
                                                 _%bind199027%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199049%_))
                                                       _%args199028%_))))
                                             (_%__kont205316205317%_
                                              (lambda ()
                                                (_%lp199022%_
                                                 _%rest199048%_
                                                 _%bind199027%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199049%_))
                                                       _%args199028%_))))
                                             (_%__kont205318205319%_
                                              (lambda ()
                                                (let ((_%tmp199079%_
                                                       (let ((__tmp205856
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp205856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp199022%_
                                                   _%rest199048%_
                                                   (cons (cons _%tmp199079%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e199049%_))
                             '()))
                 _%bind199027%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp199079%_
                                                         _%args199028%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx205312205313%_))
                                             (let ((_%e199056199110%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx205312205313%_))))
                                               (let ((_%tl199058199115%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199056199110%_)))
                                                     (_%hd199057199113%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199056199110%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd199057199113%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd199057199113%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199058199115%_))
                     (let ((_%e199059199118%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199058199115%_))))
                       (let ((_%tl199061199123%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199059199118%_)))
                             (_%hd199060199121%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199059199118%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199061199123%_))
                             (_%__kont205314205315%_)
                             (_%__kont205318205319%_))))
                     (_%__kont205318205319%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd199057199113%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199058199115%_))
                         (let ((_%e199065199095%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl199058199115%_))))
                           (let ((_%tl199067199100%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199065199095%_)))
                                 (_%hd199066199098%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199065199095%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199067199100%_))
                                 (_%__kont205316205317%_)
                                 (_%__kont205318205319%_))))
                         (_%__kont205318205319%_))
                     (_%__kont205318205319%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205318205319%_))))
                                             (_%__kont205318205319%_)))))))
                             (if (pair? _%rest199029199037%_)
                                 (let ((_%hd199034199134%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199029199037%_)))
                                       (_%tl199035199136%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199029199037%_))))
                                   (let* ((_%e199139%_ _%hd199034199134%_)
                                          (_%rest199141%_ _%tl199035199136%_))
                                     (_%K199033199131%_
                                      _%rest199141%_
                                      _%e199139%_)))
                                 (_%else199031199045%_))))))))
                (_%__kont205364205365%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self198898%_ _%stx198899%_))))
            (let ((_%__match205403205404%_
                   (lambda (_%e198906198943%_
                            _%hd198907198946%_
                            _%tl198908198948%_
                            _%e198909198951%_
                            _%hd198910198954%_
                            _%tl198911198956%_
                            _%e198912198959%_
                            _%hd198913198962%_
                            _%tl198914198964%_
                            _%e198915198967%_
                            _%hd198916198970%_
                            _%tl198917198972%_
                            _%__splice205362205363%_
                            _%target198918198975%_
                            _%tl198920198977%_)
                     (letrec ((_%loop198921198980%_
                               (lambda (_%hd198919198983%_
                                        _%rand198925198985%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198919198983%_))
                                     (let ((_%e198922198987%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd198919198983%_))))
                                       (let ((_%lp-tl198924198992%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198922198987%_)))
                                             (_%lp-hd198923198990%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198922198987%_))))
                                         (_%loop198921198980%_
                                          _%lp-tl198924198992%_
                                          (cons _%lp-hd198923198990%_
                                                _%rand198925198985%_))))
                                     (let ((_%rand198926198995%_
                                            (reverse _%rand198925198985%_)))
                                       (_%__kont205360205361%_
                                        _%rand198926198995%_
                                        _%hd198916198970%_))))))
                       (_%loop198921198980%_ _%target198918198975%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205358205359%_))
                  (let ((_%e198906198943%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205358205359%_))))
                    (let ((_%tl198908198948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198906198943%_)))
                          (_%hd198907198946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198906198943%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198908198948%_))
                          (let ((_%e198909198951%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198908198948%_))))
                            (let ((_%tl198911198956%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198909198951%_)))
                                  (_%hd198910198954%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198909198951%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd198910198954%_))
                                  (let ((_%e198912198959%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198910198954%_))))
                                    (let ((_%tl198914198964%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198912198959%_)))
                                          (_%hd198913198962%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198912198959%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd198913198962%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd198913198962%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198914198964%_))
                                                  (let ((_%e198915198967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198914198964%_))))
                                                    (let ((_%tl198917198972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198915198967%_)))
                                                          (_%hd198916198970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198915198967%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198917198972%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl198911198956%_))
                      (let ((_%__splice205362205363%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl198911198956%_
                                '0))))
                        (let ((_%tl198920198977%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205362205363%_ '1)))
                              (_%target198918198975%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205362205363%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198920198977%_))
                              (_%__match205403205404%_
                               _%e198906198943%_
                               _%hd198907198946%_
                               _%tl198908198948%_
                               _%e198909198951%_
                               _%hd198910198954%_
                               _%tl198911198956%_
                               _%e198912198959%_
                               _%hd198913198962%_
                               _%tl198914198964%_
                               _%e198915198967%_
                               _%hd198916198970%_
                               _%tl198917198972%_
                               _%__splice205362205363%_
                               _%target198918198975%_
                               _%tl198920198977%_)
                              (_%__kont205364205365%_))))
                      (_%__kont205364205365%_))
                  (_%__kont205364205365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205364205365%_))
                                              (_%__kont205364205365%_))
                                          (_%__kont205364205365%_))))
                                  (_%__kont205364205365%_))))
                          (_%__kont205364205365%_))))
                  (_%__kont205364205365%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self198710%_ _%stx198711%_)
        (letrec ((_%simplify198713%_
                  (lambda (_%code198798%_)
                    (let* ((_%code198799198817%_ _%code198798%_)
                           (_%else198801198825%_ (lambda () _%code198798%_))
                           (_%K198803198861%_
                            (lambda (_%expr198828%_ _%test198829%_)
                              (let* ((_%expr198830198838%_ _%expr198828%_)
                                     (_%else198832198846%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test198829%_
                                                    (cons _%expr198828%_
                                                          '())))))
                                     (_%K198834198851%_
                                      (lambda (_%exprs198849%_)
                                        (cons 'and
                                              (cons _%test198829%_
                                                    _%exprs198849%_)))))
                                (if (pair? _%expr198830198838%_)
                                    (let ((_%hd198835198854%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr198830198838%_)))
                                          (_%tl198836198856%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr198830198838%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd198835198854%_ 'and))
                                          (let ((_%exprs198859%_
                                                 _%tl198836198856%_))
                                            (_%K198834198851%_
                                             _%exprs198859%_))
                                          (_%else198832198846%_)))
                                    (_%else198832198846%_))))))
                      (if (pair? _%code198799198817%_)
                          (let ((_%hd198804198864%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code198799198817%_)))
                                (_%tl198805198866%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code198799198817%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd198804198864%_ 'if))
                                (if (pair? _%tl198805198866%_)
                                    (let ((_%hd198806198869%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl198805198866%_)))
                                          (_%tl198807198871%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl198805198866%_))))
                                      (let ((_%test198874%_
                                             _%hd198806198869%_))
                                        (if (pair? _%tl198807198871%_)
                                            (let ((_%hd198808198876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl198807198871%_)))
                                                  (_%tl198809198878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl198807198871%_))))
                                              (let ((_%expr198881%_
                                                     _%hd198808198876%_))
                                                (if (pair? _%tl198809198878%_)
                                                    (let ((_%hd198810198883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl198809198878%_)))
                                                          (_%tl198811198885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl198809198878%_))))
                                                      (if (pair? _%hd198810198883%_)
                                                          (let ((_%hd198812198888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd198810198883%_)))
                        (_%tl198813198890%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd198810198883%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd198812198888%_ 'quote))
                        (if (pair? _%tl198813198890%_)
                            (let ((_%hd198814198893%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl198813198890%_)))
                                  (_%tl198815198895%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl198813198890%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd198814198893%_ '#f))
                                  (if (null? _%tl198815198895%_)
                                      (if (null? _%tl198811198885%_)
                                          (_%K198803198861%_
                                           _%expr198881%_
                                           _%test198874%_)
                                          (_%else198801198825%_))
                                      (_%else198801198825%_))
                                  (_%else198801198825%_)))
                            (_%else198801198825%_))
                        (_%else198801198825%_)))
                  (_%else198801198825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198801198825%_))))
                                            (_%else198801198825%_))))
                                    (_%else198801198825%_))
                                (_%else198801198825%_)))
                          (_%else198801198825%_))))))
          (let* ((_%g198715198736%_
                  (lambda (_%g198716198733%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198716198733%_))))
                 (_%g198714198795%_
                  (lambda (_%g198716198739%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198716198739%_))
                        (let ((_%e198720198741%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198716198739%_))))
                          (let ((_%hd198721198744%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198720198741%_)))
                                (_%tl198722198746%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198720198741%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198722198746%_))
                                (let ((_%e198723198749%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198722198746%_))))
                                  (let ((_%hd198724198752%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198723198749%_)))
                                        (_%tl198725198754%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198723198749%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198725198754%_))
                                        (let ((_%e198726198757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198725198754%_))))
                                          (let ((_%hd198727198760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198726198757%_)))
                                                (_%tl198728198762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198726198757%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198728198762%_))
                                                (let ((_%e198729198765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198728198762%_))))
                                                  (let ((_%hd198730198768%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198729198765%_)))
                                                        (_%tl198731198770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198729198765%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198731198770%_))
                                                        ((lambda (_%g198717198773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g198718198774%_
                          _%g198719198775%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify198713%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self198710%_
                                       _%g198719198775%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self198710%_
                                             _%g198718198774%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self198710%_
                                                   _%g198717198773%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp205858
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self198710%_
                                               _%g198719198775%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp205858
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198710%_
                                            _%g198718198774%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198710%_
                                                  _%g198717198773%_))
                                               '()))))))
                 _%hd198730198768%_
                 _%hd198727198760%_
                 _%hd198724198752%_)
                (_%g198715198736%_ _%g198716198739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198715198736%_
                                                 _%g198716198739%_))))
                                        (_%g198715198736%_
                                         _%g198716198739%_))))
                                (_%g198715198736%_ _%g198716198739%_))))
                        (_%g198715198736%_ _%g198716198739%_)))))
            (_%g198714198795%_ _%stx198711%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self198658%_ _%stx198659%_)
        (let* ((_%g198661198674%_
                (lambda (_%g198662198671%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198662198671%_))))
               (_%g198660198707%_
                (lambda (_%g198662198677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198662198677%_))
                      (let ((_%e198664198679%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198662198677%_))))
                        (let ((_%hd198665198682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198664198679%_)))
                              (_%tl198666198684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198664198679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198666198684%_))
                              (let ((_%e198667198687%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198666198684%_))))
                                (let ((_%hd198668198690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198667198687%_)))
                                      (_%tl198669198692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198667198687%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198669198692%_))
                                      ((lambda (_%g198663198695%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g198663198695%_)))
                                       _%hd198668198690%_)
                                      (_%g198661198674%_ _%g198662198677%_))))
                              (_%g198661198674%_ _%g198662198677%_))))
                      (_%g198661198674%_ _%g198662198677%_)))))
          (_%g198660198707%_ _%stx198659%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self198590%_ _%stx198591%_)
        (let* ((_%g198593198610%_
                (lambda (_%g198594198607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198594198607%_))))
               (_%g198592198655%_
                (lambda (_%g198594198613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198594198613%_))
                      (let ((_%e198597198615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198594198613%_))))
                        (let ((_%hd198598198618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198597198615%_)))
                              (_%tl198599198620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198597198615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198599198620%_))
                              (let ((_%e198600198623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198599198620%_))))
                                (let ((_%hd198601198626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198600198623%_)))
                                      (_%tl198602198628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198600198623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198602198628%_))
                                      (let ((_%e198603198631%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198602198628%_))))
                                        (let ((_%hd198604198634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198603198631%_)))
                                              (_%tl198605198636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198603198631%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198605198636%_))
                                              ((lambda (_%g198595198639%_
                                                        _%g198596198640%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g198596198640%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self198590%_
                              _%g198595198639%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198604198634%_
                                               _%hd198601198626%_)
                                              (_%g198593198610%_
                                               _%g198594198613%_))))
                                      (_%g198593198610%_ _%g198594198613%_))))
                              (_%g198593198610%_ _%g198594198613%_))))
                      (_%g198593198610%_ _%g198594198613%_)))))
          (_%g198592198655%_ _%stx198591%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self198401%_ _%stx198402%_)
        (let* ((_%g198404198421%_
                (lambda (_%g198405198418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198405198418%_))))
               (_%g198403198587%_
                (lambda (_%g198405198424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198405198424%_))
                      (let ((_%e198408198426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198405198424%_))))
                        (let ((_%hd198409198429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198408198426%_)))
                              (_%tl198410198431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198408198426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198410198431%_))
                              (let ((_%e198411198434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198410198431%_))))
                                (let ((_%hd198412198437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198411198434%_)))
                                      (_%tl198413198439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198411198434%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198413198439%_))
                                      (let ((_%e198414198442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198413198439%_))))
                                        (let ((_%hd198415198445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198414198442%_)))
                                              (_%tl198416198447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198414198442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198416198447%_))
                                              ((lambda (_%g198406198450%_
                                                        _%g198407198451%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198401%_ _%g198406198450%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198401%_
                                  _%g198407198451%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198466%_ ((_%rest198469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198407198451%_
                                       (cons _%g198406198450%_ '())))
                                (_%bind198471%_ '())
                                (_%args198472%_ '()))
               (let* ((_%rest198473198481%_ _%rest198469%_)
                      (_%else198475198489%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198471%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args198472%_)
                                                 '()))))))
                      (_%K198477198575%_
                       (lambda (_%rest198492%_ _%e198493%_)
                         (let* ((_%__stx205406205407%_ _%e198493%_)
                                (_%g198498198516%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205406205407%_)))))
                           (let ((_%__kont205408205409%_
                                  (lambda ()
                                    (_%lp198466%_
                                     _%rest198492%_
                                     _%bind198471%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198493%_))
                                           _%args198472%_))))
                                 (_%__kont205410205411%_
                                  (lambda ()
                                    (_%lp198466%_
                                     _%rest198492%_
                                     _%bind198471%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198493%_))
                                           _%args198472%_))))
                                 (_%__kont205412205413%_
                                  (lambda ()
                                    (let ((_%tmp198523%_
                                           (let ((__tmp205859
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp205859))))
                                      (_%lp198466%_
                                       _%rest198492%_
                                       (cons (cons _%tmp198523%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198493%_))
                                                         '()))
                                             _%bind198471%_)
                                       (cons _%tmp198523%_ _%args198472%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205406205407%_))
                                 (let ((_%e198500198554%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205406205407%_))))
                                   (let ((_%tl198502198559%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198500198554%_)))
                                         (_%hd198501198557%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198500198554%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198501198557%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198501198557%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198502198559%_))
                                                 (let ((_%e198503198562%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198502198559%_))))
                                                   (let ((_%tl198505198567%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198503198562%_)))
                                                         (_%hd198504198565%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198503198562%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198505198567%_))
                                                         (_%__kont205408205409%_)
                                                         (_%__kont205412205413%_))))
                                                 (_%__kont205412205413%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198501198557%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198502198559%_))
                                                     (let ((_%e198509198539%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198502198559%_))))
                                                       (let ((_%tl198511198544%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198509198539%_)))
                     (_%hd198510198542%_
                      (let () (declare (not safe)) (##car _%e198509198539%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198511198544%_))
                     (_%__kont205410205411%_)
                     (_%__kont205412205413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205412205413%_))
                                                 (_%__kont205412205413%_)))
                                         (_%__kont205412205413%_))))
                                 (_%__kont205412205413%_)))))))
                 (if (pair? _%rest198473198481%_)
                     (let ((_%hd198478198578%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198473198481%_)))
                           (_%tl198479198580%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198473198481%_))))
                       (let* ((_%e198583%_ _%hd198478198578%_)
                              (_%rest198585%_ _%tl198479198580%_))
                         (_%K198477198575%_ _%rest198585%_ _%e198583%_)))
                     (_%else198475198489%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198415198445%_
                                               _%hd198412198437%_)
                                              (_%g198404198421%_
                                               _%g198405198424%_))))
                                      (_%g198404198421%_ _%g198405198424%_))))
                              (_%g198404198421%_ _%g198405198424%_))))
                      (_%g198404198421%_ _%g198405198424%_)))))
          (_%g198403198587%_ _%stx198402%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self198212%_ _%stx198213%_)
        (let* ((_%g198215198232%_
                (lambda (_%g198216198229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198216198229%_))))
               (_%g198214198398%_
                (lambda (_%g198216198235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198216198235%_))
                      (let ((_%e198219198237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198216198235%_))))
                        (let ((_%hd198220198240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198219198237%_)))
                              (_%tl198221198242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198219198237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198221198242%_))
                              (let ((_%e198222198245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198221198242%_))))
                                (let ((_%hd198223198248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198222198245%_)))
                                      (_%tl198224198250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198222198245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198224198250%_))
                                      (let ((_%e198225198253%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198224198250%_))))
                                        (let ((_%hd198226198256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198225198253%_)))
                                              (_%tl198227198258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198225198253%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198227198258%_))
                                              ((lambda (_%g198217198261%_
                                                        _%g198218198262%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198212%_ _%g198217198261%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198212%_
                                  _%g198218198262%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198277%_ ((_%rest198280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198218198262%_
                                       (cons _%g198217198261%_ '())))
                                (_%bind198282%_ '())
                                (_%args198283%_ '()))
               (let* ((_%rest198284198292%_ _%rest198280%_)
                      (_%else198286198300%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198282%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args198283%_)
                                                 '()))))))
                      (_%K198288198386%_
                       (lambda (_%rest198303%_ _%e198304%_)
                         (let* ((_%__stx205452205453%_ _%e198304%_)
                                (_%g198309198327%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205452205453%_)))))
                           (let ((_%__kont205454205455%_
                                  (lambda ()
                                    (_%lp198277%_
                                     _%rest198303%_
                                     _%bind198282%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198304%_))
                                           _%args198283%_))))
                                 (_%__kont205456205457%_
                                  (lambda ()
                                    (_%lp198277%_
                                     _%rest198303%_
                                     _%bind198282%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198304%_))
                                           _%args198283%_))))
                                 (_%__kont205458205459%_
                                  (lambda ()
                                    (let ((_%tmp198334%_
                                           (let ((__tmp205860
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp205860))))
                                      (_%lp198277%_
                                       _%rest198303%_
                                       (cons (cons _%tmp198334%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198304%_))
                                                         '()))
                                             _%bind198282%_)
                                       (cons _%tmp198334%_ _%args198283%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205452205453%_))
                                 (let ((_%e198311198365%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205452205453%_))))
                                   (let ((_%tl198313198370%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198311198365%_)))
                                         (_%hd198312198368%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198311198365%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198312198368%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198312198368%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198313198370%_))
                                                 (let ((_%e198314198373%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198313198370%_))))
                                                   (let ((_%tl198316198378%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198314198373%_)))
                                                         (_%hd198315198376%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198314198373%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198316198378%_))
                                                         (_%__kont205454205455%_)
                                                         (_%__kont205458205459%_))))
                                                 (_%__kont205458205459%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198312198368%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198313198370%_))
                                                     (let ((_%e198320198350%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198313198370%_))))
                                                       (let ((_%tl198322198355%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198320198350%_)))
                     (_%hd198321198353%_
                      (let () (declare (not safe)) (##car _%e198320198350%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198322198355%_))
                     (_%__kont205456205457%_)
                     (_%__kont205458205459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205458205459%_))
                                                 (_%__kont205458205459%_)))
                                         (_%__kont205458205459%_))))
                                 (_%__kont205458205459%_)))))))
                 (if (pair? _%rest198284198292%_)
                     (let ((_%hd198289198389%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198284198292%_)))
                           (_%tl198290198391%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198284198292%_))))
                       (let* ((_%e198394%_ _%hd198289198389%_)
                              (_%rest198396%_ _%tl198290198391%_))
                         (_%K198288198386%_ _%rest198396%_ _%e198394%_)))
                     (_%else198286198300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198226198256%_
                                               _%hd198223198248%_)
                                              (_%g198215198232%_
                                               _%g198216198235%_))))
                                      (_%g198215198232%_ _%g198216198235%_))))
                              (_%g198215198232%_ _%g198216198235%_))))
                      (_%g198215198232%_ _%g198216198235%_)))))
          (_%g198214198398%_ _%stx198213%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self198128%_ _%stx198129%_)
        (let* ((_%g198131198152%_
                (lambda (_%g198132198149%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198132198149%_))))
               (_%g198130198209%_
                (lambda (_%g198132198155%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198132198155%_))
                      (let ((_%e198136198157%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198132198155%_))))
                        (let ((_%hd198137198160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198136198157%_)))
                              (_%tl198138198162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198136198157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198138198162%_))
                              (let ((_%e198139198165%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198138198162%_))))
                                (let ((_%hd198140198168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198139198165%_)))
                                      (_%tl198141198170%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198139198165%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198141198170%_))
                                      (let ((_%e198142198173%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198141198170%_))))
                                        (let ((_%hd198143198176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198142198173%_)))
                                              (_%tl198144198178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198142198173%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198144198178%_))
                                              (let ((_%e198145198181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198144198178%_))))
                                                (let ((_%hd198146198184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198145198181%_)))
                                                      (_%tl198147198186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198145198181%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198147198186%_))
                                                      ((lambda (_%g198133198189%_
                                                                _%g198134198190%_
                                                                _%g198135198191%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self198128%_
                                _%g198133198189%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self198128%_
                                      _%g198134198190%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198128%_
                                            _%g198135198191%_))
                                         (cons ''#f '()))))))
               _%hd198146198184%_
               _%hd198143198176%_
               _%hd198140198168%_)
              (_%g198131198152%_ _%g198132198155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198131198152%_
                                               _%g198132198155%_))))
                                      (_%g198131198152%_ _%g198132198155%_))))
                              (_%g198131198152%_ _%g198132198155%_))))
                      (_%g198131198152%_ _%g198132198155%_)))))
          (_%g198130198209%_ _%stx198129%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self198028%_ _%stx198029%_)
        (let* ((_%g198031198056%_
                (lambda (_%g198032198053%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198032198053%_))))
               (_%g198030198125%_
                (lambda (_%g198032198059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198032198059%_))
                      (let ((_%e198037198061%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198032198059%_))))
                        (let ((_%hd198038198064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198037198061%_)))
                              (_%tl198039198066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198037198061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198039198066%_))
                              (let ((_%e198040198069%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198039198066%_))))
                                (let ((_%hd198041198072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198040198069%_)))
                                      (_%tl198042198074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198040198069%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198042198074%_))
                                      (let ((_%e198043198077%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198042198074%_))))
                                        (let ((_%hd198044198080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198043198077%_)))
                                              (_%tl198045198082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198043198077%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198045198082%_))
                                              (let ((_%e198046198085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198045198082%_))))
                                                (let ((_%hd198047198088%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198046198085%_)))
                                                      (_%tl198048198090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198046198085%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198048198090%_))
                                                      (let ((_%e198049198093%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198048198090%_))))
                (let ((_%hd198050198096%_
                       (let () (declare (not safe)) (##car _%e198049198093%_)))
                      (_%tl198051198098%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198049198093%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198051198098%_))
                      ((lambda (_%g198033198101%_
                                _%g198034198102%_
                                _%g198035198103%_
                                _%g198036198104%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198028%_
                                        _%g198034198102%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198028%_
                                              _%g198033198101%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198028%_
                                                    _%g198035198103%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198028%_
                                                          _%g198036198104%_))
                                                       (cons ''#f '())))))))
                       _%hd198050198096%_
                       _%hd198047198088%_
                       _%hd198044198080%_
                       _%hd198041198072%_)
                      (_%g198031198056%_ _%g198032198059%_))))
              (_%g198031198056%_ _%g198032198059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198031198056%_
                                               _%g198032198059%_))))
                                      (_%g198031198056%_ _%g198032198059%_))))
                              (_%g198031198056%_ _%g198032198059%_))))
                      (_%g198031198056%_ _%g198032198059%_)))))
          (_%g198030198125%_ _%stx198029%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self197944%_ _%stx197945%_)
        (let* ((_%g197947197968%_
                (lambda (_%g197948197965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197948197965%_))))
               (_%g197946198025%_
                (lambda (_%g197948197971%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197948197971%_))
                      (let ((_%e197952197973%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197948197971%_))))
                        (let ((_%hd197953197976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197952197973%_)))
                              (_%tl197954197978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197952197973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197954197978%_))
                              (let ((_%e197955197981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197954197978%_))))
                                (let ((_%hd197956197984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197955197981%_)))
                                      (_%tl197957197986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197955197981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197957197986%_))
                                      (let ((_%e197958197989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197957197986%_))))
                                        (let ((_%hd197959197992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197958197989%_)))
                                              (_%tl197960197994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197958197989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197960197994%_))
                                              (let ((_%e197961197997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197960197994%_))))
                                                (let ((_%hd197962198000%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197961197997%_)))
                                                      (_%tl197963198002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197961197997%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197963198002%_))
                                                      ((lambda (_%g197949198005%_
                                                                _%g197950198006%_
                                                                _%g197951198007%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self197944%_
                                _%g197949198005%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self197944%_
                                      _%g197950198006%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197944%_
                                            _%g197951198007%_))
                                         (cons ''#f '()))))))
               _%hd197962198000%_
               _%hd197959197992%_
               _%hd197956197984%_)
              (_%g197947197968%_ _%g197948197971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197947197968%_
                                               _%g197948197971%_))))
                                      (_%g197947197968%_ _%g197948197971%_))))
                              (_%g197947197968%_ _%g197948197971%_))))
                      (_%g197947197968%_ _%g197948197971%_)))))
          (_%g197946198025%_ _%stx197945%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self197844%_ _%stx197845%_)
        (let* ((_%g197847197872%_
                (lambda (_%g197848197869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197848197869%_))))
               (_%g197846197941%_
                (lambda (_%g197848197875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197848197875%_))
                      (let ((_%e197853197877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197848197875%_))))
                        (let ((_%hd197854197880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197853197877%_)))
                              (_%tl197855197882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197853197877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197855197882%_))
                              (let ((_%e197856197885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197855197882%_))))
                                (let ((_%hd197857197888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197856197885%_)))
                                      (_%tl197858197890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197856197885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197858197890%_))
                                      (let ((_%e197859197893%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197858197890%_))))
                                        (let ((_%hd197860197896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197859197893%_)))
                                              (_%tl197861197898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197859197893%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197861197898%_))
                                              (let ((_%e197862197901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197861197898%_))))
                                                (let ((_%hd197863197904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197862197901%_)))
                                                      (_%tl197864197906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197862197901%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197864197906%_))
                                                      (let ((_%e197865197909%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197864197906%_))))
                (let ((_%hd197866197912%_
                       (let () (declare (not safe)) (##car _%e197865197909%_)))
                      (_%tl197867197914%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197865197909%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197867197914%_))
                      ((lambda (_%g197849197917%_
                                _%g197850197918%_
                                _%g197851197919%_
                                _%g197852197920%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self197844%_
                                        _%g197850197918%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self197844%_
                                              _%g197849197917%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self197844%_
                                                    _%g197851197919%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self197844%_
                                                          _%g197852197920%_))
                                                       (cons ''#f '())))))))
                       _%hd197866197912%_
                       _%hd197863197904%_
                       _%hd197860197896%_
                       _%hd197857197888%_)
                      (_%g197847197872%_ _%g197848197875%_))))
              (_%g197847197872%_ _%g197848197875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197847197872%_
                                               _%g197848197875%_))))
                                      (_%g197847197872%_ _%g197848197875%_))))
                              (_%g197847197872%_ _%g197848197875%_))))
                      (_%g197847197872%_ _%g197848197875%_)))))
          (_%g197846197941%_ _%stx197845%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self197639%_ _%stx197640%_)
        (let* ((_%g197642197663%_
                (lambda (_%g197643197660%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197643197660%_))))
               (_%g197641197841%_
                (lambda (_%g197643197666%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197643197666%_))
                      (let ((_%e197647197668%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197643197666%_))))
                        (let ((_%hd197648197671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197647197668%_)))
                              (_%tl197649197673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197647197668%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197649197673%_))
                              (let ((_%e197650197676%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197649197673%_))))
                                (let ((_%hd197651197679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197650197676%_)))
                                      (_%tl197652197681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197650197676%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197652197681%_))
                                      (let ((_%e197653197684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197652197681%_))))
                                        (let ((_%hd197654197687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197653197684%_)))
                                              (_%tl197655197689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197653197684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197655197689%_))
                                              (let ((_%e197656197692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197655197689%_))))
                                                (let ((_%hd197657197695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197656197692%_)))
                                                      (_%tl197658197697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197656197692%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197658197697%_))
                                                      ((lambda (_%g197644197700%_
                                                                _%g197645197701%_
                                                                _%g197646197702%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self197639%_
                                    _%g197644197700%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self197639%_
                                          _%g197645197701%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp197720%_ ((_%rest197723%_
                                         (cons _%g197645197701%_
                                               (cons _%g197644197700%_ '())))
                                        (_%bind197725%_ '())
                                        (_%args197726%_ '()))
                       (let* ((_%rest197727197735%_ _%rest197723%_)
                              (_%else197729197743%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind197725%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp205861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp205861 _%args197726%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K197731197829%_
                               (lambda (_%rest197746%_ _%e197747%_)
                                 (let* ((_%__stx205498205499%_ _%e197747%_)
                                        (_%g197752197770%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205498205499%_)))))
                                   (let ((_%__kont205500205501%_
                                          (lambda ()
                                            (_%lp197720%_
                                             _%rest197746%_
                                             _%bind197725%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e197747%_))
                                                   _%args197726%_))))
                                         (_%__kont205502205503%_
                                          (lambda ()
                                            (_%lp197720%_
                                             _%rest197746%_
                                             _%bind197725%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e197747%_))
                                                   _%args197726%_))))
                                         (_%__kont205504205505%_
                                          (lambda ()
                                            (let ((_%tmp197777%_
                                                   (let ((__tmp205862
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp205862))))
                                              (_%lp197720%_
                                               _%rest197746%_
                                               (cons (cons _%tmp197777%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e197747%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197725%_)
                                               (cons _%tmp197777%_
                                                     _%args197726%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205498205499%_))
                                         (let ((_%e197754197808%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205498205499%_))))
                                           (let ((_%tl197756197813%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197754197808%_)))
                                                 (_%hd197755197811%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197754197808%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197755197811%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd197755197811%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197756197813%_))
                                                         (let ((_%e197757197816%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197756197813%_))))
                   (let ((_%tl197759197821%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197757197816%_)))
                         (_%hd197758197819%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197757197816%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl197759197821%_))
                         (_%__kont205500205501%_)
                         (_%__kont205504205505%_))))
                 (_%__kont205504205505%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd197755197811%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197756197813%_))
                     (let ((_%e197763197793%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197756197813%_))))
                       (let ((_%tl197765197798%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197763197793%_)))
                             (_%hd197764197796%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197763197793%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197765197798%_))
                             (_%__kont205502205503%_)
                             (_%__kont205504205505%_))))
                     (_%__kont205504205505%_))
                 (_%__kont205504205505%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont205504205505%_))))
                                         (_%__kont205504205505%_)))))))
                         (if (pair? _%rest197727197735%_)
                             (let ((_%hd197732197832%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest197727197735%_)))
                                   (_%tl197733197834%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest197727197735%_))))
                               (let* ((_%e197837%_ _%hd197732197832%_)
                                      (_%rest197839%_ _%tl197733197834%_))
                                 (_%K197731197829%_
                                  _%rest197839%_
                                  _%e197837%_)))
                             (_%else197729197743%_))))))
               _%hd197657197695%_
               _%hd197654197687%_
               _%hd197651197679%_)
              (_%g197642197663%_ _%g197643197666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197642197663%_
                                               _%g197643197666%_))))
                                      (_%g197642197663%_ _%g197643197666%_))))
                              (_%g197642197663%_ _%g197643197666%_))))
                      (_%g197642197663%_ _%g197643197666%_)))))
          (_%g197641197841%_ _%stx197640%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self197418%_ _%stx197419%_)
        (let* ((_%g197421197446%_
                (lambda (_%g197422197443%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197422197443%_))))
               (_%g197420197636%_
                (lambda (_%g197422197449%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197422197449%_))
                      (let ((_%e197427197451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197422197449%_))))
                        (let ((_%hd197428197454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197427197451%_)))
                              (_%tl197429197456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197427197451%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197429197456%_))
                              (let ((_%e197430197459%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197429197456%_))))
                                (let ((_%hd197431197462%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197430197459%_)))
                                      (_%tl197432197464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197430197459%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197432197464%_))
                                      (let ((_%e197433197467%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197432197464%_))))
                                        (let ((_%hd197434197470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197433197467%_)))
                                              (_%tl197435197472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197433197467%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197435197472%_))
                                              (let ((_%e197436197475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197435197472%_))))
                                                (let ((_%hd197437197478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197436197475%_)))
                                                      (_%tl197438197480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197436197475%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197438197480%_))
                                                      (let ((_%e197439197483%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197438197480%_))))
                (let ((_%hd197440197486%_
                       (let () (declare (not safe)) (##car _%e197439197483%_)))
                      (_%tl197441197488%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197439197483%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197441197488%_))
                      ((lambda (_%g197423197491%_
                                _%g197424197492%_
                                _%g197425197493%_
                                _%g197426197494%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197418%_
                                            _%g197424197492%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self197418%_
                                                  _%g197423197491%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self197418%_
                                                        _%g197425197493%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp197515%_ ((_%rest197518%_
                                                 (cons _%g197425197493%_
                                                       (cons _%g197423197491%_
                                                             (cons _%g197424197492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind197520%_ '())
                                                (_%args197521%_ '()))
                               (let* ((_%rest197522197530%_ _%rest197518%_)
                                      (_%else197524197538%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind197520%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp205863 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp205863 _%args197521%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K197526197624%_
                                       (lambda (_%rest197541%_ _%e197542%_)
                                         (let* ((_%__stx205544205545%_
                                                 _%e197542%_)
                                                (_%g197547197565%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx205544205545%_)))))
                                           (let ((_%__kont205546205547%_
                                                  (lambda ()
                                                    (_%lp197515%_
                                                     _%rest197541%_
                                                     _%bind197520%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e197542%_))
                                                           _%args197521%_))))
                                                 (_%__kont205548205549%_
                                                  (lambda ()
                                                    (_%lp197515%_
                                                     _%rest197541%_
                                                     _%bind197520%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e197542%_))
                                                           _%args197521%_))))
                                                 (_%__kont205550205551%_
                                                  (lambda ()
                                                    (let ((_%tmp197572%_
                                                           (let ((__tmp205864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp205864))))
              (_%lp197515%_
               _%rest197541%_
               (cons (cons _%tmp197572%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e197542%_))
                                 '()))
                     _%bind197520%_)
               (cons _%tmp197572%_ _%args197521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx205544205545%_))
                                                 (let ((_%e197549197603%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx205544205545%_))))
                                                   (let ((_%tl197551197608%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197549197603%_)))
                                                         (_%hd197550197606%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197549197603%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd197550197606%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd197550197606%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl197551197608%_))
                         (let ((_%e197552197611%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl197551197608%_))))
                           (let ((_%tl197554197616%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197552197611%_)))
                                 (_%hd197553197614%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197552197611%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl197554197616%_))
                                 (_%__kont205546205547%_)
                                 (_%__kont205550205551%_))))
                         (_%__kont205550205551%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd197550197606%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl197551197608%_))
                             (let ((_%e197558197588%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl197551197608%_))))
                               (let ((_%tl197560197593%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e197558197588%_)))
                                     (_%hd197559197591%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e197558197588%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl197560197593%_))
                                     (_%__kont205548205549%_)
                                     (_%__kont205550205551%_))))
                             (_%__kont205550205551%_))
                         (_%__kont205550205551%_)))
                 (_%__kont205550205551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont205550205551%_)))))))
                                 (if (pair? _%rest197522197530%_)
                                     (let ((_%hd197527197627%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest197522197530%_)))
                                           (_%tl197528197629%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest197522197530%_))))
                                       (let* ((_%e197632%_ _%hd197527197627%_)
                                              (_%rest197634%_
                                               _%tl197528197629%_))
                                         (_%K197526197624%_
                                          _%rest197634%_
                                          _%e197632%_)))
                                     (_%else197524197538%_))))))
                       _%hd197440197486%_
                       _%hd197437197478%_
                       _%hd197434197470%_
                       _%hd197431197462%_)
                      (_%g197421197446%_ _%g197422197449%_))))
              (_%g197421197446%_ _%g197422197449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197421197446%_
                                               _%g197422197449%_))))
                                      (_%g197421197446%_ _%g197422197449%_))))
                              (_%g197421197446%_ _%g197422197449%_))))
                      (_%g197421197446%_ _%g197422197449%_)))))
          (_%g197420197636%_ _%stx197419%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self197257%_ _%stx197258%_)
        (letrec ((_%import-set-template197260%_
                  (lambda (_%in197363%_ _%phi197364%_)
                    (let ((_%iphi197366%_
                           (fx+ _%phi197364%_
                                (##direct-structure-ref
                                 _%in197363%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports197367%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in197363%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp197369%_ ((_%rest197371%_ _%imports197367%_)
                                         (_%r197372%_ '()))
                        (let* ((_%rest197373197381%_ _%rest197371%_)
                               (_%else197375197389%_ (lambda () _%r197372%_))
                               (_%K197377197406%_
                                (lambda (_%rest197392%_ _%in197393%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in197393%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi197366%_))
                                          (_%lp197369%_
                                           _%rest197392%_
                                           (cons _%in197393%_ _%r197372%_))
                                          (_%lp197369%_
                                           _%rest197392%_
                                           _%r197372%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in197393%_
                                             'gx#module-import::t))
                                          (let ((_%iphi197397%_
                                                 (fx+ _%phi197364%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in197393%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi197397%_))
                                                (_%lp197369%_
                                                 _%rest197392%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in197393%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r197372%_))
                                                (_%lp197369%_
                                                 _%rest197392%_
                                                 _%r197372%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in197393%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi197400%_
                                                     (fx+ _%iphi197366%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in197393%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi197400%_))
                                                    (_%lp197369%_
                                                     _%rest197392%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197393%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r197372%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi197400%_))
                                                        (_%lp197369%_
                                                         _%rest197392%_
                                                         (let ((__tmp205865
                                                                (_%import-set-template197260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in197393%_
                         _%iphi197366%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r197372%_ __tmp205865)))
                (_%lp197369%_ _%rest197392%_ _%r197372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp197369%_
                                               _%rest197392%_
                                               _%r197372%_)))))))
                          (if (pair? _%rest197373197381%_)
                              (let ((_%hd197378197409%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest197373197381%_)))
                                    (_%tl197379197411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest197373197381%_))))
                                (let* ((_%in197414%_ _%hd197378197409%_)
                                       (_%rest197416%_ _%tl197379197411%_))
                                  (_%K197377197406%_
                                   _%rest197416%_
                                   _%in197414%_)))
                              (_%else197375197389%_))))))))
          (let* ((_%g197262197272%_
                  (lambda (_%g197263197269%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197263197269%_))))
                 (_%g197261197360%_
                  (lambda (_%g197263197275%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197263197275%_))
                        (let ((_%e197265197277%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197263197275%_))))
                          (let ((_%hd197266197280%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197265197277%_)))
                                (_%tl197267197282%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197265197277%_))))
                            ((lambda (_%g197264197285%_)
                               (let ((_%ht197296%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp197298%_ ((_%rest197300%_
                                                     _%g197264197285%_)
                                                    (_%loads197301%_ '()))
                                   (letrec ((_%K197303%_
                                             (lambda (_%ctx197353%_
                                                      _%rest197354%_)
                                               (let ((_%id197356%_
                                                      (##structure-ref
                                                       _%ctx197353%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht197296%_
                                                        _%id197356%_))
                                                     (_%lp197298%_
                                                      _%rest197354%_
                                                      _%loads197301%_)
                                                     (let ((_%rt197358%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id197356%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht197296%_
                                                          _%id197356%_
                                                          _%rt197358%_))
                                                       (_%lp197298%_
                                                        _%rest197354%_
                                                        (cons _%rt197358%_
                                                              _%loads197301%_))))))))
                                     (let* ((_%rest197304197312%_
                                             _%rest197300%_)
                                            (_%else197306197324%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp205867
                                                            (lambda (_%g197319197321%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197319197321%_)))
                   (__tmp205866 (reverse _%loads197301%_)))
               (declare (not safe))
               (##map __tmp205867 __tmp205866)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K197308197341%_
                                             (lambda (_%rest197327%_
                                                      _%in197328%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in197328%_
                                                      'gx#module-context::t))
                                                   (_%K197303%_
                                                    _%in197328%_
                                                    _%rest197327%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in197328%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in197328%_
                               '3
                               '#f
                               '#f)))
                   (_%K197303%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in197328%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest197327%_)
                   (_%lp197298%_ _%rest197327%_ _%loads197301%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in197328%_
                      'gx#import-set::t))
                   (let ((_%phi197333%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197328%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi197333%_)
                         (_%K197303%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197328%_
                             '1
                             '#f
                             '#f))
                          _%rest197327%_)
                         (if (fxpositive? _%phi197333%_)
                             (let ((_%deps197337%_
                                    (_%import-set-template197260%_
                                     _%in197328%_
                                     '0)))
                               (_%lp197298%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest197327%_
                                   _%deps197337%_))
                                _%loads197301%_))
                             (_%lp197298%_ _%rest197327%_ _%loads197301%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx197258%_
                      _%in197328%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest197304197312%_)
                                           (let ((_%hd197309197344%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest197304197312%_)))
                                                 (_%tl197310197346%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest197304197312%_))))
                                             (let* ((_%in197349%_
                                                     _%hd197309197344%_)
                                                    (_%rest197351%_
                                                     _%tl197310197346%_))
                                               (_%K197308197341%_
                                                _%rest197351%_
                                                _%in197349%_)))
                                           (_%else197306197324%_)))))))
                             _%tl197267197282%_)))
                        (_%g197262197272%_ _%g197263197275%_)))))
            (_%g197261197360%_ _%stx197258%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self197071%_ _%stx197072%_)
        (letrec ((_%add-lift!197074%_
                  (lambda (_%expr197255%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr197255%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote197075%_
                  (lambda (_%id197252%_ _%marks197253%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id197252%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks197253%_
                                                        '()))))))))
                 (_%generate-simple197076%_
                  (lambda (_%stxq197247%_)
                    (let ((_%gid197249%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid197250%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq197247%_))))
                      (_%add-lift!197074%_
                       (cons 'define
                             (cons _%gid197249%_
                                   (cons (_%generate-syntax-quote197075%_
                                          _%qid197250%_
                                          ''())
                                         '()))))
                      (let ((__tmp205868
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp205868 _%stxq197247%_ _%gid197249%_))
                      _%gid197249%_)))
                 (_%generate-serialized197077%_
                  (lambda (_%stxq197237%_ _%marks197238%_)
                    (let* ((_%mark-refs197240%_
                            (map _%generate-mark197078%_ _%marks197238%_))
                           (_%gid197242%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid197244%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq197237%_))))
                      (_%add-lift!197074%_
                       (cons 'define
                             (cons _%gid197242%_
                                   (cons (_%generate-syntax-quote197075%_
                                          _%qid197244%_
                                          (cons 'list _%mark-refs197240%_))
                                         '()))))
                      (let ((__tmp205869
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp205869 _%stxq197237%_ _%gid197242%_))
                      _%gid197242%_)))
                 (_%generate-mark197078%_
                  (lambda (_%mark197222%_)
                    (let ((_%$e197224%_
                           (let ((__tmp205870
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp205870 _%mark197222%_))))
                      (if _%$e197224%_
                          _%$e197224%_
                          (let* ((_%gid197228%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr197230%_
                                  (_%serialize-mark197079%_ _%mark197222%_))
                                 (_%ctx197232%_
                                  (let ((__tmp205871
                                         (##structure-ref
                                          _%mark197222%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp205871)))
                                 (_%ctx-ref197234%_
                                  (if (eq? _%ctx197232%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref197080%_
                                                               _%ctx197232%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp205872
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp205872
                               _%mark197222%_
                               _%gid197228%_))
                            (_%add-lift!197074%_
                             (cons 'define
                                   (cons _%gid197228%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr197230%_ '()))
                   (cons _%ctx-ref197234%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid197228%_)))))
                 (_%serialize-mark197079%_
                  (lambda (_%mark197170%_)
                    (letrec ((_%quote-e197172%_
                              (lambda (_%sym197220%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym197220%_))
                                    _%sym197220%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym197220%_))))))
                      (let* ((_%mark197173197182%_ _%mark197170%_)
                             (_%E197175197185%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark197173197182%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K197176197197%_
                              (lambda (_%trace197188%_
                                       _%phi197189%_
                                       _%ctx197190%_
                                       _%subst197191%_)
                                (let ((_%subs197193%_
                                       (if _%subst197191%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst197191%_))
                                           '())))
                                  (cons _%phi197189%_
                                        (let ((__tmp205873
                                               (lambda (_%pair197195%_)
                                                 (cons (_%quote-e197172%_
                                                        (car _%pair197195%_))
                                                       (_%quote-e197172%_
                                                        (cdr _%pair197195%_))))))
                                          (declare (not safe))
                                          (##map __tmp205873
                                                 _%subs197193%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark197173197182%_
                               'gx#expander-mark::t))
                            (let* ((_%e197177197200%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197173197182%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst197203%_ _%e197177197200%_)
                                   (_%e197178197205%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197173197182%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx197208%_ _%e197178197205%_)
                                   (_%e197179197210%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197173197182%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi197213%_ _%e197179197210%_)
                                   (_%e197180197215%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197173197182%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace197218%_ _%e197180197215%_))
                              (_%K197176197197%_
                               _%trace197218%_
                               _%phi197213%_
                               _%ctx197208%_
                               _%subst197203%_))
                            (_%E197175197185%_))))))
                 (_%context-ref197080%_
                  (lambda (_%ctx197157%_)
                    (if (let ((__tmp205874
                               (##structure-ref
                                _%ctx197157%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp205874
                           'gx#module-context::t))
                        (let ((_%ctx-ref197159%_
                               (_%context-ref-nested197082%_ _%ctx197157%_))
                              (_%ctx-origin197160%_
                               (_%context-ref-origin197081%_ _%ctx197157%_))
                              (_%origin197161%_
                               (_%context-ref-origin197081%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin197161%_ _%ctx-origin197160%_)
                              (let ((_%ref197163%_
                                     (_%context-ref-nested197082%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp197165%_ ((_%ref197167%_
                                                    (cdr _%ref197163%_))
                                                   (_%ctx-ref197168%_
                                                    (cdr _%ctx-ref197159%_)))
                                  (if (and (pair? _%ref197167%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref197167%_))
                                                (car _%ctx-ref197168%_)))
                                      (_%lp197165%_
                                       (cdr _%ref197167%_)
                                       (cdr _%ctx-ref197168%_))
                                      (cons '#f _%ctx-ref197168%_))))
                              _%ctx-ref197159%_))
                        (let ((__tmp205875
                               (##structure-ref
                                _%ctx197157%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp205875)))))
                 (_%context-ref-origin197081%_
                  (lambda (_%ctx197149%_)
                    (let _%lp197151%_ ((_%ctx197153%_ _%ctx197149%_))
                      (let ((_%super197155%_
                             (##structure-ref
                              _%ctx197153%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197155%_
                               'gx#module-context::t))
                            (_%lp197151%_ _%super197155%_)
                            _%ctx197153%_)))))
                 (_%context-ref-nested197082%_
                  (lambda (_%ctx197140%_)
                    (let _%lp197142%_ ((_%ctx197144%_ _%ctx197140%_)
                                       (_%r197145%_ '()))
                      (let ((_%super197147%_
                             (##structure-ref
                              _%ctx197144%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197147%_
                               'gx#module-context::t))
                            (_%lp197142%_
                             _%super197147%_
                             (cons (car (##structure-ref
                                         _%ctx197144%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r197145%_))
                            (cons (let ((__tmp205876
                                         (##structure-ref
                                          _%ctx197144%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp205876))
                                  _%r197145%_)))))))
          (let* ((_%g197084197097%_
                  (lambda (_%g197085197094%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197085197094%_))))
                 (_%g197083197137%_
                  (lambda (_%g197085197100%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197085197100%_))
                        (let ((_%e197087197102%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197085197100%_))))
                          (let ((_%hd197088197105%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197087197102%_)))
                                (_%tl197089197107%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197087197102%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197089197107%_))
                                (let ((_%e197090197110%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197089197107%_))))
                                  (let ((_%hd197091197113%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197090197110%_)))
                                        (_%tl197092197115%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197090197110%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197092197115%_))
                                        ((lambda (_%g197086197118%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g197086197118%_))
                                               (let ((_%$e197131%_
                                                      (let ((__tmp205877
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp205877 _%g197086197118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e197131%_
                                                     _%$e197131%_
                                                     (let ((_%marks197135%_
                                                            (##direct-structure-ref
                                                             _%g197086197118%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks197135%_)
                                                           (_%generate-simple197076%_
                                                            _%g197086197118%_)
                                                           (_%generate-serialized197077%_
                                                            _%g197086197118%_
                                                            _%marks197135%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g197086197118%_))))
                                         _%hd197091197113%_)
                                        (_%g197084197097%_
                                         _%g197085197100%_))))
                                (_%g197084197097%_ _%g197085197100%_))))
                        (_%g197084197097%_ _%g197085197100%_)))))
            (_%g197083197137%_ _%stx197072%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self197003%_ _%stx197004%_)
        (let* ((_%g197006197023%_
                (lambda (_%g197007197020%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197007197020%_))))
               (_%g197005197068%_
                (lambda (_%g197007197026%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197007197026%_))
                      (let ((_%e197010197028%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197007197026%_))))
                        (let ((_%hd197011197031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197010197028%_)))
                              (_%tl197012197033%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197010197028%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197012197033%_))
                              (let ((_%e197013197036%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197012197033%_))))
                                (let ((_%hd197014197039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197013197036%_)))
                                      (_%tl197015197041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197013197036%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197015197041%_))
                                      (let ((_%e197016197044%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197015197041%_))))
                                        (let ((_%hd197017197047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197016197044%_)))
                                              (_%tl197018197049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197016197044%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197018197049%_))
                                              ((lambda (_%g197008197052%_
                                                        _%g197009197053%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g197009197053%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self197003%_
                              _%g197008197052%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197017197047%_
                                               _%hd197014197039%_)
                                              (_%g197006197023%_
                                               _%g197007197026%_))))
                                      (_%g197006197023%_ _%g197007197026%_))))
                              (_%g197006197023%_ _%g197007197026%_))))
                      (_%g197006197023%_ _%g197007197026%_)))))
          (_%g197005197068%_ _%stx197004%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self196952%_ _%stx196953%_)
        (let* ((_%g196955196965%_
                (lambda (_%g196956196962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196956196962%_))))
               (_%g196954197000%_
                (lambda (_%g196956196968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196956196968%_))
                      (let ((_%e196958196970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196956196968%_))))
                        (let ((_%hd196959196973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196958196970%_)))
                              (_%tl196960196975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196958196970%_))))
                          ((lambda (_%g196957196978%_)
                             (let* ((_%c-body196992%_
                                     (map (lambda (_%g196987196989%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196952%_
                                               _%g196987196989%_)))
                                          _%g196957196978%_))
                                    (_%c-body196997%_
                                     (let ((__tmp205878
                                            (lambda (_%$obj196994%_)
                                              (not (eq? _%$obj196994%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp205878
                                        _%c-body196992%_))))
                               (cons '%#begin _%c-body196997%_)))
                           _%tl196960196975%_)))
                      (_%g196955196965%_ _%g196956196968%_)))))
          (_%g196954197000%_ _%stx196953%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self196857%_ _%stx196858%_)
        (let* ((_%g196860196870%_
                (lambda (_%g196861196867%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196861196867%_))))
               (_%g196859196949%_
                (lambda (_%g196861196873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196861196873%_))
                      (let ((_%e196863196875%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196861196873%_))))
                        (let ((_%hd196864196878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196863196875%_)))
                              (_%tl196865196880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196863196875%_))))
                          ((lambda (_%g196862196883%_)
                             (let* ((_%phi196893%_
                                     (let ((__tmp205879
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp205879 '1)))
                                    (_%block196895%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self196857%_ 'state))
                                      _%phi196893%_))
                                    (_%compiled196898%_
                                     (let ((__tmp205880
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self196857%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g196862196883%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp205880
                                        gx#current-expander-phi
                                        _%phi196893%_)))
                                    (_%g196901196911%_
                                     (lambda (_%g196902196908%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g196902196908%_))))
                                    (_%g196900196946%_
                                     (lambda (_%g196902196914%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g196902196914%_))
                                           (let ((_%e196904196916%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g196902196914%_))))
                                             (let ((_%hd196905196919%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e196904196916%_)))
                                                   (_%tl196906196921%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e196904196916%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd196905196919%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd196905196919%_))
                                                       ((lambda (_%g196903196924%_)
                                                          (let ((_%c-body196941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj196938%_)
                                   (not (eq? _%$obj196938%_ '#!void)))
                                 _%g196903196924%_)))
                    (if _%block196895%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block196895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body196941%_))
                        (if (null? _%c-body196941%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body196941%_)))))
                _%tl196906196921%_)
               (_%g196901196911%_ _%g196902196914%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g196901196911%_
                                                    _%g196902196914%_))))
                                           (_%g196901196911%_
                                            _%g196902196914%_)))))
                               (_%g196900196946%_ _%compiled196898%_)))
                           _%tl196865196880%_)))
                      (_%g196860196870%_ _%g196861196873%_)))))
          (_%g196859196949%_ _%stx196858%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self196788%_ _%stx196789%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196788%_ 'state)))
        (let* ((_%g196791196805%_
                (lambda (_%g196792196802%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196792196802%_))))
               (_%g196790196854%_
                (lambda (_%g196792196808%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196792196808%_))
                      (let ((_%e196795196810%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196792196808%_))))
                        (let ((_%hd196796196813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196795196810%_)))
                              (_%tl196797196815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196795196810%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196797196815%_))
                              (let ((_%e196798196818%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196797196815%_))))
                                (let ((_%hd196799196821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196798196818%_)))
                                      (_%tl196800196823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196798196818%_))))
                                  ((lambda (_%g196793196826%_
                                            _%g196794196827%_)
                                     (let ((_%key196840%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g196794196827%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key196840%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx196789%_
                                              _%g196794196827%_
                                              _%key196840%_)))
                                       (let* ((_%ctx196842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g196794196827%_)))
                                              (_%code196845%_
                                               (let ((__tmp205881
                                                      (lambda ()
                                                        (let ((__tmp205882
                                                               (##structure-ref
                                                                _%ctx196842%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self196788%_
                                                           __tmp205882)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp205881
                                                  gx#current-expander-context
                                                  _%ctx196842%_)))
                                              (_%rt196847%_
                                               (let ((__tmp205883
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp205883
                                                  _%ctx196842%_)))
                                              (_%loader196849%_
                                               (if _%rt196847%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt196847%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid196851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g196794196827%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self196788%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid196851%_
                                                     (cons _%code196845%_
                                                           _%loader196849%_))))))
                                   _%tl196800196823%_
                                   _%hd196799196821%_)))
                              (_%g196791196805%_ _%g196792196808%_))))
                      (_%g196791196805%_ _%g196792196808%_)))))
          (_%g196790196854%_ _%stx196789%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx196775%_ _%context-chain196776%_)
        (let _%lp196778%_ ((_%ctx196780%_ _%ctx196775%_) (_%path196781%_ '()))
          (let ((_%super196783%_
                 (##structure-ref _%ctx196780%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super196783%_ _%context-chain196776%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx196780%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path196781%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super196783%_
                       'gx#module-context::t))
                    (_%lp196778%_
                     _%super196783%_
                     (cons (car (##structure-ref
                                 _%ctx196780%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path196781%_))
                    (cons (let ((__tmp205884
                                 (##structure-ref
                                  _%ctx196780%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp205884))
                          _%path196781%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp196768%_ ((_%ctx196770%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r196771%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx196770%_ 'gx#module-context::t))
              (_%lp196768%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx196770%_ '3 '#f '#f))
               (cons _%ctx196770%_ _%r196771%_))
              _%r196771%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self196533%_ _%stx196534%_)
        (letrec* ((_%context-chain196536%_ (gxc#current-context-chain))
                  (_%make-import-spec196537%_
                   (lambda (_%in196705%_)
                     (let* ((_%in196706196718%_ _%in196705%_)
                            (_%E196708196721%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in196706196718%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K196709196731%_
                             (lambda (_%phi196724%_
                                      _%name196725%_
                                      _%src-name196726%_
                                      _%src-phi196727%_
                                      _%src-key196728%_
                                      _%src-ctx196729%_)
                               (cons _%phi196724%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name196725%_))
                                           (cons _%src-phi196727%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name196726%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in196706196718%_
                              'gx#module-import::t))
                           (let ((_%e196710196734%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in196706196718%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e196710196734%_
                                    'gx#module-export::t))
                                 (let* ((_%e196713196737%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196710196734%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx196740%_ _%e196713196737%_)
                                        (_%e196714196742%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196710196734%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key196745%_ _%e196714196742%_)
                                        (_%e196715196747%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196710196734%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi196750%_ _%e196715196747%_)
                                        (_%e196716196752%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196710196734%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name196755%_ _%e196716196752%_)
                                        (_%e196711196757%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in196706196718%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name196760%_ _%e196711196757%_)
                                        (_%e196712196762%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in196706196718%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi196765%_ _%e196712196762%_))
                                   (_%K196709196731%_
                                    _%phi196765%_
                                    _%name196760%_
                                    _%src-name196755%_
                                    _%src-phi196750%_
                                    _%src-key196745%_
                                    _%src-ctx196740%_))
                                 (_%E196708196721%_)))
                           (_%E196708196721%_)))))
                  (_%make-import-path196538%_
                   (lambda (_%ctx196703%_)
                     (gxc#generate-meta-import-path
                      _%ctx196703%_
                      _%context-chain196536%_)))
                  (_%make-import-spec-in196539%_
                   (lambda (_%ctx196700%_ _%in196701%_)
                     (cons 'spec:
                           (cons (_%make-import-path196538%_ _%ctx196700%_)
                                 (reverse _%in196701%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self196533%_ 'state)))
          (let* ((_%g196541196551%_
                  (lambda (_%g196542196548%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196542196548%_))))
                 (_%g196540196697%_
                  (lambda (_%g196542196554%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196542196554%_))
                        (let ((_%e196544196556%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196542196554%_))))
                          (let ((_%hd196545196559%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196544196556%_)))
                                (_%tl196546196561%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196544196556%_))))
                            ((lambda (_%g196543196564%_)
                               (let _%lp196575%_ ((_%rest196577%_
                                                   _%g196543196564%_)
                                                  (_%current-src196578%_ '#f)
                                                  (_%current-in196579%_ '())
                                                  (_%r196580%_ '()))
                                 (let* ((_%rest196581196589%_ _%rest196577%_)
                                        (_%else196583196599%_
                                         (lambda ()
                                           (let ((_%r196597%_
                                                  (if _%current-src196578%_
                                                      (cons (_%make-import-spec-in196539%_
                                                             _%current-src196578%_
                                                             _%current-in196579%_)
                                                            _%r196580%_)
                                                      _%r196580%_)))
                                             (cons '%#import
                                                   (reverse _%r196597%_)))))
                                        (_%K196585196685%_
                                         (lambda (_%rest196602%_ _%in196603%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in196603%_
                                                  'gx#module-import::t))
                                               (let* ((_%in196605196612%_
                                                       _%in196603%_)
                                                      (_%E196607196615%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in196605196612%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K196608196623%_
               (lambda (_%src-ctx196618%_)
                 (if (eq? _%current-src196578%_ _%src-ctx196618%_)
                     (_%lp196575%_
                      _%rest196602%_
                      _%current-src196578%_
                      (cons (_%make-import-spec196537%_ _%in196603%_)
                            _%current-in196579%_)
                      _%r196580%_)
                     (if _%current-src196578%_
                         (_%lp196575%_
                          _%rest196602%_
                          _%src-ctx196618%_
                          (cons (_%make-import-spec196537%_ _%in196603%_) '())
                          (cons (_%make-import-spec-in196539%_
                                 _%current-src196578%_
                                 _%current-in196579%_)
                                _%r196580%_))
                         (_%lp196575%_
                          _%rest196602%_
                          _%src-ctx196618%_
                          (cons (_%make-import-spec196537%_ _%in196603%_) '())
                          _%r196580%_)))))
              (_%e196609196626%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in196605196612%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e196609196626%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e196610196629%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e196609196626%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx196632%_ _%e196610196629%_))
               (_%K196608196623%_ _%src-ctx196632%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E196607196615%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in196603%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi196635%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in196603%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src196637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in196603%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in196677%_
                                                           (let* ((_%g196638196647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path196538%_ _%src196637%_))
                          (_%E196641196651%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g196638196647%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K196643196667%_
                            (lambda (_%path196665%_) _%path196665%_))
                           (_%K196642196657%_
                            (lambda (_%path196655%_)
                              (cons 'in: _%path196655%_))))
                       (if (pair? _%g196638196647%_)
                           (let ((_%tl196645196672%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g196638196647%_)))
                                 (_%hd196644196670%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g196638196647%_))))
                             (if (null? _%tl196645196672%_)
                                 (let ((_%path196675%_ _%hd196644196670%_))
                                   (_%K196643196667%_ _%path196675%_))
                                 (let ((_%path196660%_ _%g196638196647%_))
                                   (_%K196642196657%_ _%path196660%_))))
                           (let ((_%path196660%_ _%g196638196647%_))
                             (_%K196642196657%_ _%path196660%_))))))
                  (_%r196679%_
                   (if _%current-src196578%_
                       (cons (_%make-import-spec-in196539%_
                              _%current-src196578%_
                              _%current-in196579%_)
                             _%r196580%_)
                       _%r196580%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp196575%_
                                                      _%rest196602%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi196635%_)
                                                                _%src-in196677%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi196635%_
                                    (cons _%src-in196677%_ '()))))
                    _%r196679%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in196603%_
                                                          'gx#module-context::t))
                                                       (let ((_%r196683%_
                                                              (if _%current-src196578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in196539%_
                                 _%current-src196578%_
                                 _%current-in196579%_)
                                _%r196580%_)
                          _%r196580%_)))
                 (_%lp196575%_
                  _%rest196602%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path196538%_ _%in196603%_))
                        _%r196683%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest196581196589%_)
                                       (let ((_%hd196586196688%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest196581196589%_)))
                                             (_%tl196587196690%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest196581196589%_))))
                                         (let* ((_%in196693%_
                                                 _%hd196586196688%_)
                                                (_%rest196695%_
                                                 _%tl196587196690%_))
                                           (_%K196585196685%_
                                            _%rest196695%_
                                            _%in196693%_)))
                                       (_%else196583196599%_)))))
                             _%tl196546196561%_)))
                        (_%g196541196551%_ _%g196542196554%_)))))
            (_%g196540196697%_ _%stx196534%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self196343%_ _%stx196344%_)
        (letrec* ((_%context-chain196346%_ (gxc#current-context-chain))
                  (_%make-import-path196347%_
                   (lambda (_%ctx196531%_)
                     (gxc#generate-meta-import-path
                      _%ctx196531%_
                      _%context-chain196346%_))))
          (let* ((_%g196349196359%_
                  (lambda (_%g196350196356%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196350196356%_))))
                 (_%g196348196528%_
                  (lambda (_%g196350196362%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196350196362%_))
                        (let ((_%e196352196364%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196350196362%_))))
                          (let ((_%hd196353196367%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196352196364%_)))
                                (_%tl196354196369%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196352196364%_))))
                            ((lambda (_%g196351196372%_)
                               (let _%lp196383%_ ((_%rest196385%_
                                                   _%g196351196372%_)
                                                  (_%r196386%_ '()))
                                 (let* ((_%rest196387196395%_ _%rest196385%_)
                                        (_%else196389196403%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r196386%_))))
                                        (_%K196391196516%_
                                         (lambda (_%rest196406%_ _%out196407%_)
                                           (let* ((_%out196408196421%_
                                                   _%out196407%_)
                                                  (_%E196411196425%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out196408196421%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K196415196495%_
                                                    (lambda (_%name196491%_
                                                             _%phi196492%_
                                                             _%key196493%_)
                                                      (_%lp196383%_
                                                       _%rest196406%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi196492%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key196493%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name196491%_))
                                             '()))))
                     _%r196386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K196412196475%_
                                                    (lambda (_%phi196429%_
                                                             _%src196430%_)
                                                      (let* ((_%out196470%_
                                                              (if _%src196430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g196431196440%_
                                              (_%make-import-path196347%_
                                               _%src196430%_))
                                             (_%E196434196444%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g196431196440%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K196436196460%_
                                               (lambda (_%path196458%_)
                                                 _%path196458%_))
                                              (_%K196435196450%_
                                               (lambda (_%path196448%_)
                                                 (cons 'in: _%path196448%_))))
                                          (if (pair? _%g196431196440%_)
                                              (let ((_%tl196438196465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g196431196440%_)))
                                                    (_%hd196437196463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g196431196440%_))))
                                                (if (null? _%tl196438196465%_)
                                                    (let ((_%path196468%_
                                                           _%hd196437196463%_))
                                                      (_%K196436196460%_
                                                       _%path196468%_))
                                                    (let ((_%path196453%_
                                                           _%g196431196440%_))
                                                      (_%K196435196450%_
                                                       _%path196453%_))))
                                              (let ((_%path196453%_
                                                     _%g196431196440%_))
                                                (_%K196435196450%_
                                                 _%path196453%_)))))
                                      '()))
                          '#t))
                     (_%out196472%_
                      (if (fxzero? _%phi196429%_)
                          _%out196470%_
                          (cons 'phi:
                                (cons _%phi196429%_
                                      (cons _%out196470%_ '()))))))
                (_%lp196383%_
                 _%rest196406%_
                 (cons _%out196472%_ _%r196386%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match196410196488%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out196408196421%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e196413196478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196408196421%_
                               '1
                               '#f
                               '#f)))
                           (_%e196414196483%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196408196421%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src196481%_ _%e196413196478%_)
                            (_%phi196486%_ _%e196414196483%_))
                        (_%K196412196475%_ _%phi196486%_ _%src196481%_)))
                    (_%E196411196425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out196408196421%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e196416196498%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out196408196421%_
                        '1
                        '#f
                        '#f)))
                    (_%e196417196501%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196408196421%_
                        '2
                        '#f
                        '#f)))
                    (_%e196418196506%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196408196421%_
                        '3
                        '#f
                        '#f)))
                    (_%e196419196511%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196408196421%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key196504%_ _%e196417196501%_)
                     (_%phi196509%_ _%e196418196506%_)
                     (_%name196514%_ _%e196419196511%_))
                 (_%K196415196495%_
                  _%name196514%_
                  _%phi196509%_
                  _%key196504%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match196410196488%_))))))))
                                   (if (pair? _%rest196387196395%_)
                                       (let ((_%hd196392196519%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest196387196395%_)))
                                             (_%tl196393196521%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest196387196395%_))))
                                         (let* ((_%out196524%_
                                                 _%hd196392196519%_)
                                                (_%rest196526%_
                                                 _%tl196393196521%_))
                                           (_%K196391196516%_
                                            _%rest196526%_
                                            _%out196524%_)))
                                       (_%else196389196403%_)))))
                             _%tl196354196369%_)))
                        (_%g196349196359%_ _%g196350196362%_)))))
            (_%g196348196528%_ _%stx196344%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self196304%_ _%stx196305%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196304%_ 'state)))
        (let* ((_%g196307196317%_
                (lambda (_%g196308196314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196308196314%_))))
               (_%g196306196340%_
                (lambda (_%g196308196320%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196308196320%_))
                      (let ((_%e196310196322%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196308196320%_))))
                        (let ((_%hd196311196325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196310196322%_)))
                              (_%tl196312196327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196310196322%_))))
                          ((lambda (_%g196309196330%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g196309196330%_)))
                           _%tl196312196327%_)))
                      (_%g196307196317%_ _%g196308196320%_)))))
          (_%g196306196340%_ _%stx196305%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self196179%_ _%stx196180%_)
        (letrec ((_%generate1196182%_
                  (lambda (_%id196299%_ _%eid196300%_)
                    (let ((_%eid196302%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid196300%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid196302%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx196180%_
                             _%eid196302%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id196299%_))
                            (cons _%eid196302%_ '()))))))
          (let* ((_%g196184196212%_
                  (lambda (_%g196185196209%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196185196209%_))))
                 (_%g196183196296%_
                  (lambda (_%g196185196215%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196185196215%_))
                        (let ((_%e196188196217%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196185196215%_))))
                          (let ((_%hd196189196220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196188196217%_)))
                                (_%tl196190196222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196188196217%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl196190196222%_))
                                (let ((_g205885_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl196190196222%_
                                          '0))))
                                  (begin
                                    (let ((_g205886_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g205885_)
                                                 (##values-length _g205885_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g205886_ 2)))
                                          (error "Context expects 2 values"
                                                 _g205886_)))
                                    (let ((_%target196191196225%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205885_ 0)))
                                          (_%tl196193196227%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205885_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196193196227%_))
                                          (letrec ((_%loop196194196230%_
                                                    (lambda (_%hd196192196233%_
                                                             _%eid196198196235%_
                                                             _%id196199196236%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd196192196233%_))
                                                          (let ((_%e196195196238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd196192196233%_))))
                    (let ((_%lp-hd196196196241%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196195196238%_)))
                          (_%lp-tl196197196243%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196195196238%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd196196196241%_))
                          (let ((_%e196202196246%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd196196196241%_))))
                            (let ((_%hd196203196249%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196202196246%_)))
                                  (_%tl196204196251%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196202196246%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196204196251%_))
                                  (let ((_%e196205196254%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196204196251%_))))
                                    (let ((_%hd196206196257%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196205196254%_)))
                                          (_%tl196207196259%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196205196254%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196207196259%_))
                                          (_%loop196194196230%_
                                           _%lp-tl196197196243%_
                                           (cons _%hd196206196257%_
                                                 _%eid196198196235%_)
                                           (cons _%hd196203196249%_
                                                 _%id196199196236%_))
                                          (_%g196184196212%_
                                           _%g196185196215%_))))
                                  (_%g196184196212%_ _%g196185196215%_))))
                          (_%g196184196212%_ _%g196185196215%_))))
                  (let ((_%eid196200196262%_ (reverse _%eid196198196235%_))
                        (_%id196201196263%_ (reverse _%id196199196236%_)))
                    ((lambda (_%g196186196265%_ _%g196187196266%_)
                       (cons '%#extern
                             (map _%generate1196182%_
                                  (let ((__tmp205887
                                         (lambda (_%g196281196284%_
                                                  _%g196282196286%_)
                                           (cons _%g196281196284%_
                                                 _%g196282196286%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp205887
                                     '()
                                     _%g196187196266%_))
                                  (let ((__tmp205888
                                         (lambda (_%g196288196291%_
                                                  _%g196289196293%_)
                                           (cons _%g196288196291%_
                                                 _%g196289196293%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp205888
                                     '()
                                     _%g196186196265%_)))))
                     _%eid196200196262%_
                     _%id196201196263%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop196194196230%_
                                             _%target196191196225%_
                                             '()
                                             '()))
                                          (_%g196184196212%_
                                           _%g196185196215%_)))))
                                (_%g196184196212%_ _%g196185196215%_))))
                        (_%g196184196212%_ _%g196185196215%_)))))
            (_%g196183196296%_ _%stx196180%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self195968%_ _%stx195969%_)
        (letrec ((_%generate1195971%_
                  (lambda (_%id196173%_)
                    (let ((_%eid196175%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id196173%_)))
                          (_%ident196176%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id196173%_)))
                          (_%props196177%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id196173%_))))
                      (cons '%#define-runtime
                            (cons _%ident196176%_
                                  (cons _%eid196175%_ _%props196177%_))))))
                 (_%generate*195972%_
                  (lambda (_%all196141%_)
                    (let* ((_%all196142196150%_ _%all196141%_)
                           (_%else196144196158%_
                            (lambda () (cons '%#begin _%all196141%_)))
                           (_%K196146196163%_
                            (lambda (_%one196161%_) _%one196161%_)))
                      (if (pair? _%all196142196150%_)
                          (let ((_%hd196147196166%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all196142196150%_)))
                                (_%tl196148196168%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all196142196150%_))))
                            (let ((_%one196171%_ _%hd196147196166%_))
                              (if (null? _%tl196148196168%_)
                                  (_%K196146196163%_ _%one196171%_)
                                  (_%else196144196158%_))))
                          (_%else196144196158%_))))))
          (let* ((_%g195974195991%_
                  (lambda (_%g195975195988%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195975195988%_))))
                 (_%g195973196138%_
                  (lambda (_%g195975195994%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195975195994%_))
                        (let ((_%e195978195996%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195975195994%_))))
                          (let ((_%hd195979195999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195978195996%_)))
                                (_%tl195980196001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195978195996%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195980196001%_))
                                (let ((_%e195981196004%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195980196001%_))))
                                  (let ((_%hd195982196007%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195981196004%_)))
                                        (_%tl195983196009%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195981196004%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195983196009%_))
                                        (let ((_%e195984196012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195983196009%_))))
                                          (let ((_%hd195985196015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195984196012%_)))
                                                (_%tl195986196017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195984196012%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195986196017%_))
                                                ((lambda (_%g195976196020%_
                                                          _%g195977196021%_)
                                                   (let _%lp196037%_ ((_%rest196039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g195977196021%_)
                              (_%r196040%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx205623205624%_
                                                             _%rest196039%_)
                                                            (_%g196045196062%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx205623205624%_)))))
               (let ((_%__kont205625205626%_
                      (lambda (_%g196047196125%_)
                        (_%lp196037%_ _%g196047196125%_ _%r196040%_)))
                     (_%__kont205627205628%_
                      (lambda (_%g196052196098%_ _%g196053196099%_)
                        (_%lp196037%_
                         _%g196052196098%_
                         (cons (_%generate1195971%_ _%g196053196099%_)
                               _%r196040%_))))
                     (_%__kont205629205630%_
                      (lambda (_%g196057196074%_)
                        (_%generate*195972%_
                         (let ((__tmp205889
                                (cons (_%generate1195971%_ _%g196057196074%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp205889 _%r196040%_)))))
                     (_%__kont205631205632%_
                      (lambda ()
                        (_%generate*195972%_ (reverse! _%r196040%_)))))
                 (let ((_%g196043196085%_
                        (lambda ()
                          (let ((_%g196057196074%_ _%__stx205623205624%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g196057196074%_))
                                (_%__kont205629205630%_ _%g196057196074%_)
                                (_%__kont205631205632%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx205623205624%_))
                       (let ((_%e196048196114%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx205623205624%_))))
                         (let ((_%tl196050196119%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e196048196114%_)))
                               (_%hd196049196117%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e196048196114%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd196049196117%_))
                               (let ((_%e196051196122%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd196049196117%_))))
                                 (if (equal? _%e196051196122%_ '#f)
                                     (_%__kont205625205626%_
                                      _%tl196050196119%_)
                                     (_%__kont205627205628%_
                                      _%tl196050196119%_
                                      _%hd196049196117%_)))
                               (_%__kont205627205628%_
                                _%tl196050196119%_
                                _%hd196049196117%_))))
                       (let () (declare (not safe)) (_%g196043196085%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd195985196015%_
                                                 _%hd195982196007%_)
                                                (_%g195974195991%_
                                                 _%g195975195994%_))))
                                        (_%g195974195991%_
                                         _%g195975195994%_))))
                                (_%g195974195991%_ _%g195975195994%_))))
                        (_%g195974195991%_ _%g195975195994%_)))))
            (_%g195973196138%_ _%stx195969%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self195865%_ _%stx195866%_)
        (let* ((_%g195868195885%_
                (lambda (_%g195869195882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195869195882%_))))
               (_%g195867195965%_
                (lambda (_%g195869195888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195869195888%_))
                      (let ((_%e195872195890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195869195888%_))))
                        (let ((_%hd195873195893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195872195890%_)))
                              (_%tl195874195895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195872195890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195874195895%_))
                              (let ((_%e195875195898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195874195895%_))))
                                (let ((_%hd195876195901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195875195898%_)))
                                      (_%tl195877195903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195875195898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195877195903%_))
                                      (let ((_%e195878195906%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195877195903%_))))
                                        (let ((_%hd195879195909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195878195906%_)))
                                              (_%tl195880195911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195878195906%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195880195911%_))
                                              ((lambda (_%g195870195914%_
                                                        _%g195871195915%_)
                                                 (let* ((_%eid195930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g195871195915%_)))
                                                        (_%phi195932%_
                                                         (let ((__tmp205890
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp205890 '1)))
                (_%block195934%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self195865%_ 'state))
                  _%phi195932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g195937195944%_
                                                           (lambda (_%g195938195941%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g195938195941%_))))
                  (_%g195936195962%_
                   (lambda (_%g195938195947%_)
                     ((lambda (_%g195939195949%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self195865%_ 'state))
                         _%phi195932%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g195939195949%_
                                     (cons _%g195870195914%_ '())))))
                      _%g195938195947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195936195962%_
                                                      _%eid195930%_))
                                                   (if _%block195934%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block195934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g195871195915%_))
                                             (cons _%eid195930%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g195871195915%_))
                           (cons _%eid195930%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195879195909%_
                                               _%hd195876195901%_)
                                              (_%g195868195885%_
                                               _%g195869195888%_))))
                                      (_%g195868195885%_ _%g195869195888%_))))
                              (_%g195868195885%_ _%g195869195888%_))))
                      (_%g195868195885%_ _%g195869195888%_)))))
          (_%g195867195965%_ _%stx195866%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self195797%_ _%stx195798%_)
        (let* ((_%g195800195817%_
                (lambda (_%g195801195814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195801195814%_))))
               (_%g195799195862%_
                (lambda (_%g195801195820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195801195820%_))
                      (let ((_%e195804195822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195801195820%_))))
                        (let ((_%hd195805195825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195804195822%_)))
                              (_%tl195806195827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195804195822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195806195827%_))
                              (let ((_%e195807195830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195806195827%_))))
                                (let ((_%hd195808195833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195807195830%_)))
                                      (_%tl195809195835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195807195830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195809195835%_))
                                      (let ((_%e195810195838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195809195835%_))))
                                        (let ((_%hd195811195841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195810195838%_)))
                                              (_%tl195812195843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195810195838%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195812195843%_))
                                              ((lambda (_%g195802195846%_
                                                        _%g195803195847%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g195803195847%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g195802195846%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195811195841%_
                                               _%hd195808195833%_)
                                              (_%g195800195817%_
                                               _%g195801195820%_))))
                                      (_%g195800195817%_ _%g195801195820%_))))
                              (_%g195800195817%_ _%g195801195820%_))))
                      (_%g195800195817%_ _%g195801195820%_)))))
          (_%g195799195862%_ _%stx195798%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self195794%_ _%stx195795%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self195794%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx195795%_)
        (gxc#generate-meta-define-values% _%self195794%_ _%stx195795%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self195791%_ _%stx195792%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self195791%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx195792%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp205892 (list)) (__tmp205891 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp205892
         '(src n open blocks)
         __tmp205891
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args195788%_
        (apply make-instance gxc#meta-state::t _%$args195788%_)))
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
      (lambda (_%self195774%_ _%ctx195775%_)
        (let ((_%self195778%_ _%self195774%_))
          (if (let ((__tmp205893
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self195778%_))))
                (declare (not safe))
                (##fx< '4 __tmp205893))
              (begin
                (let ((__tmp205894
                       (let ((__tmp205895
                              (##structure-ref
                               _%ctx195775%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp205895))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self195778%_
                   __tmp205894
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self195778%_ '1 '2 '#f '#f))
                (let ((__tmp205896
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self195778%_
                   __tmp205896
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self195778%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp205897
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self195778%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self195778%_
                       '4
                       __tmp205897))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp205899 (list)) (__tmp205898 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp205899
         '(ctx phi n code)
         __tmp205898
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args195649%_
        (apply make-instance gxc#meta-state-block::t _%$args195649%_)))
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
      (lambda (_%state195609%_ _%phi195610%_)
        (let* ((_%state195611195619%_ _%state195609%_)
               (_%E195613195622%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state195611195619%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K195614195631%_
                (lambda (_%open195625%_ _%n195626%_ _%src195627%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open195625%_ _%phi195610%_))
                      '#f
                      (let ((_%block-ref195629%_
                             (let ((__tmp205900 (number->string _%n195626%_)))
                               (declare (not safe))
                               (##string-append
                                _%src195627%_
                                '"~"
                                __tmp205900))))
                        (##structure-set!
                         _%state195609%_
                         (let () (declare (not safe)) (##fx+ _%n195626%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp205901
                               (let ((__tmp205902
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp205902
                                  _%phi195610%_
                                  _%n195626%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open195625%_ _%phi195610%_ __tmp205901))
                        _%block-ref195629%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state195611195619%_
                 'gxc#meta-state::t))
              (let* ((_%e195615195634%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195611195619%_
                         '1
                         '#f
                         '#f)))
                     (_%src195637%_ _%e195615195634%_)
                     (_%e195616195639%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195611195619%_
                         '2
                         '#f
                         '#f)))
                     (_%n195642%_ _%e195616195639%_)
                     (_%e195617195644%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195611195619%_
                         '3
                         '#f
                         '#f)))
                     (_%open195647%_ _%e195617195644%_))
                (_%K195614195631%_ _%open195647%_ _%n195642%_ _%src195637%_))
              (_%E195613195622%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state195603%_ _%phi195604%_ _%stx195605%_)
        (let ((_%block195607%_
               (let ((__tmp205903
                      (##structure-ref
                       _%state195603%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp205903 _%phi195604%_))))
          (##structure-set!
           _%block195607%_
           (cons _%stx195605%_
                 (##structure-ref
                  _%block195607%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state195597%_)
        (##structure-set!
         _%state195597%_
         (let ((__tmp205906
                (lambda (_%_195599%_ _%block195600%_ _%r195601%_)
                  (cons _%block195600%_ _%r195601%_)))
               (__tmp205905
                (##structure-ref _%state195597%_ '4 gxc#meta-state::t '#f))
               (__tmp205904
                (##structure-ref _%state195597%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp205906 __tmp205905 __tmp205904))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state195597%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state195550%_)
        (gxc#meta-state-end-phi! _%state195550%_)
        (let ((__tmp205908
               (lambda (_%block195552%_ _%r195553%_)
                 (let* ((_%block195554195563%_ _%block195552%_)
                        (_%E195556195566%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block195554195563%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K195557195574%_
                         (lambda (_%code195569%_
                                  _%n195570%_
                                  _%phi195571%_
                                  _%ctx195572%_)
                           (if (null? _%code195569%_)
                               _%r195553%_
                               (cons (cons _%ctx195572%_
                                           (cons _%phi195571%_
                                                 (cons _%n195570%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code195569%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r195553%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block195554195563%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e195558195577%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195554195563%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx195580%_ _%e195558195577%_)
                              (_%e195559195582%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195554195563%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi195585%_ _%e195559195582%_)
                              (_%e195560195587%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195554195563%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n195590%_ _%e195560195587%_)
                              (_%e195561195592%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195554195563%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code195595%_ _%e195561195592%_))
                         (_%K195557195574%_
                          _%code195595%_
                          _%n195590%_
                          _%phi195585%_
                          _%ctx195580%_))
                       (_%E195556195566%_)))))
              (__tmp205907
               (##structure-ref _%state195550%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp205908 '() __tmp205907))))
    (define gxc#collect-expression-refs
      (lambda (_%stx195546%_)
        (let ((_%ht195548%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht195548%_ _%stx195546%_)
          _%ht195548%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self195489%_ _%stx195490%_)
        (let* ((_%g195492195505%_
                (lambda (_%g195493195502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195493195502%_))))
               (_%g195491195543%_
                (lambda (_%g195493195508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195493195508%_))
                      (let ((_%e195495195510%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195493195508%_))))
                        (let ((_%hd195496195513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195495195510%_)))
                              (_%tl195497195515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195495195510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195497195515%_))
                              (let ((_%e195498195518%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195497195515%_))))
                                (let ((_%hd195499195521%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195498195518%_)))
                                      (_%tl195500195523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195498195518%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195500195523%_))
                                      ((lambda (_%g195494195526%_)
                                         (let* ((_%bind195538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g195494195526%_)))
                                                (_%eid195540%_
                                                 (if _%bind195538%_
                                                     (##structure-ref
                                                      _%bind195538%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g195494195526%_))))
                                                (__tmp205909
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self195489%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp205909
                                            _%eid195540%_
                                            _%eid195540%_)))
                                       _%hd195499195521%_)
                                      (_%g195492195505%_ _%g195493195508%_))))
                              (_%g195492195505%_ _%g195493195508%_))))
                      (_%g195492195505%_ _%g195493195508%_)))))
          (_%g195491195543%_ _%stx195490%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self195416%_ _%stx195417%_)
        (let* ((_%g195419195436%_
                (lambda (_%g195420195433%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195420195433%_))))
               (_%g195418195486%_
                (lambda (_%g195420195439%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195420195439%_))
                      (let ((_%e195423195441%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195420195439%_))))
                        (let ((_%hd195424195444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195423195441%_)))
                              (_%tl195425195446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195423195441%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195425195446%_))
                              (let ((_%e195426195449%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195425195446%_))))
                                (let ((_%hd195427195452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195426195449%_)))
                                      (_%tl195428195454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195426195449%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195428195454%_))
                                      (let ((_%e195429195457%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195428195454%_))))
                                        (let ((_%hd195430195460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195429195457%_)))
                                              (_%tl195431195462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195429195457%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195431195462%_))
                                              ((lambda (_%g195421195465%_
                                                        _%g195422195466%_)
                                                 (let* ((_%bind195481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g195422195466%_)))
                                                        (_%eid195483%_
                                                         (if _%bind195481%_
                                                             (##structure-ref
                                                              _%bind195481%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g195422195466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp205910
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self195416%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp205910
                                                      _%eid195483%_
                                                      _%eid195483%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self195416%_
                                                      _%g195421195465%_))))
                                               _%hd195430195460%_
                                               _%hd195427195452%_)
                                              (_%g195419195436%_
                                               _%g195420195439%_))))
                                      (_%g195419195436%_ _%g195420195439%_))))
                              (_%g195419195436%_ _%g195420195439%_))))
                      (_%g195419195436%_ _%g195420195439%_)))))
          (_%g195418195486%_ _%stx195417%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self195373%_ _%stx195374%_)
        (let* ((_%g195376195386%_
                (lambda (_%g195377195383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195377195383%_))))
               (_%g195375195413%_
                (lambda (_%g195377195389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195377195389%_))
                      (let ((_%e195379195391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195377195389%_))))
                        (let ((_%hd195380195394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195379195391%_)))
                              (_%tl195381195396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195379195391%_))))
                          ((lambda (_%g195378195399%_)
                             (let ((__tmp205911
                                    (lambda (_%g195408195410%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self195373%_
                                         _%g195408195410%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp205911 _%g195378195399%_)))
                           _%tl195381195396%_)))
                      (_%g195376195386%_ _%g195377195389%_)))))
          (_%g195375195413%_ _%stx195374%_))))
    (define gxc#count-values-single%
      (lambda (_%self195370%_ _%stx195371%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self195238%_ _%stx195239%_)
        (let* ((_%__stx205653205654%_ _%stx195239%_)
               (_%g195242195271%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205653205654%_)))))
          (let ((_%__kont205655205656%_
                 (lambda (_%g195244195337%_ _%g195245195338%_)
                   (length (let ((__tmp205912
                                  (lambda (_%g195359195362%_ _%g195360195364%_)
                                    (cons _%g195359195362%_
                                          _%g195360195364%_))))
                             (declare (not safe))
                             (foldr__0 __tmp205912 '() _%g195244195337%_)))))
                (_%__kont205659205660%_ (lambda () '#f)))
            (let ((_%__match205698205699%_
                   (lambda (_%e195246195283%_
                            _%hd195247195286%_
                            _%tl195248195288%_
                            _%e195249195291%_
                            _%hd195250195294%_
                            _%tl195251195296%_
                            _%e195252195299%_
                            _%hd195253195302%_
                            _%tl195254195304%_
                            _%e195255195307%_
                            _%hd195256195310%_
                            _%tl195257195312%_
                            _%__splice205657205658%_
                            _%target195258195315%_
                            _%tl195260195317%_)
                     (letrec ((_%loop195261195320%_
                               (lambda (_%hd195259195323%_
                                        _%rand195265195325%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195259195323%_))
                                     (let ((_%e195262195327%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195259195323%_))))
                                       (let ((_%lp-tl195264195332%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195262195327%_)))
                                             (_%lp-hd195263195330%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195262195327%_))))
                                         (_%loop195261195320%_
                                          _%lp-tl195264195332%_
                                          (cons _%lp-hd195263195330%_
                                                _%rand195265195325%_))))
                                     (let ((_%rand195266195335%_
                                            (reverse _%rand195265195325%_)))
                                       (let ((_%g195244195337%_
                                              _%rand195266195335%_)
                                             (_%g195245195338%_
                                              _%hd195256195310%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g195245195338%_
                                                'values))
                                             (_%__kont205655205656%_
                                              _%g195244195337%_
                                              _%g195245195338%_)
                                             (_%__kont205659205660%_))))))))
                       (_%loop195261195320%_ _%target195258195315%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205653205654%_))
                  (let ((_%e195246195283%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205653205654%_))))
                    (let ((_%tl195248195288%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195246195283%_)))
                          (_%hd195247195286%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195246195283%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195248195288%_))
                          (let ((_%e195249195291%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195248195288%_))))
                            (let ((_%tl195251195296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195249195291%_)))
                                  (_%hd195250195294%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195249195291%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195250195294%_))
                                  (let ((_%e195252195299%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195250195294%_))))
                                    (let ((_%tl195254195304%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195252195299%_)))
                                          (_%hd195253195302%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195252195299%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195253195302%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195253195302%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195254195304%_))
                                                  (let ((_%e195255195307%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195254195304%_))))
                                                    (let ((_%tl195257195312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195255195307%_)))
                                                          (_%hd195256195310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195255195307%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195257195312%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195251195296%_))
                      (let ((_%__splice205657205658%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl195251195296%_
                                '0))))
                        (let ((_%tl195260195317%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205657205658%_ '1)))
                              (_%target195258195315%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205657205658%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195260195317%_))
                              (_%__match205698205699%_
                               _%e195246195283%_
                               _%hd195247195286%_
                               _%tl195248195288%_
                               _%e195249195291%_
                               _%hd195250195294%_
                               _%tl195251195296%_
                               _%e195252195299%_
                               _%hd195253195302%_
                               _%tl195254195304%_
                               _%e195255195307%_
                               _%hd195256195310%_
                               _%tl195257195312%_
                               _%__splice205657205658%_
                               _%target195258195315%_
                               _%tl195260195317%_)
                              (_%__kont205659205660%_))))
                      (_%__kont205659205660%_))
                  (_%__kont205659205660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205659205660%_))
                                              (_%__kont205659205660%_))
                                          (_%__kont205659205660%_))))
                                  (_%__kont205659205660%_))))
                          (_%__kont205659205660%_))))
                  (_%__kont205659205660%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self195143%_ _%stx195144%_)
        (let* ((_%g195146195167%_
                (lambda (_%g195147195164%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195147195164%_))))
               (_%g195145195235%_
                (lambda (_%g195147195170%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195147195170%_))
                      (let ((_%e195151195172%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195147195170%_))))
                        (let ((_%hd195152195175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195151195172%_)))
                              (_%tl195153195177%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195151195172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195153195177%_))
                              (let ((_%e195154195180%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195153195177%_))))
                                (let ((_%hd195155195183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195154195180%_)))
                                      (_%tl195156195185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195154195180%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195156195185%_))
                                      (let ((_%e195157195188%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195156195185%_))))
                                        (let ((_%hd195158195191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195157195188%_)))
                                              (_%tl195159195193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195157195188%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195159195193%_))
                                              (let ((_%e195160195196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195159195193%_))))
                                                (let ((_%hd195161195199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195160195196%_)))
                                                      (_%tl195162195201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195160195196%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195162195201%_))
                                                      ((lambda (_%g195148195204%_
                                                                _%g195149195205%_
                                                                _%g195150195206%_)
                                                         (let ((_%c1195223195225%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self195143%_
                           _%g195149195205%_))))
                   (if _%c1195223195225%_
                       (let* ((_%c1195227%_ _%c1195223195225%_)
                              (_%c2195228195230%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195143%_
                                  _%g195148195204%_))))
                         (if _%c2195228195230%_
                             (let ((_%c2195232%_ _%c2195228195230%_))
                               (if (fx= _%c1195227%_ _%c2195232%_)
                                   _%c1195227%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd195161195199%_
               _%hd195158195191%_
               _%hd195155195183%_)
              (_%g195146195167%_ _%g195147195170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195146195167%_
                                               _%g195147195170%_))))
                                      (_%g195146195167%_ _%g195147195170%_))))
                              (_%g195146195167%_ _%g195147195170%_))))
                      (_%g195146195167%_ _%g195147195170%_)))))
          (_%g195145195235%_ _%stx195144%_))))))
