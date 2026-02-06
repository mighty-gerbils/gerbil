(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770405374)
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
      (let ((__tmp202663 (list gxc#::void::t))
            (__tmp202662 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp202663
         '()
         __tmp202662
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args201277%_
        (apply make-instance gxc#::collect-bindings::t _%$args201277%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp202664
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
        (__make-atomic-promise __tmp202664)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx201269%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self201272%_
                (let ((__obj202638
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj202638))
               (__tmp202665
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201272%_ _%stx201269%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202665
           gxc#current-compile-method
           _%self201272%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp202667 (list gxc#::void::t))
            (__tmp202666 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp202667
         '(modules)
         __tmp202666
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args201266%_
        (apply make-instance gxc#::lift-modules::t _%$args201266%_)))
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
      (let ((__tmp202668
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
        (__make-atomic-promise __tmp202668)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords201241%_ _%modules201238201242%_ _%stx201243%_)
        (let ((_%modules201246%_
               (if (eq? _%modules201238201242%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules201238201242%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self201248%_
                  (let ((__obj202640
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202640
                       _%modules201246%_
                       '1
                       '#f
                       '#f))
                    __obj202640))
                 (__tmp202669
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201248%_ _%stx201243%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202669
             gxc#current-compile-method
             _%self201248%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords201255%_ . _%args201256%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords201255%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201255%_
                  'modules:
                  absent-value))
               _%args201256%_)))
    (define gxc#apply-lift-modules
      (lambda _%args201239201262%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args201239201262%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp202671 (list)) (__tmp202670 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp202671
         '()
         __tmp202670
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args201234%_
        (apply make-instance gxc#::find-runtime-code::t _%$args201234%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp202672
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
        (__make-atomic-promise __tmp202672)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx201226%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self201229%_
                (let ((__obj202642
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj202642))
               (__tmp202673
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201229%_ _%stx201226%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202673
           gxc#current-compile-method
           _%self201229%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp202675 (list gxc#::false::t))
            (__tmp202674 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp202675
         '()
         __tmp202674
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args201223%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args201223%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp202676
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
        (__make-atomic-promise __tmp202676)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx201215%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self201218%_
                (let ((__obj202644
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj202644))
               (__tmp202677
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201218%_ _%stx201215%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202677
           gxc#current-compile-method
           _%self201218%_))))
    (define gxc#::count-values::t
      (let ((__tmp202679 (list gxc#::false-expression::t))
            (__tmp202678 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp202679
         '()
         __tmp202678
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args201212%_
        (apply make-instance gxc#::count-values::t _%$args201212%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp202680
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
        (__make-atomic-promise __tmp202680)))
    (define gxc#apply-count-values
      (lambda (_%stx201204%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self201207%_
                (let ((__obj202646
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj202646))
               (__tmp202681
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201207%_ _%stx201204%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202681
           gxc#current-compile-method
           _%self201207%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp202682 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp202682
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args201201%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args201201%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp202683
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
        (__make-atomic-promise __tmp202683)))
    (define gxc#::generate-loader::t
      (let ((__tmp202685 (list gxc#::generate-runtime-empty::t))
            (__tmp202684 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp202685
         '()
         __tmp202684
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args201197%_
        (apply make-instance gxc#::generate-loader::t _%$args201197%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp202686
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
        (__make-atomic-promise __tmp202686)))
    (define gxc#apply-generate-loader
      (lambda (_%stx201189%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self201192%_
                (let ((__obj202649
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj202649))
               (__tmp202687
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201192%_ _%stx201189%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202687
           gxc#current-compile-method
           _%self201192%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp202688 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp202688
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args201186%_
        (apply make-instance gxc#::generate-runtime::t _%$args201186%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp202689
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
        (__make-atomic-promise __tmp202689)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx201178%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self201181%_
                (let ((__obj202651
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj202651))
               (__tmp202690
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201181%_ _%stx201178%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202690
           gxc#current-compile-method
           _%self201181%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp202692 (list gxc#::generate-runtime::t))
            (__tmp202691 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp202692
         '()
         __tmp202691
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args201175%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args201175%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp202693
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
        (__make-atomic-promise __tmp202693)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx201167%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self201170%_
                (let ((__obj202653
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj202653))
               (__tmp202694
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201170%_ _%stx201167%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202694
           gxc#current-compile-method
           _%self201170%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp202695 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp202695
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args201164%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args201164%_)))
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
      (let ((__tmp202696
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
        (__make-atomic-promise __tmp202696)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords201139%_ _%table201136201140%_ _%stx201141%_)
        (let ((_%table201144%_
               (if (eq? _%table201136201140%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table201136201140%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self201146%_
                  (let ((__obj202655
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202655
                       _%table201144%_
                       '1
                       '#f
                       '#f))
                    __obj202655))
                 (__tmp202697
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201146%_ _%stx201141%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202697
             gxc#current-compile-method
             _%self201146%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords201153%_ . _%args201154%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords201153%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201153%_
                  'table:
                  absent-value))
               _%args201154%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args201137201160%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args201137201160%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp202699 (list gxc#::void-expression::t))
            (__tmp202698 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp202699
         '(state)
         __tmp202698
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args201132%_
        (apply make-instance gxc#::generate-meta::t _%$args201132%_)))
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
      (let ((__tmp202700
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
        (__make-atomic-promise __tmp202700)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords201107%_ _%state201104201108%_ _%stx201109%_)
        (let ((_%state201112%_
               (if (eq? _%state201104201108%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state201104201108%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self201114%_
                  (let ((__obj202657
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202657
                       _%state201112%_
                       '1
                       '#f
                       '#f))
                    __obj202657))
                 (__tmp202701
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201114%_ _%stx201109%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202701
             gxc#current-compile-method
             _%self201114%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords201121%_ . _%args201122%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords201121%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201121%_
                  'state:
                  absent-value))
               _%args201122%_)))
    (define gxc#apply-generate-meta
      (lambda _%args201105201128%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args201105201128%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp202703 (list)) (__tmp202702 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp202703
         '(state)
         __tmp202702
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args201100%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args201100%_)))
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
      (let ((__tmp202704
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
        (__make-atomic-promise __tmp202704)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords201075%_ _%state201072201076%_ _%stx201077%_)
        (let ((_%state201080%_
               (if (eq? _%state201072201076%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state201072201076%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self201082%_
                  (let ((__obj202659
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202659
                       _%state201080%_
                       '1
                       '#f
                       '#f))
                    __obj202659))
                 (__tmp202705
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201082%_ _%stx201077%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202705
             gxc#current-compile-method
             _%self201082%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords201089%_ . _%args201090%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords201089%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201089%_
                  'state:
                  absent-value))
               _%args201090%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args201073201096%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args201073201096%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self201001%_ _%stx201002%_)
        (let* ((_%g201004201021%_
                (lambda (_%g201005201018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201005201018%_))))
               (_%g201003201068%_
                (lambda (_%g201005201024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201005201024%_))
                      (let ((_%e201008201026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201005201024%_))))
                        (let ((_%hd201009201029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201008201026%_)))
                              (_%tl201010201031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201008201026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201010201031%_))
                              (let ((_%e201011201034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201010201031%_))))
                                (let ((_%hd201012201037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201011201034%_)))
                                      (_%tl201013201039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201011201034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201013201039%_))
                                      (let ((_%e201014201042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201013201039%_))))
                                        (let ((_%hd201015201045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201014201042%_)))
                                              (_%tl201016201047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201014201042%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201016201047%_))
                                              ((lambda (_%g201006201050%_
                                                        _%g201007201051%_)
                                                 (let ((__tmp202706
                                                        (lambda (_%bind201066%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind201066%_))
                      (gxc#add-module-binding! _%bind201066%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp202706
                                                    _%g201007201051%_)))
                                               _%hd201015201045%_
                                               _%hd201012201037%_)
                                              (_%g201004201021%_
                                               _%g201005201024%_))))
                                      (_%g201004201021%_ _%g201005201024%_))))
                              (_%g201004201021%_ _%g201005201024%_))))
                      (_%g201004201021%_ _%g201005201024%_)))))
          (_%g201003201068%_ _%stx201002%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self200933%_ _%stx200934%_)
        (let* ((_%g200936200953%_
                (lambda (_%g200937200950%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200937200950%_))))
               (_%g200935200998%_
                (lambda (_%g200937200956%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200937200956%_))
                      (let ((_%e200940200958%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200937200956%_))))
                        (let ((_%hd200941200961%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200940200958%_)))
                              (_%tl200942200963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200940200958%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200942200963%_))
                              (let ((_%e200943200966%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200942200963%_))))
                                (let ((_%hd200944200969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200943200966%_)))
                                      (_%tl200945200971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200943200966%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200945200971%_))
                                      (let ((_%e200946200974%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200945200971%_))))
                                        (let ((_%hd200947200977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200946200974%_)))
                                              (_%tl200948200979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200946200974%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200948200979%_))
                                              ((lambda (_%g200938200982%_
                                                        _%g200939200983%_)
                                                 (gxc#add-module-binding!
                                                  _%g200939200983%_
                                                  '#t))
                                               _%hd200947200977%_
                                               _%hd200944200969%_)
                                              (_%g200936200953%_
                                               _%g200937200956%_))))
                                      (_%g200936200953%_ _%g200937200956%_))))
                              (_%g200936200953%_ _%g200937200956%_))))
                      (_%g200936200953%_ _%g200937200956%_)))))
          (_%g200935200998%_ _%stx200934%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self200875%_ _%stx200876%_)
        (let* ((_%g200878200892%_
                (lambda (_%g200879200889%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200879200889%_))))
               (_%g200877200930%_
                (lambda (_%g200879200895%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200879200895%_))
                      (let ((_%e200882200897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200879200895%_))))
                        (let ((_%hd200883200900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200882200897%_)))
                              (_%tl200884200902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200882200897%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200884200902%_))
                              (let ((_%e200885200905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200884200902%_))))
                                (let ((_%hd200886200908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200885200905%_)))
                                      (_%tl200887200910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200885200905%_))))
                                  ((lambda (_%g200880200913%_
                                            _%g200881200914%_)
                                     (let ((_%ctx200927%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g200881200914%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self200875%_
                                           'modules))
                                        (cons _%ctx200927%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self200875%_
                                                        'modules)))))
                                       (let ((__tmp202707
                                              (lambda ()
                                                (let ((__tmp202708
                                                       (##structure-ref
                                                        _%ctx200927%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self200875%_
                                                   __tmp202708)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp202707
                                          gx#current-expander-context
                                          _%ctx200927%_))))
                                   _%tl200887200910%_
                                   _%hd200886200908%_)))
                              (_%g200878200892%_ _%g200879200895%_))))
                      (_%g200878200892%_ _%g200879200895%_)))))
          (_%g200877200930%_ _%stx200876%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls200829200831%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls200829200831%_
              (let ((_%decls200833%_ _%decls200829200831%_))
                (let _%lp200835%_ ((_%rest200837%_ _%decls200833%_))
                  (let* ((_%rest200838200846%_ _%rest200837%_)
                         (_%else200840200854%_ (lambda () '#f))
                         (_%K200842200863%_
                          (lambda (_%decls200857%_ _%decl200858%_)
                            (if (equal? _%decl200858%_ '(not safe))
                                '#t
                                (if (equal? _%decl200858%_ '(safe))
                                    '#f
                                    (_%lp200835%_ _%decls200857%_))))))
                    (if (pair? _%rest200838200846%_)
                        (let ((_%hd200843200866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest200838200846%_)))
                              (_%tl200844200868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest200838200846%_))))
                          (let* ((_%decl200871%_ _%hd200843200866%_)
                                 (_%decls200873%_ _%tl200844200868%_))
                            (_%K200842200863%_
                             _%decls200873%_
                             _%decl200871%_)))
                        (_%else200840200854%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id200823%_ _%syntax?200824%_)
        (let ((_%eid200826%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id200823%_))
                '1
                gx#binding::t
                '#f))
              (_%ht200827%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid200826%_))
              '#!void
              (let ((__tmp202709
                     (let ((__tmp202710
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid200826%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp202710 _%syntax?200824%_))))
                (declare (not safe))
                (hash-put! _%ht200827%_ _%eid200826%_ __tmp202709))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self200820%_ _%stx200821%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self200667%_ _%stx200668%_)
        (letrec ((_%simplify200670%_
                  (lambda (_%body200718%_)
                    (let _%lp200720%_ ((_%rest200722%_ _%body200718%_)
                                       (_%r200723%_ '()))
                      (let* ((_%rest200724200732%_ _%rest200722%_)
                             (_%else200726200740%_
                              (lambda () (reverse _%r200723%_)))
                             (_%K200728200808%_
                              (lambda (_%rest200743%_ _%hd200744%_)
                                (let* ((_%hd200745200761%_ _%hd200744%_)
                                       (_%else200749200769%_
                                        (lambda ()
                                          (_%lp200720%_
                                           _%rest200743%_
                                           (cons _%hd200744%_ _%r200723%_)))))
                                  (let ((_%K200757200798%_
                                         (lambda (_%exprs200796%_)
                                           (_%lp200720%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest200743%_
                                               _%exprs200796%_))
                                            _%r200723%_)))
                                        (_%K200752200782%_
                                         (lambda ()
                                           (if (null? _%rest200743%_)
                                               (_%lp200720%_
                                                _%rest200743%_
                                                (cons _%hd200744%_
                                                      _%r200723%_))
                                               (_%lp200720%_
                                                _%rest200743%_
                                                _%r200723%_))))
                                        (_%K200751200774%_
                                         (lambda ()
                                           (if (null? _%rest200743%_)
                                               (_%lp200720%_
                                                _%rest200743%_
                                                (cons _%hd200744%_
                                                      _%r200723%_))
                                               (_%lp200720%_
                                                _%rest200743%_
                                                _%r200723%_)))))
                                    (let ((_%try-match200748200777%_
                                           (lambda ()
                                             (if (symbol? _%hd200745200761%_)
                                                 (_%K200751200774%_)
                                                 (_%else200749200769%_)))))
                                      (if (pair? _%hd200745200761%_)
                                          (let ((_%tl200759200803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd200745200761%_)))
                                                (_%hd200758200801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd200745200761%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200758200801%_
                                                         'begin))
                                                (let ((_%exprs200806%_
                                                       _%tl200759200803%_))
                                                  (_%K200757200798%_
                                                   _%exprs200806%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd200758200801%_
                                                             'quote))
                                                    (if (pair? _%tl200759200803%_)
                                                        (let ((_%tl200756200790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl200759200803%_))))
                  (if (null? _%tl200756200790%_)
                      (_%K200752200782%_)
                      (_%try-match200748200777%_)))
                (_%try-match200748200777%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match200748200777%_))))
                                          (_%try-match200748200777%_))))))))
                        (if (pair? _%rest200724200732%_)
                            (let ((_%hd200729200811%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200724200732%_)))
                                  (_%tl200730200813%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200724200732%_))))
                              (let* ((_%hd200816%_ _%hd200729200811%_)
                                     (_%rest200818%_ _%tl200730200813%_))
                                (_%K200728200808%_
                                 _%rest200818%_
                                 _%hd200816%_)))
                            (_%else200726200740%_)))))))
          (let* ((_%g200672200682%_
                  (lambda (_%g200673200679%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200673200679%_))))
                 (_%g200671200715%_
                  (lambda (_%g200673200685%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200673200685%_))
                        (let ((_%e200675200687%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200673200685%_))))
                          (let ((_%hd200676200690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200675200687%_)))
                                (_%tl200677200692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200675200687%_))))
                            ((lambda (_%g200674200695%_)
                               (let* ((_%body200710%_
                                       (map (lambda (_%g200705200707%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self200667%_
                                                 _%g200705200707%_)))
                                            _%g200674200695%_))
                                      (_%body200712%_
                                       (_%simplify200670%_ _%body200710%_)))
                                 (if (let ((__tmp202711
                                            (length _%body200712%_)))
                                       (declare (not safe))
                                       (##fx= __tmp202711 '1))
                                     (car _%body200712%_)
                                     (cons 'begin _%body200712%_))))
                             _%tl200677200692%_)))
                        (_%g200672200682%_ _%g200673200685%_)))))
            (_%g200671200715%_ _%stx200668%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self200628%_ _%stx200629%_)
        (let* ((_%g200631200641%_
                (lambda (_%g200632200638%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200632200638%_))))
               (_%g200630200664%_
                (lambda (_%g200632200644%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200632200644%_))
                      (let ((_%e200634200646%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200632200644%_))))
                        (let ((_%hd200635200649%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200634200646%_)))
                              (_%tl200636200651%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200634200646%_))))
                          ((lambda (_%g200633200654%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g200633200654%_))))
                           _%tl200636200651%_)))
                      (_%g200631200641%_ _%g200632200644%_)))))
          (_%g200630200664%_ _%stx200629%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self200394%_ _%stx200395%_)
        (let* ((_%__stx201301201302%_ _%stx200395%_)
               (_%g200399200451%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201301201302%_)))))
          (let ((_%__kont201303201304%_
                 (lambda (_%g200401200610%_ _%g200402200611%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self200394%_ _%g200401200610%_))))
                (_%__kont201305201306%_
                 (lambda (_%g200412200558%_
                          _%g200413200559%_
                          _%g200414200560%_)
                   (if (let ((__tmp202712
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g200414200560%_))))
                         (declare (not safe))
                         (##memq __tmp202712 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self200394%_
                          _%g200412200558%_)))))
                (_%__kont201309201310%_
                 (lambda (_%g200436200480%_ _%g200437200481%_)
                   (let ((_%decls200496%_
                          (map gx#syntax->datum _%g200437200481%_)))
                     (let ((__tmp202715
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls200496%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self200394%_
                                                   _%g200436200480%_))
                                                '())))))
                           (__tmp202713
                            (let ((__tmp202714
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp202714 _%decls200496%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp202715
                        gxc#current-compile-decls
                        __tmp202713))))))
            (let* ((_%__match201356201357%_
                    (lambda (_%e200415200504%_
                             _%hd200416200507%_
                             _%tl200417200509%_
                             _%e200418200512%_
                             _%hd200419200515%_
                             _%tl200420200517%_
                             _%e200421200520%_
                             _%hd200422200523%_
                             _%tl200423200525%_
                             _%__splice201307201308%_
                             _%target200424200528%_
                             _%tl200426200530%_)
                      (letrec ((_%loop200427200533%_
                                (lambda (_%hd200425200536%_
                                         _%param200431200538%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200425200536%_))
                                      (let ((_%e200428200540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200425200536%_))))
                                        (let ((_%lp-tl200430200545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200428200540%_)))
                                              (_%lp-hd200429200543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200428200540%_))))
                                          (_%loop200427200533%_
                                           _%lp-tl200430200545%_
                                           (cons _%lp-hd200429200543%_
                                                 _%param200431200538%_))))
                                      (let ((_%param200432200548%_
                                             (reverse _%param200431200538%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200420200517%_))
                                            (let ((_%e200433200550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200420200517%_))))
                                              (let ((_%tl200435200555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200433200550%_)))
                                                    (_%hd200434200553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200433200550%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200435200555%_))
                                                    (let ((_%g200412200558%_
                                                           _%hd200434200553%_)
                                                          (_%g200413200559%_
                                                           _%param200432200548%_)
                                                          (_%g200414200560%_
                                                           _%hd200422200523%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g200414200560%_))
                       (not (let ((__tmp202716
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g200414200560%_))))
                              (declare (not safe))
                              (##memq __tmp202716 gxc#gambit-annotations))))
                  (_%__kont201305201306%_
                   _%g200412200558%_
                   _%g200413200559%_
                   _%g200414200560%_)
                  (_%__kont201309201310%_
                   _%hd200434200553%_
                   _%hd200419200515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200399200451%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200399200451%_))))))))
                        (_%loop200427200533%_ _%target200424200528%_ '()))))
                   (_%__match201330201331%_
                    (lambda (_%e200403200586%_
                             _%hd200404200589%_
                             _%tl200405200591%_
                             _%e200406200594%_
                             _%hd200407200597%_
                             _%tl200408200599%_
                             _%e200409200602%_
                             _%hd200410200605%_
                             _%tl200411200607%_)
                      (let ((_%g200401200610%_ _%hd200410200605%_)
                            (_%g200402200611%_ _%hd200407200597%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g200402200611%_))
                            (_%__kont201303201304%_
                             _%g200401200610%_
                             _%g200402200611%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200407200597%_))
                                (let ((_%e200421200520%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200407200597%_))))
                                  (let ((_%tl200423200525%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200421200520%_)))
                                        (_%hd200422200523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200421200520%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200423200525%_))
                                        (let ((_%__splice201307201308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl200423200525%_
                                                  '0))))
                                          (let ((_%tl200426200530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201307201308%_
                                                    '1)))
                                                (_%target200424200528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201307201308%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200426200530%_))
                                                (_%__match201356201357%_
                                                 _%e200403200586%_
                                                 _%hd200404200589%_
                                                 _%tl200405200591%_
                                                 _%e200406200594%_
                                                 _%hd200407200597%_
                                                 _%tl200408200599%_
                                                 _%e200421200520%_
                                                 _%hd200422200523%_
                                                 _%tl200423200525%_
                                                 _%__splice201307201308%_
                                                 _%target200424200528%_
                                                 _%tl200426200530%_)
                                                (_%__kont201309201310%_
                                                 _%hd200410200605%_
                                                 _%hd200407200597%_))))
                                        (_%__kont201309201310%_
                                         _%hd200410200605%_
                                         _%hd200407200597%_))))
                                (_%__kont201309201310%_
                                 _%hd200410200605%_
                                 _%hd200407200597%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201301201302%_))
                  (let ((_%e200403200586%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201301201302%_))))
                    (let ((_%tl200405200591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200403200586%_)))
                          (_%hd200404200589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200403200586%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200405200591%_))
                          (let ((_%e200406200594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200405200591%_))))
                            (let ((_%tl200408200599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200406200594%_)))
                                  (_%hd200407200597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200406200594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200408200599%_))
                                  (let ((_%e200409200602%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200408200599%_))))
                                    (let ((_%tl200411200607%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200409200602%_)))
                                          (_%hd200410200605%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200409200602%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200411200607%_))
                                          (_%__match201330201331%_
                                           _%e200403200586%_
                                           _%hd200404200589%_
                                           _%tl200405200591%_
                                           _%e200406200594%_
                                           _%hd200407200597%_
                                           _%tl200408200599%_
                                           _%e200409200602%_
                                           _%hd200410200605%_
                                           _%tl200411200607%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd200407200597%_))
                                              (let ((_%e200421200520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd200407200597%_))))
                                                (let ((_%tl200423200525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200421200520%_)))
                                                      (_%hd200422200523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200421200520%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl200423200525%_))
                                                      (let ((_%__splice201307201308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl200423200525%_
                        '0))))
                (let ((_%tl200426200530%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201307201308%_ '1)))
                      (_%target200424200528%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201307201308%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200426200530%_))
                      (_%__match201356201357%_
                       _%e200403200586%_
                       _%hd200404200589%_
                       _%tl200405200591%_
                       _%e200406200594%_
                       _%hd200407200597%_
                       _%tl200408200599%_
                       _%e200421200520%_
                       _%hd200422200523%_
                       _%tl200423200525%_
                       _%__splice201307201308%_
                       _%target200424200528%_
                       _%tl200426200530%_)
                      (let () (declare (not safe)) (_%g200399200451%_)))))
              (let () (declare (not safe)) (_%g200399200451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200399200451%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200407200597%_))
                                      (let ((_%e200421200520%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200407200597%_))))
                                        (let ((_%tl200423200525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200421200520%_)))
                                              (_%hd200422200523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200421200520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl200423200525%_))
                                              (let ((_%__splice201307201308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl200423200525%_
                                                        '0))))
                                                (let ((_%tl200426200530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201307201308%_
                                                          '1)))
                                                      (_%target200424200528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201307201308%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200426200530%_))
                                                      (_%__match201356201357%_
                                                       _%e200403200586%_
                                                       _%hd200404200589%_
                                                       _%tl200405200591%_
                                                       _%e200406200594%_
                                                       _%hd200407200597%_
                                                       _%tl200408200599%_
                                                       _%e200421200520%_
                                                       _%hd200422200523%_
                                                       _%tl200423200525%_
                                                       _%__splice201307201308%_
                                                       _%target200424200528%_
                                                       _%tl200426200530%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200399200451%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200399200451%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200399200451%_))))))
                          (let () (declare (not safe)) (_%g200399200451%_)))))
                  (let () (declare (not safe)) (_%g200399200451%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self200353%_ _%stx200354%_)
        (let* ((_%g200356200366%_
                (lambda (_%g200357200363%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200357200363%_))))
               (_%g200355200391%_
                (lambda (_%g200357200369%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200357200369%_))
                      (let ((_%e200359200371%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200357200369%_))))
                        (let ((_%hd200360200374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200359200371%_)))
                              (_%tl200361200376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200359200371%_))))
                          ((lambda (_%g200358200379%_)
                             (let ((_%decls200389%_
                                    (map gx#syntax->datum _%g200358200379%_)))
                               (let ((__tmp202717
                                      (let ((__tmp202718
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp202718
                                         _%decls200389%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp202717))
                               (cons 'declare _%decls200389%_)))
                           _%tl200361200376%_)))
                      (_%g200356200366%_ _%g200357200369%_)))))
          (_%g200355200391%_ _%stx200354%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self200100%_ _%stx200101%_)
        (let* ((_%g200103200120%_
                (lambda (_%g200104200117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200104200117%_))))
               (_%g200102200350%_
                (lambda (_%g200104200123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200104200123%_))
                      (let ((_%e200107200125%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200104200123%_))))
                        (let ((_%hd200108200128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200107200125%_)))
                              (_%tl200109200130%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200107200125%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200109200130%_))
                              (let ((_%e200110200133%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200109200130%_))))
                                (let ((_%hd200111200136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200110200133%_)))
                                      (_%tl200112200138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200110200133%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200112200138%_))
                                      (let ((_%e200113200141%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200112200138%_))))
                                        (let ((_%hd200114200144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200113200141%_)))
                                              (_%tl200115200146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200113200141%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200115200146%_))
                                              ((lambda (_%g200105200149%_
                                                        _%g200106200150%_)
                                                 (let* ((_%__stx201409201410%_
                                                         _%g200106200150%_)
                                                        (_%g200167200181%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx201409201410%_)))))
                                                   (let ((_%__kont201411201412%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self200100%_
                                                               _%g200105200149%_))))
                                                         (_%__kont201413201414%_
                                                          (lambda (_%g200173200313%_)
                                                            (let ((_%eid200322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g200173200313%_))))
                      (let ((_%lambda-expr200323200325%_
                             (gxc#apply-find-lambda-expression
                              _%g200105200149%_)))
                        (if _%lambda-expr200323200325%_
                            (let* ((_%lambda-expr200327%_
                                    _%lambda-expr200323200325%_)
                                   (__tmp202719
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp202719
                               _%lambda-expr200327%_
                               _%eid200322%_))
                            '#f))
                      (cons 'define
                            (cons _%eid200322%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self200100%_
                                           _%g200105200149%_))
                                        '()))))))
                 (_%__kont201415201416%_
                  (lambda ()
                    (let* ((_%tmp200188%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body200297%_
                            (let _%lp200190%_ ((_%rest200192%_
                                                _%g200106200150%_)
                                               (_%k200193%_ '0)
                                               (_%r200194%_ '()))
                              (let* ((_%__stx201379201380%_ _%rest200192%_)
                                     (_%g200199200216%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx201379201380%_)))))
                                (let ((_%__kont201381201382%_
                                       (lambda (_%g200201200284%_)
                                         (_%lp200190%_
                                          _%g200201200284%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k200193%_ '1))
                                          _%r200194%_)))
                                      (_%__kont201383201384%_
                                       (lambda (_%g200206200257%_
                                                _%g200207200258%_)
                                         (_%lp200190%_
                                          _%g200206200257%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k200193%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g200207200258%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp200188%_
                           _%k200193%_
                           _%g200206200257%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r200194%_))))
                                      (_%__kont201385201386%_
                                       (lambda (_%g200211200228%_)
                                         (let ((__tmp202720
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g200211200228%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp200188%_
                                 _%k200193%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp202720
                                            _%r200194%_))))
                                      (_%__kont201387201388%_
                                       (lambda () (reverse _%r200194%_))))
                                  (let ((_%g200197200244%_
                                         (lambda ()
                                           (let ((_%g200211200228%_
                                                  _%__stx201379201380%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g200211200228%_))
                                                 (_%__kont201385201386%_
                                                  _%g200211200228%_)
                                                 (_%__kont201387201388%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx201379201380%_))
                                        (let ((_%e200202200273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx201379201380%_))))
                                          (let ((_%tl200204200278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200202200273%_)))
                                                (_%hd200203200276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200202200273%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd200203200276%_))
                                                (let ((_%e200205200281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200203200276%_))))
                                                  (if (equal? _%e200205200281%_
                                                              '#f)
                                                      (_%__kont201381201382%_
                                                       _%tl200204200278%_)
                                                      (_%__kont201383201384%_
                                                       _%tl200204200278%_
                                                       _%hd200203200276%_)))
                                                (_%__kont201383201384%_
                                                 _%tl200204200278%_
                                                 _%hd200203200276%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200197200244%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp200188%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200100%_
                                                       _%g200105200149%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp200188%_
                                         _%g200106200150%_
                                         _%g200105200149%_)
                                        _%body200297%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx201409201410%_))
                                                         (let ((_%e200169200334%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx201409201410%_))))
                   (let ((_%tl200171200339%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200169200334%_)))
                         (_%hd200170200337%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200169200334%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd200170200337%_))
                         (let ((_%e200172200342%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd200170200337%_))))
                           (if (equal? _%e200172200342%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl200171200339%_))
                                   (_%__kont201411201412%_)
                                   (_%__kont201415201416%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl200171200339%_))
                                   (_%__kont201413201414%_ _%hd200170200337%_)
                                   (_%__kont201415201416%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200171200339%_))
                             (_%__kont201413201414%_ _%hd200170200337%_)
                             (_%__kont201415201416%_)))))
                 (_%__kont201415201416%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd200114200144%_
                                               _%hd200111200136%_)
                                              (_%g200103200120%_
                                               _%g200104200123%_))))
                                      (_%g200103200120%_ _%g200104200123%_))))
                              (_%g200103200120%_ _%g200104200123%_))))
                      (_%g200103200120%_ _%g200104200123%_)))))
          (_%g200102200350%_ _%stx200101%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals200075%_ _%hd200076%_ _%expr200077%_)
        (let ((_%$e200079%_ (gxc#apply-count-values _%expr200077%_)))
          (if _%$e200079%_
              ((lambda (_%count200082%_)
                 (let ((_%len200084%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd200076%_)))
                       (_%cmp200085%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd200076%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len200084%_ '0))
                           (_%cmp200085%_ _%count200082%_ _%len200084%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr200077%_
                          _%hd200076%_)))))
               _%$e200079%_)
              (let* ((_%len200091%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd200076%_)))
                     (_%cmp200093%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd200076%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg200095%_
                      (let ((__tmp202722
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd200076%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp202721 (number->string _%len200091%_)))
                        (declare (not safe))
                        (##string-append __tmp202722 __tmp202721 '" values")))
                     (_%count200097%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd200076%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len200091%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count200097%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals200075%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp200093%_
                                (cons _%count200097%_
                                      (cons _%len200091%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp200093%_
                                                        (cons _%count200097%_
                                                              (cons _%len200091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg200095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count200097%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var200070%_)
        (letrec ((_%generate-inline200072%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var200070%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var200070%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline200072%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline200072%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var200063%_ _%i200064%_ _%rest200065%_)
        (letrec ((_%generate-inline200067%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i200064%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest200065%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var200063%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var200063%_
                                                      (cons '0 '())))
                                          (cons _%var200063%_ '()))))
                        (cons '##values-ref
                              (cons _%var200063%_ (cons _%i200064%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline200067%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline200067%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var200057%_ _%i200058%_)
        (if (let () (declare (not safe)) (##fx= _%i200058%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var200057%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var200057%_ '()))
                                  (cons (cons 'list (cons _%var200057%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var200057%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var200057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var200057%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i200058%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var200057%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var200057%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var200057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var200057%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var200057%_ '()))
                                (cons _%i200058%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var200057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i200058%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self199989%_ _%stx199990%_)
        (let* ((_%g199992200009%_
                (lambda (_%g199993200006%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199993200006%_))))
               (_%g199991200054%_
                (lambda (_%g199993200012%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199993200012%_))
                      (let ((_%e199996200014%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199993200012%_))))
                        (let ((_%hd199997200017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199996200014%_)))
                              (_%tl199998200019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199996200014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199998200019%_))
                              (let ((_%e199999200022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199998200019%_))))
                                (let ((_%hd200000200025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199999200022%_)))
                                      (_%tl200001200027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199999200022%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200001200027%_))
                                      (let ((_%e200002200030%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200001200027%_))))
                                        (let ((_%hd200003200033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200002200030%_)))
                                              (_%tl200004200035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200002200030%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200004200035%_))
                                              ((lambda (_%g199994200038%_
                                                        _%g199995200039%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self199989%_
                                                  _%g199995200039%_
                                                  _%g199994200038%_))
                                               _%hd200003200033%_
                                               _%hd200000200025%_)
                                              (_%g199992200009%_
                                               _%g199993200012%_))))
                                      (_%g199992200009%_ _%g199993200012%_))))
                              (_%g199992200009%_ _%g199993200012%_))))
                      (_%g199992200009%_ _%g199993200012%_)))))
          (_%g199991200054%_ _%stx199990%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self199948%_ _%hd199949%_ _%body199950%_)
        (let* ((_%hd199952%_ (gxc#generate-runtime-lambda-head _%hd199949%_))
               (_%body199954%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self199948%_ _%body199950%_)))
               (_%body199986%_
                (let* ((_%body199955199963%_ _%body199954%_)
                       (_%else199957199971%_
                        (lambda () (cons _%body199954%_ '())))
                       (_%K199959199976%_
                        (lambda (_%exprs199974%_) _%exprs199974%_)))
                  (if (pair? _%body199955199963%_)
                      (let ((_%hd199960199979%_
                             (let ()
                               (declare (not safe))
                               (##car _%body199955199963%_)))
                            (_%tl199961199981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body199955199963%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd199960199979%_ 'begin))
                            (let ((_%exprs199984%_ _%tl199961199981%_))
                              (_%K199959199976%_ _%exprs199984%_))
                            (_%else199957199971%_)))
                      (_%else199957199971%_)))))
          (cons 'lambda (cons _%hd199952%_ _%body199986%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd199946%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd199946%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self198503%_ _%stx198504%_)
        (letrec ((_%dispatch-case?198506%_
                  (lambda (_%hd199184%_ _%body199185%_)
                    (let* ((_%form199187%_
                            (cons _%hd199184%_ (cons _%body199185%_ '())))
                           (_%__stx201441201442%_ _%form199187%_)
                           (_%g199192199349%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx201441201442%_)))))
                      (let ((_%__kont201443201444%_
                             (lambda (_%g199194199866%_
                                      _%g199195199867%_
                                      _%g199196199868%_)
                               '#t))
                            (_%__kont201449201450%_
                             (lambda (_%g199239199658%_
                                      _%g199240199659%_
                                      _%g199241199660%_
                                      _%g199242199661%_
                                      _%g199243199662%_
                                      _%g199244199663%_)
                               '#t))
                            (_%__kont201455201456%_
                             (lambda (_%g199305199457%_
                                      _%g199306199458%_
                                      _%g199307199459%_
                                      _%g199308199460%_)
                               '#t))
                            (_%__kont201457201458%_ (lambda () '#f)))
                        (let* ((_%__match201582201583%_
                                (lambda (_%e199309199361%_
                                         _%hd199310199364%_
                                         _%tl199311199366%_
                                         _%e199312199369%_
                                         _%hd199313199372%_
                                         _%tl199314199374%_
                                         _%e199315199377%_
                                         _%hd199316199380%_
                                         _%tl199317199382%_
                                         _%e199318199385%_
                                         _%hd199319199388%_
                                         _%tl199320199390%_
                                         _%e199321199393%_
                                         _%hd199322199396%_
                                         _%tl199323199398%_
                                         _%e199324199401%_
                                         _%hd199325199404%_
                                         _%tl199326199406%_
                                         _%e199327199409%_
                                         _%hd199328199412%_
                                         _%tl199329199414%_
                                         _%e199330199417%_
                                         _%hd199331199420%_
                                         _%tl199332199422%_
                                         _%e199333199425%_
                                         _%hd199334199428%_
                                         _%tl199335199430%_
                                         _%e199336199433%_
                                         _%hd199337199436%_
                                         _%tl199338199438%_
                                         _%e199339199441%_
                                         _%hd199340199444%_
                                         _%tl199341199446%_
                                         _%e199342199449%_
                                         _%hd199343199452%_
                                         _%tl199344199454%_)
                                  (let ((_%g199305199457%_ _%hd199343199452%_)
                                        (_%g199306199458%_ _%hd199334199428%_)
                                        (_%g199307199459%_ _%hd199325199404%_)
                                        (_%g199308199460%_ _%hd199310199364%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g199308199460%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g199307199459%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g199308199460%_
                                                _%g199305199457%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g199306199458%_
                                                     _%g199308199460%_))))
                                        (_%__kont201455201456%_
                                         _%g199305199457%_
                                         _%g199306199458%_
                                         _%g199307199459%_
                                         _%g199308199460%_)
                                        (_%__kont201457201458%_)))))
                               (_%__match201554201555%_
                                (lambda (_%e199309199361%_
                                         _%hd199310199364%_
                                         _%tl199311199366%_
                                         _%e199312199369%_
                                         _%hd199313199372%_
                                         _%tl199314199374%_
                                         _%e199315199377%_
                                         _%hd199316199380%_
                                         _%tl199317199382%_
                                         _%e199318199385%_
                                         _%hd199319199388%_
                                         _%tl199320199390%_
                                         _%e199321199393%_
                                         _%hd199322199396%_
                                         _%tl199323199398%_
                                         _%e199324199401%_
                                         _%hd199325199404%_
                                         _%tl199326199406%_
                                         _%e199327199409%_
                                         _%hd199328199412%_
                                         _%tl199329199414%_
                                         _%e199330199417%_
                                         _%hd199331199420%_
                                         _%tl199332199422%_
                                         _%e199333199425%_
                                         _%hd199334199428%_
                                         _%tl199335199430%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199329199414%_))
                                      (let ((_%e199336199433%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199329199414%_))))
                                        (let ((_%tl199338199438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199336199433%_)))
                                              (_%hd199337199436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199336199433%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd199337199436%_))
                                              (let ((_%e199339199441%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199337199436%_))))
                                                (let ((_%tl199341199446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199339199441%_)))
                                                      (_%hd199340199444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199339199441%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd199340199444%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd199340199444%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199341199446%_))
                      (let ((_%e199342199449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199341199446%_))))
                        (let ((_%tl199344199454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199342199449%_)))
                              (_%hd199343199452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199342199449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199344199454%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199338199438%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199314199374%_))
                                      (_%__match201582201583%_
                                       _%e199309199361%_
                                       _%hd199310199364%_
                                       _%tl199311199366%_
                                       _%e199312199369%_
                                       _%hd199313199372%_
                                       _%tl199314199374%_
                                       _%e199315199377%_
                                       _%hd199316199380%_
                                       _%tl199317199382%_
                                       _%e199318199385%_
                                       _%hd199319199388%_
                                       _%tl199320199390%_
                                       _%e199321199393%_
                                       _%hd199322199396%_
                                       _%tl199323199398%_
                                       _%e199324199401%_
                                       _%hd199325199404%_
                                       _%tl199326199406%_
                                       _%e199327199409%_
                                       _%hd199328199412%_
                                       _%tl199329199414%_
                                       _%e199330199417%_
                                       _%hd199331199420%_
                                       _%tl199332199422%_
                                       _%e199333199425%_
                                       _%hd199334199428%_
                                       _%tl199335199430%_
                                       _%e199336199433%_
                                       _%hd199337199436%_
                                       _%tl199338199438%_
                                       _%e199339199441%_
                                       _%hd199340199444%_
                                       _%tl199341199446%_
                                       _%e199342199449%_
                                       _%hd199343199452%_
                                       _%tl199344199454%_)
                                      (_%__kont201457201458%_))
                                  (_%__kont201457201458%_))
                              (_%__kont201457201458%_))))
                      (_%__kont201457201458%_))
                  (_%__kont201457201458%_))
              (_%__kont201457201458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201457201458%_))))
                                      (_%__kont201457201458%_))))
                               (_%__match201484201485%_
                                (lambda (_%e199245199502%_
                                         _%hd199246199505%_
                                         _%tl199247199507%_
                                         _%__splice201451201452%_
                                         _%target199248199510%_
                                         _%tl199250199512%_)
                                  (letrec ((_%loop199251199515%_
                                            (lambda (_%hd199249199518%_
                                                     _%arg199255199520%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199249199518%_))
                                                  (let ((_%e199252199522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199249199518%_))))
                                                    (let ((_%lp-tl199254199527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199252199522%_)))
                                                          (_%lp-hd199253199525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199252199522%_))))
                                                      (_%loop199251199515%_
                                                       _%lp-tl199254199527%_
                                                       (cons _%lp-hd199253199525%_
                                                             _%arg199255199520%_))))
                                                  (let ((_%arg199256199530%_
                                                         (reverse _%arg199255199520%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199247199507%_))
                                                        (let ((_%e199257199532%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199247199507%_))))
                  (let ((_%tl199259199537%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199257199532%_)))
                        (_%hd199258199535%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199257199532%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199258199535%_))
                        (let ((_%e199260199540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199258199535%_))))
                          (let ((_%tl199262199545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199260199540%_)))
                                (_%hd199261199543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199260199540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199261199543%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199261199543%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199262199545%_))
                                        (let ((_%e199263199548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199262199545%_))))
                                          (let ((_%tl199265199553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199263199548%_)))
                                                (_%hd199264199551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199263199548%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199264199551%_))
                                                (let ((_%e199266199556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199264199551%_))))
                                                  (let ((_%tl199268199561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199266199556%_)))
                                                        (_%hd199267199559%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199266199556%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199267199559%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199267199559%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199268199561%_))
                        (let ((_%e199269199564%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199268199561%_))))
                          (let ((_%tl199271199569%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199269199564%_)))
                                (_%hd199270199567%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199269199564%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199271199569%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199265199553%_))
                                    (let ((_%e199272199572%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199265199553%_))))
                                      (let ((_%tl199274199577%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199272199572%_)))
                                            (_%hd199273199575%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199272199572%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199273199575%_))
                                            (let ((_%e199275199580%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199273199575%_))))
                                              (let ((_%tl199277199585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199275199580%_)))
                                                    (_%hd199276199583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199275199580%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199276199583%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199276199583%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199277199585%_))
                                                            (let ((_%e199278199588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199277199585%_))))
                      (let ((_%tl199280199593%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199278199588%_)))
                            (_%hd199279199591%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199278199588%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199280199593%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl199274199577%_))
                                (if (let ((__tmp202723
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl199274199577%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp202723 '1))
                                    (let ((_%__splice201453201454%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl199274199577%_
                                              '1))))
                                      (let ((_%tl199283199598%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201453201454%_
                                                '1)))
                                            (_%target199281199596%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201453201454%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199283199598%_))
                                            (let ((_%e199290199601%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199283199598%_))))
                                              (let ((_%tl199292199606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199290199601%_)))
                                                    (_%hd199291199604%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199290199601%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd199291199604%_))
                                                    (let ((_%e199293199609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199291199604%_))))
                                                      (let ((_%tl199295199614%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199293199609%_)))
                    (_%hd199294199612%_
                     (let () (declare (not safe)) (##car _%e199293199609%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd199294199612%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd199294199612%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199295199614%_))
                            (let ((_%e199296199617%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199295199614%_))))
                              (let ((_%tl199298199622%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199296199617%_)))
                                    (_%hd199297199620%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199296199617%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199298199622%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199292199606%_))
                                        (letrec ((_%loop199284199625%_
                                                  (lambda (_%hd199282199628%_
                                                           _%xarg199288199630%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199282199628%_))
                                                        (let ((_%e199285199632%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199282199628%_))))
                  (let ((_%lp-tl199287199637%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199285199632%_)))
                        (_%lp-hd199286199635%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199285199632%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd199286199635%_))
                        (let ((_%e199299199640%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd199286199635%_))))
                          (let ((_%tl199301199645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199299199640%_)))
                                (_%hd199300199643%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199299199640%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199300199643%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd199300199643%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199301199645%_))
                                        (let ((_%e199302199648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199301199645%_))))
                                          (let ((_%tl199304199653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199302199648%_)))
                                                (_%hd199303199651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199302199648%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199304199653%_))
                                                (_%loop199284199625%_
                                                 _%lp-tl199287199637%_
                                                 (cons _%hd199303199651%_
                                                       _%xarg199288199630%_))
                                                (_%__match201554201555%_
                                                 _%e199245199502%_
                                                 _%hd199246199505%_
                                                 _%tl199247199507%_
                                                 _%e199257199532%_
                                                 _%hd199258199535%_
                                                 _%tl199259199537%_
                                                 _%e199260199540%_
                                                 _%hd199261199543%_
                                                 _%tl199262199545%_
                                                 _%e199263199548%_
                                                 _%hd199264199551%_
                                                 _%tl199265199553%_
                                                 _%e199266199556%_
                                                 _%hd199267199559%_
                                                 _%tl199268199561%_
                                                 _%e199269199564%_
                                                 _%hd199270199567%_
                                                 _%tl199271199569%_
                                                 _%e199272199572%_
                                                 _%hd199273199575%_
                                                 _%tl199274199577%_
                                                 _%e199275199580%_
                                                 _%hd199276199583%_
                                                 _%tl199277199585%_
                                                 _%e199278199588%_
                                                 _%hd199279199591%_
                                                 _%tl199280199593%_))))
                                        (_%__match201554201555%_
                                         _%e199245199502%_
                                         _%hd199246199505%_
                                         _%tl199247199507%_
                                         _%e199257199532%_
                                         _%hd199258199535%_
                                         _%tl199259199537%_
                                         _%e199260199540%_
                                         _%hd199261199543%_
                                         _%tl199262199545%_
                                         _%e199263199548%_
                                         _%hd199264199551%_
                                         _%tl199265199553%_
                                         _%e199266199556%_
                                         _%hd199267199559%_
                                         _%tl199268199561%_
                                         _%e199269199564%_
                                         _%hd199270199567%_
                                         _%tl199271199569%_
                                         _%e199272199572%_
                                         _%hd199273199575%_
                                         _%tl199274199577%_
                                         _%e199275199580%_
                                         _%hd199276199583%_
                                         _%tl199277199585%_
                                         _%e199278199588%_
                                         _%hd199279199591%_
                                         _%tl199280199593%_))
                                    (_%__match201554201555%_
                                     _%e199245199502%_
                                     _%hd199246199505%_
                                     _%tl199247199507%_
                                     _%e199257199532%_
                                     _%hd199258199535%_
                                     _%tl199259199537%_
                                     _%e199260199540%_
                                     _%hd199261199543%_
                                     _%tl199262199545%_
                                     _%e199263199548%_
                                     _%hd199264199551%_
                                     _%tl199265199553%_
                                     _%e199266199556%_
                                     _%hd199267199559%_
                                     _%tl199268199561%_
                                     _%e199269199564%_
                                     _%hd199270199567%_
                                     _%tl199271199569%_
                                     _%e199272199572%_
                                     _%hd199273199575%_
                                     _%tl199274199577%_
                                     _%e199275199580%_
                                     _%hd199276199583%_
                                     _%tl199277199585%_
                                     _%e199278199588%_
                                     _%hd199279199591%_
                                     _%tl199280199593%_))
                                (_%__match201554201555%_
                                 _%e199245199502%_
                                 _%hd199246199505%_
                                 _%tl199247199507%_
                                 _%e199257199532%_
                                 _%hd199258199535%_
                                 _%tl199259199537%_
                                 _%e199260199540%_
                                 _%hd199261199543%_
                                 _%tl199262199545%_
                                 _%e199263199548%_
                                 _%hd199264199551%_
                                 _%tl199265199553%_
                                 _%e199266199556%_
                                 _%hd199267199559%_
                                 _%tl199268199561%_
                                 _%e199269199564%_
                                 _%hd199270199567%_
                                 _%tl199271199569%_
                                 _%e199272199572%_
                                 _%hd199273199575%_
                                 _%tl199274199577%_
                                 _%e199275199580%_
                                 _%hd199276199583%_
                                 _%tl199277199585%_
                                 _%e199278199588%_
                                 _%hd199279199591%_
                                 _%tl199280199593%_))))
                        (_%__match201554201555%_
                         _%e199245199502%_
                         _%hd199246199505%_
                         _%tl199247199507%_
                         _%e199257199532%_
                         _%hd199258199535%_
                         _%tl199259199537%_
                         _%e199260199540%_
                         _%hd199261199543%_
                         _%tl199262199545%_
                         _%e199263199548%_
                         _%hd199264199551%_
                         _%tl199265199553%_
                         _%e199266199556%_
                         _%hd199267199559%_
                         _%tl199268199561%_
                         _%e199269199564%_
                         _%hd199270199567%_
                         _%tl199271199569%_
                         _%e199272199572%_
                         _%hd199273199575%_
                         _%tl199274199577%_
                         _%e199275199580%_
                         _%hd199276199583%_
                         _%tl199277199585%_
                         _%e199278199588%_
                         _%hd199279199591%_
                         _%tl199280199593%_))))
                (let ((_%xarg199289199656%_ (reverse _%xarg199288199630%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199259199537%_))
                      (let ((_%g199239199658%_ _%hd199297199620%_)
                            (_%g199240199659%_ _%xarg199289199656%_)
                            (_%g199241199660%_ _%hd199279199591%_)
                            (_%g199242199661%_ _%hd199270199567%_)
                            (_%g199243199662%_ _%tl199250199512%_)
                            (_%g199244199663%_ _%arg199256199530%_))
                        (if (and (let ((__tmp202724
                                        (let ((__tmp202725
                                               (lambda (_%g199706199709%_
                                                        _%g199707199711%_)
                                                 (cons _%g199706199709%_
                                                       _%g199707199711%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202725
                                           '()
                                           _%g199244199663%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp202724))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g199243199662%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g199242199661%_
                                    'apply))
                                 (let ((__tmp202728
                                        (length (let ((__tmp202729
                                                       (lambda (_%g199713199716%_
                                                                _%g199714199718%_)
                                                         (cons _%g199713199716%_
                                                               _%g199714199718%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp202729
                                                   '()
                                                   _%g199244199663%_))))
                                       (__tmp202726
                                        (length (let ((__tmp202727
                                                       (lambda (_%g199720199723%_
                                                                _%g199721199725%_)
                                                         (cons _%g199720199723%_
                                                               _%g199721199725%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp202727
                                                   '()
                                                   _%g199240199659%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp202728 __tmp202726))
                                 (let ((__tmp202732
                                        (let ((__tmp202733
                                               (lambda (_%g199727199730%_
                                                        _%g199728199732%_)
                                                 (cons _%g199727199730%_
                                                       _%g199728199732%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202733
                                           '()
                                           _%g199244199663%_)))
                                       (__tmp202730
                                        (let ((__tmp202731
                                               (lambda (_%g199734199737%_
                                                        _%g199735199739%_)
                                                 (cons _%g199734199737%_
                                                       _%g199735199739%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202731
                                           '()
                                           _%g199240199659%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp202732
                                    __tmp202730))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g199243199662%_
                                    _%g199239199658%_))
                                 (not (let ((__tmp202737
                                             (lambda (_%g199741199743%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g199741199743%_
                                                  _%g199241199660%_))))
                                            (__tmp202734
                                             (let ((__tmp202736
                                                    (lambda (_%g199745199748%_
                                                             _%g199746199750%_)
                                                      (cons _%g199745199748%_
                                                            _%g199746199750%_)))
                                                   (__tmp202735
                                                    (cons _%g199243199662%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202736
                                                __tmp202735
                                                _%g199244199663%_))))
                                        (declare (not safe))
                                        (__find __tmp202737 __tmp202734))))
                            (_%__kont201449201450%_
                             _%g199239199658%_
                             _%g199240199659%_
                             _%g199241199660%_
                             _%g199242199661%_
                             _%g199243199662%_
                             _%g199244199663%_)
                            (_%__match201554201555%_
                             _%e199245199502%_
                             _%hd199246199505%_
                             _%tl199247199507%_
                             _%e199257199532%_
                             _%hd199258199535%_
                             _%tl199259199537%_
                             _%e199260199540%_
                             _%hd199261199543%_
                             _%tl199262199545%_
                             _%e199263199548%_
                             _%hd199264199551%_
                             _%tl199265199553%_
                             _%e199266199556%_
                             _%hd199267199559%_
                             _%tl199268199561%_
                             _%e199269199564%_
                             _%hd199270199567%_
                             _%tl199271199569%_
                             _%e199272199572%_
                             _%hd199273199575%_
                             _%tl199274199577%_
                             _%e199275199580%_
                             _%hd199276199583%_
                             _%tl199277199585%_
                             _%e199278199588%_
                             _%hd199279199591%_
                             _%tl199280199593%_)))
                      (_%__match201554201555%_
                       _%e199245199502%_
                       _%hd199246199505%_
                       _%tl199247199507%_
                       _%e199257199532%_
                       _%hd199258199535%_
                       _%tl199259199537%_
                       _%e199260199540%_
                       _%hd199261199543%_
                       _%tl199262199545%_
                       _%e199263199548%_
                       _%hd199264199551%_
                       _%tl199265199553%_
                       _%e199266199556%_
                       _%hd199267199559%_
                       _%tl199268199561%_
                       _%e199269199564%_
                       _%hd199270199567%_
                       _%tl199271199569%_
                       _%e199272199572%_
                       _%hd199273199575%_
                       _%tl199274199577%_
                       _%e199275199580%_
                       _%hd199276199583%_
                       _%tl199277199585%_
                       _%e199278199588%_
                       _%hd199279199591%_
                       _%tl199280199593%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199284199625%_
                                           _%target199281199596%_
                                           '()))
                                        (_%__match201554201555%_
                                         _%e199245199502%_
                                         _%hd199246199505%_
                                         _%tl199247199507%_
                                         _%e199257199532%_
                                         _%hd199258199535%_
                                         _%tl199259199537%_
                                         _%e199260199540%_
                                         _%hd199261199543%_
                                         _%tl199262199545%_
                                         _%e199263199548%_
                                         _%hd199264199551%_
                                         _%tl199265199553%_
                                         _%e199266199556%_
                                         _%hd199267199559%_
                                         _%tl199268199561%_
                                         _%e199269199564%_
                                         _%hd199270199567%_
                                         _%tl199271199569%_
                                         _%e199272199572%_
                                         _%hd199273199575%_
                                         _%tl199274199577%_
                                         _%e199275199580%_
                                         _%hd199276199583%_
                                         _%tl199277199585%_
                                         _%e199278199588%_
                                         _%hd199279199591%_
                                         _%tl199280199593%_))
                                    (_%__match201554201555%_
                                     _%e199245199502%_
                                     _%hd199246199505%_
                                     _%tl199247199507%_
                                     _%e199257199532%_
                                     _%hd199258199535%_
                                     _%tl199259199537%_
                                     _%e199260199540%_
                                     _%hd199261199543%_
                                     _%tl199262199545%_
                                     _%e199263199548%_
                                     _%hd199264199551%_
                                     _%tl199265199553%_
                                     _%e199266199556%_
                                     _%hd199267199559%_
                                     _%tl199268199561%_
                                     _%e199269199564%_
                                     _%hd199270199567%_
                                     _%tl199271199569%_
                                     _%e199272199572%_
                                     _%hd199273199575%_
                                     _%tl199274199577%_
                                     _%e199275199580%_
                                     _%hd199276199583%_
                                     _%tl199277199585%_
                                     _%e199278199588%_
                                     _%hd199279199591%_
                                     _%tl199280199593%_))))
                            (_%__match201554201555%_
                             _%e199245199502%_
                             _%hd199246199505%_
                             _%tl199247199507%_
                             _%e199257199532%_
                             _%hd199258199535%_
                             _%tl199259199537%_
                             _%e199260199540%_
                             _%hd199261199543%_
                             _%tl199262199545%_
                             _%e199263199548%_
                             _%hd199264199551%_
                             _%tl199265199553%_
                             _%e199266199556%_
                             _%hd199267199559%_
                             _%tl199268199561%_
                             _%e199269199564%_
                             _%hd199270199567%_
                             _%tl199271199569%_
                             _%e199272199572%_
                             _%hd199273199575%_
                             _%tl199274199577%_
                             _%e199275199580%_
                             _%hd199276199583%_
                             _%tl199277199585%_
                             _%e199278199588%_
                             _%hd199279199591%_
                             _%tl199280199593%_))
                        (_%__match201554201555%_
                         _%e199245199502%_
                         _%hd199246199505%_
                         _%tl199247199507%_
                         _%e199257199532%_
                         _%hd199258199535%_
                         _%tl199259199537%_
                         _%e199260199540%_
                         _%hd199261199543%_
                         _%tl199262199545%_
                         _%e199263199548%_
                         _%hd199264199551%_
                         _%tl199265199553%_
                         _%e199266199556%_
                         _%hd199267199559%_
                         _%tl199268199561%_
                         _%e199269199564%_
                         _%hd199270199567%_
                         _%tl199271199569%_
                         _%e199272199572%_
                         _%hd199273199575%_
                         _%tl199274199577%_
                         _%e199275199580%_
                         _%hd199276199583%_
                         _%tl199277199585%_
                         _%e199278199588%_
                         _%hd199279199591%_
                         _%tl199280199593%_))
                    (_%__match201554201555%_
                     _%e199245199502%_
                     _%hd199246199505%_
                     _%tl199247199507%_
                     _%e199257199532%_
                     _%hd199258199535%_
                     _%tl199259199537%_
                     _%e199260199540%_
                     _%hd199261199543%_
                     _%tl199262199545%_
                     _%e199263199548%_
                     _%hd199264199551%_
                     _%tl199265199553%_
                     _%e199266199556%_
                     _%hd199267199559%_
                     _%tl199268199561%_
                     _%e199269199564%_
                     _%hd199270199567%_
                     _%tl199271199569%_
                     _%e199272199572%_
                     _%hd199273199575%_
                     _%tl199274199577%_
                     _%e199275199580%_
                     _%hd199276199583%_
                     _%tl199277199585%_
                     _%e199278199588%_
                     _%hd199279199591%_
                     _%tl199280199593%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201554201555%_
                                                     _%e199245199502%_
                                                     _%hd199246199505%_
                                                     _%tl199247199507%_
                                                     _%e199257199532%_
                                                     _%hd199258199535%_
                                                     _%tl199259199537%_
                                                     _%e199260199540%_
                                                     _%hd199261199543%_
                                                     _%tl199262199545%_
                                                     _%e199263199548%_
                                                     _%hd199264199551%_
                                                     _%tl199265199553%_
                                                     _%e199266199556%_
                                                     _%hd199267199559%_
                                                     _%tl199268199561%_
                                                     _%e199269199564%_
                                                     _%hd199270199567%_
                                                     _%tl199271199569%_
                                                     _%e199272199572%_
                                                     _%hd199273199575%_
                                                     _%tl199274199577%_
                                                     _%e199275199580%_
                                                     _%hd199276199583%_
                                                     _%tl199277199585%_
                                                     _%e199278199588%_
                                                     _%hd199279199591%_
                                                     _%tl199280199593%_))))
                                            (_%__match201554201555%_
                                             _%e199245199502%_
                                             _%hd199246199505%_
                                             _%tl199247199507%_
                                             _%e199257199532%_
                                             _%hd199258199535%_
                                             _%tl199259199537%_
                                             _%e199260199540%_
                                             _%hd199261199543%_
                                             _%tl199262199545%_
                                             _%e199263199548%_
                                             _%hd199264199551%_
                                             _%tl199265199553%_
                                             _%e199266199556%_
                                             _%hd199267199559%_
                                             _%tl199268199561%_
                                             _%e199269199564%_
                                             _%hd199270199567%_
                                             _%tl199271199569%_
                                             _%e199272199572%_
                                             _%hd199273199575%_
                                             _%tl199274199577%_
                                             _%e199275199580%_
                                             _%hd199276199583%_
                                             _%tl199277199585%_
                                             _%e199278199588%_
                                             _%hd199279199591%_
                                             _%tl199280199593%_))))
                                    (_%__match201554201555%_
                                     _%e199245199502%_
                                     _%hd199246199505%_
                                     _%tl199247199507%_
                                     _%e199257199532%_
                                     _%hd199258199535%_
                                     _%tl199259199537%_
                                     _%e199260199540%_
                                     _%hd199261199543%_
                                     _%tl199262199545%_
                                     _%e199263199548%_
                                     _%hd199264199551%_
                                     _%tl199265199553%_
                                     _%e199266199556%_
                                     _%hd199267199559%_
                                     _%tl199268199561%_
                                     _%e199269199564%_
                                     _%hd199270199567%_
                                     _%tl199271199569%_
                                     _%e199272199572%_
                                     _%hd199273199575%_
                                     _%tl199274199577%_
                                     _%e199275199580%_
                                     _%hd199276199583%_
                                     _%tl199277199585%_
                                     _%e199278199588%_
                                     _%hd199279199591%_
                                     _%tl199280199593%_))
                                (_%__match201554201555%_
                                 _%e199245199502%_
                                 _%hd199246199505%_
                                 _%tl199247199507%_
                                 _%e199257199532%_
                                 _%hd199258199535%_
                                 _%tl199259199537%_
                                 _%e199260199540%_
                                 _%hd199261199543%_
                                 _%tl199262199545%_
                                 _%e199263199548%_
                                 _%hd199264199551%_
                                 _%tl199265199553%_
                                 _%e199266199556%_
                                 _%hd199267199559%_
                                 _%tl199268199561%_
                                 _%e199269199564%_
                                 _%hd199270199567%_
                                 _%tl199271199569%_
                                 _%e199272199572%_
                                 _%hd199273199575%_
                                 _%tl199274199577%_
                                 _%e199275199580%_
                                 _%hd199276199583%_
                                 _%tl199277199585%_
                                 _%e199278199588%_
                                 _%hd199279199591%_
                                 _%tl199280199593%_))
                            (_%__kont201457201458%_))))
                    (_%__kont201457201458%_))
                (_%__kont201457201458%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201457201458%_))))
                                            (_%__kont201457201458%_))))
                                    (_%__kont201457201458%_))
                                (_%__kont201457201458%_))))
                        (_%__kont201457201458%_))
                    (_%__kont201457201458%_))
                (_%__kont201457201458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201457201458%_))))
                                        (_%__kont201457201458%_))
                                    (_%__kont201457201458%_))
                                (_%__kont201457201458%_))))
                        (_%__kont201457201458%_))))
                (_%__kont201457201458%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199251199515%_
                                     _%target199248199510%_
                                     '()))))
                               (_%__match201472201473%_
                                (lambda (_%e199197199758%_
                                         _%hd199198199761%_
                                         _%tl199199199763%_
                                         _%__splice201445201446%_
                                         _%target199200199766%_
                                         _%tl199202199768%_)
                                  (letrec ((_%loop199203199771%_
                                            (lambda (_%hd199201199774%_
                                                     _%arg199207199776%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199201199774%_))
                                                  (let ((_%e199204199778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199201199774%_))))
                                                    (let ((_%lp-tl199206199783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199204199778%_)))
                                                          (_%lp-hd199205199781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199204199778%_))))
                                                      (_%loop199203199771%_
                                                       _%lp-tl199206199783%_
                                                       (cons _%lp-hd199205199781%_
                                                             _%arg199207199776%_))))
                                                  (let ((_%arg199208199786%_
                                                         (reverse _%arg199207199776%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199199199763%_))
                                                        (let ((_%e199209199788%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199199199763%_))))
                  (let ((_%tl199211199793%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199209199788%_)))
                        (_%hd199210199791%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199209199788%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199210199791%_))
                        (let ((_%e199212199796%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199210199791%_))))
                          (let ((_%tl199214199801%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199212199796%_)))
                                (_%hd199213199799%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199212199796%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199213199799%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199213199799%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199214199801%_))
                                        (let ((_%e199215199804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199214199801%_))))
                                          (let ((_%tl199217199809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199215199804%_)))
                                                (_%hd199216199807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199215199804%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199216199807%_))
                                                (let ((_%e199218199812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199216199807%_))))
                                                  (let ((_%tl199220199817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199218199812%_)))
                                                        (_%hd199219199815%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199218199812%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199219199815%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199219199815%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199220199817%_))
                        (let ((_%e199221199820%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199220199817%_))))
                          (let ((_%tl199223199825%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199221199820%_)))
                                (_%hd199222199823%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199221199820%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199223199825%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl199217199809%_))
                                    (let ((_%__splice201447201448%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl199217199809%_
                                              '0))))
                                      (let ((_%tl199226199830%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201447201448%_
                                                '1)))
                                            (_%target199224199828%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201447201448%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199226199830%_))
                                            (letrec ((_%loop199227199833%_
                                                      (lambda (_%hd199225199836%_
                                                               _%xarg199231199838%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd199225199836%_))
                                                            (let ((_%e199228199840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199225199836%_))))
                      (let ((_%lp-tl199230199845%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199228199840%_)))
                            (_%lp-hd199229199843%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199228199840%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd199229199843%_))
                            (let ((_%e199233199848%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd199229199843%_))))
                              (let ((_%tl199235199853%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199233199848%_)))
                                    (_%hd199234199851%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199233199848%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199234199851%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd199234199851%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199235199853%_))
                                            (let ((_%e199236199856%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199235199853%_))))
                                              (let ((_%tl199238199861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199236199856%_)))
                                                    (_%hd199237199859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199236199856%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199238199861%_))
                                                    (_%loop199227199833%_
                                                     _%lp-tl199230199845%_
                                                     (cons _%hd199237199859%_
                                                           _%xarg199231199838%_))
                                                    (_%__match201484201485%_
                                                     _%e199197199758%_
                                                     _%hd199198199761%_
                                                     _%tl199199199763%_
                                                     _%__splice201445201446%_
                                                     _%target199200199766%_
                                                     _%tl199202199768%_))))
                                            (_%__match201484201485%_
                                             _%e199197199758%_
                                             _%hd199198199761%_
                                             _%tl199199199763%_
                                             _%__splice201445201446%_
                                             _%target199200199766%_
                                             _%tl199202199768%_))
                                        (_%__match201484201485%_
                                         _%e199197199758%_
                                         _%hd199198199761%_
                                         _%tl199199199763%_
                                         _%__splice201445201446%_
                                         _%target199200199766%_
                                         _%tl199202199768%_))
                                    (_%__match201484201485%_
                                     _%e199197199758%_
                                     _%hd199198199761%_
                                     _%tl199199199763%_
                                     _%__splice201445201446%_
                                     _%target199200199766%_
                                     _%tl199202199768%_))))
                            (_%__match201484201485%_
                             _%e199197199758%_
                             _%hd199198199761%_
                             _%tl199199199763%_
                             _%__splice201445201446%_
                             _%target199200199766%_
                             _%tl199202199768%_))))
                    (let ((_%xarg199232199864%_
                           (reverse _%xarg199231199838%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199211199793%_))
                          (let ((_%g199194199866%_ _%xarg199232199864%_)
                                (_%g199195199867%_ _%hd199222199823%_)
                                (_%g199196199868%_ _%arg199208199786%_))
                            (if (and (let ((__tmp202738
                                            (let ((__tmp202739
                                                   (lambda (_%g199896199899%_
                                                            _%g199897199901%_)
                                                     (cons _%g199896199899%_
                                                           _%g199897199901%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202739
                                               '()
                                               _%g199196199868%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp202738))
                                     (let ((__tmp202742
                                            (length (let ((__tmp202743
                                                           (lambda (_%g199903199906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g199904199908%_)
                     (cons _%g199903199906%_ _%g199904199908%_))))
              (declare (not safe))
              (foldr__0 __tmp202743 '() _%g199196199868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp202740
                                            (length (let ((__tmp202741
                                                           (lambda (_%g199910199913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g199911199915%_)
                     (cons _%g199910199913%_ _%g199911199915%_))))
              (declare (not safe))
              (foldr__0 __tmp202741 '() _%g199194199866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp202742 __tmp202740))
                                     (let ((__tmp202746
                                            (let ((__tmp202747
                                                   (lambda (_%g199917199920%_
                                                            _%g199918199922%_)
                                                     (cons _%g199917199920%_
                                                           _%g199918199922%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202747
                                               '()
                                               _%g199196199868%_)))
                                           (__tmp202744
                                            (let ((__tmp202745
                                                   (lambda (_%g199924199927%_
                                                            _%g199925199929%_)
                                                     (cons _%g199924199927%_
                                                           _%g199925199929%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202745
                                               '()
                                               _%g199194199866%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp202746
                                        __tmp202744))
                                     (not (let ((__tmp202750
                                                 (lambda (_%g199931199933%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g199931199933%_
                                                      _%g199195199867%_))))
                                                (__tmp202748
                                                 (let ((__tmp202749
                                                        (lambda (_%g199935199938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g199936199940%_)
                  (cons _%g199935199938%_ _%g199936199940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp202749
                                                    '()
                                                    _%g199196199868%_))))
                                            (declare (not safe))
                                            (__find __tmp202750 __tmp202748))))
                                (_%__kont201443201444%_
                                 _%g199194199866%_
                                 _%g199195199867%_
                                 _%g199196199868%_)
                                (_%__match201484201485%_
                                 _%e199197199758%_
                                 _%hd199198199761%_
                                 _%tl199199199763%_
                                 _%__splice201445201446%_
                                 _%target199200199766%_
                                 _%tl199202199768%_)))
                          (_%__match201484201485%_
                           _%e199197199758%_
                           _%hd199198199761%_
                           _%tl199199199763%_
                           _%__splice201445201446%_
                           _%target199200199766%_
                           _%tl199202199768%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop199227199833%_
                                               _%target199224199828%_
                                               '()))
                                            (_%__match201484201485%_
                                             _%e199197199758%_
                                             _%hd199198199761%_
                                             _%tl199199199763%_
                                             _%__splice201445201446%_
                                             _%target199200199766%_
                                             _%tl199202199768%_))))
                                    (_%__match201484201485%_
                                     _%e199197199758%_
                                     _%hd199198199761%_
                                     _%tl199199199763%_
                                     _%__splice201445201446%_
                                     _%target199200199766%_
                                     _%tl199202199768%_))
                                (_%__match201484201485%_
                                 _%e199197199758%_
                                 _%hd199198199761%_
                                 _%tl199199199763%_
                                 _%__splice201445201446%_
                                 _%target199200199766%_
                                 _%tl199202199768%_))))
                        (_%__match201484201485%_
                         _%e199197199758%_
                         _%hd199198199761%_
                         _%tl199199199763%_
                         _%__splice201445201446%_
                         _%target199200199766%_
                         _%tl199202199768%_))
                    (_%__match201484201485%_
                     _%e199197199758%_
                     _%hd199198199761%_
                     _%tl199199199763%_
                     _%__splice201445201446%_
                     _%target199200199766%_
                     _%tl199202199768%_))
                (_%__match201484201485%_
                 _%e199197199758%_
                 _%hd199198199761%_
                 _%tl199199199763%_
                 _%__splice201445201446%_
                 _%target199200199766%_
                 _%tl199202199768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match201484201485%_
                                                 _%e199197199758%_
                                                 _%hd199198199761%_
                                                 _%tl199199199763%_
                                                 _%__splice201445201446%_
                                                 _%target199200199766%_
                                                 _%tl199202199768%_))))
                                        (_%__match201484201485%_
                                         _%e199197199758%_
                                         _%hd199198199761%_
                                         _%tl199199199763%_
                                         _%__splice201445201446%_
                                         _%target199200199766%_
                                         _%tl199202199768%_))
                                    (_%__match201484201485%_
                                     _%e199197199758%_
                                     _%hd199198199761%_
                                     _%tl199199199763%_
                                     _%__splice201445201446%_
                                     _%target199200199766%_
                                     _%tl199202199768%_))
                                (_%__match201484201485%_
                                 _%e199197199758%_
                                 _%hd199198199761%_
                                 _%tl199199199763%_
                                 _%__splice201445201446%_
                                 _%target199200199766%_
                                 _%tl199202199768%_))))
                        (_%__match201484201485%_
                         _%e199197199758%_
                         _%hd199198199761%_
                         _%tl199199199763%_
                         _%__splice201445201446%_
                         _%target199200199766%_
                         _%tl199202199768%_))))
                (_%__match201484201485%_
                 _%e199197199758%_
                 _%hd199198199761%_
                 _%tl199199199763%_
                 _%__splice201445201446%_
                 _%target199200199766%_
                 _%tl199202199768%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199203199771%_
                                     _%target199200199766%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx201441201442%_))
                              (let ((_%e199197199758%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx201441201442%_))))
                                (let ((_%tl199199199763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199197199758%_)))
                                      (_%hd199198199761%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199197199758%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd199198199761%_))
                                      (let ((_%__splice201445201446%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd199198199761%_
                                                '0))))
                                        (let ((_%tl199202199768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201445201446%_
                                                  '1)))
                                              (_%target199200199766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201445201446%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199202199768%_))
                                              (_%__match201472201473%_
                                               _%e199197199758%_
                                               _%hd199198199761%_
                                               _%tl199199199763%_
                                               _%__splice201445201446%_
                                               _%target199200199766%_
                                               _%tl199202199768%_)
                                              (_%__match201484201485%_
                                               _%e199197199758%_
                                               _%hd199198199761%_
                                               _%tl199199199763%_
                                               _%__splice201445201446%_
                                               _%target199200199766%_
                                               _%tl199202199768%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199199199763%_))
                                          (let ((_%e199312199369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199199199763%_))))
                                            (let ((_%tl199314199374%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199312199369%_)))
                                                  (_%hd199313199372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199312199369%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199313199372%_))
                                                  (let ((_%e199315199377%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199313199372%_))))
                                                    (let ((_%tl199317199382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199315199377%_)))
                                                          (_%hd199316199380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199315199377%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd199316199380%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd199316199380%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199317199382%_))
                          (let ((_%e199318199385%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199317199382%_))))
                            (let ((_%tl199320199390%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199318199385%_)))
                                  (_%hd199319199388%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199318199385%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199319199388%_))
                                  (let ((_%e199321199393%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199319199388%_))))
                                    (let ((_%tl199323199398%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199321199393%_)))
                                          (_%hd199322199396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199321199393%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199322199396%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199322199396%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199323199398%_))
                                                  (let ((_%e199324199401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199323199398%_))))
                                                    (let ((_%tl199326199406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199324199401%_)))
                                                          (_%hd199325199404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199324199401%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199326199406%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199320199390%_))
                      (let ((_%e199327199409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199320199390%_))))
                        (let ((_%tl199329199414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199327199409%_)))
                              (_%hd199328199412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199327199409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199328199412%_))
                              (let ((_%e199330199417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199328199412%_))))
                                (let ((_%tl199332199422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199330199417%_)))
                                      (_%hd199331199420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199330199417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199331199420%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199331199420%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199332199422%_))
                                              (let ((_%e199333199425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199332199422%_))))
                                                (let ((_%tl199335199430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199333199425%_)))
                                                      (_%hd199334199428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199333199425%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199335199430%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199329199414%_))
                                                          (let ((_%e199336199433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199329199414%_))))
                    (let ((_%tl199338199438%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199336199433%_)))
                          (_%hd199337199436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199336199433%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199337199436%_))
                          (let ((_%e199339199441%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199337199436%_))))
                            (let ((_%tl199341199446%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199339199441%_)))
                                  (_%hd199340199444%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199339199441%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd199340199444%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd199340199444%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199341199446%_))
                                          (let ((_%e199342199449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199341199446%_))))
                                            (let ((_%tl199344199454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199342199449%_)))
                                                  (_%hd199343199452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199342199449%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199344199454%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199338199438%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199314199374%_))
                                                          (_%__match201582201583%_
                                                           _%e199197199758%_
                                                           _%hd199198199761%_
                                                           _%tl199199199763%_
                                                           _%e199312199369%_
                                                           _%hd199313199372%_
                                                           _%tl199314199374%_
                                                           _%e199315199377%_
                                                           _%hd199316199380%_
                                                           _%tl199317199382%_
                                                           _%e199318199385%_
                                                           _%hd199319199388%_
                                                           _%tl199320199390%_
                                                           _%e199321199393%_
                                                           _%hd199322199396%_
                                                           _%tl199323199398%_
                                                           _%e199324199401%_
                                                           _%hd199325199404%_
                                                           _%tl199326199406%_
                                                           _%e199327199409%_
                                                           _%hd199328199412%_
                                                           _%tl199329199414%_
                                                           _%e199330199417%_
                                                           _%hd199331199420%_
                                                           _%tl199332199422%_
                                                           _%e199333199425%_
                                                           _%hd199334199428%_
                                                           _%tl199335199430%_
                                                           _%e199336199433%_
                                                           _%hd199337199436%_
                                                           _%tl199338199438%_
                                                           _%e199339199441%_
                                                           _%hd199340199444%_
                                                           _%tl199341199446%_
                                                           _%e199342199449%_
                                                           _%hd199343199452%_
                                                           _%tl199344199454%_)
                                                          (_%__kont201457201458%_))
                                                      (_%__kont201457201458%_))
                                                  (_%__kont201457201458%_))))
                                          (_%__kont201457201458%_))
                                      (_%__kont201457201458%_))
                                  (_%__kont201457201458%_))))
                          (_%__kont201457201458%_))))
                  (_%__kont201457201458%_))
              (_%__kont201457201458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201457201458%_))
                                          (_%__kont201457201458%_))
                                      (_%__kont201457201458%_))))
                              (_%__kont201457201458%_))))
                      (_%__kont201457201458%_))
                  (_%__kont201457201458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201457201458%_))
                                              (_%__kont201457201458%_))
                                          (_%__kont201457201458%_))))
                                  (_%__kont201457201458%_))))
                          (_%__kont201457201458%_))
                      (_%__kont201457201458%_))
                  (_%__kont201457201458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201457201458%_))))
                                          (_%__kont201457201458%_)))))
                              (_%__kont201457201458%_)))))))
                 (_%dispatch-case-e198507%_
                  (lambda (_%hd198654%_ _%body198655%_)
                    (let* ((_%form198657%_
                            (cons _%hd198654%_ (cons _%body198655%_ '())))
                           (_%__stx201585201586%_ _%form198657%_)
                           (_%g198661198785%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx201585201586%_)))))
                      (let ((_%__kont201587201588%_
                             (lambda (_%g198663199150%_
                                      _%g198664199151%_
                                      _%g198665199152%_)
                               (let ((__tmp202751
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198664199151%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198503%_
                                  __tmp202751))))
                            (_%__kont201593201594%_
                             (lambda (_%g198708199002%_
                                      _%g198709199003%_
                                      _%g198710199004%_
                                      _%g198711199005%_)
                               (let ((__tmp202752
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198708199002%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198503%_
                                  __tmp202752))))
                            (_%__kont201597201598%_
                             (lambda (_%g198748198870%_
                                      _%g198749198871%_
                                      _%g198750198872%_)
                               (let ((__tmp202753
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198748198870%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198503%_
                                  __tmp202753)))))
                        (let* ((_%__match201694201695%_
                                (lambda (_%e198751198790%_
                                         _%hd198752198793%_
                                         _%tl198753198795%_
                                         _%e198754198798%_
                                         _%hd198755198801%_
                                         _%tl198756198803%_
                                         _%e198757198806%_
                                         _%hd198758198809%_
                                         _%tl198759198811%_
                                         _%e198760198814%_
                                         _%hd198761198817%_
                                         _%tl198762198819%_
                                         _%e198763198822%_
                                         _%hd198764198825%_
                                         _%tl198765198827%_
                                         _%e198766198830%_
                                         _%hd198767198833%_
                                         _%tl198768198835%_
                                         _%e198769198838%_
                                         _%hd198770198841%_
                                         _%tl198771198843%_
                                         _%e198772198846%_
                                         _%hd198773198849%_
                                         _%tl198774198851%_
                                         _%e198775198854%_
                                         _%hd198776198857%_
                                         _%tl198777198859%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198771198843%_))
                                      (let ((_%e198778198862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198771198843%_))))
                                        (let ((_%tl198780198867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198778198862%_)))
                                              (_%hd198779198865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198778198862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198780198867%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl198756198803%_))
                                                  (_%__kont201597201598%_
                                                   _%hd198776198857%_
                                                   _%hd198767198833%_
                                                   _%hd198752198793%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198661198785%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198661198785%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198661198785%_)))))
                               (_%__match201624201625%_
                                (lambda (_%e198712198908%_
                                         _%hd198713198911%_
                                         _%tl198714198913%_
                                         _%__splice201595201596%_
                                         _%target198715198916%_
                                         _%tl198717198918%_)
                                  (letrec ((_%loop198718198921%_
                                            (lambda (_%hd198716198924%_
                                                     _%arg198722198926%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198716198924%_))
                                                  (let ((_%e198719198928%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198716198924%_))))
                                                    (let ((_%lp-tl198721198933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198719198928%_)))
                                                          (_%lp-hd198720198931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198719198928%_))))
                                                      (_%loop198718198921%_
                                                       _%lp-tl198721198933%_
                                                       (cons _%lp-hd198720198931%_
                                                             _%arg198722198926%_))))
                                                  (let ((_%arg198723198936%_
                                                         (reverse _%arg198722198926%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198714198913%_))
                                                        (let ((_%e198724198938%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl198714198913%_))))
                  (let ((_%tl198726198943%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198724198938%_)))
                        (_%hd198725198941%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198724198938%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198725198941%_))
                        (let ((_%e198727198946%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd198725198941%_))))
                          (let ((_%tl198729198951%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198727198946%_)))
                                (_%hd198728198949%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198727198946%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd198728198949%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd198728198949%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198729198951%_))
                                        (let ((_%e198730198954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198729198951%_))))
                                          (let ((_%tl198732198959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198730198954%_)))
                                                (_%hd198731198957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198730198954%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd198731198957%_))
                                                (let ((_%e198733198962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198731198957%_))))
                                                  (let ((_%tl198735198967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198733198962%_)))
                                                        (_%hd198734198965%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198733198962%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd198734198965%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd198734198965%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198735198967%_))
                        (let ((_%e198736198970%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198735198967%_))))
                          (let ((_%tl198738198975%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198736198970%_)))
                                (_%hd198737198973%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198736198970%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198738198975%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198732198959%_))
                                    (let ((_%e198739198978%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198732198959%_))))
                                      (let ((_%tl198741198983%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198739198978%_)))
                                            (_%hd198740198981%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198739198978%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198740198981%_))
                                            (let ((_%e198742198986%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198740198981%_))))
                                              (let ((_%tl198744198991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198742198986%_)))
                                                    (_%hd198743198989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198742198986%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198743198989%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd198743198989%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198744198991%_))
                                                            (let ((_%e198745198994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198744198991%_))))
                      (let ((_%tl198747198999%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198745198994%_)))
                            (_%hd198746198997%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198745198994%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198747198999%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198726198943%_))
                                (_%__kont201593201594%_
                                 _%hd198746198997%_
                                 _%hd198737198973%_
                                 _%tl198717198918%_
                                 _%arg198723198936%_)
                                (_%__match201694201695%_
                                 _%e198712198908%_
                                 _%hd198713198911%_
                                 _%tl198714198913%_
                                 _%e198724198938%_
                                 _%hd198725198941%_
                                 _%tl198726198943%_
                                 _%e198727198946%_
                                 _%hd198728198949%_
                                 _%tl198729198951%_
                                 _%e198730198954%_
                                 _%hd198731198957%_
                                 _%tl198732198959%_
                                 _%e198733198962%_
                                 _%hd198734198965%_
                                 _%tl198735198967%_
                                 _%e198736198970%_
                                 _%hd198737198973%_
                                 _%tl198738198975%_
                                 _%e198739198978%_
                                 _%hd198740198981%_
                                 _%tl198741198983%_
                                 _%e198742198986%_
                                 _%hd198743198989%_
                                 _%tl198744198991%_
                                 _%e198745198994%_
                                 _%hd198746198997%_
                                 _%tl198747198999%_))
                            (let ()
                              (declare (not safe))
                              (_%g198661198785%_)))))
                    (let () (declare (not safe)) (_%g198661198785%_)))
                (let () (declare (not safe)) (_%g198661198785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198661198785%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198661198785%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198661198785%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198661198785%_)))))
                        (let () (declare (not safe)) (_%g198661198785%_)))
                    (let () (declare (not safe)) (_%g198661198785%_)))
                (let () (declare (not safe)) (_%g198661198785%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198661198785%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198661198785%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198661198785%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198661198785%_)))))
                        (let () (declare (not safe)) (_%g198661198785%_)))))
                (let () (declare (not safe)) (_%g198661198785%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop198718198921%_
                                     _%target198715198916%_
                                     '()))))
                               (_%__match201612201613%_
                                (lambda (_%e198666199042%_
                                         _%hd198667199045%_
                                         _%tl198668199047%_
                                         _%__splice201589201590%_
                                         _%target198669199050%_
                                         _%tl198671199052%_)
                                  (letrec ((_%loop198672199055%_
                                            (lambda (_%hd198670199058%_
                                                     _%arg198676199060%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198670199058%_))
                                                  (let ((_%e198673199062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198670199058%_))))
                                                    (let ((_%lp-tl198675199067%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198673199062%_)))
                                                          (_%lp-hd198674199065%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198673199062%_))))
                                                      (_%loop198672199055%_
                                                       _%lp-tl198675199067%_
                                                       (cons _%lp-hd198674199065%_
                                                             _%arg198676199060%_))))
                                                  (let ((_%arg198677199070%_
                                                         (reverse _%arg198676199060%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198668199047%_))
                                                        (let ((_%e198678199072%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl198668199047%_))))
                  (let ((_%tl198680199077%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198678199072%_)))
                        (_%hd198679199075%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198678199072%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198679199075%_))
                        (let ((_%e198681199080%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd198679199075%_))))
                          (let ((_%tl198683199085%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198681199080%_)))
                                (_%hd198682199083%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198681199080%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd198682199083%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd198682199083%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198683199085%_))
                                        (let ((_%e198684199088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198683199085%_))))
                                          (let ((_%tl198686199093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198684199088%_)))
                                                (_%hd198685199091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198684199088%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd198685199091%_))
                                                (let ((_%e198687199096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198685199091%_))))
                                                  (let ((_%tl198689199101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198687199096%_)))
                                                        (_%hd198688199099%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198687199096%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd198688199099%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd198688199099%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198689199101%_))
                        (let ((_%e198690199104%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198689199101%_))))
                          (let ((_%tl198692199109%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198690199104%_)))
                                (_%hd198691199107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198690199104%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198692199109%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198686199093%_))
                                    (let ((_%__splice201591201592%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl198686199093%_
                                              '0))))
                                      (let ((_%tl198695199114%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201591201592%_
                                                '1)))
                                            (_%target198693199112%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201591201592%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198695199114%_))
                                            (letrec ((_%loop198696199117%_
                                                      (lambda (_%hd198694199120%_
                                                               _%xarg198700199122%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd198694199120%_))
                                                            (let ((_%e198697199124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd198694199120%_))))
                      (let ((_%lp-tl198699199129%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198697199124%_)))
                            (_%lp-hd198698199127%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198697199124%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd198698199127%_))
                            (let ((_%e198702199132%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd198698199127%_))))
                              (let ((_%tl198704199137%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198702199132%_)))
                                    (_%hd198703199135%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198702199132%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd198703199135%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd198703199135%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198704199137%_))
                                            (let ((_%e198705199140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl198704199137%_))))
                                              (let ((_%tl198707199145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198705199140%_)))
                                                    (_%hd198706199143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198705199140%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198707199145%_))
                                                    (_%loop198696199117%_
                                                     _%lp-tl198699199129%_
                                                     (cons _%hd198706199143%_
                                                           _%xarg198700199122%_))
                                                    (_%__match201624201625%_
                                                     _%e198666199042%_
                                                     _%hd198667199045%_
                                                     _%tl198668199047%_
                                                     _%__splice201589201590%_
                                                     _%target198669199050%_
                                                     _%tl198671199052%_))))
                                            (_%__match201624201625%_
                                             _%e198666199042%_
                                             _%hd198667199045%_
                                             _%tl198668199047%_
                                             _%__splice201589201590%_
                                             _%target198669199050%_
                                             _%tl198671199052%_))
                                        (_%__match201624201625%_
                                         _%e198666199042%_
                                         _%hd198667199045%_
                                         _%tl198668199047%_
                                         _%__splice201589201590%_
                                         _%target198669199050%_
                                         _%tl198671199052%_))
                                    (_%__match201624201625%_
                                     _%e198666199042%_
                                     _%hd198667199045%_
                                     _%tl198668199047%_
                                     _%__splice201589201590%_
                                     _%target198669199050%_
                                     _%tl198671199052%_))))
                            (_%__match201624201625%_
                             _%e198666199042%_
                             _%hd198667199045%_
                             _%tl198668199047%_
                             _%__splice201589201590%_
                             _%target198669199050%_
                             _%tl198671199052%_))))
                    (let ((_%xarg198701199148%_
                           (reverse _%xarg198700199122%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198680199077%_))
                          (_%__kont201587201588%_
                           _%xarg198701199148%_
                           _%hd198691199107%_
                           _%arg198677199070%_)
                          (_%__match201624201625%_
                           _%e198666199042%_
                           _%hd198667199045%_
                           _%tl198668199047%_
                           _%__splice201589201590%_
                           _%target198669199050%_
                           _%tl198671199052%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop198696199117%_
                                               _%target198693199112%_
                                               '()))
                                            (_%__match201624201625%_
                                             _%e198666199042%_
                                             _%hd198667199045%_
                                             _%tl198668199047%_
                                             _%__splice201589201590%_
                                             _%target198669199050%_
                                             _%tl198671199052%_))))
                                    (_%__match201624201625%_
                                     _%e198666199042%_
                                     _%hd198667199045%_
                                     _%tl198668199047%_
                                     _%__splice201589201590%_
                                     _%target198669199050%_
                                     _%tl198671199052%_))
                                (_%__match201624201625%_
                                 _%e198666199042%_
                                 _%hd198667199045%_
                                 _%tl198668199047%_
                                 _%__splice201589201590%_
                                 _%target198669199050%_
                                 _%tl198671199052%_))))
                        (_%__match201624201625%_
                         _%e198666199042%_
                         _%hd198667199045%_
                         _%tl198668199047%_
                         _%__splice201589201590%_
                         _%target198669199050%_
                         _%tl198671199052%_))
                    (_%__match201624201625%_
                     _%e198666199042%_
                     _%hd198667199045%_
                     _%tl198668199047%_
                     _%__splice201589201590%_
                     _%target198669199050%_
                     _%tl198671199052%_))
                (_%__match201624201625%_
                 _%e198666199042%_
                 _%hd198667199045%_
                 _%tl198668199047%_
                 _%__splice201589201590%_
                 _%target198669199050%_
                 _%tl198671199052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match201624201625%_
                                                 _%e198666199042%_
                                                 _%hd198667199045%_
                                                 _%tl198668199047%_
                                                 _%__splice201589201590%_
                                                 _%target198669199050%_
                                                 _%tl198671199052%_))))
                                        (_%__match201624201625%_
                                         _%e198666199042%_
                                         _%hd198667199045%_
                                         _%tl198668199047%_
                                         _%__splice201589201590%_
                                         _%target198669199050%_
                                         _%tl198671199052%_))
                                    (_%__match201624201625%_
                                     _%e198666199042%_
                                     _%hd198667199045%_
                                     _%tl198668199047%_
                                     _%__splice201589201590%_
                                     _%target198669199050%_
                                     _%tl198671199052%_))
                                (_%__match201624201625%_
                                 _%e198666199042%_
                                 _%hd198667199045%_
                                 _%tl198668199047%_
                                 _%__splice201589201590%_
                                 _%target198669199050%_
                                 _%tl198671199052%_))))
                        (_%__match201624201625%_
                         _%e198666199042%_
                         _%hd198667199045%_
                         _%tl198668199047%_
                         _%__splice201589201590%_
                         _%target198669199050%_
                         _%tl198671199052%_))))
                (_%__match201624201625%_
                 _%e198666199042%_
                 _%hd198667199045%_
                 _%tl198668199047%_
                 _%__splice201589201590%_
                 _%target198669199050%_
                 _%tl198671199052%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop198672199055%_
                                     _%target198669199050%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx201585201586%_))
                              (let ((_%e198666199042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx201585201586%_))))
                                (let ((_%tl198668199047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198666199042%_)))
                                      (_%hd198667199045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198666199042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd198667199045%_))
                                      (let ((_%__splice201589201590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd198667199045%_
                                                '0))))
                                        (let ((_%tl198671199052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201589201590%_
                                                  '1)))
                                              (_%target198669199050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201589201590%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198671199052%_))
                                              (_%__match201612201613%_
                                               _%e198666199042%_
                                               _%hd198667199045%_
                                               _%tl198668199047%_
                                               _%__splice201589201590%_
                                               _%target198669199050%_
                                               _%tl198671199052%_)
                                              (_%__match201624201625%_
                                               _%e198666199042%_
                                               _%hd198667199045%_
                                               _%tl198668199047%_
                                               _%__splice201589201590%_
                                               _%target198669199050%_
                                               _%tl198671199052%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl198668199047%_))
                                          (let ((_%e198754198798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl198668199047%_))))
                                            (let ((_%tl198756198803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198754198798%_)))
                                                  (_%hd198755198801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198754198798%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198755198801%_))
                                                  (let ((_%e198757198806%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198755198801%_))))
                                                    (let ((_%tl198759198811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198757198806%_)))
                                                          (_%hd198758198809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198757198806%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd198758198809%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd198758198809%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198759198811%_))
                          (let ((_%e198760198814%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198759198811%_))))
                            (let ((_%tl198762198819%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198760198814%_)))
                                  (_%hd198761198817%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198760198814%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd198761198817%_))
                                  (let ((_%e198763198822%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198761198817%_))))
                                    (let ((_%tl198765198827%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198763198822%_)))
                                          (_%hd198764198825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198763198822%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd198764198825%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd198764198825%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198765198827%_))
                                                  (let ((_%e198766198830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198765198827%_))))
                                                    (let ((_%tl198768198835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198766198830%_)))
                                                          (_%hd198767198833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198766198830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198768198835%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl198762198819%_))
                      (let ((_%e198769198838%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl198762198819%_))))
                        (let ((_%tl198771198843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198769198838%_)))
                              (_%hd198770198841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198769198838%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198770198841%_))
                              (let ((_%e198772198846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd198770198841%_))))
                                (let ((_%tl198774198851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198772198846%_)))
                                      (_%hd198773198849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198772198846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198773198849%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd198773198849%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198774198851%_))
                                              (let ((_%e198775198854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198774198851%_))))
                                                (let ((_%tl198777198859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198775198854%_)))
                                                      (_%hd198776198857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198775198854%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198777198859%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198771198843%_))
                                                          (let ((_%e198778198862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl198771198843%_))))
                    (let ((_%tl198780198867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198778198862%_)))
                          (_%hd198779198865%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198778198862%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198780198867%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198756198803%_))
                              (_%__kont201597201598%_
                               _%hd198776198857%_
                               _%hd198767198833%_
                               _%hd198667199045%_)
                              (let ()
                                (declare (not safe))
                                (_%g198661198785%_)))
                          (let () (declare (not safe)) (_%g198661198785%_)))))
                  (let () (declare (not safe)) (_%g198661198785%_)))
              (let () (declare (not safe)) (_%g198661198785%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198661198785%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198661198785%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198661198785%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198661198785%_)))))
                      (let () (declare (not safe)) (_%g198661198785%_)))
                  (let () (declare (not safe)) (_%g198661198785%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198661198785%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198661198785%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198661198785%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g198661198785%_)))))
                          (let () (declare (not safe)) (_%g198661198785%_)))
                      (let () (declare (not safe)) (_%g198661198785%_)))
                  (let () (declare (not safe)) (_%g198661198785%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198661198785%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198661198785%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g198661198785%_))))))))
                 (_%generate1198508%_
                  (lambda (_%args198639%_
                           _%arglen198640%_
                           _%hd198641%_
                           _%body198642%_)
                    (let* ((_%len198644%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd198641%_)))
                           (_%condition198649%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd198641%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen198640%_
                                                (cons _%len198644%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen198640%_ (cons _%len198644%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len198644%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen198640%_
                                                    (cons _%len198644%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen198640%_ (cons _%len198644%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch198651%_
                            (if (_%dispatch-case?198506%_
                                 _%hd198641%_
                                 _%body198642%_)
                                (_%dispatch-case-e198507%_
                                 _%hd198641%_
                                 _%body198642%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self198503%_
                                 _%hd198641%_
                                 _%body198642%_))))
                      (cons _%condition198649%_
                            (cons (cons 'apply
                                        (cons _%dispatch198651%_
                                              (cons _%args198639%_ '())))
                                  '()))))))
          (let* ((_%g198510198538%_
                  (lambda (_%g198511198535%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198511198535%_))))
                 (_%g198509198636%_
                  (lambda (_%g198511198541%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198511198541%_))
                        (let ((_%e198514198543%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198511198541%_))))
                          (let ((_%hd198515198546%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198514198543%_)))
                                (_%tl198516198548%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198514198543%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl198516198548%_))
                                (let ((_g202754_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl198516198548%_
                                          '0))))
                                  (begin
                                    (let ((_g202755_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g202754_)
                                                 (##values-length _g202754_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g202755_ 2)))
                                          (error "Context expects 2 values"
                                                 _g202755_)))
                                    (let ((_%target198517198551%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202754_ 0)))
                                          (_%tl198519198553%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202754_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198519198553%_))
                                          (letrec ((_%loop198520198556%_
                                                    (lambda (_%hd198518198559%_
                                                             _%body198524198561%_
                                                             _%hd198525198562%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198518198559%_))
                                                          (let ((_%e198521198564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd198518198559%_))))
                    (let ((_%lp-hd198522198567%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198521198564%_)))
                          (_%lp-tl198523198569%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198521198564%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd198522198567%_))
                          (let ((_%e198528198572%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd198522198567%_))))
                            (let ((_%hd198529198575%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198528198572%_)))
                                  (_%tl198530198577%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198528198572%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198530198577%_))
                                  (let ((_%e198531198580%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl198530198577%_))))
                                    (let ((_%hd198532198583%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198531198580%_)))
                                          (_%tl198533198585%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198531198580%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198533198585%_))
                                          (_%loop198520198556%_
                                           _%lp-tl198523198569%_
                                           (cons _%hd198532198583%_
                                                 _%body198524198561%_)
                                           (cons _%hd198529198575%_
                                                 _%hd198525198562%_))
                                          (_%g198510198538%_
                                           _%g198511198541%_))))
                                  (_%g198510198538%_ _%g198511198541%_))))
                          (_%g198510198538%_ _%g198511198541%_))))
                  (let ((_%body198526198588%_ (reverse _%body198524198561%_))
                        (_%hd198527198589%_ (reverse _%hd198525198562%_)))
                    ((lambda (_%g198512198591%_ _%g198513198592%_)
                       (let ((_%args198611%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen198612%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name198613%_
                              (let ((_%$e198608%_
                                     (let ((__tmp202756
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp202756 _%stx198504%_))))
                                (if _%$e198608%_
                                    _%$e198608%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args198611%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen198612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args198611%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args198611%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp202760
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name198613%_
                                                                (cons _%args198611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp202757
                                  (map (lambda (_%g198614198617%_
                                                _%g198615198619%_)
                                         (_%generate1198508%_
                                          _%args198611%_
                                          _%arglen198612%_
                                          _%g198614198617%_
                                          _%g198615198619%_))
                                       (let ((__tmp202758
                                              (lambda (_%g198621198624%_
                                                       _%g198622198626%_)
                                                (cons _%g198621198624%_
                                                      _%g198622198626%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp202758
                                          '()
                                          _%g198513198592%_))
                                       (let ((__tmp202759
                                              (lambda (_%g198628198631%_
                                                       _%g198629198633%_)
                                                (cons _%g198628198631%_
                                                      _%g198629198633%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp202759
                                          '()
                                          _%g198512198591%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp202760 __tmp202757)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body198526198588%_
                     _%hd198527198589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop198520198556%_
                                             _%target198517198551%_
                                             '()
                                             '()))
                                          (_%g198510198538%_
                                           _%g198511198541%_)))))
                                (_%g198510198538%_ _%g198511198541%_))))
                        (_%g198510198538%_ _%g198511198541%_)))))
            (_%g198509198636%_ _%stx198504%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self197740%_ _%stx197741%_ _%compiled-body?197742%_)
        (letrec ((_%generate-simple197744%_
                  (lambda (_%hd198488%_ _%body198489%_)
                    (_%coalesce-boolean197745%_
                     (_%simplify-let197746%_
                      (gxc#generate-runtime-simple-let
                       _%self197740%_
                       'let
                       _%hd198488%_
                       _%body198489%_
                       _%compiled-body?197742%_)))))
                 (_%coalesce-boolean197745%_
                  (lambda (_%code198349%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code198350198376%_ _%code198349%_)
                               (_%else198352198384%_
                                (lambda () _%code198349%_))
                               (_%K198354198421%_
                                (lambda (_%expr2198387%_
                                         _%expr1198388%_
                                         _%id198389%_)
                                  (let* ((_%expr2198390198398%_
                                          _%expr2198387%_)
                                         (_%else198392198406%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1198388%_
                                                        (cons _%expr2198387%_
                                                              '())))))
                                         (_%K198394198411%_
                                          (lambda (_%exprs198409%_)
                                            (cons 'or
                                                  (cons _%expr1198388%_
                                                        _%exprs198409%_)))))
                                    (if (pair? _%expr2198390198398%_)
                                        (let ((_%hd198395198414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2198390198398%_)))
                                              (_%tl198396198416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2198390198398%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd198395198414%_ 'or))
                                              (let ((_%exprs198419%_
                                                     _%tl198396198416%_))
                                                (_%K198394198411%_
                                                 _%exprs198419%_))
                                              (_%else198392198406%_)))
                                        (_%else198392198406%_))))))
                          (if (pair? _%code198350198376%_)
                              (let ((_%hd198355198424%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code198350198376%_)))
                                    (_%tl198356198426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code198350198376%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd198355198424%_ 'let))
                                    (if (pair? _%tl198356198426%_)
                                        (let ((_%hd198357198429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl198356198426%_)))
                                              (_%tl198358198431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl198356198426%_))))
                                          (if (pair? _%hd198357198429%_)
                                              (let ((_%hd198369198434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd198357198429%_)))
                                                    (_%tl198370198436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd198357198429%_))))
                                                (if (pair? _%hd198369198434%_)
                                                    (let ((_%hd198371198439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd198369198434%_)))
                                                          (_%tl198372198441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd198369198434%_))))
                                                      (let ((_%id198444%_
                                                             _%hd198371198439%_))
                                                        (if (pair? _%tl198372198441%_)
                                                            (let ((_%hd198373198446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl198372198441%_)))
                          (_%tl198374198448%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl198372198441%_))))
                      (let ((_%expr1198451%_ _%hd198373198446%_))
                        (if (null? _%tl198374198448%_)
                            (if (null? _%tl198370198436%_)
                                (if (pair? _%tl198358198431%_)
                                    (let ((_%hd198359198453%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl198358198431%_)))
                                          (_%tl198360198455%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl198358198431%_))))
                                      (if (pair? _%hd198359198453%_)
                                          (let ((_%hd198361198458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd198359198453%_)))
                                                (_%tl198362198460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd198359198453%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd198361198458%_
                                                         'if))
                                                (if (pair? _%tl198362198460%_)
                                                    (let ((_%hd198363198463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl198362198460%_)))
                                                          (_%tl198364198465%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl198362198460%_))))
                                                      (if ((lambda (_%g198467198469%_)
                                                             (eq? _%g198467198469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id198444%_))
                   _%hd198363198463%_)
                  (if (pair? _%tl198364198465%_)
                      (let ((_%hd198365198472%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl198364198465%_)))
                            (_%tl198366198474%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl198364198465%_))))
                        (if ((lambda (_%g198476198478%_)
                               (eq? _%g198476198478%_ _%id198444%_))
                             _%hd198365198472%_)
                            (if (pair? _%tl198366198474%_)
                                (let ((_%hd198367198481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl198366198474%_)))
                                      (_%tl198368198483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl198366198474%_))))
                                  (let ((_%expr2198486%_ _%hd198367198481%_))
                                    (if (null? _%tl198368198483%_)
                                        (if (null? _%tl198360198455%_)
                                            (_%K198354198421%_
                                             _%expr2198486%_
                                             _%expr1198451%_
                                             _%id198444%_)
                                            (_%else198352198384%_))
                                        (_%else198352198384%_))))
                                (_%else198352198384%_))
                            (_%else198352198384%_)))
                      (_%else198352198384%_))
                  (_%else198352198384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198352198384%_))
                                                (_%else198352198384%_)))
                                          (_%else198352198384%_)))
                                    (_%else198352198384%_))
                                (_%else198352198384%_))
                            (_%else198352198384%_))))
                    (_%else198352198384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198352198384%_)))
                                              (_%else198352198384%_)))
                                        (_%else198352198384%_))
                                    (_%else198352198384%_)))
                              (_%else198352198384%_)))
                        _%code198349%_)))
                 (_%simplify-let197746%_
                  (lambda (_%code198048%_)
                    (let* ((_%code198049198121%_ _%code198048%_)
                           (_%else198054198129%_ (lambda () _%code198048%_)))
                      (let ((_%K198113198329%_
                             (lambda (_%expr198327%_) _%expr198327%_))
                            (_%K198096198275%_
                             (lambda (_%body198271%_
                                      _%expr198272%_
                                      _%id198273%_)
                               (cons 'let
                                     (cons (cons (cons _%id198273%_
                                                       (cons _%expr198272%_
                                                             '()))
                                                 '())
                                           _%body198271%_))))
                            (_%K198073198199%_
                             (lambda (_%body198193%_
                                      _%expr2198194%_
                                      _%id2198195%_
                                      _%expr1198196%_
                                      _%id1198197%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1198197%_
                                                       (cons _%expr1198196%_
                                                             '()))
                                                 (cons (cons _%id2198195%_
                                                             (cons _%expr2198194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body198193%_))))
                            (_%K198056198138%_
                             (lambda (_%body198133%_
                                      _%bind198134%_
                                      _%expr1198135%_
                                      _%id1198136%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1198136%_
                                                       (cons _%expr1198135%_
                                                             '()))
                                                 _%bind198134%_)
                                           _%body198133%_)))))
                        (if (pair? _%code198049198121%_)
                            (let ((_%tl198115198334%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code198049198121%_)))
                                  (_%hd198114198332%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code198049198121%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd198114198332%_ 'let))
                                  (if (pair? _%tl198115198334%_)
                                      (let ((_%tl198117198339%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl198115198334%_)))
                                            (_%hd198116198337%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl198115198334%_))))
                                        (if (null? _%hd198116198337%_)
                                            (if (pair? _%tl198117198339%_)
                                                (let ((_%tl198119198344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl198117198339%_)))
                                                      (_%hd198118198342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl198117198339%_))))
                                                  (if (null? _%tl198119198344%_)
                                                      (let ((_%expr198347%_
                                                             _%hd198118198342%_))
                                                        (_%K198113198329%_
                                                         _%expr198347%_))
                                                      (_%else198054198129%_)))
                                                (_%else198054198129%_))
                                            (if (pair? _%hd198116198337%_)
                                                (let ((_%tl198108198290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd198116198337%_)))
                                                      (_%hd198107198288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd198116198337%_))))
                                                  (if (pair? _%hd198107198288%_)
                                                      (let ((_%tl198110198295%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd198107198288%_)))
                    (_%hd198109198293%_
                     (let () (declare (not safe)) (##car _%hd198107198288%_))))
                (if (pair? _%tl198110198295%_)
                    (let ((_%tl198112198302%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl198110198295%_)))
                          (_%hd198111198300%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl198110198295%_))))
                      (if (null? _%tl198112198302%_)
                          (if (null? _%tl198108198290%_)
                              (if (pair? _%tl198117198339%_)
                                  (let ((_%tl198102198309%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198117198339%_)))
                                        (_%hd198101198307%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198117198339%_))))
                                    (if (pair? _%hd198101198307%_)
                                        (let ((_%tl198104198314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd198101198307%_)))
                                              (_%hd198103198312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd198101198307%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd198103198312%_
                                                       'let))
                                              (if (pair? _%tl198104198314%_)
                                                  (let ((_%tl198106198319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl198104198314%_)))
                                                        (_%hd198105198317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl198104198314%_))))
                                                    (if (null? _%hd198105198317%_)
                                                        (if (null? _%tl198102198309%_)
                                                            (let ((_%id198298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd198109198293%_)
                          (_%expr198305%_ _%hd198111198300%_)
                          (_%body198322%_ _%tl198106198319%_))
                      (_%K198096198275%_
                       _%body198322%_
                       _%expr198305%_
                       _%id198298%_))
                    (_%else198054198129%_))
                (if (pair? _%hd198105198317%_)
                    (let ((_%tl198085198248%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd198105198317%_)))
                          (_%hd198084198246%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd198105198317%_))))
                      (if (pair? _%hd198084198246%_)
                          (let ((_%tl198087198253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd198084198246%_)))
                                (_%hd198086198251%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd198084198246%_))))
                            (if (pair? _%tl198087198253%_)
                                (let ((_%tl198089198260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl198087198253%_)))
                                      (_%hd198088198258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl198087198253%_))))
                                  (if (null? _%tl198089198260%_)
                                      (if (null? _%tl198085198248%_)
                                          (if (null? _%tl198102198309%_)
                                              (let ((_%id1198222%_
                                                     _%hd198109198293%_)
                                                    (_%expr1198229%_
                                                     _%hd198111198300%_)
                                                    (_%id2198256%_
                                                     _%hd198086198251%_)
                                                    (_%expr2198263%_
                                                     _%hd198088198258%_)
                                                    (_%body198265%_
                                                     _%tl198106198319%_))
                                                (_%K198073198199%_
                                                 _%body198265%_
                                                 _%expr2198263%_
                                                 _%id2198256%_
                                                 _%expr1198229%_
                                                 _%id1198222%_))
                                              (_%else198054198129%_))
                                          (_%else198054198129%_))
                                      (_%else198054198129%_)))
                                (_%else198054198129%_)))
                          (_%else198054198129%_)))
                    (_%else198054198129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else198054198129%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd198103198312%_
                                                           'let*))
                                                  (if (pair? _%tl198104198314%_)
                                                      (let ((_%tl198066198182%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl198104198314%_)))
                    (_%hd198065198180%_
                     (let () (declare (not safe)) (##car _%tl198104198314%_))))
                (if (null? _%tl198102198309%_)
                    (let ((_%id1198161%_ _%hd198109198293%_)
                          (_%expr1198168%_ _%hd198111198300%_)
                          (_%bind198185%_ _%hd198065198180%_)
                          (_%body198187%_ _%tl198066198182%_))
                      (_%K198056198138%_
                       _%body198187%_
                       _%bind198185%_
                       _%expr1198168%_
                       _%id1198161%_))
                    (_%else198054198129%_)))
              (_%else198054198129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else198054198129%_))))
                                        (_%else198054198129%_)))
                                  (_%else198054198129%_))
                              (_%else198054198129%_))
                          (_%else198054198129%_)))
                    (_%else198054198129%_)))
              (_%else198054198129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else198054198129%_))))
                                      (_%else198054198129%_))
                                  (_%else198054198129%_)))
                            (_%else198054198129%_))))))
                 (_%generate-values197747%_
                  (lambda (_%hd197861%_ _%body197862%_)
                    (let _%lp197864%_ ((_%rest197866%_ _%hd197861%_)
                                       (_%bind197867%_ '())
                                       (_%check197868%_ '())
                                       (_%post197869%_ '()))
                      (let* ((_%__stx201914201915%_ _%rest197866%_)
                             (_%g197872197883%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx201914201915%_)))))
                        (let ((_%__kont201916201917%_
                               (lambda (_%g197874197910%_ _%g197875197911%_)
                                 (let* ((_%__stx201870201871%_
                                         _%g197875197911%_)
                                        (_%g197926197951%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx201870201871%_)))))
                                   (let ((_%__kont201872201873%_
                                          (lambda (_%g197928198024%_
                                                   _%g197929198025%_)
                                            (let ((_%eid198039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g197929198025%_)))
                                                  (_%expr198040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197740%_
                                                      _%g197928198024%_))))
                                              (_%lp197864%_
                                               _%g197874197910%_
                                               (cons (cons _%eid198039%_
                                                           (cons _%expr198040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197867%_)
                                               _%check197868%_
                                               _%post197869%_))))
                                         (_%__kont201874201875%_
                                          (lambda (_%g197939197972%_
                                                   _%g197940197973%_)
                                            (let* ((_%vals197986%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values197988%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals197986%_
                                                     _%g197940197973%_
                                                     _%g197939197972%_))
                                                   (_%refs197990%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals197986%_
                                                     _%g197940197973%_))
                                                   (_%expr197992%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self197740%_
                                                       _%g197939197972%_))))
                                              (_%lp197864%_
                                               _%g197874197910%_
                                               (cons (cons _%vals197986%_
                                                           (cons _%expr197992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197867%_)
                                               (cons _%check-values197988%_
                                                     _%check197868%_)
                                               (cons _%refs197990%_
                                                     _%post197869%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx201870201871%_))
                                         (let ((_%e197930198000%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx201870201871%_))))
                                           (let ((_%tl197932198005%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197930198000%_)))
                                                 (_%hd197931198003%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197930198000%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd197931198003%_))
                                                 (let ((_%e197933198008%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd197931198003%_))))
                                                   (let ((_%tl197935198013%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197933198008%_)))
                                                         (_%hd197934198011%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197933198008%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl197935198013%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197932198005%_))
                     (let ((_%e197936198016%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197932198005%_))))
                       (let ((_%tl197938198021%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197936198016%_)))
                             (_%hd197937198019%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197936198016%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197938198021%_))
                             (_%__kont201872201873%_
                              _%hd197937198019%_
                              _%hd197934198011%_)
                             (let ()
                               (declare (not safe))
                               (_%g197926197951%_)))))
                     (let () (declare (not safe)) (_%g197926197951%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl197932198005%_))
                     (let ((_%e197944197964%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197932198005%_))))
                       (let ((_%tl197946197969%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197944197964%_)))
                             (_%hd197945197967%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197944197964%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197946197969%_))
                             (_%__kont201874201875%_
                              _%hd197945197967%_
                              _%hd197931198003%_)
                             (let ()
                               (declare (not safe))
                               (_%g197926197951%_)))))
                     (let () (declare (not safe)) (_%g197926197951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl197932198005%_))
                                                     (let ((_%e197944197964%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl197932198005%_))))
                                                       (let ((_%tl197946197969%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197944197964%_)))
                     (_%hd197945197967%_
                      (let () (declare (not safe)) (##car _%e197944197964%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197946197969%_))
                     (_%__kont201874201875%_
                      _%hd197945197967%_
                      _%hd197931198003%_)
                     (let () (declare (not safe)) (_%g197926197951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g197926197951%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g197926197951%_)))))))
                              (_%__kont201918201919%_
                               (lambda ()
                                 (let* ((_%body197890%_
                                         (if _%compiled-body?197742%_
                                             _%body197862%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self197740%_
                                                _%body197862%_))))
                                        (_%body197892%_
                                         (_%generate-values-post197748%_
                                          _%post197869%_
                                          _%body197890%_))
                                        (_%body197894%_
                                         (_%generate-values-check197749%_
                                          _%check197868%_
                                          _%body197892%_)))
                                   (cons 'let
                                         (cons (reverse _%bind197867%_)
                                               (cons _%body197894%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx201914201915%_))
                              (let ((_%e197876197902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx201914201915%_))))
                                (let ((_%tl197878197907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197876197902%_)))
                                      (_%hd197877197905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197876197902%_))))
                                  (_%__kont201916201917%_
                                   _%tl197878197907%_
                                   _%hd197877197905%_)))
                              (_%__kont201918201919%_)))))))
                 (_%generate-values-post197748%_
                  (lambda (_%post197820%_ _%body197821%_)
                    (let _%lp197823%_ ((_%rest197825%_ _%post197820%_)
                                       (_%body197826%_ _%body197821%_))
                      (let* ((_%rest197827197835%_ _%rest197825%_)
                             (_%else197829197843%_ (lambda () _%body197826%_))
                             (_%K197831197849%_
                              (lambda (_%rest197846%_ _%bind197847%_)
                                (_%lp197823%_
                                 _%rest197846%_
                                 (cons 'let
                                       (cons _%bind197847%_
                                             (cons _%body197826%_ '())))))))
                        (if (pair? _%rest197827197835%_)
                            (let ((_%hd197832197852%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197827197835%_)))
                                  (_%tl197833197854%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197827197835%_))))
                              (let* ((_%bind197857%_ _%hd197832197852%_)
                                     (_%rest197859%_ _%tl197833197854%_))
                                (_%K197831197849%_
                                 _%rest197859%_
                                 _%bind197857%_)))
                            (_%else197829197843%_))))))
                 (_%generate-values-check197749%_
                  (lambda (_%check197817%_ _%body197818%_)
                    (cons 'begin
                          (let ((__tmp202762 (cons _%body197818%_ '()))
                                (__tmp202761 (reverse _%check197817%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp202762 __tmp202761))))))
          (let* ((_%g197751197768%_
                  (lambda (_%g197752197765%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197752197765%_))))
                 (_%g197750197814%_
                  (lambda (_%g197752197771%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197752197771%_))
                        (let ((_%e197755197773%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197752197771%_))))
                          (let ((_%hd197756197776%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197755197773%_)))
                                (_%tl197757197778%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197755197773%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197757197778%_))
                                (let ((_%e197758197781%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197757197778%_))))
                                  (let ((_%hd197759197784%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197758197781%_)))
                                        (_%tl197760197786%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197758197781%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197760197786%_))
                                        (let ((_%e197761197789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197760197786%_))))
                                          (let ((_%hd197762197792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197761197789%_)))
                                                (_%tl197763197794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197761197789%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197763197794%_))
                                                ((lambda (_%g197753197797%_
                                                          _%g197754197798%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g197754197798%_)
                                                       (_%generate-simple197744%_
                                                        _%g197754197798%_
                                                        _%g197753197797%_)
                                                       (_%generate-values197747%_
                                                        _%g197754197798%_
                                                        _%g197753197797%_)))
                                                 _%hd197762197792%_
                                                 _%hd197759197784%_)
                                                (_%g197751197768%_
                                                 _%g197752197771%_))))
                                        (_%g197751197768%_
                                         _%g197752197771%_))))
                                (_%g197751197768%_ _%g197752197771%_))))
                        (_%g197751197768%_ _%g197752197771%_)))))
            (_%g197750197814%_ _%stx197741%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self198494%_ _%stx198495%_)
        (let ((_%compiled-body?198497%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self198494%_
           _%stx198495%_
           _%compiled-body?198497%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g202763_
        (let ((_g202764_ (let () (declare (not safe)) (##length _g202763_))))
          (cond ((let () (declare (not safe)) (##fx= _g202764_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g202763_))
                ((let () (declare (not safe)) (##fx= _g202764_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g202763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g202763_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals197634%_ _%hd197635%_)
        (let _%lp197637%_ ((_%rest197639%_ _%hd197635%_)
                           (_%k197640%_ '0)
                           (_%r197641%_ '()))
          (let* ((_%__stx201928201929%_ _%rest197639%_)
                 (_%g197646197663%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201928201929%_)))))
            (let ((_%__kont201930201931%_
                   (lambda (_%g197648197726%_)
                     (_%lp197637%_
                      _%g197648197726%_
                      (let () (declare (not safe)) (##fx+ _%k197640%_ '1))
                      _%r197641%_)))
                  (_%__kont201932201933%_
                   (lambda (_%g197653197699%_ _%g197654197700%_)
                     (_%lp197637%_
                      _%g197653197699%_
                      (let () (declare (not safe)) (##fx+ _%k197640%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g197654197700%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals197634%_
                                         _%k197640%_
                                         _%g197653197699%_)
                                        '()))
                            _%r197641%_))))
                  (_%__kont201934201935%_
                   (lambda (_%g197658197675%_)
                     (let ((__tmp202765
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g197658197675%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals197634%_
                                               _%k197640%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp202765 _%r197641%_))))
                  (_%__kont201936201937%_ (lambda () (reverse _%r197641%_))))
              (let ((_%g197644197686%_
                     (lambda ()
                       (let ((_%g197658197675%_ _%__stx201928201929%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g197658197675%_))
                             (_%__kont201934201935%_ _%g197658197675%_)
                             (_%__kont201936201937%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201928201929%_))
                    (let ((_%e197649197715%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201928201929%_))))
                      (let ((_%tl197651197720%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197649197715%_)))
                            (_%hd197650197718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197649197715%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd197650197718%_))
                            (let ((_%e197652197723%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197650197718%_))))
                              (if (equal? _%e197652197723%_ '#f)
                                  (_%__kont201930201931%_ _%tl197651197720%_)
                                  (_%__kont201932201933%_
                                   _%tl197651197720%_
                                   _%hd197650197718%_)))
                            (_%__kont201932201933%_
                             _%tl197651197720%_
                             _%hd197650197718%_))))
                    (let () (declare (not safe)) (_%g197644197686%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self197313%_ _%stx197314%_ _%compiled-body?197315%_)
        (letrec ((_%generate-simple197317%_
                  (lambda (_%hd197619%_ _%body197620%_)
                    (gxc#generate-runtime-simple-let
                     _%self197313%_
                     'letrec
                     _%hd197619%_
                     _%body197620%_
                     _%compiled-body?197315%_)))
                 (_%generate-values197318%_
                  (lambda (_%hd197398%_ _%body197399%_)
                    (let _%lp197401%_ ((_%rest197403%_ _%hd197398%_)
                                       (_%bind197404%_ '())
                                       (_%check197405%_ '())
                                       (_%post197406%_ '()))
                      (let* ((_%__stx202002202003%_ _%rest197403%_)
                             (_%g197409197420%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx202002202003%_)))))
                        (let ((_%__kont202004202005%_
                               (lambda (_%g197411197447%_ _%g197412197448%_)
                                 (let* ((_%__stx201958201959%_
                                         _%g197412197448%_)
                                        (_%g197463197488%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx201958201959%_)))))
                                   (let ((_%__kont201960201961%_
                                          (lambda (_%g197465197595%_
                                                   _%g197466197596%_)
                                            (let ((_%eid197610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g197466197596%_)))
                                                  (_%expr197611%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197313%_
                                                      _%g197465197595%_))))
                                              (_%lp197401%_
                                               _%g197411197447%_
                                               (cons (cons _%eid197610%_
                                                           (cons _%expr197611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197404%_)
                                               _%check197405%_
                                               _%post197406%_))))
                                         (_%__kont201962201963%_
                                          (lambda (_%g197476197509%_
                                                   _%g197477197510%_)
                                            (let* ((_%vals197523%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values197525%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals197523%_
                                                     _%g197477197510%_
                                                     _%g197476197509%_))
                                                   (_%refs197527%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals197523%_
                                                     _%g197477197510%_))
                                                   (_%expr197529%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self197313%_
                                                       _%g197476197509%_))))
                                              (_%lp197401%_
                                               _%g197411197447%_
                                               (let ((__tmp202767
                                                      (cons (cons _%vals197523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr197529%_ '()))
                    _%bind197404%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp202766
                                                      (map (lambda (_%e197531197533%_)
                                                             (let* ((_%e197531197535197544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e197531197533%_)
                            (_%E197537197548%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e197531197535197544%_
                                        '([eid _])))
                               '#!void))
                            (_%K197538197553%_
                             (lambda (_%eid197551%_)
                               (cons _%eid197551%_ (cons '#!void '())))))
                       (if (pair? _%e197531197535197544%_)
                           (let ((_%hd197539197556%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197531197535197544%_)))
                                 (_%tl197540197558%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197531197535197544%_))))
                             (let ((_%eid197561%_ _%hd197539197556%_))
                               (if (pair? _%tl197540197558%_)
                                   (let ((_%tl197542197563%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl197540197558%_))))
                                     (if (null? _%tl197542197563%_)
                                         (_%K197538197553%_ _%eid197561%_)
                                         (_%E197537197548%_)))
                                   (_%E197537197548%_))))
                           (_%E197537197548%_))))
                   _%refs197527%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp202767
                                                  __tmp202766))
                                               (cons _%check-values197525%_
                                                     _%check197405%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs197527%_
                                                  _%post197406%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx201958201959%_))
                                         (let ((_%e197467197571%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx201958201959%_))))
                                           (let ((_%tl197469197576%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197467197571%_)))
                                                 (_%hd197468197574%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197467197571%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd197468197574%_))
                                                 (let ((_%e197470197579%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd197468197574%_))))
                                                   (let ((_%tl197472197584%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197470197579%_)))
                                                         (_%hd197471197582%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197470197579%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl197472197584%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197469197576%_))
                     (let ((_%e197473197587%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197469197576%_))))
                       (let ((_%tl197475197592%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197473197587%_)))
                             (_%hd197474197590%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197473197587%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197475197592%_))
                             (_%__kont201960201961%_
                              _%hd197474197590%_
                              _%hd197471197582%_)
                             (let ()
                               (declare (not safe))
                               (_%g197463197488%_)))))
                     (let () (declare (not safe)) (_%g197463197488%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl197469197576%_))
                     (let ((_%e197481197501%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197469197576%_))))
                       (let ((_%tl197483197506%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197481197501%_)))
                             (_%hd197482197504%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197481197501%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197483197506%_))
                             (_%__kont201962201963%_
                              _%hd197482197504%_
                              _%hd197468197574%_)
                             (let ()
                               (declare (not safe))
                               (_%g197463197488%_)))))
                     (let () (declare (not safe)) (_%g197463197488%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl197469197576%_))
                                                     (let ((_%e197481197501%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl197469197576%_))))
                                                       (let ((_%tl197483197506%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197481197501%_)))
                     (_%hd197482197504%_
                      (let () (declare (not safe)) (##car _%e197481197501%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197483197506%_))
                     (_%__kont201962201963%_
                      _%hd197482197504%_
                      _%hd197468197574%_)
                     (let () (declare (not safe)) (_%g197463197488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g197463197488%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g197463197488%_)))))))
                              (_%__kont202006202007%_
                               (lambda ()
                                 (let* ((_%body197427%_
                                         (if _%compiled-body?197315%_
                                             _%body197399%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self197313%_
                                                _%body197399%_))))
                                        (_%body197429%_
                                         (_%generate-values-post197320%_
                                          _%post197406%_
                                          _%body197427%_))
                                        (_%body197431%_
                                         (_%generate-values-check197319%_
                                          _%check197405%_
                                          _%body197429%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind197404%_)
                                               (cons _%body197431%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx202002202003%_))
                              (let ((_%e197413197439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx202002202003%_))))
                                (let ((_%tl197415197444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197413197439%_)))
                                      (_%hd197414197442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197413197439%_))))
                                  (_%__kont202004202005%_
                                   _%tl197415197444%_
                                   _%hd197414197442%_)))
                              (_%__kont202006202007%_)))))))
                 (_%generate-values-check197319%_
                  (lambda (_%check197395%_ _%body197396%_)
                    (cons 'begin
                          (let ((__tmp202769 (cons _%body197396%_ '()))
                                (__tmp202768 (reverse _%check197395%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp202769 __tmp202768)))))
                 (_%generate-values-post197320%_
                  (lambda (_%post197388%_ _%body197389%_)
                    (cons 'begin
                          (let ((__tmp202773 (cons _%body197389%_ '()))
                                (__tmp202770
                                 (let ((__tmp202772
                                        (lambda (_%g197390197392%_)
                                          (cons 'set! _%g197390197392%_)))
                                       (__tmp202771 (reverse _%post197388%_)))
                                   (declare (not safe))
                                   (##map __tmp202772 __tmp202771))))
                            (declare (not safe))
                            (foldr__0 cons __tmp202773 __tmp202770))))))
          (let* ((_%g197322197339%_
                  (lambda (_%g197323197336%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197323197336%_))))
                 (_%g197321197385%_
                  (lambda (_%g197323197342%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197323197342%_))
                        (let ((_%e197326197344%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197323197342%_))))
                          (let ((_%hd197327197347%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197326197344%_)))
                                (_%tl197328197349%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197326197344%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197328197349%_))
                                (let ((_%e197329197352%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197328197349%_))))
                                  (let ((_%hd197330197355%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197329197352%_)))
                                        (_%tl197331197357%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197329197352%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197331197357%_))
                                        (let ((_%e197332197360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197331197357%_))))
                                          (let ((_%hd197333197363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197332197360%_)))
                                                (_%tl197334197365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197332197360%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197334197365%_))
                                                ((lambda (_%g197324197368%_
                                                          _%g197325197369%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g197325197369%_)
                                                       (_%generate-simple197317%_
                                                        _%g197325197369%_
                                                        _%g197324197368%_)
                                                       (_%generate-values197318%_
                                                        _%g197325197369%_
                                                        _%g197324197368%_)))
                                                 _%hd197333197363%_
                                                 _%hd197330197355%_)
                                                (_%g197322197339%_
                                                 _%g197323197342%_))))
                                        (_%g197322197339%_
                                         _%g197323197342%_))))
                                (_%g197322197339%_ _%g197323197342%_))))
                        (_%g197322197339%_ _%g197323197342%_)))))
            (_%g197321197385%_ _%stx197314%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self197625%_ _%stx197626%_)
        (let ((_%compiled-body?197628%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self197625%_
           _%stx197626%_
           _%compiled-body?197628%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g202774_
        (let ((_g202775_ (let () (declare (not safe)) (##length _g202774_))))
          (cond ((let () (declare (not safe)) (##fx= _g202775_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g202774_))
                ((let () (declare (not safe)) (##fx= _g202775_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g202774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g202774_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self196894%_ _%stx196895%_)
        (letrec ((_%generate-values196897%_
                  (lambda (_%hd197140%_ _%body197141%_)
                    (let _%lp197143%_ ((_%rest197145%_ _%hd197140%_)
                                       (_%bind197146%_ '()))
                      (let* ((_%rest197147197155%_ _%rest197145%_)
                             (_%else197149197166%_
                              (lambda ()
                                (let ((_%bind197163%_ (reverse _%bind197146%_))
                                      (_%body197164%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self196894%_
                                          _%body197141%_))))
                                  (cons 'letrec*
                                        (cons _%bind197163%_
                                              (cons _%body197164%_ '()))))))
                             (_%K197151197300%_
                              (lambda (_%rest197169%_ _%hd-bind197170%_)
                                (let* ((_%__stx202016202017%_
                                        _%hd-bind197170%_)
                                       (_%g197173197198%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx202016202017%_)))))
                                  (let ((_%__kont202018202019%_
                                         (lambda (_%g197175197279%_
                                                  _%g197176197280%_)
                                           (let ((_%eid197294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g197176197280%_)))
                                                 (_%expr197295%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self196894%_
                                                     _%g197175197279%_))))
                                             (_%lp197143%_
                                              _%rest197169%_
                                              (cons (cons _%eid197294%_
                                                          (cons _%expr197295%_
                                                                '()))
                                                    _%bind197146%_)))))
                                        (_%__kont202020202021%_
                                         (lambda (_%g197186197219%_
                                                  _%g197187197220%_)
                                           (let* ((_%vals197239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp197241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values197243%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp197241%_
                                                    _%g197187197220%_
                                                    _%g197186197219%_))
                                                  (_%refs197245%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals197239%_
                                                    _%g197187197220%_))
                                                  (_%expr197247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196894%_
                                                      _%g197186197219%_))))
                                             (_%lp197143%_
                                              _%rest197169%_
                                              (let ((__tmp202776
                                                     (cons (cons _%vals197239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp197241%_
                                                       (cons _%expr197247%_
                                                             '()))
                                                 '())
                                           (cons _%check-values197243%_
                                                 (cons _%tmp197241%_ '()))))
                               '()))
                   _%bind197146%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp202776
                                                 _%refs197245%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx202016202017%_))
                                        (let ((_%e197177197255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx202016202017%_))))
                                          (let ((_%tl197179197260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197177197255%_)))
                                                (_%hd197178197258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197177197255%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd197178197258%_))
                                                (let ((_%e197180197263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197178197258%_))))
                                                  (let ((_%tl197182197268%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197180197263%_)))
                                                        (_%hd197181197266%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197180197263%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197182197268%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197179197260%_))
                                                            (let ((_%e197183197271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197179197260%_))))
                      (let ((_%tl197185197276%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197183197271%_)))
                            (_%hd197184197274%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197183197271%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197185197276%_))
                            (_%__kont202018202019%_
                             _%hd197184197274%_
                             _%hd197181197266%_)
                            (let ()
                              (declare (not safe))
                              (_%g197173197198%_)))))
                    (let () (declare (not safe)) (_%g197173197198%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197179197260%_))
                    (let ((_%e197191197211%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197179197260%_))))
                      (let ((_%tl197193197216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197191197211%_)))
                            (_%hd197192197214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197191197211%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197193197216%_))
                            (_%__kont202020202021%_
                             _%hd197192197214%_
                             _%hd197178197258%_)
                            (let ()
                              (declare (not safe))
                              (_%g197173197198%_)))))
                    (let () (declare (not safe)) (_%g197173197198%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197179197260%_))
                                                    (let ((_%e197191197211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197179197260%_))))
                                                      (let ((_%tl197193197216%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197191197211%_)))
                    (_%hd197192197214%_
                     (let () (declare (not safe)) (##car _%e197191197211%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197193197216%_))
                    (_%__kont202020202021%_
                     _%hd197192197214%_
                     _%hd197178197258%_)
                    (let () (declare (not safe)) (_%g197173197198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197173197198%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197173197198%_))))))))
                        (if (pair? _%rest197147197155%_)
                            (let ((_%hd197152197303%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197147197155%_)))
                                  (_%tl197153197305%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197147197155%_))))
                              (let* ((_%hd-bind197308%_ _%hd197152197303%_)
                                     (_%rest197310%_ _%tl197153197305%_))
                                (_%K197151197300%_
                                 _%rest197310%_
                                 _%hd-bind197308%_)))
                            (_%else197149197166%_))))))
                 (_%generate-letrec?196898%_
                  (lambda (_%hd197030%_)
                    (let _%lp197032%_ ((_%rest197034%_ _%hd197030%_))
                      (let* ((_%rest197035197043%_ _%rest197034%_)
                             (_%else197037197051%_ (lambda () '#t))
                             (_%K197039197128%_
                              (lambda (_%rest197054%_ _%hd-bind197055%_)
                                (let* ((_%g197057197074%_
                                        (lambda (_%g197058197071%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g197058197071%_))))
                                       (_%g197056197125%_
                                        (lambda (_%g197058197077%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g197058197077%_))
                                              (let ((_%e197061197079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g197058197077%_))))
                                                (let ((_%hd197062197082%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197061197079%_)))
                                                      (_%tl197063197084%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197061197079%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd197062197082%_))
                                                      (let ((_%e197064197087%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd197062197082%_))))
                (let ((_%hd197065197090%_
                       (let () (declare (not safe)) (##car _%e197064197087%_)))
                      (_%tl197066197092%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197064197087%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197066197092%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197063197084%_))
                          (let ((_%e197067197095%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197063197084%_))))
                            (let ((_%hd197068197098%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197067197095%_)))
                                  (_%tl197069197100%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197067197095%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197069197100%_))
                                  ((lambda (_%g197059197103%_
                                            _%g197060197104%_)
                                     (if (_%is-lambda-expr?196899%_
                                          _%g197059197103%_)
                                         (_%lp197032%_ _%rest197054%_)
                                         '#f))
                                   _%hd197068197098%_
                                   _%hd197065197090%_)
                                  (_%g197057197074%_ _%g197058197077%_))))
                          (_%g197057197074%_ _%g197058197077%_))
                      (_%g197057197074%_ _%g197058197077%_))))
              (_%g197057197074%_ _%g197058197077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197057197074%_
                                               _%g197058197077%_)))))
                                  (_%g197056197125%_ _%hd-bind197055%_)))))
                        (if (pair? _%rest197035197043%_)
                            (let ((_%hd197040197131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197035197043%_)))
                                  (_%tl197041197133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197035197043%_))))
                              (let* ((_%hd-bind197136%_ _%hd197040197131%_)
                                     (_%rest197138%_ _%tl197041197133%_))
                                (_%K197039197128%_
                                 _%rest197138%_
                                 _%hd-bind197136%_)))
                            (_%else197037197051%_))))))
                 (_%is-lambda-expr?196899%_
                  (lambda (_%expr196967%_)
                    (let* ((_%__stx202060202061%_ _%expr196967%_)
                           (_%g196970196984%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx202060202061%_)))))
                      (let ((_%__kont202062202063%_
                             (lambda (_%g196972197012%_ _%g196973197013%_)
                               '#t))
                            (_%__kont202064202065%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx202060202061%_))
                            (let ((_%e196974196996%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx202060202061%_))))
                              (let ((_%tl196976197001%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e196974196996%_)))
                                    (_%hd196975196999%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e196974196996%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd196975196999%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd196975196999%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196976197001%_))
                                            (let ((_%e196977197004%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl196976197001%_))))
                                              (let ((_%tl196979197009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196977197004%_)))
                                                    (_%hd196978197007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196977197004%_))))
                                                (_%__kont202062202063%_
                                                 _%tl196979197009%_
                                                 _%hd196978197007%_)))
                                            (_%__kont202064202065%_))
                                        (_%__kont202064202065%_))
                                    (_%__kont202064202065%_))))
                            (_%__kont202064202065%_)))))))
          (let* ((_%g196901196918%_
                  (lambda (_%g196902196915%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196902196915%_))))
                 (_%g196900196964%_
                  (lambda (_%g196902196921%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196902196921%_))
                        (let ((_%e196905196923%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196902196921%_))))
                          (let ((_%hd196906196926%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196905196923%_)))
                                (_%tl196907196928%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196905196923%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196907196928%_))
                                (let ((_%e196908196931%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196907196928%_))))
                                  (let ((_%hd196909196934%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196908196931%_)))
                                        (_%tl196910196936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196908196931%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196910196936%_))
                                        (let ((_%e196911196939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl196910196936%_))))
                                          (let ((_%hd196912196942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196911196939%_)))
                                                (_%tl196913196944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196911196939%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196913196944%_))
                                                ((lambda (_%g196903196947%_
                                                          _%g196904196948%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g196904196948%_)
                                                       (if (_%generate-letrec?196898%_
                                                            _%g196904196948%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self196894%_
                                                            'letrec
                                                            _%g196904196948%_
                                                            _%g196903196947%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self196894%_
                                                            'letrec*
                                                            _%g196904196948%_
                                                            _%g196903196947%_
                                                            '#f))
                                                       (_%generate-values196897%_
                                                        _%g196904196948%_
                                                        _%g196903196947%_)))
                                                 _%hd196912196942%_
                                                 _%hd196909196934%_)
                                                (_%g196901196918%_
                                                 _%g196902196921%_))))
                                        (_%g196901196918%_
                                         _%g196902196921%_))))
                                (_%g196901196918%_ _%g196902196921%_))))
                        (_%g196901196918%_ _%g196902196921%_)))))
            (_%g196900196964%_ _%stx196895%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd196831%_)
        (let _%lp196833%_ ((_%rest196835%_ _%hd196831%_))
          (let* ((_%rest196836196852%_ _%rest196835%_)
                 (_%else196839196860%_ (lambda () '#f)))
            (let ((_%K196842196873%_
                   (lambda (_%rest196871%_) (_%lp196833%_ _%rest196871%_)))
                  (_%K196841196865%_ (lambda () '#t)))
              (let ((_%try-match196838196868%_
                     (lambda ()
                       (if (null? _%rest196836196852%_)
                           (_%K196841196865%_)
                           (_%else196839196860%_)))))
                (if (pair? _%rest196836196852%_)
                    (let ((_%tl196844196878%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest196836196852%_)))
                          (_%hd196843196876%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest196836196852%_))))
                      (if (pair? _%hd196843196876%_)
                          (let ((_%tl196846196883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd196843196876%_)))
                                (_%hd196845196881%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd196843196876%_))))
                            (if (pair? _%hd196845196881%_)
                                (let ((_%tl196850196886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd196845196881%_))))
                                  (if (null? _%tl196850196886%_)
                                      (if (pair? _%tl196846196883%_)
                                          (let ((_%tl196848196889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl196846196883%_))))
                                            (if (null? _%tl196848196889%_)
                                                (let ((_%rest196892%_
                                                       _%tl196844196878%_))
                                                  (_%lp196833%_
                                                   _%rest196892%_))
                                                (_%else196839196860%_)))
                                          (_%else196839196860%_))
                                      (_%else196839196860%_)))
                                (_%else196839196860%_)))
                          (_%else196839196860%_)))
                    (_%try-match196838196868%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self196743%_
               _%form196744%_
               _%hd196745%_
               _%body196746%_
               _%compiled-body?196747%_)
        (letrec ((_%generate1196749%_
                  (lambda (_%bind196788%_)
                    (let* ((_%bind196789196800%_ _%bind196788%_)
                           (_%E196791196803%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind196789196800%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K196792196809%_
                            (lambda (_%expr196806%_ _%id196807%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id196807%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self196743%_
                                             _%expr196806%_))
                                          '())))))
                      (if (pair? _%bind196789196800%_)
                          (let ((_%hd196793196812%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind196789196800%_)))
                                (_%tl196794196814%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind196789196800%_))))
                            (if (pair? _%hd196793196812%_)
                                (let ((_%hd196797196817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd196793196812%_)))
                                      (_%tl196798196819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd196793196812%_))))
                                  (let ((_%id196822%_ _%hd196797196817%_))
                                    (if (null? _%tl196798196819%_)
                                        (if (pair? _%tl196794196814%_)
                                            (let ((_%hd196795196824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl196794196814%_)))
                                                  (_%tl196796196826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl196794196814%_))))
                                              (let ((_%expr196829%_
                                                     _%hd196795196824%_))
                                                (if (null? _%tl196796196826%_)
                                                    (_%K196792196809%_
                                                     _%expr196829%_
                                                     _%id196822%_)
                                                    (_%E196791196803%_))))
                                            (_%E196791196803%_))
                                        (_%E196791196803%_))))
                                (_%E196791196803%_)))
                          (_%E196791196803%_))))))
          (let* ((_%bind196751%_ (map _%generate1196749%_ _%hd196745%_))
                 (_%body196753%_
                  (if _%compiled-body?196747%_
                      _%body196746%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196743%_ _%body196746%_))))
                 (_%body196785%_
                  (let* ((_%body196754196762%_ _%body196753%_)
                         (_%else196756196770%_
                          (lambda () (cons _%body196753%_ '())))
                         (_%K196758196775%_
                          (lambda (_%exprs196773%_) _%exprs196773%_)))
                    (if (pair? _%body196754196762%_)
                        (let ((_%hd196759196778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body196754196762%_)))
                              (_%tl196760196780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body196754196762%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd196759196778%_ 'begin))
                              (let ((_%exprs196783%_ _%tl196760196780%_))
                                (_%K196758196775%_ _%exprs196783%_))
                              (_%else196756196770%_)))
                        (_%else196756196770%_)))))
            (cons _%form196744%_ (cons _%bind196751%_ _%body196785%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self196643%_ _%stx196644%_)
        (letrec ((_%generate1196646%_
                  (lambda (_%datum196698%_)
                    (if (or (null? _%datum196698%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum196698%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum196698%_))
                            (eof-object? _%datum196698%_))
                        _%datum196698%_
                        (if (uninterned-symbol? _%datum196698%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum196698%_
                               '#t))
                            (if (pair? _%datum196698%_)
                                (cons (_%generate1196646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum196698%_)))
                                      (_%generate1196646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum196698%_))))
                                (if (box? _%datum196698%_)
                                    (box (_%generate1196646%_
                                          (unbox _%datum196698%_)))
                                    (if (vector? _%datum196698%_)
                                        (vector-map
                                         _%generate1196646%_
                                         _%datum196698%_)
                                        (if (or (s8vector? _%datum196698%_)
                                                (u8vector? _%datum196698%_)
                                                (s16vector? _%datum196698%_)
                                                (u16vector? _%datum196698%_)
                                                (s32vector? _%datum196698%_)
                                                (u32vector? _%datum196698%_)
                                                (s64vector? _%datum196698%_)
                                                (u64vector? _%datum196698%_)
                                                (f32vector? _%datum196698%_)
                                                (f64vector? _%datum196698%_))
                                            _%datum196698%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx196644%_)))))))))))
          (let* ((_%g196648196661%_
                  (lambda (_%g196649196658%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196649196658%_))))
                 (_%g196647196695%_
                  (lambda (_%g196649196664%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196649196664%_))
                        (let ((_%e196651196666%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196649196664%_))))
                          (let ((_%hd196652196669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196651196666%_)))
                                (_%tl196653196671%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196651196666%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196653196671%_))
                                (let ((_%e196654196674%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196653196671%_))))
                                  (let ((_%hd196655196677%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196654196674%_)))
                                        (_%tl196656196679%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196654196674%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196656196679%_))
                                        ((lambda (_%g196650196682%_)
                                           (cons 'quote
                                                 (cons (_%generate1196646%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g196650196682%_)))
                                                       '())))
                                         _%hd196655196677%_)
                                        (_%g196648196661%_
                                         _%g196649196664%_))))
                                (_%g196648196661%_ _%g196649196664%_))))
                        (_%g196648196661%_ _%g196649196664%_)))))
            (_%g196647196695%_ _%stx196644%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self196090%_ _%stx196091%_)
        (letrec ((_%compile-call196093%_
                  (lambda (_%rator196380%_ _%rands196381%_)
                    (let ((_%rator196387%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self196090%_
                              _%rator196380%_)))
                          (_%rands196388%_
                           (map (lambda (_%g196382196384%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self196090%_
                                     _%g196382196384%_)))
                                _%rands196381%_)))
                      (let* ((_%__stx202107202108%_ _%rator196387%_)
                             (_%g196391196443%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx202107202108%_)))))
                        (let ((_%__kont202109202110%_
                               (lambda (_%g196393196563%_
                                        _%g196394196564%_
                                        _%g196395196565%_
                                        _%g196396196566%_)
                                 (if (let ((__tmp202779
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands196388%_)))
                                           (__tmp202777
                                            (length (let ((__tmp202778
                                                           (lambda (_%g196602196605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196603196607%_)
                     (cons _%g196602196605%_ _%g196603196607%_))))
              (declare (not safe))
              (foldr__0 __tmp202778 '() _%g196395196565%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp202779 __tmp202777))
                                     (let* ((_%id196610%_ _%g196396196566%_)
                                            (_%args196619%_
                                             (let ((__tmp202780
                                                    (lambda (_%g196611196614%_
                                                             _%g196612196616%_)
                                                      (cons _%g196611196614%_
                                                            _%g196612196616%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202780
                                                '()
                                                _%g196395196565%_)))
                                            (_%body196628%_
                                             (let ((__tmp202781
                                                    (lambda (_%g196620196623%_
                                                             _%g196621196625%_)
                                                      (cons _%g196620196623%_
                                                            _%g196621196625%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202781
                                                '()
                                                _%g196394196564%_)))
                                            (_%init196630%_
                                             (map list
                                                  _%args196619%_
                                                  _%rands196388%_)))
                                       (cons 'let
                                             (cons _%id196610%_
                                                   (cons _%init196630%_
                                                         _%body196628%_))))
                                     (let ((__tmp202782
                                            (let ((__tmp202783
                                                   (lambda (_%g196632196635%_
                                                            _%g196633196637%_)
                                                     (cons _%g196632196635%_
                                                           _%g196633196637%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202783
                                               '()
                                               _%g196395196565%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx196091%_
                                        __tmp202782
                                        _%rands196388%_)))))
                              (_%__kont202115202116%_
                               (lambda ()
                                 (cons _%rator196387%_ _%rands196388%_))))
                          (let ((_%__match202174202175%_
                                 (lambda (_%e196397196455%_
                                          _%hd196398196458%_
                                          _%tl196399196460%_
                                          _%e196400196463%_
                                          _%hd196401196466%_
                                          _%tl196402196468%_
                                          _%e196403196471%_
                                          _%hd196404196474%_
                                          _%tl196405196476%_
                                          _%e196406196479%_
                                          _%hd196407196482%_
                                          _%tl196408196484%_
                                          _%e196409196487%_
                                          _%hd196410196490%_
                                          _%tl196411196492%_
                                          _%e196412196495%_
                                          _%hd196413196498%_
                                          _%tl196414196500%_
                                          _%e196415196503%_
                                          _%hd196416196506%_
                                          _%tl196417196508%_
                                          _%__splice202111202112%_
                                          _%target196418196511%_
                                          _%tl196420196513%_)
                                   (letrec ((_%loop196421196516%_
                                             (lambda (_%hd196419196519%_
                                                      _%arg196425196521%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd196419196519%_))
                                                   (let ((_%e196422196523%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd196419196519%_))))
                                                     (let ((_%lp-tl196424196528%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e196422196523%_)))
                                                           (_%lp-hd196423196526%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e196422196523%_))))
                                                       (_%loop196421196516%_
                                                        _%lp-tl196424196528%_
                                                        (cons _%lp-hd196423196526%_
                                                              _%arg196425196521%_))))
                                                   (let ((_%arg196426196531%_
                                                          (reverse _%arg196425196521%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl196417196508%_))
                                                         (let ((_%__splice202113202114%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl196417196508%_
                           '0))))
                   (let ((_%tl196429196535%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice202113202114%_ '1)))
                         (_%target196427196533%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice202113202114%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl196429196535%_))
                         (letrec ((_%loop196430196538%_
                                   (lambda (_%hd196428196541%_
                                            _%body196434196543%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd196428196541%_))
                                         (let ((_%e196431196545%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd196428196541%_))))
                                           (let ((_%lp-tl196433196550%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196431196545%_)))
                                                 (_%lp-hd196432196548%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196431196545%_))))
                                             (_%loop196430196538%_
                                              _%lp-tl196433196550%_
                                              (cons _%lp-hd196432196548%_
                                                    _%body196434196543%_))))
                                         (let ((_%body196435196553%_
                                                (reverse _%body196434196543%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl196411196492%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl196405196476%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl196402196468%_))
                                                       (let ((_%e196436196555%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl196402196468%_))))
                 (let ((_%tl196438196560%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e196436196555%_)))
                       (_%hd196437196558%_
                        (let ()
                          (declare (not safe))
                          (##car _%e196436196555%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl196438196560%_))
                       (let ((_%g196393196563%_ _%hd196437196558%_)
                             (_%g196394196564%_ _%body196435196553%_)
                             (_%g196395196565%_ _%arg196426196531%_)
                             (_%g196396196566%_ _%hd196407196482%_))
                         (if (eq? _%g196396196566%_ _%g196393196563%_)
                             (_%__kont202109202110%_
                              _%g196393196563%_
                              _%g196394196564%_
                              _%g196395196565%_
                              _%g196396196566%_)
                             (_%__kont202115202116%_)))
                       (_%__kont202115202116%_))))
               (_%__kont202115202116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont202115202116%_))
                                               (_%__kont202115202116%_)))))))
                           (_%loop196430196538%_ _%target196427196533%_ '()))
                         (_%__kont202115202116%_))))
                 (_%__kont202115202116%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop196421196516%_
                                      _%target196418196511%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx202107202108%_))
                                (let ((_%e196397196455%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx202107202108%_))))
                                  (let ((_%tl196399196460%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196397196455%_)))
                                        (_%hd196398196458%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196397196455%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196398196458%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd196398196458%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196399196460%_))
                                                (let ((_%e196400196463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196399196460%_))))
                                                  (let ((_%tl196402196468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196400196463%_)))
                                                        (_%hd196401196466%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196400196463%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196401196466%_))
                                                        (let ((_%e196403196471%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196401196466%_))))
                  (let ((_%tl196405196476%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196403196471%_)))
                        (_%hd196404196474%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196403196471%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196404196474%_))
                        (let ((_%e196406196479%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd196404196474%_))))
                          (let ((_%tl196408196484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196406196479%_)))
                                (_%hd196407196482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196406196479%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196408196484%_))
                                (let ((_%e196409196487%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196408196484%_))))
                                  (let ((_%tl196411196492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196409196487%_)))
                                        (_%hd196410196490%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196409196487%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd196410196490%_))
                                        (let ((_%e196412196495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd196410196490%_))))
                                          (let ((_%tl196414196500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196412196495%_)))
                                                (_%hd196413196498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196412196495%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd196413196498%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd196413196498%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl196414196500%_))
                                                        (let ((_%e196415196503%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl196414196500%_))))
                  (let ((_%tl196417196508%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196415196503%_)))
                        (_%hd196416196506%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196415196503%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd196416196506%_))
                        (let ((_%__splice202111202112%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd196416196506%_
                                  '0))))
                          (let ((_%tl196420196513%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice202111202112%_ '1)))
                                (_%target196418196511%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice202111202112%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196420196513%_))
                                (_%__match202174202175%_
                                 _%e196397196455%_
                                 _%hd196398196458%_
                                 _%tl196399196460%_
                                 _%e196400196463%_
                                 _%hd196401196466%_
                                 _%tl196402196468%_
                                 _%e196403196471%_
                                 _%hd196404196474%_
                                 _%tl196405196476%_
                                 _%e196406196479%_
                                 _%hd196407196482%_
                                 _%tl196408196484%_
                                 _%e196409196487%_
                                 _%hd196410196490%_
                                 _%tl196411196492%_
                                 _%e196412196495%_
                                 _%hd196413196498%_
                                 _%tl196414196500%_
                                 _%e196415196503%_
                                 _%hd196416196506%_
                                 _%tl196417196508%_
                                 _%__splice202111202112%_
                                 _%target196418196511%_
                                 _%tl196420196513%_)
                                (_%__kont202115202116%_))))
                        (_%__kont202115202116%_))))
                (_%__kont202115202116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont202115202116%_))
                                                (_%__kont202115202116%_))))
                                        (_%__kont202115202116%_))))
                                (_%__kont202115202116%_))))
                        (_%__kont202115202116%_))))
                (_%__kont202115202116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont202115202116%_))
                                            (_%__kont202115202116%_))
                                        (_%__kont202115202116%_))))
                                (_%__kont202115202116%_)))))))))
          (let* ((_%g196095196118%_
                  (lambda (_%g196096196115%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196096196115%_))))
                 (_%g196094196377%_
                  (lambda (_%g196096196121%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196096196121%_))
                        (let ((_%e196099196123%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196096196121%_))))
                          (let ((_%hd196100196126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196099196123%_)))
                                (_%tl196101196128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196099196123%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196101196128%_))
                                (let ((_%e196102196131%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196101196128%_))))
                                  (let ((_%hd196103196134%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196102196131%_)))
                                        (_%tl196104196136%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196102196131%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl196104196136%_))
                                        (let ((_g202784_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl196104196136%_
                                                  '0))))
                                          (begin
                                            (let ((_g202785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g202784_)
                                                         (##values-length
                                                          _g202784_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g202785_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g202785_)))
                                            (let ((_%target196105196139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202784_
                                                      0)))
                                                  (_%tl196107196141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202784_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196107196141%_))
                                                  (letrec ((_%loop196108196144%_
                                                            (lambda (_%hd196106196147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand196112196149%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196106196147%_))
                          (let ((_%e196109196151%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196106196147%_))))
                            (let ((_%lp-hd196110196154%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196109196151%_)))
                                  (_%lp-tl196111196156%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196109196151%_))))
                              (_%loop196108196144%_
                               _%lp-tl196111196156%_
                               (cons _%lp-hd196110196154%_
                                     _%rand196112196149%_))))
                          (let ((_%rand196113196159%_
                                 (reverse _%rand196112196149%_)))
                            ((lambda (_%g196097196161%_ _%g196098196162%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call196093%_
                                    _%g196098196162%_
                                    (let ((__tmp202786
                                           (lambda (_%g196179196182%_
                                                    _%g196180196184%_)
                                             (cons _%g196179196182%_
                                                   _%g196180196184%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp202786
                                       '()
                                       _%g196097196161%_)))
                                   (let* ((_%__stx202223202224%_
                                           _%g196098196162%_)
                                          (_%g196188196200%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx202223202224%_)))))
                                     (let ((_%__kont202225202226%_
                                            (lambda ()
                                              (let ((_%f196237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self196090%_
                                                        _%g196098196162%_))))
                                                (if (and (let ((__tmp202787
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f196237%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp202787))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f196237%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp196239%_ ((_%rest196242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp202789
                                                (lambda (_%g196359196362%_
                                                         _%g196360196364%_)
                                                  (cons _%g196359196362%_
                                                        _%g196360196364%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp202789
                                            '()
                                            _%g196097196161%_))))
                               (_%bind196244%_ '())
                               (_%args196245%_ '()))
              (let* ((_%rest196246196254%_ _%rest196242%_)
                     (_%else196248196262%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind196244%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f196237%_
                                                      _%args196245%_)
                                                '()))))))
                     (_%K196250196348%_
                      (lambda (_%rest196265%_ _%e196266%_)
                        (let* ((_%__stx202177202178%_ _%e196266%_)
                               (_%g196271196289%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx202177202178%_)))))
                          (let ((_%__kont202179202180%_
                                 (lambda ()
                                   (_%lp196239%_
                                    _%rest196265%_
                                    _%bind196244%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e196266%_))
                                          _%args196245%_))))
                                (_%__kont202181202182%_
                                 (lambda ()
                                   (_%lp196239%_
                                    _%rest196265%_
                                    _%bind196244%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e196266%_))
                                          _%args196245%_))))
                                (_%__kont202183202184%_
                                 (lambda ()
                                   (let ((_%tmp196296%_
                                          (let ((__tmp202788
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp202788))))
                                     (_%lp196239%_
                                      _%rest196265%_
                                      (cons (cons _%tmp196296%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e196266%_))
                                                        '()))
                                            _%bind196244%_)
                                      (cons _%tmp196296%_ _%args196245%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx202177202178%_))
                                (let ((_%e196273196327%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx202177202178%_))))
                                  (let ((_%tl196275196332%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196273196327%_)))
                                        (_%hd196274196330%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196273196327%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196274196330%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd196274196330%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196275196332%_))
                                                (let ((_%e196276196335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196275196332%_))))
                                                  (let ((_%tl196278196340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196276196335%_)))
                                                        (_%hd196277196338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196276196335%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196278196340%_))
                                                        (_%__kont202179202180%_)
                                                        (_%__kont202183202184%_))))
                                                (_%__kont202183202184%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd196274196330%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl196275196332%_))
                                                    (let ((_%e196282196312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl196275196332%_))))
                                                      (let ((_%tl196284196317%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e196282196312%_)))
                    (_%hd196283196315%_
                     (let () (declare (not safe)) (##car _%e196282196312%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl196284196317%_))
                    (_%__kont202181202182%_)
                    (_%__kont202183202184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont202183202184%_))
                                                (_%__kont202183202184%_)))
                                        (_%__kont202183202184%_))))
                                (_%__kont202183202184%_)))))))
                (if (pair? _%rest196246196254%_)
                    (let ((_%hd196251196351%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest196246196254%_)))
                          (_%tl196252196353%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest196246196254%_))))
                      (let* ((_%e196356%_ _%hd196251196351%_)
                             (_%rest196358%_ _%tl196252196353%_))
                        (_%K196250196348%_ _%rest196358%_ _%e196356%_)))
                    (_%else196248196262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call196093%_
                                                     _%g196098196162%_
                                                     (let ((__tmp202790
                                                            (lambda (_%g196366196369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g196367196371%_)
                      (cons _%g196366196369%_ _%g196367196371%_))))
               (declare (not safe))
               (foldr__0 __tmp202790 '() _%g196097196161%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont202227202228%_
                                            (lambda ()
                                              (_%compile-call196093%_
                                               _%g196098196162%_
                                               (let ((__tmp202791
                                                      (lambda (_%g196206196209%_
                                                               _%g196207196211%_)
                                                        (cons _%g196206196209%_
                                                              _%g196207196211%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp202791
                                                  '()
                                                  _%g196097196161%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx202223202224%_))
                                           (let ((_%e196190196219%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx202223202224%_))))
                                             (let ((_%tl196192196224%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e196190196219%_)))
                                                   (_%hd196191196222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e196190196219%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd196191196222%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd196191196222%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl196192196224%_))
                                                           (let ((_%e196193196227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl196192196224%_))))
                     (let ((_%tl196195196232%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e196193196227%_)))
                           (_%hd196194196230%_
                            (let ()
                              (declare (not safe))
                              (##car _%e196193196227%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl196195196232%_))
                           (_%__kont202225202226%_)
                           (_%__kont202227202228%_))))
                   (_%__kont202227202228%_))
               (_%__kont202227202228%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont202227202228%_))))
                                           (_%__kont202227202228%_))))))
                             _%rand196113196159%_
                             _%hd196103196134%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop196108196144%_
                                                     _%target196105196139%_
                                                     '()))
                                                  (_%g196095196118%_
                                                   _%g196096196121%_)))))
                                        (_%g196095196118%_
                                         _%g196096196121%_))))
                                (_%g196095196118%_ _%g196096196121%_))))
                        (_%g196095196118%_ _%g196096196121%_)))))
            (_%g196094196377%_ _%stx196091%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self195835%_ _%stx195836%_)
        (let* ((_%__stx202295202296%_ _%stx195836%_)
               (_%g195839195868%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202295202296%_)))))
          (let ((_%__kont202297202298%_
                 (lambda (_%g195841195934%_ _%g195842195935%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self195835%_
                        _%stx195836%_)
                       (let ((_%f195957%_
                              (let ((__tmp202792
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g195842195935%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self195835%_
                                 __tmp202792))))
                         (let _%lp195959%_ ((_%rest195962%_
                                             (reverse (let ((__tmp202794
                                                             (lambda (_%g196079196082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g196080196084%_)
                       (cons _%g196079196082%_ _%g196080196084%_))))
                (declare (not safe))
                (foldr__0 __tmp202794 '() _%g195841195934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind195964%_ '())
                                            (_%args195965%_ '()))
                           (let* ((_%rest195966195974%_ _%rest195962%_)
                                  (_%else195968195982%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind195964%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f195957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args195965%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K195970196068%_
                                   (lambda (_%rest195985%_ _%e195986%_)
                                     (let* ((_%__stx202249202250%_ _%e195986%_)
                                            (_%g195991196009%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx202249202250%_)))))
                                       (let ((_%__kont202251202252%_
                                              (lambda ()
                                                (_%lp195959%_
                                                 _%rest195985%_
                                                 _%bind195964%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e195986%_))
                                                       _%args195965%_))))
                                             (_%__kont202253202254%_
                                              (lambda ()
                                                (_%lp195959%_
                                                 _%rest195985%_
                                                 _%bind195964%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e195986%_))
                                                       _%args195965%_))))
                                             (_%__kont202255202256%_
                                              (lambda ()
                                                (let ((_%tmp196016%_
                                                       (let ((__tmp202793
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp202793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp195959%_
                                                   _%rest195985%_
                                                   (cons (cons _%tmp196016%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e195986%_))
                             '()))
                 _%bind195964%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp196016%_
                                                         _%args195965%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx202249202250%_))
                                             (let ((_%e195993196047%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx202249202250%_))))
                                               (let ((_%tl195995196052%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e195993196047%_)))
                                                     (_%hd195994196050%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e195993196047%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd195994196050%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd195994196050%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl195995196052%_))
                     (let ((_%e195996196055%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl195995196052%_))))
                       (let ((_%tl195998196060%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e195996196055%_)))
                             (_%hd195997196058%_
                              (let ()
                                (declare (not safe))
                                (##car _%e195996196055%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl195998196060%_))
                             (_%__kont202251202252%_)
                             (_%__kont202255202256%_))))
                     (_%__kont202255202256%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd195994196050%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl195995196052%_))
                         (let ((_%e196002196032%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl195995196052%_))))
                           (let ((_%tl196004196037%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196002196032%_)))
                                 (_%hd196003196035%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196002196032%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl196004196037%_))
                                 (_%__kont202253202254%_)
                                 (_%__kont202255202256%_))))
                         (_%__kont202255202256%_))
                     (_%__kont202255202256%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202255202256%_))))
                                             (_%__kont202255202256%_)))))))
                             (if (pair? _%rest195966195974%_)
                                 (let ((_%hd195971196071%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest195966195974%_)))
                                       (_%tl195972196073%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest195966195974%_))))
                                   (let* ((_%e196076%_ _%hd195971196071%_)
                                          (_%rest196078%_ _%tl195972196073%_))
                                     (_%K195970196068%_
                                      _%rest196078%_
                                      _%e196076%_)))
                                 (_%else195968195982%_))))))))
                (_%__kont202301202302%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self195835%_ _%stx195836%_))))
            (let ((_%__match202340202341%_
                   (lambda (_%e195843195880%_
                            _%hd195844195883%_
                            _%tl195845195885%_
                            _%e195846195888%_
                            _%hd195847195891%_
                            _%tl195848195893%_
                            _%e195849195896%_
                            _%hd195850195899%_
                            _%tl195851195901%_
                            _%e195852195904%_
                            _%hd195853195907%_
                            _%tl195854195909%_
                            _%__splice202299202300%_
                            _%target195855195912%_
                            _%tl195857195914%_)
                     (letrec ((_%loop195858195917%_
                               (lambda (_%hd195856195920%_
                                        _%rand195862195922%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195856195920%_))
                                     (let ((_%e195859195924%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195856195920%_))))
                                       (let ((_%lp-tl195861195929%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195859195924%_)))
                                             (_%lp-hd195860195927%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195859195924%_))))
                                         (_%loop195858195917%_
                                          _%lp-tl195861195929%_
                                          (cons _%lp-hd195860195927%_
                                                _%rand195862195922%_))))
                                     (let ((_%rand195863195932%_
                                            (reverse _%rand195862195922%_)))
                                       (_%__kont202297202298%_
                                        _%rand195863195932%_
                                        _%hd195853195907%_))))))
                       (_%loop195858195917%_ _%target195855195912%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202295202296%_))
                  (let ((_%e195843195880%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx202295202296%_))))
                    (let ((_%tl195845195885%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195843195880%_)))
                          (_%hd195844195883%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195843195880%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195845195885%_))
                          (let ((_%e195846195888%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195845195885%_))))
                            (let ((_%tl195848195893%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195846195888%_)))
                                  (_%hd195847195891%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195846195888%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195847195891%_))
                                  (let ((_%e195849195896%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195847195891%_))))
                                    (let ((_%tl195851195901%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195849195896%_)))
                                          (_%hd195850195899%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195849195896%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195850195899%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195850195899%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195851195901%_))
                                                  (let ((_%e195852195904%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195851195901%_))))
                                                    (let ((_%tl195854195909%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195852195904%_)))
                                                          (_%hd195853195907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195852195904%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195854195909%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195848195893%_))
                      (let ((_%__splice202299202300%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl195848195893%_
                                '0))))
                        (let ((_%tl195857195914%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202299202300%_ '1)))
                              (_%target195855195912%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202299202300%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195857195914%_))
                              (_%__match202340202341%_
                               _%e195843195880%_
                               _%hd195844195883%_
                               _%tl195845195885%_
                               _%e195846195888%_
                               _%hd195847195891%_
                               _%tl195848195893%_
                               _%e195849195896%_
                               _%hd195850195899%_
                               _%tl195851195901%_
                               _%e195852195904%_
                               _%hd195853195907%_
                               _%tl195854195909%_
                               _%__splice202299202300%_
                               _%target195855195912%_
                               _%tl195857195914%_)
                              (_%__kont202301202302%_))))
                      (_%__kont202301202302%_))
                  (_%__kont202301202302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202301202302%_))
                                              (_%__kont202301202302%_))
                                          (_%__kont202301202302%_))))
                                  (_%__kont202301202302%_))))
                          (_%__kont202301202302%_))))
                  (_%__kont202301202302%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self195647%_ _%stx195648%_)
        (letrec ((_%simplify195650%_
                  (lambda (_%code195735%_)
                    (let* ((_%code195736195754%_ _%code195735%_)
                           (_%else195738195762%_ (lambda () _%code195735%_))
                           (_%K195740195798%_
                            (lambda (_%expr195765%_ _%test195766%_)
                              (let* ((_%expr195767195775%_ _%expr195765%_)
                                     (_%else195769195783%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test195766%_
                                                    (cons _%expr195765%_
                                                          '())))))
                                     (_%K195771195788%_
                                      (lambda (_%exprs195786%_)
                                        (cons 'and
                                              (cons _%test195766%_
                                                    _%exprs195786%_)))))
                                (if (pair? _%expr195767195775%_)
                                    (let ((_%hd195772195791%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr195767195775%_)))
                                          (_%tl195773195793%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr195767195775%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd195772195791%_ 'and))
                                          (let ((_%exprs195796%_
                                                 _%tl195773195793%_))
                                            (_%K195771195788%_
                                             _%exprs195796%_))
                                          (_%else195769195783%_)))
                                    (_%else195769195783%_))))))
                      (if (pair? _%code195736195754%_)
                          (let ((_%hd195741195801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code195736195754%_)))
                                (_%tl195742195803%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code195736195754%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd195741195801%_ 'if))
                                (if (pair? _%tl195742195803%_)
                                    (let ((_%hd195743195806%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl195742195803%_)))
                                          (_%tl195744195808%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl195742195803%_))))
                                      (let ((_%test195811%_
                                             _%hd195743195806%_))
                                        (if (pair? _%tl195744195808%_)
                                            (let ((_%hd195745195813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl195744195808%_)))
                                                  (_%tl195746195815%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl195744195808%_))))
                                              (let ((_%expr195818%_
                                                     _%hd195745195813%_))
                                                (if (pair? _%tl195746195815%_)
                                                    (let ((_%hd195747195820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl195746195815%_)))
                                                          (_%tl195748195822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl195746195815%_))))
                                                      (if (pair? _%hd195747195820%_)
                                                          (let ((_%hd195749195825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd195747195820%_)))
                        (_%tl195750195827%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd195747195820%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd195749195825%_ 'quote))
                        (if (pair? _%tl195750195827%_)
                            (let ((_%hd195751195830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl195750195827%_)))
                                  (_%tl195752195832%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl195750195827%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd195751195830%_ '#f))
                                  (if (null? _%tl195752195832%_)
                                      (if (null? _%tl195748195822%_)
                                          (_%K195740195798%_
                                           _%expr195818%_
                                           _%test195811%_)
                                          (_%else195738195762%_))
                                      (_%else195738195762%_))
                                  (_%else195738195762%_)))
                            (_%else195738195762%_))
                        (_%else195738195762%_)))
                  (_%else195738195762%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else195738195762%_))))
                                            (_%else195738195762%_))))
                                    (_%else195738195762%_))
                                (_%else195738195762%_)))
                          (_%else195738195762%_))))))
          (let* ((_%g195652195673%_
                  (lambda (_%g195653195670%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195653195670%_))))
                 (_%g195651195732%_
                  (lambda (_%g195653195676%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195653195676%_))
                        (let ((_%e195657195678%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195653195676%_))))
                          (let ((_%hd195658195681%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195657195678%_)))
                                (_%tl195659195683%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195657195678%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195659195683%_))
                                (let ((_%e195660195686%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195659195683%_))))
                                  (let ((_%hd195661195689%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195660195686%_)))
                                        (_%tl195662195691%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195660195686%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195662195691%_))
                                        (let ((_%e195663195694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195662195691%_))))
                                          (let ((_%hd195664195697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195663195694%_)))
                                                (_%tl195665195699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195663195694%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195665195699%_))
                                                (let ((_%e195666195702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195665195699%_))))
                                                  (let ((_%hd195667195705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195666195702%_)))
                                                        (_%tl195668195707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195666195702%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195668195707%_))
                                                        ((lambda (_%g195654195710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g195655195711%_
                          _%g195656195712%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify195650%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self195647%_
                                       _%g195656195712%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self195647%_
                                             _%g195655195711%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self195647%_
                                                   _%g195654195710%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp202795
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self195647%_
                                               _%g195656195712%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp202795
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self195647%_
                                            _%g195655195711%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self195647%_
                                                  _%g195654195710%_))
                                               '()))))))
                 _%hd195667195705%_
                 _%hd195664195697%_
                 _%hd195661195689%_)
                (_%g195652195673%_ _%g195653195676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g195652195673%_
                                                 _%g195653195676%_))))
                                        (_%g195652195673%_
                                         _%g195653195676%_))))
                                (_%g195652195673%_ _%g195653195676%_))))
                        (_%g195652195673%_ _%g195653195676%_)))))
            (_%g195651195732%_ _%stx195648%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self195595%_ _%stx195596%_)
        (let* ((_%g195598195611%_
                (lambda (_%g195599195608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195599195608%_))))
               (_%g195597195644%_
                (lambda (_%g195599195614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195599195614%_))
                      (let ((_%e195601195616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195599195614%_))))
                        (let ((_%hd195602195619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195601195616%_)))
                              (_%tl195603195621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195601195616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195603195621%_))
                              (let ((_%e195604195624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195603195621%_))))
                                (let ((_%hd195605195627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195604195624%_)))
                                      (_%tl195606195629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195604195624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195606195629%_))
                                      ((lambda (_%g195600195632%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g195600195632%_)))
                                       _%hd195605195627%_)
                                      (_%g195598195611%_ _%g195599195614%_))))
                              (_%g195598195611%_ _%g195599195614%_))))
                      (_%g195598195611%_ _%g195599195614%_)))))
          (_%g195597195644%_ _%stx195596%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self195527%_ _%stx195528%_)
        (let* ((_%g195530195547%_
                (lambda (_%g195531195544%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195531195544%_))))
               (_%g195529195592%_
                (lambda (_%g195531195550%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195531195550%_))
                      (let ((_%e195534195552%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195531195550%_))))
                        (let ((_%hd195535195555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195534195552%_)))
                              (_%tl195536195557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195534195552%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195536195557%_))
                              (let ((_%e195537195560%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195536195557%_))))
                                (let ((_%hd195538195563%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195537195560%_)))
                                      (_%tl195539195565%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195537195560%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195539195565%_))
                                      (let ((_%e195540195568%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195539195565%_))))
                                        (let ((_%hd195541195571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195540195568%_)))
                                              (_%tl195542195573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195540195568%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195542195573%_))
                                              ((lambda (_%g195532195576%_
                                                        _%g195533195577%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g195533195577%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self195527%_
                              _%g195532195576%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195541195571%_
                                               _%hd195538195563%_)
                                              (_%g195530195547%_
                                               _%g195531195550%_))))
                                      (_%g195530195547%_ _%g195531195550%_))))
                              (_%g195530195547%_ _%g195531195550%_))))
                      (_%g195530195547%_ _%g195531195550%_)))))
          (_%g195529195592%_ _%stx195528%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self195338%_ _%stx195339%_)
        (let* ((_%g195341195358%_
                (lambda (_%g195342195355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195342195355%_))))
               (_%g195340195524%_
                (lambda (_%g195342195361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195342195361%_))
                      (let ((_%e195345195363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195342195361%_))))
                        (let ((_%hd195346195366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195345195363%_)))
                              (_%tl195347195368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195345195363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195347195368%_))
                              (let ((_%e195348195371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195347195368%_))))
                                (let ((_%hd195349195374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195348195371%_)))
                                      (_%tl195350195376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195348195371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195350195376%_))
                                      (let ((_%e195351195379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195350195376%_))))
                                        (let ((_%hd195352195382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195351195379%_)))
                                              (_%tl195353195384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195351195379%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195353195384%_))
                                              ((lambda (_%g195343195387%_
                                                        _%g195344195388%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self195338%_ _%g195343195387%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195338%_
                                  _%g195344195388%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp195403%_ ((_%rest195406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g195344195388%_
                                       (cons _%g195343195387%_ '())))
                                (_%bind195408%_ '())
                                (_%args195409%_ '()))
               (let* ((_%rest195410195418%_ _%rest195406%_)
                      (_%else195412195426%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind195408%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args195409%_)
                                                 '()))))))
                      (_%K195414195512%_
                       (lambda (_%rest195429%_ _%e195430%_)
                         (let* ((_%__stx202343202344%_ _%e195430%_)
                                (_%g195435195453%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx202343202344%_)))))
                           (let ((_%__kont202345202346%_
                                  (lambda ()
                                    (_%lp195403%_
                                     _%rest195429%_
                                     _%bind195408%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195430%_))
                                           _%args195409%_))))
                                 (_%__kont202347202348%_
                                  (lambda ()
                                    (_%lp195403%_
                                     _%rest195429%_
                                     _%bind195408%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195430%_))
                                           _%args195409%_))))
                                 (_%__kont202349202350%_
                                  (lambda ()
                                    (let ((_%tmp195460%_
                                           (let ((__tmp202796
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp202796))))
                                      (_%lp195403%_
                                       _%rest195429%_
                                       (cons (cons _%tmp195460%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e195430%_))
                                                         '()))
                                             _%bind195408%_)
                                       (cons _%tmp195460%_ _%args195409%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx202343202344%_))
                                 (let ((_%e195437195491%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx202343202344%_))))
                                   (let ((_%tl195439195496%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e195437195491%_)))
                                         (_%hd195438195494%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e195437195491%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd195438195494%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd195438195494%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl195439195496%_))
                                                 (let ((_%e195440195499%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl195439195496%_))))
                                                   (let ((_%tl195442195504%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e195440195499%_)))
                                                         (_%hd195441195502%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e195440195499%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl195442195504%_))
                                                         (_%__kont202345202346%_)
                                                         (_%__kont202349202350%_))))
                                                 (_%__kont202349202350%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd195438195494%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl195439195496%_))
                                                     (let ((_%e195446195476%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl195439195496%_))))
                                                       (let ((_%tl195448195481%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e195446195476%_)))
                     (_%hd195447195479%_
                      (let () (declare (not safe)) (##car _%e195446195476%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl195448195481%_))
                     (_%__kont202347202348%_)
                     (_%__kont202349202350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202349202350%_))
                                                 (_%__kont202349202350%_)))
                                         (_%__kont202349202350%_))))
                                 (_%__kont202349202350%_)))))))
                 (if (pair? _%rest195410195418%_)
                     (let ((_%hd195415195515%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest195410195418%_)))
                           (_%tl195416195517%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest195410195418%_))))
                       (let* ((_%e195520%_ _%hd195415195515%_)
                              (_%rest195522%_ _%tl195416195517%_))
                         (_%K195414195512%_ _%rest195522%_ _%e195520%_)))
                     (_%else195412195426%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195352195382%_
                                               _%hd195349195374%_)
                                              (_%g195341195358%_
                                               _%g195342195361%_))))
                                      (_%g195341195358%_ _%g195342195361%_))))
                              (_%g195341195358%_ _%g195342195361%_))))
                      (_%g195341195358%_ _%g195342195361%_)))))
          (_%g195340195524%_ _%stx195339%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self195149%_ _%stx195150%_)
        (let* ((_%g195152195169%_
                (lambda (_%g195153195166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195153195166%_))))
               (_%g195151195335%_
                (lambda (_%g195153195172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195153195172%_))
                      (let ((_%e195156195174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195153195172%_))))
                        (let ((_%hd195157195177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195156195174%_)))
                              (_%tl195158195179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195156195174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195158195179%_))
                              (let ((_%e195159195182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195158195179%_))))
                                (let ((_%hd195160195185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195159195182%_)))
                                      (_%tl195161195187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195159195182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195161195187%_))
                                      (let ((_%e195162195190%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195161195187%_))))
                                        (let ((_%hd195163195193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195162195190%_)))
                                              (_%tl195164195195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195162195190%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195164195195%_))
                                              ((lambda (_%g195154195198%_
                                                        _%g195155195199%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self195149%_ _%g195154195198%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195149%_
                                  _%g195155195199%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp195214%_ ((_%rest195217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g195155195199%_
                                       (cons _%g195154195198%_ '())))
                                (_%bind195219%_ '())
                                (_%args195220%_ '()))
               (let* ((_%rest195221195229%_ _%rest195217%_)
                      (_%else195223195237%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind195219%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args195220%_)
                                                 '()))))))
                      (_%K195225195323%_
                       (lambda (_%rest195240%_ _%e195241%_)
                         (let* ((_%__stx202389202390%_ _%e195241%_)
                                (_%g195246195264%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx202389202390%_)))))
                           (let ((_%__kont202391202392%_
                                  (lambda ()
                                    (_%lp195214%_
                                     _%rest195240%_
                                     _%bind195219%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195241%_))
                                           _%args195220%_))))
                                 (_%__kont202393202394%_
                                  (lambda ()
                                    (_%lp195214%_
                                     _%rest195240%_
                                     _%bind195219%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195241%_))
                                           _%args195220%_))))
                                 (_%__kont202395202396%_
                                  (lambda ()
                                    (let ((_%tmp195271%_
                                           (let ((__tmp202797
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp202797))))
                                      (_%lp195214%_
                                       _%rest195240%_
                                       (cons (cons _%tmp195271%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e195241%_))
                                                         '()))
                                             _%bind195219%_)
                                       (cons _%tmp195271%_ _%args195220%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx202389202390%_))
                                 (let ((_%e195248195302%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx202389202390%_))))
                                   (let ((_%tl195250195307%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e195248195302%_)))
                                         (_%hd195249195305%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e195248195302%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd195249195305%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd195249195305%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl195250195307%_))
                                                 (let ((_%e195251195310%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl195250195307%_))))
                                                   (let ((_%tl195253195315%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e195251195310%_)))
                                                         (_%hd195252195313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e195251195310%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl195253195315%_))
                                                         (_%__kont202391202392%_)
                                                         (_%__kont202395202396%_))))
                                                 (_%__kont202395202396%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd195249195305%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl195250195307%_))
                                                     (let ((_%e195257195287%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl195250195307%_))))
                                                       (let ((_%tl195259195292%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e195257195287%_)))
                     (_%hd195258195290%_
                      (let () (declare (not safe)) (##car _%e195257195287%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl195259195292%_))
                     (_%__kont202393202394%_)
                     (_%__kont202395202396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202395202396%_))
                                                 (_%__kont202395202396%_)))
                                         (_%__kont202395202396%_))))
                                 (_%__kont202395202396%_)))))))
                 (if (pair? _%rest195221195229%_)
                     (let ((_%hd195226195326%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest195221195229%_)))
                           (_%tl195227195328%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest195221195229%_))))
                       (let* ((_%e195331%_ _%hd195226195326%_)
                              (_%rest195333%_ _%tl195227195328%_))
                         (_%K195225195323%_ _%rest195333%_ _%e195331%_)))
                     (_%else195223195237%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195163195193%_
                                               _%hd195160195185%_)
                                              (_%g195152195169%_
                                               _%g195153195172%_))))
                                      (_%g195152195169%_ _%g195153195172%_))))
                              (_%g195152195169%_ _%g195153195172%_))))
                      (_%g195152195169%_ _%g195153195172%_)))))
          (_%g195151195335%_ _%stx195150%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self195065%_ _%stx195066%_)
        (let* ((_%g195068195089%_
                (lambda (_%g195069195086%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195069195086%_))))
               (_%g195067195146%_
                (lambda (_%g195069195092%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195069195092%_))
                      (let ((_%e195073195094%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195069195092%_))))
                        (let ((_%hd195074195097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195073195094%_)))
                              (_%tl195075195099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195073195094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195075195099%_))
                              (let ((_%e195076195102%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195075195099%_))))
                                (let ((_%hd195077195105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195076195102%_)))
                                      (_%tl195078195107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195076195102%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195078195107%_))
                                      (let ((_%e195079195110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195078195107%_))))
                                        (let ((_%hd195080195113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195079195110%_)))
                                              (_%tl195081195115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195079195110%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195081195115%_))
                                              (let ((_%e195082195118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195081195115%_))))
                                                (let ((_%hd195083195121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195082195118%_)))
                                                      (_%tl195084195123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195082195118%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195084195123%_))
                                                      ((lambda (_%g195070195126%_
                                                                _%g195071195127%_
                                                                _%g195072195128%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195065%_
                                _%g195070195126%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195065%_
                                      _%g195071195127%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self195065%_
                                            _%g195072195128%_))
                                         (cons ''#f '()))))))
               _%hd195083195121%_
               _%hd195080195113%_
               _%hd195077195105%_)
              (_%g195068195089%_ _%g195069195092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195068195089%_
                                               _%g195069195092%_))))
                                      (_%g195068195089%_ _%g195069195092%_))))
                              (_%g195068195089%_ _%g195069195092%_))))
                      (_%g195068195089%_ _%g195069195092%_)))))
          (_%g195067195146%_ _%stx195066%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self194965%_ _%stx194966%_)
        (let* ((_%g194968194993%_
                (lambda (_%g194969194990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194969194990%_))))
               (_%g194967195062%_
                (lambda (_%g194969194996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194969194996%_))
                      (let ((_%e194974194998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194969194996%_))))
                        (let ((_%hd194975195001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194974194998%_)))
                              (_%tl194976195003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194974194998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194976195003%_))
                              (let ((_%e194977195006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194976195003%_))))
                                (let ((_%hd194978195009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194977195006%_)))
                                      (_%tl194979195011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194977195006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194979195011%_))
                                      (let ((_%e194980195014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194979195011%_))))
                                        (let ((_%hd194981195017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194980195014%_)))
                                              (_%tl194982195019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194980195014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194982195019%_))
                                              (let ((_%e194983195022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194982195019%_))))
                                                (let ((_%hd194984195025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194983195022%_)))
                                                      (_%tl194985195027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194983195022%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194985195027%_))
                                                      (let ((_%e194986195030%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194985195027%_))))
                (let ((_%hd194987195033%_
                       (let () (declare (not safe)) (##car _%e194986195030%_)))
                      (_%tl194988195035%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e194986195030%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194988195035%_))
                      ((lambda (_%g194970195038%_
                                _%g194971195039%_
                                _%g194972195040%_
                                _%g194973195041%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self194965%_
                                        _%g194971195039%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self194965%_
                                              _%g194970195038%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self194965%_
                                                    _%g194972195040%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self194965%_
                                                          _%g194973195041%_))
                                                       (cons ''#f '())))))))
                       _%hd194987195033%_
                       _%hd194984195025%_
                       _%hd194981195017%_
                       _%hd194978195009%_)
                      (_%g194968194993%_ _%g194969194996%_))))
              (_%g194968194993%_ _%g194969194996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194968194993%_
                                               _%g194969194996%_))))
                                      (_%g194968194993%_ _%g194969194996%_))))
                              (_%g194968194993%_ _%g194969194996%_))))
                      (_%g194968194993%_ _%g194969194996%_)))))
          (_%g194967195062%_ _%stx194966%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self194881%_ _%stx194882%_)
        (let* ((_%g194884194905%_
                (lambda (_%g194885194902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194885194902%_))))
               (_%g194883194962%_
                (lambda (_%g194885194908%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194885194908%_))
                      (let ((_%e194889194910%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194885194908%_))))
                        (let ((_%hd194890194913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194889194910%_)))
                              (_%tl194891194915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194889194910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194891194915%_))
                              (let ((_%e194892194918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194891194915%_))))
                                (let ((_%hd194893194921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194892194918%_)))
                                      (_%tl194894194923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194892194918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194894194923%_))
                                      (let ((_%e194895194926%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194894194923%_))))
                                        (let ((_%hd194896194929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194895194926%_)))
                                              (_%tl194897194931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194895194926%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194897194931%_))
                                              (let ((_%e194898194934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194897194931%_))))
                                                (let ((_%hd194899194937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194898194934%_)))
                                                      (_%tl194900194939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194898194934%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194900194939%_))
                                                      ((lambda (_%g194886194942%_
                                                                _%g194887194943%_
                                                                _%g194888194944%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self194881%_
                                _%g194886194942%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self194881%_
                                      _%g194887194943%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self194881%_
                                            _%g194888194944%_))
                                         (cons ''#f '()))))))
               _%hd194899194937%_
               _%hd194896194929%_
               _%hd194893194921%_)
              (_%g194884194905%_ _%g194885194908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194884194905%_
                                               _%g194885194908%_))))
                                      (_%g194884194905%_ _%g194885194908%_))))
                              (_%g194884194905%_ _%g194885194908%_))))
                      (_%g194884194905%_ _%g194885194908%_)))))
          (_%g194883194962%_ _%stx194882%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self194781%_ _%stx194782%_)
        (let* ((_%g194784194809%_
                (lambda (_%g194785194806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194785194806%_))))
               (_%g194783194878%_
                (lambda (_%g194785194812%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194785194812%_))
                      (let ((_%e194790194814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194785194812%_))))
                        (let ((_%hd194791194817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194790194814%_)))
                              (_%tl194792194819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194790194814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194792194819%_))
                              (let ((_%e194793194822%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194792194819%_))))
                                (let ((_%hd194794194825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194793194822%_)))
                                      (_%tl194795194827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194793194822%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194795194827%_))
                                      (let ((_%e194796194830%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194795194827%_))))
                                        (let ((_%hd194797194833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194796194830%_)))
                                              (_%tl194798194835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194796194830%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194798194835%_))
                                              (let ((_%e194799194838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194798194835%_))))
                                                (let ((_%hd194800194841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194799194838%_)))
                                                      (_%tl194801194843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194799194838%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194801194843%_))
                                                      (let ((_%e194802194846%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194801194843%_))))
                (let ((_%hd194803194849%_
                       (let () (declare (not safe)) (##car _%e194802194846%_)))
                      (_%tl194804194851%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e194802194846%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194804194851%_))
                      ((lambda (_%g194786194854%_
                                _%g194787194855%_
                                _%g194788194856%_
                                _%g194789194857%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self194781%_
                                        _%g194787194855%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self194781%_
                                              _%g194786194854%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self194781%_
                                                    _%g194788194856%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self194781%_
                                                          _%g194789194857%_))
                                                       (cons ''#f '())))))))
                       _%hd194803194849%_
                       _%hd194800194841%_
                       _%hd194797194833%_
                       _%hd194794194825%_)
                      (_%g194784194809%_ _%g194785194812%_))))
              (_%g194784194809%_ _%g194785194812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194784194809%_
                                               _%g194785194812%_))))
                                      (_%g194784194809%_ _%g194785194812%_))))
                              (_%g194784194809%_ _%g194785194812%_))))
                      (_%g194784194809%_ _%g194785194812%_)))))
          (_%g194783194878%_ _%stx194782%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self194576%_ _%stx194577%_)
        (let* ((_%g194579194600%_
                (lambda (_%g194580194597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194580194597%_))))
               (_%g194578194778%_
                (lambda (_%g194580194603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194580194603%_))
                      (let ((_%e194584194605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194580194603%_))))
                        (let ((_%hd194585194608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194584194605%_)))
                              (_%tl194586194610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194584194605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194586194610%_))
                              (let ((_%e194587194613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194586194610%_))))
                                (let ((_%hd194588194616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194587194613%_)))
                                      (_%tl194589194618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194587194613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194589194618%_))
                                      (let ((_%e194590194621%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194589194618%_))))
                                        (let ((_%hd194591194624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194590194621%_)))
                                              (_%tl194592194626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194590194621%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194592194626%_))
                                              (let ((_%e194593194629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194592194626%_))))
                                                (let ((_%hd194594194632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194593194629%_)))
                                                      (_%tl194595194634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194593194629%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194595194634%_))
                                                      ((lambda (_%g194581194637%_
                                                                _%g194582194638%_
                                                                _%g194583194639%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self194576%_
                                    _%g194581194637%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self194576%_
                                          _%g194582194638%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp194657%_ ((_%rest194660%_
                                         (cons _%g194582194638%_
                                               (cons _%g194581194637%_ '())))
                                        (_%bind194662%_ '())
                                        (_%args194663%_ '()))
                       (let* ((_%rest194664194672%_ _%rest194660%_)
                              (_%else194666194680%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind194662%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp202798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp202798 _%args194663%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K194668194766%_
                               (lambda (_%rest194683%_ _%e194684%_)
                                 (let* ((_%__stx202435202436%_ _%e194684%_)
                                        (_%g194689194707%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx202435202436%_)))))
                                   (let ((_%__kont202437202438%_
                                          (lambda ()
                                            (_%lp194657%_
                                             _%rest194683%_
                                             _%bind194662%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e194684%_))
                                                   _%args194663%_))))
                                         (_%__kont202439202440%_
                                          (lambda ()
                                            (_%lp194657%_
                                             _%rest194683%_
                                             _%bind194662%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e194684%_))
                                                   _%args194663%_))))
                                         (_%__kont202441202442%_
                                          (lambda ()
                                            (let ((_%tmp194714%_
                                                   (let ((__tmp202799
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp202799))))
                                              (_%lp194657%_
                                               _%rest194683%_
                                               (cons (cons _%tmp194714%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e194684%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind194662%_)
                                               (cons _%tmp194714%_
                                                     _%args194663%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx202435202436%_))
                                         (let ((_%e194691194745%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx202435202436%_))))
                                           (let ((_%tl194693194750%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194691194745%_)))
                                                 (_%hd194692194748%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194691194745%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194692194748%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd194692194748%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194693194750%_))
                                                         (let ((_%e194694194753%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194693194750%_))))
                   (let ((_%tl194696194758%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194694194753%_)))
                         (_%hd194695194756%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194694194753%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl194696194758%_))
                         (_%__kont202437202438%_)
                         (_%__kont202441202442%_))))
                 (_%__kont202441202442%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd194692194748%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl194693194750%_))
                     (let ((_%e194700194730%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl194693194750%_))))
                       (let ((_%tl194702194735%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e194700194730%_)))
                             (_%hd194701194733%_
                              (let ()
                                (declare (not safe))
                                (##car _%e194700194730%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl194702194735%_))
                             (_%__kont202439202440%_)
                             (_%__kont202441202442%_))))
                     (_%__kont202441202442%_))
                 (_%__kont202441202442%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont202441202442%_))))
                                         (_%__kont202441202442%_)))))))
                         (if (pair? _%rest194664194672%_)
                             (let ((_%hd194669194769%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest194664194672%_)))
                                   (_%tl194670194771%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest194664194672%_))))
                               (let* ((_%e194774%_ _%hd194669194769%_)
                                      (_%rest194776%_ _%tl194670194771%_))
                                 (_%K194668194766%_
                                  _%rest194776%_
                                  _%e194774%_)))
                             (_%else194666194680%_))))))
               _%hd194594194632%_
               _%hd194591194624%_
               _%hd194588194616%_)
              (_%g194579194600%_ _%g194580194603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194579194600%_
                                               _%g194580194603%_))))
                                      (_%g194579194600%_ _%g194580194603%_))))
                              (_%g194579194600%_ _%g194580194603%_))))
                      (_%g194579194600%_ _%g194580194603%_)))))
          (_%g194578194778%_ _%stx194577%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self194355%_ _%stx194356%_)
        (let* ((_%g194358194383%_
                (lambda (_%g194359194380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194359194380%_))))
               (_%g194357194573%_
                (lambda (_%g194359194386%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194359194386%_))
                      (let ((_%e194364194388%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194359194386%_))))
                        (let ((_%hd194365194391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194364194388%_)))
                              (_%tl194366194393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194364194388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194366194393%_))
                              (let ((_%e194367194396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194366194393%_))))
                                (let ((_%hd194368194399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194367194396%_)))
                                      (_%tl194369194401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194367194396%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194369194401%_))
                                      (let ((_%e194370194404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194369194401%_))))
                                        (let ((_%hd194371194407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194370194404%_)))
                                              (_%tl194372194409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194370194404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194372194409%_))
                                              (let ((_%e194373194412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194372194409%_))))
                                                (let ((_%hd194374194415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194373194412%_)))
                                                      (_%tl194375194417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194373194412%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194375194417%_))
                                                      (let ((_%e194376194420%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194375194417%_))))
                (let ((_%hd194377194423%_
                       (let () (declare (not safe)) (##car _%e194376194420%_)))
                      (_%tl194378194425%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e194376194420%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194378194425%_))
                      ((lambda (_%g194360194428%_
                                _%g194361194429%_
                                _%g194362194430%_
                                _%g194363194431%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self194355%_
                                            _%g194361194429%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self194355%_
                                                  _%g194360194428%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self194355%_
                                                        _%g194362194430%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp194452%_ ((_%rest194455%_
                                                 (cons _%g194362194430%_
                                                       (cons _%g194360194428%_
                                                             (cons _%g194361194429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind194457%_ '())
                                                (_%args194458%_ '()))
                               (let* ((_%rest194459194467%_ _%rest194455%_)
                                      (_%else194461194475%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind194457%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp202800 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp202800 _%args194458%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K194463194561%_
                                       (lambda (_%rest194478%_ _%e194479%_)
                                         (let* ((_%__stx202481202482%_
                                                 _%e194479%_)
                                                (_%g194484194502%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx202481202482%_)))))
                                           (let ((_%__kont202483202484%_
                                                  (lambda ()
                                                    (_%lp194452%_
                                                     _%rest194478%_
                                                     _%bind194457%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e194479%_))
                                                           _%args194458%_))))
                                                 (_%__kont202485202486%_
                                                  (lambda ()
                                                    (_%lp194452%_
                                                     _%rest194478%_
                                                     _%bind194457%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e194479%_))
                                                           _%args194458%_))))
                                                 (_%__kont202487202488%_
                                                  (lambda ()
                                                    (let ((_%tmp194509%_
                                                           (let ((__tmp202801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp202801))))
              (_%lp194452%_
               _%rest194478%_
               (cons (cons _%tmp194509%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e194479%_))
                                 '()))
                     _%bind194457%_)
               (cons _%tmp194509%_ _%args194458%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx202481202482%_))
                                                 (let ((_%e194486194540%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx202481202482%_))))
                                                   (let ((_%tl194488194545%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e194486194540%_)))
                                                         (_%hd194487194543%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e194486194540%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd194487194543%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd194487194543%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl194488194545%_))
                         (let ((_%e194489194548%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl194488194545%_))))
                           (let ((_%tl194491194553%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194489194548%_)))
                                 (_%hd194490194551%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194489194548%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl194491194553%_))
                                 (_%__kont202483202484%_)
                                 (_%__kont202487202488%_))))
                         (_%__kont202487202488%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd194487194543%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl194488194545%_))
                             (let ((_%e194495194525%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl194488194545%_))))
                               (let ((_%tl194497194530%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e194495194525%_)))
                                     (_%hd194496194528%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e194495194525%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl194497194530%_))
                                     (_%__kont202485202486%_)
                                     (_%__kont202487202488%_))))
                             (_%__kont202487202488%_))
                         (_%__kont202487202488%_)))
                 (_%__kont202487202488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont202487202488%_)))))))
                                 (if (pair? _%rest194459194467%_)
                                     (let ((_%hd194464194564%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest194459194467%_)))
                                           (_%tl194465194566%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest194459194467%_))))
                                       (let* ((_%e194569%_ _%hd194464194564%_)
                                              (_%rest194571%_
                                               _%tl194465194566%_))
                                         (_%K194463194561%_
                                          _%rest194571%_
                                          _%e194569%_)))
                                     (_%else194461194475%_))))))
                       _%hd194377194423%_
                       _%hd194374194415%_
                       _%hd194371194407%_
                       _%hd194368194399%_)
                      (_%g194358194383%_ _%g194359194386%_))))
              (_%g194358194383%_ _%g194359194386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194358194383%_
                                               _%g194359194386%_))))
                                      (_%g194358194383%_ _%g194359194386%_))))
                              (_%g194358194383%_ _%g194359194386%_))))
                      (_%g194358194383%_ _%g194359194386%_)))))
          (_%g194357194573%_ _%stx194356%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self194194%_ _%stx194195%_)
        (letrec ((_%import-set-template194197%_
                  (lambda (_%in194300%_ _%phi194301%_)
                    (let ((_%iphi194303%_
                           (fx+ _%phi194301%_
                                (##direct-structure-ref
                                 _%in194300%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports194304%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in194300%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp194306%_ ((_%rest194308%_ _%imports194304%_)
                                         (_%r194309%_ '()))
                        (let* ((_%rest194310194318%_ _%rest194308%_)
                               (_%else194312194326%_ (lambda () _%r194309%_))
                               (_%K194314194343%_
                                (lambda (_%rest194329%_ _%in194330%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in194330%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi194303%_))
                                          (_%lp194306%_
                                           _%rest194329%_
                                           (cons _%in194330%_ _%r194309%_))
                                          (_%lp194306%_
                                           _%rest194329%_
                                           _%r194309%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in194330%_
                                             'gx#module-import::t))
                                          (let ((_%iphi194334%_
                                                 (fx+ _%phi194301%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in194330%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi194334%_))
                                                (_%lp194306%_
                                                 _%rest194329%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in194330%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r194309%_))
                                                (_%lp194306%_
                                                 _%rest194329%_
                                                 _%r194309%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in194330%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi194337%_
                                                     (fx+ _%iphi194303%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in194330%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi194337%_))
                                                    (_%lp194306%_
                                                     _%rest194329%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in194330%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r194309%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi194337%_))
                                                        (_%lp194306%_
                                                         _%rest194329%_
                                                         (let ((__tmp202802
                                                                (_%import-set-template194197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in194330%_
                         _%iphi194303%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r194309%_ __tmp202802)))
                (_%lp194306%_ _%rest194329%_ _%r194309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp194306%_
                                               _%rest194329%_
                                               _%r194309%_)))))))
                          (if (pair? _%rest194310194318%_)
                              (let ((_%hd194315194346%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194310194318%_)))
                                    (_%tl194316194348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194310194318%_))))
                                (let* ((_%in194351%_ _%hd194315194346%_)
                                       (_%rest194353%_ _%tl194316194348%_))
                                  (_%K194314194343%_
                                   _%rest194353%_
                                   _%in194351%_)))
                              (_%else194312194326%_))))))))
          (let* ((_%g194199194209%_
                  (lambda (_%g194200194206%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194200194206%_))))
                 (_%g194198194297%_
                  (lambda (_%g194200194212%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194200194212%_))
                        (let ((_%e194202194214%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194200194212%_))))
                          (let ((_%hd194203194217%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194202194214%_)))
                                (_%tl194204194219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194202194214%_))))
                            ((lambda (_%g194201194222%_)
                               (let ((_%ht194233%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp194235%_ ((_%rest194237%_
                                                     _%g194201194222%_)
                                                    (_%loads194238%_ '()))
                                   (letrec ((_%K194240%_
                                             (lambda (_%ctx194290%_
                                                      _%rest194291%_)
                                               (let ((_%id194293%_
                                                      (##structure-ref
                                                       _%ctx194290%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht194233%_
                                                        _%id194293%_))
                                                     (_%lp194235%_
                                                      _%rest194291%_
                                                      _%loads194238%_)
                                                     (let ((_%rt194295%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id194293%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht194233%_
                                                          _%id194293%_
                                                          _%rt194295%_))
                                                       (_%lp194235%_
                                                        _%rest194291%_
                                                        (cons _%rt194295%_
                                                              _%loads194238%_))))))))
                                     (let* ((_%rest194241194249%_
                                             _%rest194237%_)
                                            (_%else194243194261%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp202804
                                                            (lambda (_%g194256194258%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194256194258%_)))
                   (__tmp202803 (reverse _%loads194238%_)))
               (declare (not safe))
               (##map __tmp202804 __tmp202803)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K194245194278%_
                                             (lambda (_%rest194264%_
                                                      _%in194265%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in194265%_
                                                      'gx#module-context::t))
                                                   (_%K194240%_
                                                    _%in194265%_
                                                    _%rest194264%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in194265%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in194265%_
                               '3
                               '#f
                               '#f)))
                   (_%K194240%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in194265%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest194264%_)
                   (_%lp194235%_ _%rest194264%_ _%loads194238%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in194265%_
                      'gx#import-set::t))
                   (let ((_%phi194270%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in194265%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi194270%_)
                         (_%K194240%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in194265%_
                             '1
                             '#f
                             '#f))
                          _%rest194264%_)
                         (if (fxpositive? _%phi194270%_)
                             (let ((_%deps194274%_
                                    (_%import-set-template194197%_
                                     _%in194265%_
                                     '0)))
                               (_%lp194235%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest194264%_
                                   _%deps194274%_))
                                _%loads194238%_))
                             (_%lp194235%_ _%rest194264%_ _%loads194238%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx194195%_
                      _%in194265%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest194241194249%_)
                                           (let ((_%hd194246194281%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest194241194249%_)))
                                                 (_%tl194247194283%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest194241194249%_))))
                                             (let* ((_%in194286%_
                                                     _%hd194246194281%_)
                                                    (_%rest194288%_
                                                     _%tl194247194283%_))
                                               (_%K194245194278%_
                                                _%rest194288%_
                                                _%in194286%_)))
                                           (_%else194243194261%_)))))))
                             _%tl194204194219%_)))
                        (_%g194199194209%_ _%g194200194212%_)))))
            (_%g194198194297%_ _%stx194195%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self194008%_ _%stx194009%_)
        (letrec ((_%add-lift!194011%_
                  (lambda (_%expr194192%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr194192%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote194012%_
                  (lambda (_%id194189%_ _%marks194190%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id194189%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks194190%_
                                                        '()))))))))
                 (_%generate-simple194013%_
                  (lambda (_%stxq194184%_)
                    (let ((_%gid194186%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid194187%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq194184%_))))
                      (_%add-lift!194011%_
                       (cons 'define
                             (cons _%gid194186%_
                                   (cons (_%generate-syntax-quote194012%_
                                          _%qid194187%_
                                          ''())
                                         '()))))
                      (let ((__tmp202805
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp202805 _%stxq194184%_ _%gid194186%_))
                      _%gid194186%_)))
                 (_%generate-serialized194014%_
                  (lambda (_%stxq194174%_ _%marks194175%_)
                    (let* ((_%mark-refs194177%_
                            (map _%generate-mark194015%_ _%marks194175%_))
                           (_%gid194179%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid194181%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq194174%_))))
                      (_%add-lift!194011%_
                       (cons 'define
                             (cons _%gid194179%_
                                   (cons (_%generate-syntax-quote194012%_
                                          _%qid194181%_
                                          (cons 'list _%mark-refs194177%_))
                                         '()))))
                      (let ((__tmp202806
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp202806 _%stxq194174%_ _%gid194179%_))
                      _%gid194179%_)))
                 (_%generate-mark194015%_
                  (lambda (_%mark194159%_)
                    (let ((_%$e194161%_
                           (let ((__tmp202807
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp202807 _%mark194159%_))))
                      (if _%$e194161%_
                          _%$e194161%_
                          (let* ((_%gid194165%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr194167%_
                                  (_%serialize-mark194016%_ _%mark194159%_))
                                 (_%ctx194169%_
                                  (let ((__tmp202808
                                         (##structure-ref
                                          _%mark194159%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp202808)))
                                 (_%ctx-ref194171%_
                                  (if (eq? _%ctx194169%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref194017%_
                                                               _%ctx194169%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp202809
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp202809
                               _%mark194159%_
                               _%gid194165%_))
                            (_%add-lift!194011%_
                             (cons 'define
                                   (cons _%gid194165%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr194167%_ '()))
                   (cons _%ctx-ref194171%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid194165%_)))))
                 (_%serialize-mark194016%_
                  (lambda (_%mark194107%_)
                    (letrec ((_%quote-e194109%_
                              (lambda (_%sym194157%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym194157%_))
                                    _%sym194157%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym194157%_))))))
                      (let* ((_%mark194110194119%_ _%mark194107%_)
                             (_%E194112194122%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark194110194119%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K194113194134%_
                              (lambda (_%trace194125%_
                                       _%phi194126%_
                                       _%ctx194127%_
                                       _%subst194128%_)
                                (let ((_%subs194130%_
                                       (if _%subst194128%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst194128%_))
                                           '())))
                                  (cons _%phi194126%_
                                        (let ((__tmp202810
                                               (lambda (_%pair194132%_)
                                                 (cons (_%quote-e194109%_
                                                        (car _%pair194132%_))
                                                       (_%quote-e194109%_
                                                        (cdr _%pair194132%_))))))
                                          (declare (not safe))
                                          (##map __tmp202810
                                                 _%subs194130%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark194110194119%_
                               'gx#expander-mark::t))
                            (let* ((_%e194114194137%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194110194119%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst194140%_ _%e194114194137%_)
                                   (_%e194115194142%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194110194119%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx194145%_ _%e194115194142%_)
                                   (_%e194116194147%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194110194119%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi194150%_ _%e194116194147%_)
                                   (_%e194117194152%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194110194119%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace194155%_ _%e194117194152%_))
                              (_%K194113194134%_
                               _%trace194155%_
                               _%phi194150%_
                               _%ctx194145%_
                               _%subst194140%_))
                            (_%E194112194122%_))))))
                 (_%context-ref194017%_
                  (lambda (_%ctx194094%_)
                    (if (let ((__tmp202811
                               (##structure-ref
                                _%ctx194094%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp202811
                           'gx#module-context::t))
                        (let ((_%ctx-ref194096%_
                               (_%context-ref-nested194019%_ _%ctx194094%_))
                              (_%ctx-origin194097%_
                               (_%context-ref-origin194018%_ _%ctx194094%_))
                              (_%origin194098%_
                               (_%context-ref-origin194018%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin194098%_ _%ctx-origin194097%_)
                              (let ((_%ref194100%_
                                     (_%context-ref-nested194019%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp194102%_ ((_%ref194104%_
                                                    (cdr _%ref194100%_))
                                                   (_%ctx-ref194105%_
                                                    (cdr _%ctx-ref194096%_)))
                                  (if (and (pair? _%ref194104%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref194104%_))
                                                (car _%ctx-ref194105%_)))
                                      (_%lp194102%_
                                       (cdr _%ref194104%_)
                                       (cdr _%ctx-ref194105%_))
                                      (cons '#f _%ctx-ref194105%_))))
                              _%ctx-ref194096%_))
                        (let ((__tmp202812
                               (##structure-ref
                                _%ctx194094%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp202812)))))
                 (_%context-ref-origin194018%_
                  (lambda (_%ctx194086%_)
                    (let _%lp194088%_ ((_%ctx194090%_ _%ctx194086%_))
                      (let ((_%super194092%_
                             (##structure-ref
                              _%ctx194090%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super194092%_
                               'gx#module-context::t))
                            (_%lp194088%_ _%super194092%_)
                            _%ctx194090%_)))))
                 (_%context-ref-nested194019%_
                  (lambda (_%ctx194077%_)
                    (let _%lp194079%_ ((_%ctx194081%_ _%ctx194077%_)
                                       (_%r194082%_ '()))
                      (let ((_%super194084%_
                             (##structure-ref
                              _%ctx194081%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super194084%_
                               'gx#module-context::t))
                            (_%lp194079%_
                             _%super194084%_
                             (cons (car (##structure-ref
                                         _%ctx194081%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r194082%_))
                            (cons (let ((__tmp202813
                                         (##structure-ref
                                          _%ctx194081%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp202813))
                                  _%r194082%_)))))))
          (let* ((_%g194021194034%_
                  (lambda (_%g194022194031%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194022194031%_))))
                 (_%g194020194074%_
                  (lambda (_%g194022194037%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194022194037%_))
                        (let ((_%e194024194039%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194022194037%_))))
                          (let ((_%hd194025194042%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194024194039%_)))
                                (_%tl194026194044%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194024194039%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194026194044%_))
                                (let ((_%e194027194047%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194026194044%_))))
                                  (let ((_%hd194028194050%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194027194047%_)))
                                        (_%tl194029194052%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194027194047%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194029194052%_))
                                        ((lambda (_%g194023194055%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g194023194055%_))
                                               (let ((_%$e194068%_
                                                      (let ((__tmp202814
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp202814 _%g194023194055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e194068%_
                                                     _%$e194068%_
                                                     (let ((_%marks194072%_
                                                            (##direct-structure-ref
                                                             _%g194023194055%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks194072%_)
                                                           (_%generate-simple194013%_
                                                            _%g194023194055%_)
                                                           (_%generate-serialized194014%_
                                                            _%g194023194055%_
                                                            _%marks194072%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g194023194055%_))))
                                         _%hd194028194050%_)
                                        (_%g194021194034%_
                                         _%g194022194037%_))))
                                (_%g194021194034%_ _%g194022194037%_))))
                        (_%g194021194034%_ _%g194022194037%_)))))
            (_%g194020194074%_ _%stx194009%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self193940%_ _%stx193941%_)
        (let* ((_%g193943193960%_
                (lambda (_%g193944193957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193944193957%_))))
               (_%g193942194005%_
                (lambda (_%g193944193963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193944193963%_))
                      (let ((_%e193947193965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193944193963%_))))
                        (let ((_%hd193948193968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193947193965%_)))
                              (_%tl193949193970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193947193965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193949193970%_))
                              (let ((_%e193950193973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193949193970%_))))
                                (let ((_%hd193951193976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193950193973%_)))
                                      (_%tl193952193978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193950193973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193952193978%_))
                                      (let ((_%e193953193981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193952193978%_))))
                                        (let ((_%hd193954193984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193953193981%_)))
                                              (_%tl193955193986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193953193981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193955193986%_))
                                              ((lambda (_%g193945193989%_
                                                        _%g193946193990%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g193946193990%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self193940%_
                              _%g193945193989%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd193954193984%_
                                               _%hd193951193976%_)
                                              (_%g193943193960%_
                                               _%g193944193963%_))))
                                      (_%g193943193960%_ _%g193944193963%_))))
                              (_%g193943193960%_ _%g193944193963%_))))
                      (_%g193943193960%_ _%g193944193963%_)))))
          (_%g193942194005%_ _%stx193941%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self193889%_ _%stx193890%_)
        (let* ((_%g193892193902%_
                (lambda (_%g193893193899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193893193899%_))))
               (_%g193891193937%_
                (lambda (_%g193893193905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193893193905%_))
                      (let ((_%e193895193907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193893193905%_))))
                        (let ((_%hd193896193910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193895193907%_)))
                              (_%tl193897193912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193895193907%_))))
                          ((lambda (_%g193894193915%_)
                             (let* ((_%c-body193929%_
                                     (map (lambda (_%g193924193926%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self193889%_
                                               _%g193924193926%_)))
                                          _%g193894193915%_))
                                    (_%c-body193934%_
                                     (let ((__tmp202815
                                            (lambda (_%$obj193931%_)
                                              (not (eq? _%$obj193931%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp202815
                                        _%c-body193929%_))))
                               (cons '%#begin _%c-body193934%_)))
                           _%tl193897193912%_)))
                      (_%g193892193902%_ _%g193893193905%_)))))
          (_%g193891193937%_ _%stx193890%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self193794%_ _%stx193795%_)
        (let* ((_%g193797193807%_
                (lambda (_%g193798193804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193798193804%_))))
               (_%g193796193886%_
                (lambda (_%g193798193810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193798193810%_))
                      (let ((_%e193800193812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193798193810%_))))
                        (let ((_%hd193801193815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193800193812%_)))
                              (_%tl193802193817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193800193812%_))))
                          ((lambda (_%g193799193820%_)
                             (let* ((_%phi193830%_
                                     (let ((__tmp202816
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp202816 '1)))
                                    (_%block193832%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self193794%_ 'state))
                                      _%phi193830%_))
                                    (_%compiled193835%_
                                     (let ((__tmp202817
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self193794%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g193799193820%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp202817
                                        gx#current-expander-phi
                                        _%phi193830%_)))
                                    (_%g193838193848%_
                                     (lambda (_%g193839193845%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g193839193845%_))))
                                    (_%g193837193883%_
                                     (lambda (_%g193839193851%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g193839193851%_))
                                           (let ((_%e193841193853%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g193839193851%_))))
                                             (let ((_%hd193842193856%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e193841193853%_)))
                                                   (_%tl193843193858%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e193841193853%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd193842193856%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd193842193856%_))
                                                       ((lambda (_%g193840193861%_)
                                                          (let ((_%c-body193878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj193875%_)
                                   (not (eq? _%$obj193875%_ '#!void)))
                                 _%g193840193861%_)))
                    (if _%block193832%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block193832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body193878%_))
                        (if (null? _%c-body193878%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body193878%_)))))
                _%tl193843193858%_)
               (_%g193838193848%_ _%g193839193851%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g193838193848%_
                                                    _%g193839193851%_))))
                                           (_%g193838193848%_
                                            _%g193839193851%_)))))
                               (_%g193837193883%_ _%compiled193835%_)))
                           _%tl193802193817%_)))
                      (_%g193797193807%_ _%g193798193810%_)))))
          (_%g193796193886%_ _%stx193795%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self193725%_ _%stx193726%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193725%_ 'state)))
        (let* ((_%g193728193742%_
                (lambda (_%g193729193739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193729193739%_))))
               (_%g193727193791%_
                (lambda (_%g193729193745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193729193745%_))
                      (let ((_%e193732193747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193729193745%_))))
                        (let ((_%hd193733193750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193732193747%_)))
                              (_%tl193734193752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193732193747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193734193752%_))
                              (let ((_%e193735193755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193734193752%_))))
                                (let ((_%hd193736193758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193735193755%_)))
                                      (_%tl193737193760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193735193755%_))))
                                  ((lambda (_%g193730193763%_
                                            _%g193731193764%_)
                                     (let ((_%key193777%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g193731193764%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key193777%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx193726%_
                                              _%g193731193764%_
                                              _%key193777%_)))
                                       (let* ((_%ctx193779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g193731193764%_)))
                                              (_%code193782%_
                                               (let ((__tmp202818
                                                      (lambda ()
                                                        (let ((__tmp202819
                                                               (##structure-ref
                                                                _%ctx193779%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self193725%_
                                                           __tmp202819)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp202818
                                                  gx#current-expander-context
                                                  _%ctx193779%_)))
                                              (_%rt193784%_
                                               (let ((__tmp202820
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp202820
                                                  _%ctx193779%_)))
                                              (_%loader193786%_
                                               (if _%rt193784%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt193784%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid193788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g193731193764%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193725%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid193788%_
                                                     (cons _%code193782%_
                                                           _%loader193786%_))))))
                                   _%tl193737193760%_
                                   _%hd193736193758%_)))
                              (_%g193728193742%_ _%g193729193745%_))))
                      (_%g193728193742%_ _%g193729193745%_)))))
          (_%g193727193791%_ _%stx193726%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx193712%_ _%context-chain193713%_)
        (let _%lp193715%_ ((_%ctx193717%_ _%ctx193712%_) (_%path193718%_ '()))
          (let ((_%super193720%_
                 (##structure-ref _%ctx193717%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super193720%_ _%context-chain193713%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx193717%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path193718%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super193720%_
                       'gx#module-context::t))
                    (_%lp193715%_
                     _%super193720%_
                     (cons (car (##structure-ref
                                 _%ctx193717%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path193718%_))
                    (cons (let ((__tmp202821
                                 (##structure-ref
                                  _%ctx193717%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp202821))
                          _%path193718%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp193705%_ ((_%ctx193707%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r193708%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx193707%_ 'gx#module-context::t))
              (_%lp193705%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx193707%_ '3 '#f '#f))
               (cons _%ctx193707%_ _%r193708%_))
              _%r193708%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self193470%_ _%stx193471%_)
        (letrec* ((_%context-chain193473%_ (gxc#current-context-chain))
                  (_%make-import-spec193474%_
                   (lambda (_%in193642%_)
                     (let* ((_%in193643193655%_ _%in193642%_)
                            (_%E193645193658%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in193643193655%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K193646193668%_
                             (lambda (_%phi193661%_
                                      _%name193662%_
                                      _%src-name193663%_
                                      _%src-phi193664%_
                                      _%src-key193665%_
                                      _%src-ctx193666%_)
                               (cons _%phi193661%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name193662%_))
                                           (cons _%src-phi193664%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name193663%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in193643193655%_
                              'gx#module-import::t))
                           (let ((_%e193647193671%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in193643193655%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e193647193671%_
                                    'gx#module-export::t))
                                 (let* ((_%e193650193674%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193647193671%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx193677%_ _%e193650193674%_)
                                        (_%e193651193679%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193647193671%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key193682%_ _%e193651193679%_)
                                        (_%e193652193684%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193647193671%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi193687%_ _%e193652193684%_)
                                        (_%e193653193689%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193647193671%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name193692%_ _%e193653193689%_)
                                        (_%e193648193694%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in193643193655%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name193697%_ _%e193648193694%_)
                                        (_%e193649193699%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in193643193655%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi193702%_ _%e193649193699%_))
                                   (_%K193646193668%_
                                    _%phi193702%_
                                    _%name193697%_
                                    _%src-name193692%_
                                    _%src-phi193687%_
                                    _%src-key193682%_
                                    _%src-ctx193677%_))
                                 (_%E193645193658%_)))
                           (_%E193645193658%_)))))
                  (_%make-import-path193475%_
                   (lambda (_%ctx193640%_)
                     (gxc#generate-meta-import-path
                      _%ctx193640%_
                      _%context-chain193473%_)))
                  (_%make-import-spec-in193476%_
                   (lambda (_%ctx193637%_ _%in193638%_)
                     (cons 'spec:
                           (cons (_%make-import-path193475%_ _%ctx193637%_)
                                 (reverse _%in193638%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self193470%_ 'state)))
          (let* ((_%g193478193488%_
                  (lambda (_%g193479193485%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193479193485%_))))
                 (_%g193477193634%_
                  (lambda (_%g193479193491%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193479193491%_))
                        (let ((_%e193481193493%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193479193491%_))))
                          (let ((_%hd193482193496%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193481193493%_)))
                                (_%tl193483193498%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193481193493%_))))
                            ((lambda (_%g193480193501%_)
                               (let _%lp193512%_ ((_%rest193514%_
                                                   _%g193480193501%_)
                                                  (_%current-src193515%_ '#f)
                                                  (_%current-in193516%_ '())
                                                  (_%r193517%_ '()))
                                 (let* ((_%rest193518193526%_ _%rest193514%_)
                                        (_%else193520193536%_
                                         (lambda ()
                                           (let ((_%r193534%_
                                                  (if _%current-src193515%_
                                                      (cons (_%make-import-spec-in193476%_
                                                             _%current-src193515%_
                                                             _%current-in193516%_)
                                                            _%r193517%_)
                                                      _%r193517%_)))
                                             (cons '%#import
                                                   (reverse _%r193534%_)))))
                                        (_%K193522193622%_
                                         (lambda (_%rest193539%_ _%in193540%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in193540%_
                                                  'gx#module-import::t))
                                               (let* ((_%in193542193549%_
                                                       _%in193540%_)
                                                      (_%E193544193552%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in193542193549%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K193545193560%_
               (lambda (_%src-ctx193555%_)
                 (if (eq? _%current-src193515%_ _%src-ctx193555%_)
                     (_%lp193512%_
                      _%rest193539%_
                      _%current-src193515%_
                      (cons (_%make-import-spec193474%_ _%in193540%_)
                            _%current-in193516%_)
                      _%r193517%_)
                     (if _%current-src193515%_
                         (_%lp193512%_
                          _%rest193539%_
                          _%src-ctx193555%_
                          (cons (_%make-import-spec193474%_ _%in193540%_) '())
                          (cons (_%make-import-spec-in193476%_
                                 _%current-src193515%_
                                 _%current-in193516%_)
                                _%r193517%_))
                         (_%lp193512%_
                          _%rest193539%_
                          _%src-ctx193555%_
                          (cons (_%make-import-spec193474%_ _%in193540%_) '())
                          _%r193517%_)))))
              (_%e193546193563%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in193542193549%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e193546193563%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e193547193566%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e193546193563%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx193569%_ _%e193547193566%_))
               (_%K193545193560%_ _%src-ctx193569%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E193544193552%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in193540%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi193572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in193540%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src193574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in193540%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in193614%_
                                                           (let* ((_%g193575193584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path193475%_ _%src193574%_))
                          (_%E193578193588%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g193575193584%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K193580193604%_
                            (lambda (_%path193602%_) _%path193602%_))
                           (_%K193579193594%_
                            (lambda (_%path193592%_)
                              (cons 'in: _%path193592%_))))
                       (if (pair? _%g193575193584%_)
                           (let ((_%tl193582193609%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g193575193584%_)))
                                 (_%hd193581193607%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g193575193584%_))))
                             (if (null? _%tl193582193609%_)
                                 (let ((_%path193612%_ _%hd193581193607%_))
                                   (_%K193580193604%_ _%path193612%_))
                                 (let ((_%path193597%_ _%g193575193584%_))
                                   (_%K193579193594%_ _%path193597%_))))
                           (let ((_%path193597%_ _%g193575193584%_))
                             (_%K193579193594%_ _%path193597%_))))))
                  (_%r193616%_
                   (if _%current-src193515%_
                       (cons (_%make-import-spec-in193476%_
                              _%current-src193515%_
                              _%current-in193516%_)
                             _%r193517%_)
                       _%r193517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp193512%_
                                                      _%rest193539%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi193572%_)
                                                                _%src-in193614%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi193572%_
                                    (cons _%src-in193614%_ '()))))
                    _%r193616%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in193540%_
                                                          'gx#module-context::t))
                                                       (let ((_%r193620%_
                                                              (if _%current-src193515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in193476%_
                                 _%current-src193515%_
                                 _%current-in193516%_)
                                _%r193517%_)
                          _%r193517%_)))
                 (_%lp193512%_
                  _%rest193539%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path193475%_ _%in193540%_))
                        _%r193620%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest193518193526%_)
                                       (let ((_%hd193523193625%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest193518193526%_)))
                                             (_%tl193524193627%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest193518193526%_))))
                                         (let* ((_%in193630%_
                                                 _%hd193523193625%_)
                                                (_%rest193632%_
                                                 _%tl193524193627%_))
                                           (_%K193522193622%_
                                            _%rest193632%_
                                            _%in193630%_)))
                                       (_%else193520193536%_)))))
                             _%tl193483193498%_)))
                        (_%g193478193488%_ _%g193479193491%_)))))
            (_%g193477193634%_ _%stx193471%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self193280%_ _%stx193281%_)
        (letrec* ((_%context-chain193283%_ (gxc#current-context-chain))
                  (_%make-import-path193284%_
                   (lambda (_%ctx193468%_)
                     (gxc#generate-meta-import-path
                      _%ctx193468%_
                      _%context-chain193283%_))))
          (let* ((_%g193286193296%_
                  (lambda (_%g193287193293%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193287193293%_))))
                 (_%g193285193465%_
                  (lambda (_%g193287193299%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193287193299%_))
                        (let ((_%e193289193301%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193287193299%_))))
                          (let ((_%hd193290193304%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193289193301%_)))
                                (_%tl193291193306%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193289193301%_))))
                            ((lambda (_%g193288193309%_)
                               (let _%lp193320%_ ((_%rest193322%_
                                                   _%g193288193309%_)
                                                  (_%r193323%_ '()))
                                 (let* ((_%rest193324193332%_ _%rest193322%_)
                                        (_%else193326193340%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r193323%_))))
                                        (_%K193328193453%_
                                         (lambda (_%rest193343%_ _%out193344%_)
                                           (let* ((_%out193345193358%_
                                                   _%out193344%_)
                                                  (_%E193348193362%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out193345193358%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K193352193432%_
                                                    (lambda (_%name193428%_
                                                             _%phi193429%_
                                                             _%key193430%_)
                                                      (_%lp193320%_
                                                       _%rest193343%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi193429%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key193430%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name193428%_))
                                             '()))))
                     _%r193323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K193349193412%_
                                                    (lambda (_%phi193366%_
                                                             _%src193367%_)
                                                      (let* ((_%out193407%_
                                                              (if _%src193367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g193368193377%_
                                              (_%make-import-path193284%_
                                               _%src193367%_))
                                             (_%E193371193381%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g193368193377%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K193373193397%_
                                               (lambda (_%path193395%_)
                                                 _%path193395%_))
                                              (_%K193372193387%_
                                               (lambda (_%path193385%_)
                                                 (cons 'in: _%path193385%_))))
                                          (if (pair? _%g193368193377%_)
                                              (let ((_%tl193375193402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g193368193377%_)))
                                                    (_%hd193374193400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g193368193377%_))))
                                                (if (null? _%tl193375193402%_)
                                                    (let ((_%path193405%_
                                                           _%hd193374193400%_))
                                                      (_%K193373193397%_
                                                       _%path193405%_))
                                                    (let ((_%path193390%_
                                                           _%g193368193377%_))
                                                      (_%K193372193387%_
                                                       _%path193390%_))))
                                              (let ((_%path193390%_
                                                     _%g193368193377%_))
                                                (_%K193372193387%_
                                                 _%path193390%_)))))
                                      '()))
                          '#t))
                     (_%out193409%_
                      (if (fxzero? _%phi193366%_)
                          _%out193407%_
                          (cons 'phi:
                                (cons _%phi193366%_
                                      (cons _%out193407%_ '()))))))
                (_%lp193320%_
                 _%rest193343%_
                 (cons _%out193409%_ _%r193323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match193347193425%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out193345193358%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e193350193415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out193345193358%_
                               '1
                               '#f
                               '#f)))
                           (_%e193351193420%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out193345193358%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src193418%_ _%e193350193415%_)
                            (_%phi193423%_ _%e193351193420%_))
                        (_%K193349193412%_ _%phi193423%_ _%src193418%_)))
                    (_%E193348193362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out193345193358%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e193353193435%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out193345193358%_
                        '1
                        '#f
                        '#f)))
                    (_%e193354193438%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193345193358%_
                        '2
                        '#f
                        '#f)))
                    (_%e193355193443%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193345193358%_
                        '3
                        '#f
                        '#f)))
                    (_%e193356193448%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193345193358%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key193441%_ _%e193354193438%_)
                     (_%phi193446%_ _%e193355193443%_)
                     (_%name193451%_ _%e193356193448%_))
                 (_%K193352193432%_
                  _%name193451%_
                  _%phi193446%_
                  _%key193441%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match193347193425%_))))))))
                                   (if (pair? _%rest193324193332%_)
                                       (let ((_%hd193329193456%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest193324193332%_)))
                                             (_%tl193330193458%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest193324193332%_))))
                                         (let* ((_%out193461%_
                                                 _%hd193329193456%_)
                                                (_%rest193463%_
                                                 _%tl193330193458%_))
                                           (_%K193328193453%_
                                            _%rest193463%_
                                            _%out193461%_)))
                                       (_%else193326193340%_)))))
                             _%tl193291193306%_)))
                        (_%g193286193296%_ _%g193287193299%_)))))
            (_%g193285193465%_ _%stx193281%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self193241%_ _%stx193242%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193241%_ 'state)))
        (let* ((_%g193244193254%_
                (lambda (_%g193245193251%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193245193251%_))))
               (_%g193243193277%_
                (lambda (_%g193245193257%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193245193257%_))
                      (let ((_%e193247193259%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193245193257%_))))
                        (let ((_%hd193248193262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193247193259%_)))
                              (_%tl193249193264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193247193259%_))))
                          ((lambda (_%g193246193267%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g193246193267%_)))
                           _%tl193249193264%_)))
                      (_%g193244193254%_ _%g193245193257%_)))))
          (_%g193243193277%_ _%stx193242%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self193116%_ _%stx193117%_)
        (letrec ((_%generate1193119%_
                  (lambda (_%id193236%_ _%eid193237%_)
                    (let ((_%eid193239%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid193237%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid193239%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx193117%_
                             _%eid193239%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id193236%_))
                            (cons _%eid193239%_ '()))))))
          (let* ((_%g193121193149%_
                  (lambda (_%g193122193146%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193122193146%_))))
                 (_%g193120193233%_
                  (lambda (_%g193122193152%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193122193152%_))
                        (let ((_%e193125193154%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193122193152%_))))
                          (let ((_%hd193126193157%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193125193154%_)))
                                (_%tl193127193159%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193125193154%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl193127193159%_))
                                (let ((_g202822_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl193127193159%_
                                          '0))))
                                  (begin
                                    (let ((_g202823_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g202822_)
                                                 (##values-length _g202822_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g202823_ 2)))
                                          (error "Context expects 2 values"
                                                 _g202823_)))
                                    (let ((_%target193128193162%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202822_ 0)))
                                          (_%tl193130193164%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202822_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193130193164%_))
                                          (letrec ((_%loop193131193167%_
                                                    (lambda (_%hd193129193170%_
                                                             _%eid193135193172%_
                                                             _%id193136193173%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193129193170%_))
                                                          (let ((_%e193132193175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193129193170%_))))
                    (let ((_%lp-hd193133193178%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193132193175%_)))
                          (_%lp-tl193134193180%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193132193175%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd193133193178%_))
                          (let ((_%e193139193183%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd193133193178%_))))
                            (let ((_%hd193140193186%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193139193183%_)))
                                  (_%tl193141193188%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193139193183%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193141193188%_))
                                  (let ((_%e193142193191%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193141193188%_))))
                                    (let ((_%hd193143193194%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193142193191%_)))
                                          (_%tl193144193196%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193142193191%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193144193196%_))
                                          (_%loop193131193167%_
                                           _%lp-tl193134193180%_
                                           (cons _%hd193143193194%_
                                                 _%eid193135193172%_)
                                           (cons _%hd193140193186%_
                                                 _%id193136193173%_))
                                          (_%g193121193149%_
                                           _%g193122193152%_))))
                                  (_%g193121193149%_ _%g193122193152%_))))
                          (_%g193121193149%_ _%g193122193152%_))))
                  (let ((_%eid193137193199%_ (reverse _%eid193135193172%_))
                        (_%id193138193200%_ (reverse _%id193136193173%_)))
                    ((lambda (_%g193123193202%_ _%g193124193203%_)
                       (cons '%#extern
                             (map _%generate1193119%_
                                  (let ((__tmp202824
                                         (lambda (_%g193218193221%_
                                                  _%g193219193223%_)
                                           (cons _%g193218193221%_
                                                 _%g193219193223%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp202824
                                     '()
                                     _%g193124193203%_))
                                  (let ((__tmp202825
                                         (lambda (_%g193225193228%_
                                                  _%g193226193230%_)
                                           (cons _%g193225193228%_
                                                 _%g193226193230%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp202825
                                     '()
                                     _%g193123193202%_)))))
                     _%eid193137193199%_
                     _%id193138193200%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop193131193167%_
                                             _%target193128193162%_
                                             '()
                                             '()))
                                          (_%g193121193149%_
                                           _%g193122193152%_)))))
                                (_%g193121193149%_ _%g193122193152%_))))
                        (_%g193121193149%_ _%g193122193152%_)))))
            (_%g193120193233%_ _%stx193117%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self192905%_ _%stx192906%_)
        (letrec ((_%generate1192908%_
                  (lambda (_%id193110%_)
                    (let ((_%eid193112%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id193110%_)))
                          (_%ident193113%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id193110%_)))
                          (_%props193114%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id193110%_))))
                      (cons '%#define-runtime
                            (cons _%ident193113%_
                                  (cons _%eid193112%_ _%props193114%_))))))
                 (_%generate*192909%_
                  (lambda (_%all193078%_)
                    (let* ((_%all193079193087%_ _%all193078%_)
                           (_%else193081193095%_
                            (lambda () (cons '%#begin _%all193078%_)))
                           (_%K193083193100%_
                            (lambda (_%one193098%_) _%one193098%_)))
                      (if (pair? _%all193079193087%_)
                          (let ((_%hd193084193103%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all193079193087%_)))
                                (_%tl193085193105%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all193079193087%_))))
                            (let ((_%one193108%_ _%hd193084193103%_))
                              (if (null? _%tl193085193105%_)
                                  (_%K193083193100%_ _%one193108%_)
                                  (_%else193081193095%_))))
                          (_%else193081193095%_))))))
          (let* ((_%g192911192928%_
                  (lambda (_%g192912192925%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g192912192925%_))))
                 (_%g192910193075%_
                  (lambda (_%g192912192931%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g192912192931%_))
                        (let ((_%e192915192933%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g192912192931%_))))
                          (let ((_%hd192916192936%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192915192933%_)))
                                (_%tl192917192938%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192915192933%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl192917192938%_))
                                (let ((_%e192918192941%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl192917192938%_))))
                                  (let ((_%hd192919192944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192918192941%_)))
                                        (_%tl192920192946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192918192941%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl192920192946%_))
                                        (let ((_%e192921192949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl192920192946%_))))
                                          (let ((_%hd192922192952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192921192949%_)))
                                                (_%tl192923192954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192921192949%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192923192954%_))
                                                ((lambda (_%g192913192957%_
                                                          _%g192914192958%_)
                                                   (let _%lp192974%_ ((_%rest192976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g192914192958%_)
                              (_%r192977%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx202560202561%_
                                                             _%rest192976%_)
                                                            (_%g192982192999%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx202560202561%_)))))
               (let ((_%__kont202562202563%_
                      (lambda (_%g192984193062%_)
                        (_%lp192974%_ _%g192984193062%_ _%r192977%_)))
                     (_%__kont202564202565%_
                      (lambda (_%g192989193035%_ _%g192990193036%_)
                        (_%lp192974%_
                         _%g192989193035%_
                         (cons (_%generate1192908%_ _%g192990193036%_)
                               _%r192977%_))))
                     (_%__kont202566202567%_
                      (lambda (_%g192994193011%_)
                        (_%generate*192909%_
                         (let ((__tmp202826
                                (cons (_%generate1192908%_ _%g192994193011%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp202826 _%r192977%_)))))
                     (_%__kont202568202569%_
                      (lambda ()
                        (_%generate*192909%_ (reverse! _%r192977%_)))))
                 (let ((_%g192980193022%_
                        (lambda ()
                          (let ((_%g192994193011%_ _%__stx202560202561%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g192994193011%_))
                                (_%__kont202566202567%_ _%g192994193011%_)
                                (_%__kont202568202569%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx202560202561%_))
                       (let ((_%e192985193051%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx202560202561%_))))
                         (let ((_%tl192987193056%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e192985193051%_)))
                               (_%hd192986193054%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e192985193051%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd192986193054%_))
                               (let ((_%e192988193059%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd192986193054%_))))
                                 (if (equal? _%e192988193059%_ '#f)
                                     (_%__kont202562202563%_
                                      _%tl192987193056%_)
                                     (_%__kont202564202565%_
                                      _%tl192987193056%_
                                      _%hd192986193054%_)))
                               (_%__kont202564202565%_
                                _%tl192987193056%_
                                _%hd192986193054%_))))
                       (let () (declare (not safe)) (_%g192980193022%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd192922192952%_
                                                 _%hd192919192944%_)
                                                (_%g192911192928%_
                                                 _%g192912192931%_))))
                                        (_%g192911192928%_
                                         _%g192912192931%_))))
                                (_%g192911192928%_ _%g192912192931%_))))
                        (_%g192911192928%_ _%g192912192931%_)))))
            (_%g192910193075%_ _%stx192906%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self192802%_ _%stx192803%_)
        (let* ((_%g192805192822%_
                (lambda (_%g192806192819%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192806192819%_))))
               (_%g192804192902%_
                (lambda (_%g192806192825%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192806192825%_))
                      (let ((_%e192809192827%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192806192825%_))))
                        (let ((_%hd192810192830%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192809192827%_)))
                              (_%tl192811192832%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192809192827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192811192832%_))
                              (let ((_%e192812192835%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192811192832%_))))
                                (let ((_%hd192813192838%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192812192835%_)))
                                      (_%tl192814192840%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192812192835%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192814192840%_))
                                      (let ((_%e192815192843%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192814192840%_))))
                                        (let ((_%hd192816192846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192815192843%_)))
                                              (_%tl192817192848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192815192843%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192817192848%_))
                                              ((lambda (_%g192807192851%_
                                                        _%g192808192852%_)
                                                 (let* ((_%eid192867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g192808192852%_)))
                                                        (_%phi192869%_
                                                         (let ((__tmp202827
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp202827 '1)))
                (_%block192871%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self192802%_ 'state))
                  _%phi192869%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g192874192881%_
                                                           (lambda (_%g192875192878%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g192875192878%_))))
                  (_%g192873192899%_
                   (lambda (_%g192875192884%_)
                     ((lambda (_%g192876192886%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self192802%_ 'state))
                         _%phi192869%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g192876192886%_
                                     (cons _%g192807192851%_ '())))))
                      _%g192875192884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g192873192899%_
                                                      _%eid192867%_))
                                                   (if _%block192871%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block192871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g192808192852%_))
                                             (cons _%eid192867%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g192808192852%_))
                           (cons _%eid192867%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd192816192846%_
                                               _%hd192813192838%_)
                                              (_%g192805192822%_
                                               _%g192806192825%_))))
                                      (_%g192805192822%_ _%g192806192825%_))))
                              (_%g192805192822%_ _%g192806192825%_))))
                      (_%g192805192822%_ _%g192806192825%_)))))
          (_%g192804192902%_ _%stx192803%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self192734%_ _%stx192735%_)
        (let* ((_%g192737192754%_
                (lambda (_%g192738192751%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192738192751%_))))
               (_%g192736192799%_
                (lambda (_%g192738192757%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192738192757%_))
                      (let ((_%e192741192759%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192738192757%_))))
                        (let ((_%hd192742192762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192741192759%_)))
                              (_%tl192743192764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192741192759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192743192764%_))
                              (let ((_%e192744192767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192743192764%_))))
                                (let ((_%hd192745192770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192744192767%_)))
                                      (_%tl192746192772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192744192767%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192746192772%_))
                                      (let ((_%e192747192775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192746192772%_))))
                                        (let ((_%hd192748192778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192747192775%_)))
                                              (_%tl192749192780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192747192775%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192749192780%_))
                                              ((lambda (_%g192739192783%_
                                                        _%g192740192784%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g192740192784%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g192739192783%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd192748192778%_
                                               _%hd192745192770%_)
                                              (_%g192737192754%_
                                               _%g192738192757%_))))
                                      (_%g192737192754%_ _%g192738192757%_))))
                              (_%g192737192754%_ _%g192738192757%_))))
                      (_%g192737192754%_ _%g192738192757%_)))))
          (_%g192736192799%_ _%stx192735%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self192731%_ _%stx192732%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self192731%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx192732%_)
        (gxc#generate-meta-define-values% _%self192731%_ _%stx192732%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self192728%_ _%stx192729%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self192728%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx192729%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp202829 (list)) (__tmp202828 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp202829
         '(src n open blocks)
         __tmp202828
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args192725%_
        (apply make-instance gxc#meta-state::t _%$args192725%_)))
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
      (lambda (_%self192711%_ _%ctx192712%_)
        (let ((_%self192715%_ _%self192711%_))
          (if (let ((__tmp202830
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self192715%_))))
                (declare (not safe))
                (##fx< '4 __tmp202830))
              (begin
                (let ((__tmp202831
                       (let ((__tmp202832
                              (##structure-ref
                               _%ctx192712%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp202832))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self192715%_
                   __tmp202831
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self192715%_ '1 '2 '#f '#f))
                (let ((__tmp202833
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self192715%_
                   __tmp202833
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self192715%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp202834
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self192715%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self192715%_
                       '4
                       __tmp202834))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp202836 (list)) (__tmp202835 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp202836
         '(ctx phi n code)
         __tmp202835
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args192586%_
        (apply make-instance gxc#meta-state-block::t _%$args192586%_)))
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
      (lambda (_%state192546%_ _%phi192547%_)
        (let* ((_%state192548192556%_ _%state192546%_)
               (_%E192550192559%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state192548192556%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K192551192568%_
                (lambda (_%open192562%_ _%n192563%_ _%src192564%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open192562%_ _%phi192547%_))
                      '#f
                      (let ((_%block-ref192566%_
                             (let ((__tmp202837 (number->string _%n192563%_)))
                               (declare (not safe))
                               (##string-append
                                _%src192564%_
                                '"~"
                                __tmp202837))))
                        (##structure-set!
                         _%state192546%_
                         (let () (declare (not safe)) (##fx+ _%n192563%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp202838
                               (let ((__tmp202839
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp202839
                                  _%phi192547%_
                                  _%n192563%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open192562%_ _%phi192547%_ __tmp202838))
                        _%block-ref192566%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state192548192556%_
                 'gxc#meta-state::t))
              (let* ((_%e192552192571%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192548192556%_
                         '1
                         '#f
                         '#f)))
                     (_%src192574%_ _%e192552192571%_)
                     (_%e192553192576%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192548192556%_
                         '2
                         '#f
                         '#f)))
                     (_%n192579%_ _%e192553192576%_)
                     (_%e192554192581%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192548192556%_
                         '3
                         '#f
                         '#f)))
                     (_%open192584%_ _%e192554192581%_))
                (_%K192551192568%_ _%open192584%_ _%n192579%_ _%src192574%_))
              (_%E192550192559%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state192540%_ _%phi192541%_ _%stx192542%_)
        (let ((_%block192544%_
               (let ((__tmp202840
                      (##structure-ref
                       _%state192540%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp202840 _%phi192541%_))))
          (##structure-set!
           _%block192544%_
           (cons _%stx192542%_
                 (##structure-ref
                  _%block192544%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state192534%_)
        (##structure-set!
         _%state192534%_
         (let ((__tmp202843
                (lambda (_%_192536%_ _%block192537%_ _%r192538%_)
                  (cons _%block192537%_ _%r192538%_)))
               (__tmp202842
                (##structure-ref _%state192534%_ '4 gxc#meta-state::t '#f))
               (__tmp202841
                (##structure-ref _%state192534%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp202843 __tmp202842 __tmp202841))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state192534%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state192487%_)
        (gxc#meta-state-end-phi! _%state192487%_)
        (let ((__tmp202845
               (lambda (_%block192489%_ _%r192490%_)
                 (let* ((_%block192491192500%_ _%block192489%_)
                        (_%E192493192503%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block192491192500%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K192494192511%_
                         (lambda (_%code192506%_
                                  _%n192507%_
                                  _%phi192508%_
                                  _%ctx192509%_)
                           (if (null? _%code192506%_)
                               _%r192490%_
                               (cons (cons _%ctx192509%_
                                           (cons _%phi192508%_
                                                 (cons _%n192507%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code192506%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r192490%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block192491192500%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e192495192514%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192491192500%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx192517%_ _%e192495192514%_)
                              (_%e192496192519%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192491192500%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi192522%_ _%e192496192519%_)
                              (_%e192497192524%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192491192500%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n192527%_ _%e192497192524%_)
                              (_%e192498192529%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192491192500%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code192532%_ _%e192498192529%_))
                         (_%K192494192511%_
                          _%code192532%_
                          _%n192527%_
                          _%phi192522%_
                          _%ctx192517%_))
                       (_%E192493192503%_)))))
              (__tmp202844
               (##structure-ref _%state192487%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp202845 '() __tmp202844))))
    (define gxc#collect-expression-refs
      (lambda (_%stx192483%_)
        (let ((_%ht192485%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht192485%_ _%stx192483%_)
          _%ht192485%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self192426%_ _%stx192427%_)
        (let* ((_%g192429192442%_
                (lambda (_%g192430192439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192430192439%_))))
               (_%g192428192480%_
                (lambda (_%g192430192445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192430192445%_))
                      (let ((_%e192432192447%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192430192445%_))))
                        (let ((_%hd192433192450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192432192447%_)))
                              (_%tl192434192452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192432192447%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192434192452%_))
                              (let ((_%e192435192455%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192434192452%_))))
                                (let ((_%hd192436192458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192435192455%_)))
                                      (_%tl192437192460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192435192455%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192437192460%_))
                                      ((lambda (_%g192431192463%_)
                                         (let* ((_%bind192475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g192431192463%_)))
                                                (_%eid192477%_
                                                 (if _%bind192475%_
                                                     (##structure-ref
                                                      _%bind192475%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g192431192463%_))))
                                                (__tmp202846
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self192426%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp202846
                                            _%eid192477%_
                                            _%eid192477%_)))
                                       _%hd192436192458%_)
                                      (_%g192429192442%_ _%g192430192445%_))))
                              (_%g192429192442%_ _%g192430192445%_))))
                      (_%g192429192442%_ _%g192430192445%_)))))
          (_%g192428192480%_ _%stx192427%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self192353%_ _%stx192354%_)
        (let* ((_%g192356192373%_
                (lambda (_%g192357192370%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192357192370%_))))
               (_%g192355192423%_
                (lambda (_%g192357192376%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192357192376%_))
                      (let ((_%e192360192378%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192357192376%_))))
                        (let ((_%hd192361192381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192360192378%_)))
                              (_%tl192362192383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192360192378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192362192383%_))
                              (let ((_%e192363192386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192362192383%_))))
                                (let ((_%hd192364192389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192363192386%_)))
                                      (_%tl192365192391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192363192386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192365192391%_))
                                      (let ((_%e192366192394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192365192391%_))))
                                        (let ((_%hd192367192397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192366192394%_)))
                                              (_%tl192368192399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192366192394%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192368192399%_))
                                              ((lambda (_%g192358192402%_
                                                        _%g192359192403%_)
                                                 (let* ((_%bind192418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g192359192403%_)))
                                                        (_%eid192420%_
                                                         (if _%bind192418%_
                                                             (##structure-ref
                                                              _%bind192418%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g192359192403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp202847
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self192353%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp202847
                                                      _%eid192420%_
                                                      _%eid192420%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self192353%_
                                                      _%g192358192402%_))))
                                               _%hd192367192397%_
                                               _%hd192364192389%_)
                                              (_%g192356192373%_
                                               _%g192357192376%_))))
                                      (_%g192356192373%_ _%g192357192376%_))))
                              (_%g192356192373%_ _%g192357192376%_))))
                      (_%g192356192373%_ _%g192357192376%_)))))
          (_%g192355192423%_ _%stx192354%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self192310%_ _%stx192311%_)
        (let* ((_%g192313192323%_
                (lambda (_%g192314192320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192314192320%_))))
               (_%g192312192350%_
                (lambda (_%g192314192326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192314192326%_))
                      (let ((_%e192316192328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192314192326%_))))
                        (let ((_%hd192317192331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192316192328%_)))
                              (_%tl192318192333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192316192328%_))))
                          ((lambda (_%g192315192336%_)
                             (let ((__tmp202848
                                    (lambda (_%g192345192347%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self192310%_
                                         _%g192345192347%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp202848 _%g192315192336%_)))
                           _%tl192318192333%_)))
                      (_%g192313192323%_ _%g192314192326%_)))))
          (_%g192312192350%_ _%stx192311%_))))
    (define gxc#count-values-single%
      (lambda (_%self192307%_ _%stx192308%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self192175%_ _%stx192176%_)
        (let* ((_%__stx202590202591%_ _%stx192176%_)
               (_%g192179192208%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202590202591%_)))))
          (let ((_%__kont202592202593%_
                 (lambda (_%g192181192274%_ _%g192182192275%_)
                   (length (let ((__tmp202849
                                  (lambda (_%g192296192299%_ _%g192297192301%_)
                                    (cons _%g192296192299%_
                                          _%g192297192301%_))))
                             (declare (not safe))
                             (foldr__0 __tmp202849 '() _%g192181192274%_)))))
                (_%__kont202596202597%_ (lambda () '#f)))
            (let ((_%__match202635202636%_
                   (lambda (_%e192183192220%_
                            _%hd192184192223%_
                            _%tl192185192225%_
                            _%e192186192228%_
                            _%hd192187192231%_
                            _%tl192188192233%_
                            _%e192189192236%_
                            _%hd192190192239%_
                            _%tl192191192241%_
                            _%e192192192244%_
                            _%hd192193192247%_
                            _%tl192194192249%_
                            _%__splice202594202595%_
                            _%target192195192252%_
                            _%tl192197192254%_)
                     (letrec ((_%loop192198192257%_
                               (lambda (_%hd192196192260%_
                                        _%rand192202192262%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd192196192260%_))
                                     (let ((_%e192199192264%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd192196192260%_))))
                                       (let ((_%lp-tl192201192269%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e192199192264%_)))
                                             (_%lp-hd192200192267%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e192199192264%_))))
                                         (_%loop192198192257%_
                                          _%lp-tl192201192269%_
                                          (cons _%lp-hd192200192267%_
                                                _%rand192202192262%_))))
                                     (let ((_%rand192203192272%_
                                            (reverse _%rand192202192262%_)))
                                       (let ((_%g192181192274%_
                                              _%rand192203192272%_)
                                             (_%g192182192275%_
                                              _%hd192193192247%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g192182192275%_
                                                'values))
                                             (_%__kont202592202593%_
                                              _%g192181192274%_
                                              _%g192182192275%_)
                                             (_%__kont202596202597%_))))))))
                       (_%loop192198192257%_ _%target192195192252%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202590202591%_))
                  (let ((_%e192183192220%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx202590202591%_))))
                    (let ((_%tl192185192225%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192183192220%_)))
                          (_%hd192184192223%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192183192220%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192185192225%_))
                          (let ((_%e192186192228%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192185192225%_))))
                            (let ((_%tl192188192233%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192186192228%_)))
                                  (_%hd192187192231%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192186192228%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192187192231%_))
                                  (let ((_%e192189192236%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192187192231%_))))
                                    (let ((_%tl192191192241%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192189192236%_)))
                                          (_%hd192190192239%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192189192236%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192190192239%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192190192239%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192191192241%_))
                                                  (let ((_%e192192192244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192191192241%_))))
                                                    (let ((_%tl192194192249%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192192192244%_)))
                                                          (_%hd192193192247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192192192244%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192194192249%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl192188192233%_))
                      (let ((_%__splice202594202595%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl192188192233%_
                                '0))))
                        (let ((_%tl192197192254%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202594202595%_ '1)))
                              (_%target192195192252%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202594202595%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192197192254%_))
                              (_%__match202635202636%_
                               _%e192183192220%_
                               _%hd192184192223%_
                               _%tl192185192225%_
                               _%e192186192228%_
                               _%hd192187192231%_
                               _%tl192188192233%_
                               _%e192189192236%_
                               _%hd192190192239%_
                               _%tl192191192241%_
                               _%e192192192244%_
                               _%hd192193192247%_
                               _%tl192194192249%_
                               _%__splice202594202595%_
                               _%target192195192252%_
                               _%tl192197192254%_)
                              (_%__kont202596202597%_))))
                      (_%__kont202596202597%_))
                  (_%__kont202596202597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202596202597%_))
                                              (_%__kont202596202597%_))
                                          (_%__kont202596202597%_))))
                                  (_%__kont202596202597%_))))
                          (_%__kont202596202597%_))))
                  (_%__kont202596202597%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self192080%_ _%stx192081%_)
        (let* ((_%g192083192104%_
                (lambda (_%g192084192101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192084192101%_))))
               (_%g192082192172%_
                (lambda (_%g192084192107%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192084192107%_))
                      (let ((_%e192088192109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192084192107%_))))
                        (let ((_%hd192089192112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192088192109%_)))
                              (_%tl192090192114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192088192109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192090192114%_))
                              (let ((_%e192091192117%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192090192114%_))))
                                (let ((_%hd192092192120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192091192117%_)))
                                      (_%tl192093192122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192091192117%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192093192122%_))
                                      (let ((_%e192094192125%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192093192122%_))))
                                        (let ((_%hd192095192128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192094192125%_)))
                                              (_%tl192096192130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192094192125%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192096192130%_))
                                              (let ((_%e192097192133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192096192130%_))))
                                                (let ((_%hd192098192136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192097192133%_)))
                                                      (_%tl192099192138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192097192133%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192099192138%_))
                                                      ((lambda (_%g192085192141%_
                                                                _%g192086192142%_
                                                                _%g192087192143%_)
                                                         (let ((_%c1192160192162%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self192080%_
                           _%g192086192142%_))))
                   (if _%c1192160192162%_
                       (let* ((_%c1192164%_ _%c1192160192162%_)
                              (_%c2192165192167%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self192080%_
                                  _%g192085192141%_))))
                         (if _%c2192165192167%_
                             (let ((_%c2192169%_ _%c2192165192167%_))
                               (if (fx= _%c1192164%_ _%c2192169%_)
                                   _%c1192164%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd192098192136%_
               _%hd192095192128%_
               _%hd192092192120%_)
              (_%g192083192104%_ _%g192084192107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g192083192104%_
                                               _%g192084192107%_))))
                                      (_%g192083192104%_ _%g192084192107%_))))
                              (_%g192083192104%_ _%g192084192107%_))))
                      (_%g192083192104%_ _%g192084192107%_)))))
          (_%g192082192172%_ _%stx192081%_))))))
