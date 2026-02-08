(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770513297)
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
      (let ((__tmp202755 (list gxc#::void::t))
            (__tmp202754 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp202755
         '()
         __tmp202754
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args201369%_
        (apply make-instance gxc#::collect-bindings::t _%$args201369%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp202756
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
        (__make-atomic-promise __tmp202756)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx201361%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self201364%_
                (let ((__obj202730
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj202730))
               (__tmp202757
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201364%_ _%stx201361%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202757
           gxc#current-compile-method
           _%self201364%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp202759 (list gxc#::void::t))
            (__tmp202758 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp202759
         '(modules)
         __tmp202758
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args201358%_
        (apply make-instance gxc#::lift-modules::t _%$args201358%_)))
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
      (let ((__tmp202760
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
        (__make-atomic-promise __tmp202760)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords201333%_ _%modules201330201334%_ _%stx201335%_)
        (let ((_%modules201338%_
               (if (eq? _%modules201330201334%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules201330201334%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self201340%_
                  (let ((__obj202732
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202732
                       _%modules201338%_
                       '1
                       '#f
                       '#f))
                    __obj202732))
                 (__tmp202761
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201340%_ _%stx201335%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202761
             gxc#current-compile-method
             _%self201340%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords201347%_ . _%args201348%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords201347%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201347%_
                  'modules:
                  absent-value))
               _%args201348%_)))
    (define gxc#apply-lift-modules
      (lambda _%args201331201354%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args201331201354%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp202763 (list)) (__tmp202762 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp202763
         '()
         __tmp202762
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args201326%_
        (apply make-instance gxc#::find-runtime-code::t _%$args201326%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp202764
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
        (__make-atomic-promise __tmp202764)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx201318%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self201321%_
                (let ((__obj202734
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj202734))
               (__tmp202765
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201321%_ _%stx201318%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202765
           gxc#current-compile-method
           _%self201321%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp202767 (list gxc#::false::t))
            (__tmp202766 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp202767
         '()
         __tmp202766
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args201315%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args201315%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp202768
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
        (__make-atomic-promise __tmp202768)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx201307%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self201310%_
                (let ((__obj202736
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj202736))
               (__tmp202769
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201310%_ _%stx201307%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202769
           gxc#current-compile-method
           _%self201310%_))))
    (define gxc#::count-values::t
      (let ((__tmp202771 (list gxc#::false-expression::t))
            (__tmp202770 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp202771
         '()
         __tmp202770
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args201304%_
        (apply make-instance gxc#::count-values::t _%$args201304%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp202772
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
        (__make-atomic-promise __tmp202772)))
    (define gxc#apply-count-values
      (lambda (_%stx201296%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self201299%_
                (let ((__obj202738
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj202738))
               (__tmp202773
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201299%_ _%stx201296%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202773
           gxc#current-compile-method
           _%self201299%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp202774 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp202774
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args201293%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args201293%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp202775
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
        (__make-atomic-promise __tmp202775)))
    (define gxc#::generate-loader::t
      (let ((__tmp202777 (list gxc#::generate-runtime-empty::t))
            (__tmp202776 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp202777
         '()
         __tmp202776
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args201289%_
        (apply make-instance gxc#::generate-loader::t _%$args201289%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp202778
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
        (__make-atomic-promise __tmp202778)))
    (define gxc#apply-generate-loader
      (lambda (_%stx201281%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self201284%_
                (let ((__obj202741
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj202741))
               (__tmp202779
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201284%_ _%stx201281%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202779
           gxc#current-compile-method
           _%self201284%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp202780 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp202780
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args201278%_
        (apply make-instance gxc#::generate-runtime::t _%$args201278%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp202781
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
        (__make-atomic-promise __tmp202781)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx201270%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self201273%_
                (let ((__obj202743
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj202743))
               (__tmp202782
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201273%_ _%stx201270%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202782
           gxc#current-compile-method
           _%self201273%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp202784 (list gxc#::generate-runtime::t))
            (__tmp202783 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp202784
         '()
         __tmp202783
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args201267%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args201267%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp202785
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
        (__make-atomic-promise __tmp202785)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx201259%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self201262%_
                (let ((__obj202745
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj202745))
               (__tmp202786
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201262%_ _%stx201259%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp202786
           gxc#current-compile-method
           _%self201262%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp202787 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp202787
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args201256%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args201256%_)))
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
      (let ((__tmp202788
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
        (__make-atomic-promise __tmp202788)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords201231%_ _%table201228201232%_ _%stx201233%_)
        (let ((_%table201236%_
               (if (eq? _%table201228201232%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table201228201232%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self201238%_
                  (let ((__obj202747
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202747
                       _%table201236%_
                       '1
                       '#f
                       '#f))
                    __obj202747))
                 (__tmp202789
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201238%_ _%stx201233%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202789
             gxc#current-compile-method
             _%self201238%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords201245%_ . _%args201246%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords201245%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201245%_
                  'table:
                  absent-value))
               _%args201246%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args201229201252%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args201229201252%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp202791 (list gxc#::void-expression::t))
            (__tmp202790 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp202791
         '(state)
         __tmp202790
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args201224%_
        (apply make-instance gxc#::generate-meta::t _%$args201224%_)))
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
      (let ((__tmp202792
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
        (__make-atomic-promise __tmp202792)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords201199%_ _%state201196201200%_ _%stx201201%_)
        (let ((_%state201204%_
               (if (eq? _%state201196201200%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state201196201200%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self201206%_
                  (let ((__obj202749
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202749
                       _%state201204%_
                       '1
                       '#f
                       '#f))
                    __obj202749))
                 (__tmp202793
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201206%_ _%stx201201%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202793
             gxc#current-compile-method
             _%self201206%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords201213%_ . _%args201214%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords201213%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201213%_
                  'state:
                  absent-value))
               _%args201214%_)))
    (define gxc#apply-generate-meta
      (lambda _%args201197201220%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args201197201220%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp202795 (list)) (__tmp202794 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp202795
         '(state)
         __tmp202794
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args201192%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args201192%_)))
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
      (let ((__tmp202796
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
        (__make-atomic-promise __tmp202796)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords201167%_ _%state201164201168%_ _%stx201169%_)
        (let ((_%state201172%_
               (if (eq? _%state201164201168%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state201164201168%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self201174%_
                  (let ((__obj202751
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj202751
                       _%state201172%_
                       '1
                       '#f
                       '#f))
                    __obj202751))
                 (__tmp202797
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self201174%_ _%stx201169%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp202797
             gxc#current-compile-method
             _%self201174%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords201181%_ . _%args201182%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords201181%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201181%_
                  'state:
                  absent-value))
               _%args201182%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args201165201188%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args201165201188%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self201093%_ _%stx201094%_)
        (let* ((_%g201096201113%_
                (lambda (_%g201097201110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201097201110%_))))
               (_%g201095201160%_
                (lambda (_%g201097201116%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201097201116%_))
                      (let ((_%e201100201118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201097201116%_))))
                        (let ((_%hd201101201121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201100201118%_)))
                              (_%tl201102201123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201100201118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201102201123%_))
                              (let ((_%e201103201126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201102201123%_))))
                                (let ((_%hd201104201129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201103201126%_)))
                                      (_%tl201105201131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201103201126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201105201131%_))
                                      (let ((_%e201106201134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201105201131%_))))
                                        (let ((_%hd201107201137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201106201134%_)))
                                              (_%tl201108201139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201106201134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201108201139%_))
                                              ((lambda (_%g201098201142%_
                                                        _%g201099201143%_)
                                                 (let ((__tmp202798
                                                        (lambda (_%bind201158%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind201158%_))
                      (gxc#add-module-binding! _%bind201158%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp202798
                                                    _%g201099201143%_)))
                                               _%hd201107201137%_
                                               _%hd201104201129%_)
                                              (_%g201096201113%_
                                               _%g201097201116%_))))
                                      (_%g201096201113%_ _%g201097201116%_))))
                              (_%g201096201113%_ _%g201097201116%_))))
                      (_%g201096201113%_ _%g201097201116%_)))))
          (_%g201095201160%_ _%stx201094%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self201025%_ _%stx201026%_)
        (let* ((_%g201028201045%_
                (lambda (_%g201029201042%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201029201042%_))))
               (_%g201027201090%_
                (lambda (_%g201029201048%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201029201048%_))
                      (let ((_%e201032201050%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201029201048%_))))
                        (let ((_%hd201033201053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201032201050%_)))
                              (_%tl201034201055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201032201050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201034201055%_))
                              (let ((_%e201035201058%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201034201055%_))))
                                (let ((_%hd201036201061%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201035201058%_)))
                                      (_%tl201037201063%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201035201058%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201037201063%_))
                                      (let ((_%e201038201066%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201037201063%_))))
                                        (let ((_%hd201039201069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201038201066%_)))
                                              (_%tl201040201071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201038201066%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201040201071%_))
                                              ((lambda (_%g201030201074%_
                                                        _%g201031201075%_)
                                                 (gxc#add-module-binding!
                                                  _%g201031201075%_
                                                  '#t))
                                               _%hd201039201069%_
                                               _%hd201036201061%_)
                                              (_%g201028201045%_
                                               _%g201029201048%_))))
                                      (_%g201028201045%_ _%g201029201048%_))))
                              (_%g201028201045%_ _%g201029201048%_))))
                      (_%g201028201045%_ _%g201029201048%_)))))
          (_%g201027201090%_ _%stx201026%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self200967%_ _%stx200968%_)
        (let* ((_%g200970200984%_
                (lambda (_%g200971200981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200971200981%_))))
               (_%g200969201022%_
                (lambda (_%g200971200987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200971200987%_))
                      (let ((_%e200974200989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200971200987%_))))
                        (let ((_%hd200975200992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200974200989%_)))
                              (_%tl200976200994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200974200989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200976200994%_))
                              (let ((_%e200977200997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200976200994%_))))
                                (let ((_%hd200978201000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200977200997%_)))
                                      (_%tl200979201002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200977200997%_))))
                                  ((lambda (_%g200972201005%_
                                            _%g200973201006%_)
                                     (let ((_%ctx201019%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g200973201006%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self200967%_
                                           'modules))
                                        (cons _%ctx201019%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self200967%_
                                                        'modules)))))
                                       (let ((__tmp202799
                                              (lambda ()
                                                (let ((__tmp202800
                                                       (##structure-ref
                                                        _%ctx201019%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self200967%_
                                                   __tmp202800)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp202799
                                          gx#current-expander-context
                                          _%ctx201019%_))))
                                   _%tl200979201002%_
                                   _%hd200978201000%_)))
                              (_%g200970200984%_ _%g200971200987%_))))
                      (_%g200970200984%_ _%g200971200987%_)))))
          (_%g200969201022%_ _%stx200968%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls200921200923%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls200921200923%_
              (let ((_%decls200925%_ _%decls200921200923%_))
                (let _%lp200927%_ ((_%rest200929%_ _%decls200925%_))
                  (let* ((_%rest200930200938%_ _%rest200929%_)
                         (_%else200932200946%_ (lambda () '#f))
                         (_%K200934200955%_
                          (lambda (_%decls200949%_ _%decl200950%_)
                            (if (equal? _%decl200950%_ '(not safe))
                                '#t
                                (if (equal? _%decl200950%_ '(safe))
                                    '#f
                                    (_%lp200927%_ _%decls200949%_))))))
                    (if (pair? _%rest200930200938%_)
                        (let ((_%hd200935200958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest200930200938%_)))
                              (_%tl200936200960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest200930200938%_))))
                          (let* ((_%decl200963%_ _%hd200935200958%_)
                                 (_%decls200965%_ _%tl200936200960%_))
                            (_%K200934200955%_
                             _%decls200965%_
                             _%decl200963%_)))
                        (_%else200932200946%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id200915%_ _%syntax?200916%_)
        (let ((_%eid200918%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id200915%_))
                '1
                gx#binding::t
                '#f))
              (_%ht200919%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid200918%_))
              '#!void
              (let ((__tmp202801
                     (let ((__tmp202802
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid200918%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp202802 _%syntax?200916%_))))
                (declare (not safe))
                (hash-put! _%ht200919%_ _%eid200918%_ __tmp202801))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self200912%_ _%stx200913%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self200759%_ _%stx200760%_)
        (letrec ((_%simplify200762%_
                  (lambda (_%body200810%_)
                    (let _%lp200812%_ ((_%rest200814%_ _%body200810%_)
                                       (_%r200815%_ '()))
                      (let* ((_%rest200816200824%_ _%rest200814%_)
                             (_%else200818200832%_
                              (lambda () (reverse _%r200815%_)))
                             (_%K200820200900%_
                              (lambda (_%rest200835%_ _%hd200836%_)
                                (let* ((_%hd200837200853%_ _%hd200836%_)
                                       (_%else200841200861%_
                                        (lambda ()
                                          (_%lp200812%_
                                           _%rest200835%_
                                           (cons _%hd200836%_ _%r200815%_)))))
                                  (let ((_%K200849200890%_
                                         (lambda (_%exprs200888%_)
                                           (_%lp200812%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest200835%_
                                               _%exprs200888%_))
                                            _%r200815%_)))
                                        (_%K200844200874%_
                                         (lambda ()
                                           (if (null? _%rest200835%_)
                                               (_%lp200812%_
                                                _%rest200835%_
                                                (cons _%hd200836%_
                                                      _%r200815%_))
                                               (_%lp200812%_
                                                _%rest200835%_
                                                _%r200815%_))))
                                        (_%K200843200866%_
                                         (lambda ()
                                           (if (null? _%rest200835%_)
                                               (_%lp200812%_
                                                _%rest200835%_
                                                (cons _%hd200836%_
                                                      _%r200815%_))
                                               (_%lp200812%_
                                                _%rest200835%_
                                                _%r200815%_)))))
                                    (let ((_%try-match200840200869%_
                                           (lambda ()
                                             (if (symbol? _%hd200837200853%_)
                                                 (_%K200843200866%_)
                                                 (_%else200841200861%_)))))
                                      (if (pair? _%hd200837200853%_)
                                          (let ((_%tl200851200895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd200837200853%_)))
                                                (_%hd200850200893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd200837200853%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200850200893%_
                                                         'begin))
                                                (let ((_%exprs200898%_
                                                       _%tl200851200895%_))
                                                  (_%K200849200890%_
                                                   _%exprs200898%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd200850200893%_
                                                             'quote))
                                                    (if (pair? _%tl200851200895%_)
                                                        (let ((_%tl200848200882%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl200851200895%_))))
                  (if (null? _%tl200848200882%_)
                      (_%K200844200874%_)
                      (_%try-match200840200869%_)))
                (_%try-match200840200869%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match200840200869%_))))
                                          (_%try-match200840200869%_))))))))
                        (if (pair? _%rest200816200824%_)
                            (let ((_%hd200821200903%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200816200824%_)))
                                  (_%tl200822200905%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200816200824%_))))
                              (let* ((_%hd200908%_ _%hd200821200903%_)
                                     (_%rest200910%_ _%tl200822200905%_))
                                (_%K200820200900%_
                                 _%rest200910%_
                                 _%hd200908%_)))
                            (_%else200818200832%_)))))))
          (let* ((_%g200764200774%_
                  (lambda (_%g200765200771%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200765200771%_))))
                 (_%g200763200807%_
                  (lambda (_%g200765200777%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200765200777%_))
                        (let ((_%e200767200779%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200765200777%_))))
                          (let ((_%hd200768200782%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200767200779%_)))
                                (_%tl200769200784%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200767200779%_))))
                            ((lambda (_%g200766200787%_)
                               (let* ((_%body200802%_
                                       (map (lambda (_%g200797200799%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self200759%_
                                                 _%g200797200799%_)))
                                            _%g200766200787%_))
                                      (_%body200804%_
                                       (_%simplify200762%_ _%body200802%_)))
                                 (if (let ((__tmp202803
                                            (length _%body200804%_)))
                                       (declare (not safe))
                                       (##fx= __tmp202803 '1))
                                     (car _%body200804%_)
                                     (cons 'begin _%body200804%_))))
                             _%tl200769200784%_)))
                        (_%g200764200774%_ _%g200765200777%_)))))
            (_%g200763200807%_ _%stx200760%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self200720%_ _%stx200721%_)
        (let* ((_%g200723200733%_
                (lambda (_%g200724200730%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200724200730%_))))
               (_%g200722200756%_
                (lambda (_%g200724200736%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200724200736%_))
                      (let ((_%e200726200738%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200724200736%_))))
                        (let ((_%hd200727200741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200726200738%_)))
                              (_%tl200728200743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200726200738%_))))
                          ((lambda (_%g200725200746%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g200725200746%_))))
                           _%tl200728200743%_)))
                      (_%g200723200733%_ _%g200724200736%_)))))
          (_%g200722200756%_ _%stx200721%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self200486%_ _%stx200487%_)
        (let* ((_%__stx201393201394%_ _%stx200487%_)
               (_%g200491200543%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201393201394%_)))))
          (let ((_%__kont201395201396%_
                 (lambda (_%g200493200702%_ _%g200494200703%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self200486%_ _%g200493200702%_))))
                (_%__kont201397201398%_
                 (lambda (_%g200504200650%_
                          _%g200505200651%_
                          _%g200506200652%_)
                   (if (let ((__tmp202804
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g200506200652%_))))
                         (declare (not safe))
                         (##memq __tmp202804 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self200486%_
                          _%g200504200650%_)))))
                (_%__kont201401201402%_
                 (lambda (_%g200528200572%_ _%g200529200573%_)
                   (let ((_%decls200588%_
                          (map gx#syntax->datum _%g200529200573%_)))
                     (let ((__tmp202807
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls200588%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self200486%_
                                                   _%g200528200572%_))
                                                '())))))
                           (__tmp202805
                            (let ((__tmp202806
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp202806 _%decls200588%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp202807
                        gxc#current-compile-decls
                        __tmp202805))))))
            (let* ((_%__match201448201449%_
                    (lambda (_%e200507200596%_
                             _%hd200508200599%_
                             _%tl200509200601%_
                             _%e200510200604%_
                             _%hd200511200607%_
                             _%tl200512200609%_
                             _%e200513200612%_
                             _%hd200514200615%_
                             _%tl200515200617%_
                             _%__splice201399201400%_
                             _%target200516200620%_
                             _%tl200518200622%_)
                      (letrec ((_%loop200519200625%_
                                (lambda (_%hd200517200628%_
                                         _%param200523200630%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200517200628%_))
                                      (let ((_%e200520200632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200517200628%_))))
                                        (let ((_%lp-tl200522200637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200520200632%_)))
                                              (_%lp-hd200521200635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200520200632%_))))
                                          (_%loop200519200625%_
                                           _%lp-tl200522200637%_
                                           (cons _%lp-hd200521200635%_
                                                 _%param200523200630%_))))
                                      (let ((_%param200524200640%_
                                             (reverse _%param200523200630%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200512200609%_))
                                            (let ((_%e200525200642%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200512200609%_))))
                                              (let ((_%tl200527200647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200525200642%_)))
                                                    (_%hd200526200645%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200525200642%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200527200647%_))
                                                    (let ((_%g200504200650%_
                                                           _%hd200526200645%_)
                                                          (_%g200505200651%_
                                                           _%param200524200640%_)
                                                          (_%g200506200652%_
                                                           _%hd200514200615%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g200506200652%_))
                       (not (let ((__tmp202808
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g200506200652%_))))
                              (declare (not safe))
                              (##memq __tmp202808 gxc#gambit-annotations))))
                  (_%__kont201397201398%_
                   _%g200504200650%_
                   _%g200505200651%_
                   _%g200506200652%_)
                  (_%__kont201401201402%_
                   _%hd200526200645%_
                   _%hd200511200607%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200491200543%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200491200543%_))))))))
                        (_%loop200519200625%_ _%target200516200620%_ '()))))
                   (_%__match201422201423%_
                    (lambda (_%e200495200678%_
                             _%hd200496200681%_
                             _%tl200497200683%_
                             _%e200498200686%_
                             _%hd200499200689%_
                             _%tl200500200691%_
                             _%e200501200694%_
                             _%hd200502200697%_
                             _%tl200503200699%_)
                      (let ((_%g200493200702%_ _%hd200502200697%_)
                            (_%g200494200703%_ _%hd200499200689%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g200494200703%_))
                            (_%__kont201395201396%_
                             _%g200493200702%_
                             _%g200494200703%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200499200689%_))
                                (let ((_%e200513200612%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200499200689%_))))
                                  (let ((_%tl200515200617%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200513200612%_)))
                                        (_%hd200514200615%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200513200612%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200515200617%_))
                                        (let ((_%__splice201399201400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl200515200617%_
                                                  '0))))
                                          (let ((_%tl200518200622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201399201400%_
                                                    '1)))
                                                (_%target200516200620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201399201400%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200518200622%_))
                                                (_%__match201448201449%_
                                                 _%e200495200678%_
                                                 _%hd200496200681%_
                                                 _%tl200497200683%_
                                                 _%e200498200686%_
                                                 _%hd200499200689%_
                                                 _%tl200500200691%_
                                                 _%e200513200612%_
                                                 _%hd200514200615%_
                                                 _%tl200515200617%_
                                                 _%__splice201399201400%_
                                                 _%target200516200620%_
                                                 _%tl200518200622%_)
                                                (_%__kont201401201402%_
                                                 _%hd200502200697%_
                                                 _%hd200499200689%_))))
                                        (_%__kont201401201402%_
                                         _%hd200502200697%_
                                         _%hd200499200689%_))))
                                (_%__kont201401201402%_
                                 _%hd200502200697%_
                                 _%hd200499200689%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201393201394%_))
                  (let ((_%e200495200678%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201393201394%_))))
                    (let ((_%tl200497200683%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200495200678%_)))
                          (_%hd200496200681%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200495200678%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200497200683%_))
                          (let ((_%e200498200686%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200497200683%_))))
                            (let ((_%tl200500200691%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200498200686%_)))
                                  (_%hd200499200689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200498200686%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200500200691%_))
                                  (let ((_%e200501200694%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200500200691%_))))
                                    (let ((_%tl200503200699%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200501200694%_)))
                                          (_%hd200502200697%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200501200694%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200503200699%_))
                                          (_%__match201422201423%_
                                           _%e200495200678%_
                                           _%hd200496200681%_
                                           _%tl200497200683%_
                                           _%e200498200686%_
                                           _%hd200499200689%_
                                           _%tl200500200691%_
                                           _%e200501200694%_
                                           _%hd200502200697%_
                                           _%tl200503200699%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd200499200689%_))
                                              (let ((_%e200513200612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd200499200689%_))))
                                                (let ((_%tl200515200617%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200513200612%_)))
                                                      (_%hd200514200615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200513200612%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl200515200617%_))
                                                      (let ((_%__splice201399201400%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl200515200617%_
                        '0))))
                (let ((_%tl200518200622%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201399201400%_ '1)))
                      (_%target200516200620%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201399201400%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200518200622%_))
                      (_%__match201448201449%_
                       _%e200495200678%_
                       _%hd200496200681%_
                       _%tl200497200683%_
                       _%e200498200686%_
                       _%hd200499200689%_
                       _%tl200500200691%_
                       _%e200513200612%_
                       _%hd200514200615%_
                       _%tl200515200617%_
                       _%__splice201399201400%_
                       _%target200516200620%_
                       _%tl200518200622%_)
                      (let () (declare (not safe)) (_%g200491200543%_)))))
              (let () (declare (not safe)) (_%g200491200543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200491200543%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200499200689%_))
                                      (let ((_%e200513200612%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200499200689%_))))
                                        (let ((_%tl200515200617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200513200612%_)))
                                              (_%hd200514200615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200513200612%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl200515200617%_))
                                              (let ((_%__splice201399201400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl200515200617%_
                                                        '0))))
                                                (let ((_%tl200518200622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201399201400%_
                                                          '1)))
                                                      (_%target200516200620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201399201400%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200518200622%_))
                                                      (_%__match201448201449%_
                                                       _%e200495200678%_
                                                       _%hd200496200681%_
                                                       _%tl200497200683%_
                                                       _%e200498200686%_
                                                       _%hd200499200689%_
                                                       _%tl200500200691%_
                                                       _%e200513200612%_
                                                       _%hd200514200615%_
                                                       _%tl200515200617%_
                                                       _%__splice201399201400%_
                                                       _%target200516200620%_
                                                       _%tl200518200622%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200491200543%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200491200543%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200491200543%_))))))
                          (let () (declare (not safe)) (_%g200491200543%_)))))
                  (let () (declare (not safe)) (_%g200491200543%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self200445%_ _%stx200446%_)
        (let* ((_%g200448200458%_
                (lambda (_%g200449200455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200449200455%_))))
               (_%g200447200483%_
                (lambda (_%g200449200461%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200449200461%_))
                      (let ((_%e200451200463%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200449200461%_))))
                        (let ((_%hd200452200466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200451200463%_)))
                              (_%tl200453200468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200451200463%_))))
                          ((lambda (_%g200450200471%_)
                             (let ((_%decls200481%_
                                    (map gx#syntax->datum _%g200450200471%_)))
                               (let ((__tmp202809
                                      (let ((__tmp202810
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp202810
                                         _%decls200481%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp202809))
                               (cons 'declare _%decls200481%_)))
                           _%tl200453200468%_)))
                      (_%g200448200458%_ _%g200449200461%_)))))
          (_%g200447200483%_ _%stx200446%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self200192%_ _%stx200193%_)
        (let* ((_%g200195200212%_
                (lambda (_%g200196200209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200196200209%_))))
               (_%g200194200442%_
                (lambda (_%g200196200215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200196200215%_))
                      (let ((_%e200199200217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200196200215%_))))
                        (let ((_%hd200200200220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200199200217%_)))
                              (_%tl200201200222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200199200217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200201200222%_))
                              (let ((_%e200202200225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200201200222%_))))
                                (let ((_%hd200203200228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200202200225%_)))
                                      (_%tl200204200230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200202200225%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200204200230%_))
                                      (let ((_%e200205200233%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200204200230%_))))
                                        (let ((_%hd200206200236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200205200233%_)))
                                              (_%tl200207200238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200205200233%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200207200238%_))
                                              ((lambda (_%g200197200241%_
                                                        _%g200198200242%_)
                                                 (let* ((_%__stx201501201502%_
                                                         _%g200198200242%_)
                                                        (_%g200259200273%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx201501201502%_)))))
                                                   (let ((_%__kont201503201504%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self200192%_
                                                               _%g200197200241%_))))
                                                         (_%__kont201505201506%_
                                                          (lambda (_%g200265200405%_)
                                                            (let ((_%eid200414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g200265200405%_))))
                      (let ((_%lambda-expr200415200417%_
                             (gxc#apply-find-lambda-expression
                              _%g200197200241%_)))
                        (if _%lambda-expr200415200417%_
                            (let* ((_%lambda-expr200419%_
                                    _%lambda-expr200415200417%_)
                                   (__tmp202811
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp202811
                               _%lambda-expr200419%_
                               _%eid200414%_))
                            '#f))
                      (cons 'define
                            (cons _%eid200414%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self200192%_
                                           _%g200197200241%_))
                                        '()))))))
                 (_%__kont201507201508%_
                  (lambda ()
                    (let* ((_%tmp200280%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body200389%_
                            (let _%lp200282%_ ((_%rest200284%_
                                                _%g200198200242%_)
                                               (_%k200285%_ '0)
                                               (_%r200286%_ '()))
                              (let* ((_%__stx201471201472%_ _%rest200284%_)
                                     (_%g200291200308%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx201471201472%_)))))
                                (let ((_%__kont201473201474%_
                                       (lambda (_%g200293200376%_)
                                         (_%lp200282%_
                                          _%g200293200376%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k200285%_ '1))
                                          _%r200286%_)))
                                      (_%__kont201475201476%_
                                       (lambda (_%g200298200349%_
                                                _%g200299200350%_)
                                         (_%lp200282%_
                                          _%g200298200349%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k200285%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g200299200350%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp200280%_
                           _%k200285%_
                           _%g200298200349%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r200286%_))))
                                      (_%__kont201477201478%_
                                       (lambda (_%g200303200320%_)
                                         (let ((__tmp202812
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g200303200320%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp200280%_
                                 _%k200285%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp202812
                                            _%r200286%_))))
                                      (_%__kont201479201480%_
                                       (lambda () (reverse _%r200286%_))))
                                  (let ((_%g200289200336%_
                                         (lambda ()
                                           (let ((_%g200303200320%_
                                                  _%__stx201471201472%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g200303200320%_))
                                                 (_%__kont201477201478%_
                                                  _%g200303200320%_)
                                                 (_%__kont201479201480%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx201471201472%_))
                                        (let ((_%e200294200365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx201471201472%_))))
                                          (let ((_%tl200296200370%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200294200365%_)))
                                                (_%hd200295200368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200294200365%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd200295200368%_))
                                                (let ((_%e200297200373%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200295200368%_))))
                                                  (if (equal? _%e200297200373%_
                                                              '#f)
                                                      (_%__kont201473201474%_
                                                       _%tl200296200370%_)
                                                      (_%__kont201475201476%_
                                                       _%tl200296200370%_
                                                       _%hd200295200368%_)))
                                                (_%__kont201475201476%_
                                                 _%tl200296200370%_
                                                 _%hd200295200368%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200289200336%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp200280%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200192%_
                                                       _%g200197200241%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp200280%_
                                         _%g200198200242%_
                                         _%g200197200241%_)
                                        _%body200389%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx201501201502%_))
                                                         (let ((_%e200261200426%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx201501201502%_))))
                   (let ((_%tl200263200431%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200261200426%_)))
                         (_%hd200262200429%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200261200426%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd200262200429%_))
                         (let ((_%e200264200434%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd200262200429%_))))
                           (if (equal? _%e200264200434%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl200263200431%_))
                                   (_%__kont201503201504%_)
                                   (_%__kont201507201508%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl200263200431%_))
                                   (_%__kont201505201506%_ _%hd200262200429%_)
                                   (_%__kont201507201508%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200263200431%_))
                             (_%__kont201505201506%_ _%hd200262200429%_)
                             (_%__kont201507201508%_)))))
                 (_%__kont201507201508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd200206200236%_
                                               _%hd200203200228%_)
                                              (_%g200195200212%_
                                               _%g200196200215%_))))
                                      (_%g200195200212%_ _%g200196200215%_))))
                              (_%g200195200212%_ _%g200196200215%_))))
                      (_%g200195200212%_ _%g200196200215%_)))))
          (_%g200194200442%_ _%stx200193%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals200167%_ _%hd200168%_ _%expr200169%_)
        (let ((_%$e200171%_ (gxc#apply-count-values _%expr200169%_)))
          (if _%$e200171%_
              ((lambda (_%count200174%_)
                 (let ((_%len200176%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd200168%_)))
                       (_%cmp200177%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd200168%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len200176%_ '0))
                           (_%cmp200177%_ _%count200174%_ _%len200176%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr200169%_
                          _%hd200168%_)))))
               _%$e200171%_)
              (let* ((_%len200183%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd200168%_)))
                     (_%cmp200185%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd200168%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg200187%_
                      (let ((__tmp202814
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd200168%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp202813 (number->string _%len200183%_)))
                        (declare (not safe))
                        (##string-append __tmp202814 __tmp202813 '" values")))
                     (_%count200189%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd200168%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len200183%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count200189%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals200167%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp200185%_
                                (cons _%count200189%_
                                      (cons _%len200183%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp200185%_
                                                        (cons _%count200189%_
                                                              (cons _%len200183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg200187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count200189%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var200162%_)
        (letrec ((_%generate-inline200164%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var200162%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var200162%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline200164%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline200164%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var200155%_ _%i200156%_ _%rest200157%_)
        (letrec ((_%generate-inline200159%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i200156%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest200157%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var200155%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var200155%_
                                                      (cons '0 '())))
                                          (cons _%var200155%_ '()))))
                        (cons '##values-ref
                              (cons _%var200155%_ (cons _%i200156%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline200159%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline200159%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var200149%_ _%i200150%_)
        (if (let () (declare (not safe)) (##fx= _%i200150%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var200149%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var200149%_ '()))
                                  (cons (cons 'list (cons _%var200149%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var200149%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var200149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var200149%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i200150%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var200149%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var200149%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var200149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var200149%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var200149%_ '()))
                                (cons _%i200150%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var200149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i200150%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self200081%_ _%stx200082%_)
        (let* ((_%g200084200101%_
                (lambda (_%g200085200098%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200085200098%_))))
               (_%g200083200146%_
                (lambda (_%g200085200104%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200085200104%_))
                      (let ((_%e200088200106%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200085200104%_))))
                        (let ((_%hd200089200109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200088200106%_)))
                              (_%tl200090200111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200088200106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200090200111%_))
                              (let ((_%e200091200114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200090200111%_))))
                                (let ((_%hd200092200117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200091200114%_)))
                                      (_%tl200093200119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200091200114%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200093200119%_))
                                      (let ((_%e200094200122%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200093200119%_))))
                                        (let ((_%hd200095200125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200094200122%_)))
                                              (_%tl200096200127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200094200122%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200096200127%_))
                                              ((lambda (_%g200086200130%_
                                                        _%g200087200131%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self200081%_
                                                  _%g200087200131%_
                                                  _%g200086200130%_))
                                               _%hd200095200125%_
                                               _%hd200092200117%_)
                                              (_%g200084200101%_
                                               _%g200085200104%_))))
                                      (_%g200084200101%_ _%g200085200104%_))))
                              (_%g200084200101%_ _%g200085200104%_))))
                      (_%g200084200101%_ _%g200085200104%_)))))
          (_%g200083200146%_ _%stx200082%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self200040%_ _%hd200041%_ _%body200042%_)
        (let* ((_%hd200044%_ (gxc#generate-runtime-lambda-head _%hd200041%_))
               (_%body200046%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self200040%_ _%body200042%_)))
               (_%body200078%_
                (let* ((_%body200047200055%_ _%body200046%_)
                       (_%else200049200063%_
                        (lambda () (cons _%body200046%_ '())))
                       (_%K200051200068%_
                        (lambda (_%exprs200066%_) _%exprs200066%_)))
                  (if (pair? _%body200047200055%_)
                      (let ((_%hd200052200071%_
                             (let ()
                               (declare (not safe))
                               (##car _%body200047200055%_)))
                            (_%tl200053200073%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body200047200055%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd200052200071%_ 'begin))
                            (let ((_%exprs200076%_ _%tl200053200073%_))
                              (_%K200051200068%_ _%exprs200076%_))
                            (_%else200049200063%_)))
                      (_%else200049200063%_)))))
          (cons 'lambda (cons _%hd200044%_ _%body200078%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd200038%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd200038%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self198595%_ _%stx198596%_)
        (letrec ((_%dispatch-case?198598%_
                  (lambda (_%hd199276%_ _%body199277%_)
                    (let* ((_%form199279%_
                            (cons _%hd199276%_ (cons _%body199277%_ '())))
                           (_%__stx201533201534%_ _%form199279%_)
                           (_%g199284199441%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx201533201534%_)))))
                      (let ((_%__kont201535201536%_
                             (lambda (_%g199286199958%_
                                      _%g199287199959%_
                                      _%g199288199960%_)
                               '#t))
                            (_%__kont201541201542%_
                             (lambda (_%g199331199750%_
                                      _%g199332199751%_
                                      _%g199333199752%_
                                      _%g199334199753%_
                                      _%g199335199754%_
                                      _%g199336199755%_)
                               '#t))
                            (_%__kont201547201548%_
                             (lambda (_%g199397199549%_
                                      _%g199398199550%_
                                      _%g199399199551%_
                                      _%g199400199552%_)
                               '#t))
                            (_%__kont201549201550%_ (lambda () '#f)))
                        (let* ((_%__match201674201675%_
                                (lambda (_%e199401199453%_
                                         _%hd199402199456%_
                                         _%tl199403199458%_
                                         _%e199404199461%_
                                         _%hd199405199464%_
                                         _%tl199406199466%_
                                         _%e199407199469%_
                                         _%hd199408199472%_
                                         _%tl199409199474%_
                                         _%e199410199477%_
                                         _%hd199411199480%_
                                         _%tl199412199482%_
                                         _%e199413199485%_
                                         _%hd199414199488%_
                                         _%tl199415199490%_
                                         _%e199416199493%_
                                         _%hd199417199496%_
                                         _%tl199418199498%_
                                         _%e199419199501%_
                                         _%hd199420199504%_
                                         _%tl199421199506%_
                                         _%e199422199509%_
                                         _%hd199423199512%_
                                         _%tl199424199514%_
                                         _%e199425199517%_
                                         _%hd199426199520%_
                                         _%tl199427199522%_
                                         _%e199428199525%_
                                         _%hd199429199528%_
                                         _%tl199430199530%_
                                         _%e199431199533%_
                                         _%hd199432199536%_
                                         _%tl199433199538%_
                                         _%e199434199541%_
                                         _%hd199435199544%_
                                         _%tl199436199546%_)
                                  (let ((_%g199397199549%_ _%hd199435199544%_)
                                        (_%g199398199550%_ _%hd199426199520%_)
                                        (_%g199399199551%_ _%hd199417199496%_)
                                        (_%g199400199552%_ _%hd199402199456%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g199400199552%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g199399199551%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g199400199552%_
                                                _%g199397199549%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g199398199550%_
                                                     _%g199400199552%_))))
                                        (_%__kont201547201548%_
                                         _%g199397199549%_
                                         _%g199398199550%_
                                         _%g199399199551%_
                                         _%g199400199552%_)
                                        (_%__kont201549201550%_)))))
                               (_%__match201646201647%_
                                (lambda (_%e199401199453%_
                                         _%hd199402199456%_
                                         _%tl199403199458%_
                                         _%e199404199461%_
                                         _%hd199405199464%_
                                         _%tl199406199466%_
                                         _%e199407199469%_
                                         _%hd199408199472%_
                                         _%tl199409199474%_
                                         _%e199410199477%_
                                         _%hd199411199480%_
                                         _%tl199412199482%_
                                         _%e199413199485%_
                                         _%hd199414199488%_
                                         _%tl199415199490%_
                                         _%e199416199493%_
                                         _%hd199417199496%_
                                         _%tl199418199498%_
                                         _%e199419199501%_
                                         _%hd199420199504%_
                                         _%tl199421199506%_
                                         _%e199422199509%_
                                         _%hd199423199512%_
                                         _%tl199424199514%_
                                         _%e199425199517%_
                                         _%hd199426199520%_
                                         _%tl199427199522%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199421199506%_))
                                      (let ((_%e199428199525%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199421199506%_))))
                                        (let ((_%tl199430199530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199428199525%_)))
                                              (_%hd199429199528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199428199525%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd199429199528%_))
                                              (let ((_%e199431199533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199429199528%_))))
                                                (let ((_%tl199433199538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199431199533%_)))
                                                      (_%hd199432199536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199431199533%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd199432199536%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd199432199536%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199433199538%_))
                      (let ((_%e199434199541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199433199538%_))))
                        (let ((_%tl199436199546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199434199541%_)))
                              (_%hd199435199544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199434199541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199436199546%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199430199530%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199406199466%_))
                                      (_%__match201674201675%_
                                       _%e199401199453%_
                                       _%hd199402199456%_
                                       _%tl199403199458%_
                                       _%e199404199461%_
                                       _%hd199405199464%_
                                       _%tl199406199466%_
                                       _%e199407199469%_
                                       _%hd199408199472%_
                                       _%tl199409199474%_
                                       _%e199410199477%_
                                       _%hd199411199480%_
                                       _%tl199412199482%_
                                       _%e199413199485%_
                                       _%hd199414199488%_
                                       _%tl199415199490%_
                                       _%e199416199493%_
                                       _%hd199417199496%_
                                       _%tl199418199498%_
                                       _%e199419199501%_
                                       _%hd199420199504%_
                                       _%tl199421199506%_
                                       _%e199422199509%_
                                       _%hd199423199512%_
                                       _%tl199424199514%_
                                       _%e199425199517%_
                                       _%hd199426199520%_
                                       _%tl199427199522%_
                                       _%e199428199525%_
                                       _%hd199429199528%_
                                       _%tl199430199530%_
                                       _%e199431199533%_
                                       _%hd199432199536%_
                                       _%tl199433199538%_
                                       _%e199434199541%_
                                       _%hd199435199544%_
                                       _%tl199436199546%_)
                                      (_%__kont201549201550%_))
                                  (_%__kont201549201550%_))
                              (_%__kont201549201550%_))))
                      (_%__kont201549201550%_))
                  (_%__kont201549201550%_))
              (_%__kont201549201550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201549201550%_))))
                                      (_%__kont201549201550%_))))
                               (_%__match201576201577%_
                                (lambda (_%e199337199594%_
                                         _%hd199338199597%_
                                         _%tl199339199599%_
                                         _%__splice201543201544%_
                                         _%target199340199602%_
                                         _%tl199342199604%_)
                                  (letrec ((_%loop199343199607%_
                                            (lambda (_%hd199341199610%_
                                                     _%arg199347199612%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199341199610%_))
                                                  (let ((_%e199344199614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199341199610%_))))
                                                    (let ((_%lp-tl199346199619%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199344199614%_)))
                                                          (_%lp-hd199345199617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199344199614%_))))
                                                      (_%loop199343199607%_
                                                       _%lp-tl199346199619%_
                                                       (cons _%lp-hd199345199617%_
                                                             _%arg199347199612%_))))
                                                  (let ((_%arg199348199622%_
                                                         (reverse _%arg199347199612%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199339199599%_))
                                                        (let ((_%e199349199624%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199339199599%_))))
                  (let ((_%tl199351199629%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199349199624%_)))
                        (_%hd199350199627%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199349199624%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199350199627%_))
                        (let ((_%e199352199632%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199350199627%_))))
                          (let ((_%tl199354199637%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199352199632%_)))
                                (_%hd199353199635%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199352199632%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199353199635%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199353199635%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199354199637%_))
                                        (let ((_%e199355199640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199354199637%_))))
                                          (let ((_%tl199357199645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199355199640%_)))
                                                (_%hd199356199643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199355199640%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199356199643%_))
                                                (let ((_%e199358199648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199356199643%_))))
                                                  (let ((_%tl199360199653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199358199648%_)))
                                                        (_%hd199359199651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199358199648%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199359199651%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199359199651%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199360199653%_))
                        (let ((_%e199361199656%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199360199653%_))))
                          (let ((_%tl199363199661%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199361199656%_)))
                                (_%hd199362199659%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199361199656%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199363199661%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199357199645%_))
                                    (let ((_%e199364199664%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199357199645%_))))
                                      (let ((_%tl199366199669%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199364199664%_)))
                                            (_%hd199365199667%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199364199664%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199365199667%_))
                                            (let ((_%e199367199672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199365199667%_))))
                                              (let ((_%tl199369199677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199367199672%_)))
                                                    (_%hd199368199675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199367199672%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199368199675%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199368199675%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199369199677%_))
                                                            (let ((_%e199370199680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199369199677%_))))
                      (let ((_%tl199372199685%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199370199680%_)))
                            (_%hd199371199683%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199370199680%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199372199685%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl199366199669%_))
                                (if (let ((__tmp202815
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl199366199669%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp202815 '1))
                                    (let ((_%__splice201545201546%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl199366199669%_
                                              '1))))
                                      (let ((_%tl199375199690%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201545201546%_
                                                '1)))
                                            (_%target199373199688%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201545201546%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199375199690%_))
                                            (let ((_%e199382199693%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199375199690%_))))
                                              (let ((_%tl199384199698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199382199693%_)))
                                                    (_%hd199383199696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199382199693%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd199383199696%_))
                                                    (let ((_%e199385199701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199383199696%_))))
                                                      (let ((_%tl199387199706%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199385199701%_)))
                    (_%hd199386199704%_
                     (let () (declare (not safe)) (##car _%e199385199701%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd199386199704%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd199386199704%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199387199706%_))
                            (let ((_%e199388199709%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199387199706%_))))
                              (let ((_%tl199390199714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199388199709%_)))
                                    (_%hd199389199712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199388199709%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199390199714%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199384199698%_))
                                        (letrec ((_%loop199376199717%_
                                                  (lambda (_%hd199374199720%_
                                                           _%xarg199380199722%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199374199720%_))
                                                        (let ((_%e199377199724%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199374199720%_))))
                  (let ((_%lp-tl199379199729%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199377199724%_)))
                        (_%lp-hd199378199727%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199377199724%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd199378199727%_))
                        (let ((_%e199391199732%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd199378199727%_))))
                          (let ((_%tl199393199737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199391199732%_)))
                                (_%hd199392199735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199391199732%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199392199735%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd199392199735%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199393199737%_))
                                        (let ((_%e199394199740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199393199737%_))))
                                          (let ((_%tl199396199745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199394199740%_)))
                                                (_%hd199395199743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199394199740%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199396199745%_))
                                                (_%loop199376199717%_
                                                 _%lp-tl199379199729%_
                                                 (cons _%hd199395199743%_
                                                       _%xarg199380199722%_))
                                                (_%__match201646201647%_
                                                 _%e199337199594%_
                                                 _%hd199338199597%_
                                                 _%tl199339199599%_
                                                 _%e199349199624%_
                                                 _%hd199350199627%_
                                                 _%tl199351199629%_
                                                 _%e199352199632%_
                                                 _%hd199353199635%_
                                                 _%tl199354199637%_
                                                 _%e199355199640%_
                                                 _%hd199356199643%_
                                                 _%tl199357199645%_
                                                 _%e199358199648%_
                                                 _%hd199359199651%_
                                                 _%tl199360199653%_
                                                 _%e199361199656%_
                                                 _%hd199362199659%_
                                                 _%tl199363199661%_
                                                 _%e199364199664%_
                                                 _%hd199365199667%_
                                                 _%tl199366199669%_
                                                 _%e199367199672%_
                                                 _%hd199368199675%_
                                                 _%tl199369199677%_
                                                 _%e199370199680%_
                                                 _%hd199371199683%_
                                                 _%tl199372199685%_))))
                                        (_%__match201646201647%_
                                         _%e199337199594%_
                                         _%hd199338199597%_
                                         _%tl199339199599%_
                                         _%e199349199624%_
                                         _%hd199350199627%_
                                         _%tl199351199629%_
                                         _%e199352199632%_
                                         _%hd199353199635%_
                                         _%tl199354199637%_
                                         _%e199355199640%_
                                         _%hd199356199643%_
                                         _%tl199357199645%_
                                         _%e199358199648%_
                                         _%hd199359199651%_
                                         _%tl199360199653%_
                                         _%e199361199656%_
                                         _%hd199362199659%_
                                         _%tl199363199661%_
                                         _%e199364199664%_
                                         _%hd199365199667%_
                                         _%tl199366199669%_
                                         _%e199367199672%_
                                         _%hd199368199675%_
                                         _%tl199369199677%_
                                         _%e199370199680%_
                                         _%hd199371199683%_
                                         _%tl199372199685%_))
                                    (_%__match201646201647%_
                                     _%e199337199594%_
                                     _%hd199338199597%_
                                     _%tl199339199599%_
                                     _%e199349199624%_
                                     _%hd199350199627%_
                                     _%tl199351199629%_
                                     _%e199352199632%_
                                     _%hd199353199635%_
                                     _%tl199354199637%_
                                     _%e199355199640%_
                                     _%hd199356199643%_
                                     _%tl199357199645%_
                                     _%e199358199648%_
                                     _%hd199359199651%_
                                     _%tl199360199653%_
                                     _%e199361199656%_
                                     _%hd199362199659%_
                                     _%tl199363199661%_
                                     _%e199364199664%_
                                     _%hd199365199667%_
                                     _%tl199366199669%_
                                     _%e199367199672%_
                                     _%hd199368199675%_
                                     _%tl199369199677%_
                                     _%e199370199680%_
                                     _%hd199371199683%_
                                     _%tl199372199685%_))
                                (_%__match201646201647%_
                                 _%e199337199594%_
                                 _%hd199338199597%_
                                 _%tl199339199599%_
                                 _%e199349199624%_
                                 _%hd199350199627%_
                                 _%tl199351199629%_
                                 _%e199352199632%_
                                 _%hd199353199635%_
                                 _%tl199354199637%_
                                 _%e199355199640%_
                                 _%hd199356199643%_
                                 _%tl199357199645%_
                                 _%e199358199648%_
                                 _%hd199359199651%_
                                 _%tl199360199653%_
                                 _%e199361199656%_
                                 _%hd199362199659%_
                                 _%tl199363199661%_
                                 _%e199364199664%_
                                 _%hd199365199667%_
                                 _%tl199366199669%_
                                 _%e199367199672%_
                                 _%hd199368199675%_
                                 _%tl199369199677%_
                                 _%e199370199680%_
                                 _%hd199371199683%_
                                 _%tl199372199685%_))))
                        (_%__match201646201647%_
                         _%e199337199594%_
                         _%hd199338199597%_
                         _%tl199339199599%_
                         _%e199349199624%_
                         _%hd199350199627%_
                         _%tl199351199629%_
                         _%e199352199632%_
                         _%hd199353199635%_
                         _%tl199354199637%_
                         _%e199355199640%_
                         _%hd199356199643%_
                         _%tl199357199645%_
                         _%e199358199648%_
                         _%hd199359199651%_
                         _%tl199360199653%_
                         _%e199361199656%_
                         _%hd199362199659%_
                         _%tl199363199661%_
                         _%e199364199664%_
                         _%hd199365199667%_
                         _%tl199366199669%_
                         _%e199367199672%_
                         _%hd199368199675%_
                         _%tl199369199677%_
                         _%e199370199680%_
                         _%hd199371199683%_
                         _%tl199372199685%_))))
                (let ((_%xarg199381199748%_ (reverse _%xarg199380199722%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199351199629%_))
                      (let ((_%g199331199750%_ _%hd199389199712%_)
                            (_%g199332199751%_ _%xarg199381199748%_)
                            (_%g199333199752%_ _%hd199371199683%_)
                            (_%g199334199753%_ _%hd199362199659%_)
                            (_%g199335199754%_ _%tl199342199604%_)
                            (_%g199336199755%_ _%arg199348199622%_))
                        (if (and (let ((__tmp202816
                                        (let ((__tmp202817
                                               (lambda (_%g199798199801%_
                                                        _%g199799199803%_)
                                                 (cons _%g199798199801%_
                                                       _%g199799199803%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202817
                                           '()
                                           _%g199336199755%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp202816))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g199335199754%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g199334199753%_
                                    'apply))
                                 (let ((__tmp202820
                                        (length (let ((__tmp202821
                                                       (lambda (_%g199805199808%_
                                                                _%g199806199810%_)
                                                         (cons _%g199805199808%_
                                                               _%g199806199810%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp202821
                                                   '()
                                                   _%g199336199755%_))))
                                       (__tmp202818
                                        (length (let ((__tmp202819
                                                       (lambda (_%g199812199815%_
                                                                _%g199813199817%_)
                                                         (cons _%g199812199815%_
                                                               _%g199813199817%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp202819
                                                   '()
                                                   _%g199332199751%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp202820 __tmp202818))
                                 (let ((__tmp202824
                                        (let ((__tmp202825
                                               (lambda (_%g199819199822%_
                                                        _%g199820199824%_)
                                                 (cons _%g199819199822%_
                                                       _%g199820199824%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202825
                                           '()
                                           _%g199336199755%_)))
                                       (__tmp202822
                                        (let ((__tmp202823
                                               (lambda (_%g199826199829%_
                                                        _%g199827199831%_)
                                                 (cons _%g199826199829%_
                                                       _%g199827199831%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202823
                                           '()
                                           _%g199332199751%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp202824
                                    __tmp202822))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g199335199754%_
                                    _%g199331199750%_))
                                 (not (let ((__tmp202829
                                             (lambda (_%g199833199835%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g199833199835%_
                                                  _%g199333199752%_))))
                                            (__tmp202826
                                             (let ((__tmp202828
                                                    (lambda (_%g199837199840%_
                                                             _%g199838199842%_)
                                                      (cons _%g199837199840%_
                                                            _%g199838199842%_)))
                                                   (__tmp202827
                                                    (cons _%g199335199754%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202828
                                                __tmp202827
                                                _%g199336199755%_))))
                                        (declare (not safe))
                                        (__find __tmp202829 __tmp202826))))
                            (_%__kont201541201542%_
                             _%g199331199750%_
                             _%g199332199751%_
                             _%g199333199752%_
                             _%g199334199753%_
                             _%g199335199754%_
                             _%g199336199755%_)
                            (_%__match201646201647%_
                             _%e199337199594%_
                             _%hd199338199597%_
                             _%tl199339199599%_
                             _%e199349199624%_
                             _%hd199350199627%_
                             _%tl199351199629%_
                             _%e199352199632%_
                             _%hd199353199635%_
                             _%tl199354199637%_
                             _%e199355199640%_
                             _%hd199356199643%_
                             _%tl199357199645%_
                             _%e199358199648%_
                             _%hd199359199651%_
                             _%tl199360199653%_
                             _%e199361199656%_
                             _%hd199362199659%_
                             _%tl199363199661%_
                             _%e199364199664%_
                             _%hd199365199667%_
                             _%tl199366199669%_
                             _%e199367199672%_
                             _%hd199368199675%_
                             _%tl199369199677%_
                             _%e199370199680%_
                             _%hd199371199683%_
                             _%tl199372199685%_)))
                      (_%__match201646201647%_
                       _%e199337199594%_
                       _%hd199338199597%_
                       _%tl199339199599%_
                       _%e199349199624%_
                       _%hd199350199627%_
                       _%tl199351199629%_
                       _%e199352199632%_
                       _%hd199353199635%_
                       _%tl199354199637%_
                       _%e199355199640%_
                       _%hd199356199643%_
                       _%tl199357199645%_
                       _%e199358199648%_
                       _%hd199359199651%_
                       _%tl199360199653%_
                       _%e199361199656%_
                       _%hd199362199659%_
                       _%tl199363199661%_
                       _%e199364199664%_
                       _%hd199365199667%_
                       _%tl199366199669%_
                       _%e199367199672%_
                       _%hd199368199675%_
                       _%tl199369199677%_
                       _%e199370199680%_
                       _%hd199371199683%_
                       _%tl199372199685%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199376199717%_
                                           _%target199373199688%_
                                           '()))
                                        (_%__match201646201647%_
                                         _%e199337199594%_
                                         _%hd199338199597%_
                                         _%tl199339199599%_
                                         _%e199349199624%_
                                         _%hd199350199627%_
                                         _%tl199351199629%_
                                         _%e199352199632%_
                                         _%hd199353199635%_
                                         _%tl199354199637%_
                                         _%e199355199640%_
                                         _%hd199356199643%_
                                         _%tl199357199645%_
                                         _%e199358199648%_
                                         _%hd199359199651%_
                                         _%tl199360199653%_
                                         _%e199361199656%_
                                         _%hd199362199659%_
                                         _%tl199363199661%_
                                         _%e199364199664%_
                                         _%hd199365199667%_
                                         _%tl199366199669%_
                                         _%e199367199672%_
                                         _%hd199368199675%_
                                         _%tl199369199677%_
                                         _%e199370199680%_
                                         _%hd199371199683%_
                                         _%tl199372199685%_))
                                    (_%__match201646201647%_
                                     _%e199337199594%_
                                     _%hd199338199597%_
                                     _%tl199339199599%_
                                     _%e199349199624%_
                                     _%hd199350199627%_
                                     _%tl199351199629%_
                                     _%e199352199632%_
                                     _%hd199353199635%_
                                     _%tl199354199637%_
                                     _%e199355199640%_
                                     _%hd199356199643%_
                                     _%tl199357199645%_
                                     _%e199358199648%_
                                     _%hd199359199651%_
                                     _%tl199360199653%_
                                     _%e199361199656%_
                                     _%hd199362199659%_
                                     _%tl199363199661%_
                                     _%e199364199664%_
                                     _%hd199365199667%_
                                     _%tl199366199669%_
                                     _%e199367199672%_
                                     _%hd199368199675%_
                                     _%tl199369199677%_
                                     _%e199370199680%_
                                     _%hd199371199683%_
                                     _%tl199372199685%_))))
                            (_%__match201646201647%_
                             _%e199337199594%_
                             _%hd199338199597%_
                             _%tl199339199599%_
                             _%e199349199624%_
                             _%hd199350199627%_
                             _%tl199351199629%_
                             _%e199352199632%_
                             _%hd199353199635%_
                             _%tl199354199637%_
                             _%e199355199640%_
                             _%hd199356199643%_
                             _%tl199357199645%_
                             _%e199358199648%_
                             _%hd199359199651%_
                             _%tl199360199653%_
                             _%e199361199656%_
                             _%hd199362199659%_
                             _%tl199363199661%_
                             _%e199364199664%_
                             _%hd199365199667%_
                             _%tl199366199669%_
                             _%e199367199672%_
                             _%hd199368199675%_
                             _%tl199369199677%_
                             _%e199370199680%_
                             _%hd199371199683%_
                             _%tl199372199685%_))
                        (_%__match201646201647%_
                         _%e199337199594%_
                         _%hd199338199597%_
                         _%tl199339199599%_
                         _%e199349199624%_
                         _%hd199350199627%_
                         _%tl199351199629%_
                         _%e199352199632%_
                         _%hd199353199635%_
                         _%tl199354199637%_
                         _%e199355199640%_
                         _%hd199356199643%_
                         _%tl199357199645%_
                         _%e199358199648%_
                         _%hd199359199651%_
                         _%tl199360199653%_
                         _%e199361199656%_
                         _%hd199362199659%_
                         _%tl199363199661%_
                         _%e199364199664%_
                         _%hd199365199667%_
                         _%tl199366199669%_
                         _%e199367199672%_
                         _%hd199368199675%_
                         _%tl199369199677%_
                         _%e199370199680%_
                         _%hd199371199683%_
                         _%tl199372199685%_))
                    (_%__match201646201647%_
                     _%e199337199594%_
                     _%hd199338199597%_
                     _%tl199339199599%_
                     _%e199349199624%_
                     _%hd199350199627%_
                     _%tl199351199629%_
                     _%e199352199632%_
                     _%hd199353199635%_
                     _%tl199354199637%_
                     _%e199355199640%_
                     _%hd199356199643%_
                     _%tl199357199645%_
                     _%e199358199648%_
                     _%hd199359199651%_
                     _%tl199360199653%_
                     _%e199361199656%_
                     _%hd199362199659%_
                     _%tl199363199661%_
                     _%e199364199664%_
                     _%hd199365199667%_
                     _%tl199366199669%_
                     _%e199367199672%_
                     _%hd199368199675%_
                     _%tl199369199677%_
                     _%e199370199680%_
                     _%hd199371199683%_
                     _%tl199372199685%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201646201647%_
                                                     _%e199337199594%_
                                                     _%hd199338199597%_
                                                     _%tl199339199599%_
                                                     _%e199349199624%_
                                                     _%hd199350199627%_
                                                     _%tl199351199629%_
                                                     _%e199352199632%_
                                                     _%hd199353199635%_
                                                     _%tl199354199637%_
                                                     _%e199355199640%_
                                                     _%hd199356199643%_
                                                     _%tl199357199645%_
                                                     _%e199358199648%_
                                                     _%hd199359199651%_
                                                     _%tl199360199653%_
                                                     _%e199361199656%_
                                                     _%hd199362199659%_
                                                     _%tl199363199661%_
                                                     _%e199364199664%_
                                                     _%hd199365199667%_
                                                     _%tl199366199669%_
                                                     _%e199367199672%_
                                                     _%hd199368199675%_
                                                     _%tl199369199677%_
                                                     _%e199370199680%_
                                                     _%hd199371199683%_
                                                     _%tl199372199685%_))))
                                            (_%__match201646201647%_
                                             _%e199337199594%_
                                             _%hd199338199597%_
                                             _%tl199339199599%_
                                             _%e199349199624%_
                                             _%hd199350199627%_
                                             _%tl199351199629%_
                                             _%e199352199632%_
                                             _%hd199353199635%_
                                             _%tl199354199637%_
                                             _%e199355199640%_
                                             _%hd199356199643%_
                                             _%tl199357199645%_
                                             _%e199358199648%_
                                             _%hd199359199651%_
                                             _%tl199360199653%_
                                             _%e199361199656%_
                                             _%hd199362199659%_
                                             _%tl199363199661%_
                                             _%e199364199664%_
                                             _%hd199365199667%_
                                             _%tl199366199669%_
                                             _%e199367199672%_
                                             _%hd199368199675%_
                                             _%tl199369199677%_
                                             _%e199370199680%_
                                             _%hd199371199683%_
                                             _%tl199372199685%_))))
                                    (_%__match201646201647%_
                                     _%e199337199594%_
                                     _%hd199338199597%_
                                     _%tl199339199599%_
                                     _%e199349199624%_
                                     _%hd199350199627%_
                                     _%tl199351199629%_
                                     _%e199352199632%_
                                     _%hd199353199635%_
                                     _%tl199354199637%_
                                     _%e199355199640%_
                                     _%hd199356199643%_
                                     _%tl199357199645%_
                                     _%e199358199648%_
                                     _%hd199359199651%_
                                     _%tl199360199653%_
                                     _%e199361199656%_
                                     _%hd199362199659%_
                                     _%tl199363199661%_
                                     _%e199364199664%_
                                     _%hd199365199667%_
                                     _%tl199366199669%_
                                     _%e199367199672%_
                                     _%hd199368199675%_
                                     _%tl199369199677%_
                                     _%e199370199680%_
                                     _%hd199371199683%_
                                     _%tl199372199685%_))
                                (_%__match201646201647%_
                                 _%e199337199594%_
                                 _%hd199338199597%_
                                 _%tl199339199599%_
                                 _%e199349199624%_
                                 _%hd199350199627%_
                                 _%tl199351199629%_
                                 _%e199352199632%_
                                 _%hd199353199635%_
                                 _%tl199354199637%_
                                 _%e199355199640%_
                                 _%hd199356199643%_
                                 _%tl199357199645%_
                                 _%e199358199648%_
                                 _%hd199359199651%_
                                 _%tl199360199653%_
                                 _%e199361199656%_
                                 _%hd199362199659%_
                                 _%tl199363199661%_
                                 _%e199364199664%_
                                 _%hd199365199667%_
                                 _%tl199366199669%_
                                 _%e199367199672%_
                                 _%hd199368199675%_
                                 _%tl199369199677%_
                                 _%e199370199680%_
                                 _%hd199371199683%_
                                 _%tl199372199685%_))
                            (_%__kont201549201550%_))))
                    (_%__kont201549201550%_))
                (_%__kont201549201550%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201549201550%_))))
                                            (_%__kont201549201550%_))))
                                    (_%__kont201549201550%_))
                                (_%__kont201549201550%_))))
                        (_%__kont201549201550%_))
                    (_%__kont201549201550%_))
                (_%__kont201549201550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201549201550%_))))
                                        (_%__kont201549201550%_))
                                    (_%__kont201549201550%_))
                                (_%__kont201549201550%_))))
                        (_%__kont201549201550%_))))
                (_%__kont201549201550%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199343199607%_
                                     _%target199340199602%_
                                     '()))))
                               (_%__match201564201565%_
                                (lambda (_%e199289199850%_
                                         _%hd199290199853%_
                                         _%tl199291199855%_
                                         _%__splice201537201538%_
                                         _%target199292199858%_
                                         _%tl199294199860%_)
                                  (letrec ((_%loop199295199863%_
                                            (lambda (_%hd199293199866%_
                                                     _%arg199299199868%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199293199866%_))
                                                  (let ((_%e199296199870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199293199866%_))))
                                                    (let ((_%lp-tl199298199875%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199296199870%_)))
                                                          (_%lp-hd199297199873%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199296199870%_))))
                                                      (_%loop199295199863%_
                                                       _%lp-tl199298199875%_
                                                       (cons _%lp-hd199297199873%_
                                                             _%arg199299199868%_))))
                                                  (let ((_%arg199300199878%_
                                                         (reverse _%arg199299199868%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199291199855%_))
                                                        (let ((_%e199301199880%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199291199855%_))))
                  (let ((_%tl199303199885%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199301199880%_)))
                        (_%hd199302199883%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199301199880%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199302199883%_))
                        (let ((_%e199304199888%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199302199883%_))))
                          (let ((_%tl199306199893%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199304199888%_)))
                                (_%hd199305199891%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199304199888%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199305199891%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199305199891%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199306199893%_))
                                        (let ((_%e199307199896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199306199893%_))))
                                          (let ((_%tl199309199901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199307199896%_)))
                                                (_%hd199308199899%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199307199896%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199308199899%_))
                                                (let ((_%e199310199904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199308199899%_))))
                                                  (let ((_%tl199312199909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199310199904%_)))
                                                        (_%hd199311199907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199310199904%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199311199907%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199311199907%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199312199909%_))
                        (let ((_%e199313199912%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199312199909%_))))
                          (let ((_%tl199315199917%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199313199912%_)))
                                (_%hd199314199915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199313199912%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199315199917%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl199309199901%_))
                                    (let ((_%__splice201539201540%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl199309199901%_
                                              '0))))
                                      (let ((_%tl199318199922%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201539201540%_
                                                '1)))
                                            (_%target199316199920%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201539201540%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199318199922%_))
                                            (letrec ((_%loop199319199925%_
                                                      (lambda (_%hd199317199928%_
                                                               _%xarg199323199930%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd199317199928%_))
                                                            (let ((_%e199320199932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199317199928%_))))
                      (let ((_%lp-tl199322199937%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199320199932%_)))
                            (_%lp-hd199321199935%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199320199932%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd199321199935%_))
                            (let ((_%e199325199940%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd199321199935%_))))
                              (let ((_%tl199327199945%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199325199940%_)))
                                    (_%hd199326199943%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199325199940%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199326199943%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd199326199943%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199327199945%_))
                                            (let ((_%e199328199948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199327199945%_))))
                                              (let ((_%tl199330199953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199328199948%_)))
                                                    (_%hd199329199951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199328199948%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199330199953%_))
                                                    (_%loop199319199925%_
                                                     _%lp-tl199322199937%_
                                                     (cons _%hd199329199951%_
                                                           _%xarg199323199930%_))
                                                    (_%__match201576201577%_
                                                     _%e199289199850%_
                                                     _%hd199290199853%_
                                                     _%tl199291199855%_
                                                     _%__splice201537201538%_
                                                     _%target199292199858%_
                                                     _%tl199294199860%_))))
                                            (_%__match201576201577%_
                                             _%e199289199850%_
                                             _%hd199290199853%_
                                             _%tl199291199855%_
                                             _%__splice201537201538%_
                                             _%target199292199858%_
                                             _%tl199294199860%_))
                                        (_%__match201576201577%_
                                         _%e199289199850%_
                                         _%hd199290199853%_
                                         _%tl199291199855%_
                                         _%__splice201537201538%_
                                         _%target199292199858%_
                                         _%tl199294199860%_))
                                    (_%__match201576201577%_
                                     _%e199289199850%_
                                     _%hd199290199853%_
                                     _%tl199291199855%_
                                     _%__splice201537201538%_
                                     _%target199292199858%_
                                     _%tl199294199860%_))))
                            (_%__match201576201577%_
                             _%e199289199850%_
                             _%hd199290199853%_
                             _%tl199291199855%_
                             _%__splice201537201538%_
                             _%target199292199858%_
                             _%tl199294199860%_))))
                    (let ((_%xarg199324199956%_
                           (reverse _%xarg199323199930%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199303199885%_))
                          (let ((_%g199286199958%_ _%xarg199324199956%_)
                                (_%g199287199959%_ _%hd199314199915%_)
                                (_%g199288199960%_ _%arg199300199878%_))
                            (if (and (let ((__tmp202830
                                            (let ((__tmp202831
                                                   (lambda (_%g199988199991%_
                                                            _%g199989199993%_)
                                                     (cons _%g199988199991%_
                                                           _%g199989199993%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202831
                                               '()
                                               _%g199288199960%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp202830))
                                     (let ((__tmp202834
                                            (length (let ((__tmp202835
                                                           (lambda (_%g199995199998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g199996200000%_)
                     (cons _%g199995199998%_ _%g199996200000%_))))
              (declare (not safe))
              (foldr__0 __tmp202835 '() _%g199288199960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp202832
                                            (length (let ((__tmp202833
                                                           (lambda (_%g200002200005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g200003200007%_)
                     (cons _%g200002200005%_ _%g200003200007%_))))
              (declare (not safe))
              (foldr__0 __tmp202833 '() _%g199286199958%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp202834 __tmp202832))
                                     (let ((__tmp202838
                                            (let ((__tmp202839
                                                   (lambda (_%g200009200012%_
                                                            _%g200010200014%_)
                                                     (cons _%g200009200012%_
                                                           _%g200010200014%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202839
                                               '()
                                               _%g199288199960%_)))
                                           (__tmp202836
                                            (let ((__tmp202837
                                                   (lambda (_%g200016200019%_
                                                            _%g200017200021%_)
                                                     (cons _%g200016200019%_
                                                           _%g200017200021%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202837
                                               '()
                                               _%g199286199958%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp202838
                                        __tmp202836))
                                     (not (let ((__tmp202842
                                                 (lambda (_%g200023200025%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g200023200025%_
                                                      _%g199287199959%_))))
                                                (__tmp202840
                                                 (let ((__tmp202841
                                                        (lambda (_%g200027200030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g200028200032%_)
                  (cons _%g200027200030%_ _%g200028200032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp202841
                                                    '()
                                                    _%g199288199960%_))))
                                            (declare (not safe))
                                            (__find __tmp202842 __tmp202840))))
                                (_%__kont201535201536%_
                                 _%g199286199958%_
                                 _%g199287199959%_
                                 _%g199288199960%_)
                                (_%__match201576201577%_
                                 _%e199289199850%_
                                 _%hd199290199853%_
                                 _%tl199291199855%_
                                 _%__splice201537201538%_
                                 _%target199292199858%_
                                 _%tl199294199860%_)))
                          (_%__match201576201577%_
                           _%e199289199850%_
                           _%hd199290199853%_
                           _%tl199291199855%_
                           _%__splice201537201538%_
                           _%target199292199858%_
                           _%tl199294199860%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop199319199925%_
                                               _%target199316199920%_
                                               '()))
                                            (_%__match201576201577%_
                                             _%e199289199850%_
                                             _%hd199290199853%_
                                             _%tl199291199855%_
                                             _%__splice201537201538%_
                                             _%target199292199858%_
                                             _%tl199294199860%_))))
                                    (_%__match201576201577%_
                                     _%e199289199850%_
                                     _%hd199290199853%_
                                     _%tl199291199855%_
                                     _%__splice201537201538%_
                                     _%target199292199858%_
                                     _%tl199294199860%_))
                                (_%__match201576201577%_
                                 _%e199289199850%_
                                 _%hd199290199853%_
                                 _%tl199291199855%_
                                 _%__splice201537201538%_
                                 _%target199292199858%_
                                 _%tl199294199860%_))))
                        (_%__match201576201577%_
                         _%e199289199850%_
                         _%hd199290199853%_
                         _%tl199291199855%_
                         _%__splice201537201538%_
                         _%target199292199858%_
                         _%tl199294199860%_))
                    (_%__match201576201577%_
                     _%e199289199850%_
                     _%hd199290199853%_
                     _%tl199291199855%_
                     _%__splice201537201538%_
                     _%target199292199858%_
                     _%tl199294199860%_))
                (_%__match201576201577%_
                 _%e199289199850%_
                 _%hd199290199853%_
                 _%tl199291199855%_
                 _%__splice201537201538%_
                 _%target199292199858%_
                 _%tl199294199860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match201576201577%_
                                                 _%e199289199850%_
                                                 _%hd199290199853%_
                                                 _%tl199291199855%_
                                                 _%__splice201537201538%_
                                                 _%target199292199858%_
                                                 _%tl199294199860%_))))
                                        (_%__match201576201577%_
                                         _%e199289199850%_
                                         _%hd199290199853%_
                                         _%tl199291199855%_
                                         _%__splice201537201538%_
                                         _%target199292199858%_
                                         _%tl199294199860%_))
                                    (_%__match201576201577%_
                                     _%e199289199850%_
                                     _%hd199290199853%_
                                     _%tl199291199855%_
                                     _%__splice201537201538%_
                                     _%target199292199858%_
                                     _%tl199294199860%_))
                                (_%__match201576201577%_
                                 _%e199289199850%_
                                 _%hd199290199853%_
                                 _%tl199291199855%_
                                 _%__splice201537201538%_
                                 _%target199292199858%_
                                 _%tl199294199860%_))))
                        (_%__match201576201577%_
                         _%e199289199850%_
                         _%hd199290199853%_
                         _%tl199291199855%_
                         _%__splice201537201538%_
                         _%target199292199858%_
                         _%tl199294199860%_))))
                (_%__match201576201577%_
                 _%e199289199850%_
                 _%hd199290199853%_
                 _%tl199291199855%_
                 _%__splice201537201538%_
                 _%target199292199858%_
                 _%tl199294199860%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199295199863%_
                                     _%target199292199858%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx201533201534%_))
                              (let ((_%e199289199850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx201533201534%_))))
                                (let ((_%tl199291199855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199289199850%_)))
                                      (_%hd199290199853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199289199850%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd199290199853%_))
                                      (let ((_%__splice201537201538%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd199290199853%_
                                                '0))))
                                        (let ((_%tl199294199860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201537201538%_
                                                  '1)))
                                              (_%target199292199858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201537201538%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199294199860%_))
                                              (_%__match201564201565%_
                                               _%e199289199850%_
                                               _%hd199290199853%_
                                               _%tl199291199855%_
                                               _%__splice201537201538%_
                                               _%target199292199858%_
                                               _%tl199294199860%_)
                                              (_%__match201576201577%_
                                               _%e199289199850%_
                                               _%hd199290199853%_
                                               _%tl199291199855%_
                                               _%__splice201537201538%_
                                               _%target199292199858%_
                                               _%tl199294199860%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199291199855%_))
                                          (let ((_%e199404199461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199291199855%_))))
                                            (let ((_%tl199406199466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199404199461%_)))
                                                  (_%hd199405199464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199404199461%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199405199464%_))
                                                  (let ((_%e199407199469%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199405199464%_))))
                                                    (let ((_%tl199409199474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199407199469%_)))
                                                          (_%hd199408199472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199407199469%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd199408199472%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd199408199472%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199409199474%_))
                          (let ((_%e199410199477%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199409199474%_))))
                            (let ((_%tl199412199482%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199410199477%_)))
                                  (_%hd199411199480%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199410199477%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199411199480%_))
                                  (let ((_%e199413199485%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199411199480%_))))
                                    (let ((_%tl199415199490%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199413199485%_)))
                                          (_%hd199414199488%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199413199485%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199414199488%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199414199488%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199415199490%_))
                                                  (let ((_%e199416199493%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199415199490%_))))
                                                    (let ((_%tl199418199498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199416199493%_)))
                                                          (_%hd199417199496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199416199493%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199418199498%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199412199482%_))
                      (let ((_%e199419199501%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199412199482%_))))
                        (let ((_%tl199421199506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199419199501%_)))
                              (_%hd199420199504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199419199501%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199420199504%_))
                              (let ((_%e199422199509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199420199504%_))))
                                (let ((_%tl199424199514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199422199509%_)))
                                      (_%hd199423199512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199422199509%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199423199512%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199423199512%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199424199514%_))
                                              (let ((_%e199425199517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199424199514%_))))
                                                (let ((_%tl199427199522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199425199517%_)))
                                                      (_%hd199426199520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199425199517%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199427199522%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199421199506%_))
                                                          (let ((_%e199428199525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199421199506%_))))
                    (let ((_%tl199430199530%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199428199525%_)))
                          (_%hd199429199528%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199428199525%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199429199528%_))
                          (let ((_%e199431199533%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199429199528%_))))
                            (let ((_%tl199433199538%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199431199533%_)))
                                  (_%hd199432199536%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199431199533%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd199432199536%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd199432199536%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199433199538%_))
                                          (let ((_%e199434199541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199433199538%_))))
                                            (let ((_%tl199436199546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199434199541%_)))
                                                  (_%hd199435199544%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199434199541%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199436199546%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199430199530%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199406199466%_))
                                                          (_%__match201674201675%_
                                                           _%e199289199850%_
                                                           _%hd199290199853%_
                                                           _%tl199291199855%_
                                                           _%e199404199461%_
                                                           _%hd199405199464%_
                                                           _%tl199406199466%_
                                                           _%e199407199469%_
                                                           _%hd199408199472%_
                                                           _%tl199409199474%_
                                                           _%e199410199477%_
                                                           _%hd199411199480%_
                                                           _%tl199412199482%_
                                                           _%e199413199485%_
                                                           _%hd199414199488%_
                                                           _%tl199415199490%_
                                                           _%e199416199493%_
                                                           _%hd199417199496%_
                                                           _%tl199418199498%_
                                                           _%e199419199501%_
                                                           _%hd199420199504%_
                                                           _%tl199421199506%_
                                                           _%e199422199509%_
                                                           _%hd199423199512%_
                                                           _%tl199424199514%_
                                                           _%e199425199517%_
                                                           _%hd199426199520%_
                                                           _%tl199427199522%_
                                                           _%e199428199525%_
                                                           _%hd199429199528%_
                                                           _%tl199430199530%_
                                                           _%e199431199533%_
                                                           _%hd199432199536%_
                                                           _%tl199433199538%_
                                                           _%e199434199541%_
                                                           _%hd199435199544%_
                                                           _%tl199436199546%_)
                                                          (_%__kont201549201550%_))
                                                      (_%__kont201549201550%_))
                                                  (_%__kont201549201550%_))))
                                          (_%__kont201549201550%_))
                                      (_%__kont201549201550%_))
                                  (_%__kont201549201550%_))))
                          (_%__kont201549201550%_))))
                  (_%__kont201549201550%_))
              (_%__kont201549201550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201549201550%_))
                                          (_%__kont201549201550%_))
                                      (_%__kont201549201550%_))))
                              (_%__kont201549201550%_))))
                      (_%__kont201549201550%_))
                  (_%__kont201549201550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201549201550%_))
                                              (_%__kont201549201550%_))
                                          (_%__kont201549201550%_))))
                                  (_%__kont201549201550%_))))
                          (_%__kont201549201550%_))
                      (_%__kont201549201550%_))
                  (_%__kont201549201550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201549201550%_))))
                                          (_%__kont201549201550%_)))))
                              (_%__kont201549201550%_)))))))
                 (_%dispatch-case-e198599%_
                  (lambda (_%hd198746%_ _%body198747%_)
                    (let* ((_%form198749%_
                            (cons _%hd198746%_ (cons _%body198747%_ '())))
                           (_%__stx201677201678%_ _%form198749%_)
                           (_%g198753198877%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx201677201678%_)))))
                      (let ((_%__kont201679201680%_
                             (lambda (_%g198755199242%_
                                      _%g198756199243%_
                                      _%g198757199244%_)
                               (let ((__tmp202843
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198756199243%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198595%_
                                  __tmp202843))))
                            (_%__kont201685201686%_
                             (lambda (_%g198800199094%_
                                      _%g198801199095%_
                                      _%g198802199096%_
                                      _%g198803199097%_)
                               (let ((__tmp202844
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198800199094%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198595%_
                                  __tmp202844))))
                            (_%__kont201689201690%_
                             (lambda (_%g198840198962%_
                                      _%g198841198963%_
                                      _%g198842198964%_)
                               (let ((__tmp202845
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g198840198962%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198595%_
                                  __tmp202845)))))
                        (let* ((_%__match201786201787%_
                                (lambda (_%e198843198882%_
                                         _%hd198844198885%_
                                         _%tl198845198887%_
                                         _%e198846198890%_
                                         _%hd198847198893%_
                                         _%tl198848198895%_
                                         _%e198849198898%_
                                         _%hd198850198901%_
                                         _%tl198851198903%_
                                         _%e198852198906%_
                                         _%hd198853198909%_
                                         _%tl198854198911%_
                                         _%e198855198914%_
                                         _%hd198856198917%_
                                         _%tl198857198919%_
                                         _%e198858198922%_
                                         _%hd198859198925%_
                                         _%tl198860198927%_
                                         _%e198861198930%_
                                         _%hd198862198933%_
                                         _%tl198863198935%_
                                         _%e198864198938%_
                                         _%hd198865198941%_
                                         _%tl198866198943%_
                                         _%e198867198946%_
                                         _%hd198868198949%_
                                         _%tl198869198951%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198863198935%_))
                                      (let ((_%e198870198954%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198863198935%_))))
                                        (let ((_%tl198872198959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198870198954%_)))
                                              (_%hd198871198957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198870198954%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198872198959%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl198848198895%_))
                                                  (_%__kont201689201690%_
                                                   _%hd198868198949%_
                                                   _%hd198859198925%_
                                                   _%hd198844198885%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198753198877%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198753198877%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198753198877%_)))))
                               (_%__match201716201717%_
                                (lambda (_%e198804199000%_
                                         _%hd198805199003%_
                                         _%tl198806199005%_
                                         _%__splice201687201688%_
                                         _%target198807199008%_
                                         _%tl198809199010%_)
                                  (letrec ((_%loop198810199013%_
                                            (lambda (_%hd198808199016%_
                                                     _%arg198814199018%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198808199016%_))
                                                  (let ((_%e198811199020%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198808199016%_))))
                                                    (let ((_%lp-tl198813199025%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198811199020%_)))
                                                          (_%lp-hd198812199023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198811199020%_))))
                                                      (_%loop198810199013%_
                                                       _%lp-tl198813199025%_
                                                       (cons _%lp-hd198812199023%_
                                                             _%arg198814199018%_))))
                                                  (let ((_%arg198815199028%_
                                                         (reverse _%arg198814199018%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198806199005%_))
                                                        (let ((_%e198816199030%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl198806199005%_))))
                  (let ((_%tl198818199035%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198816199030%_)))
                        (_%hd198817199033%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198816199030%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198817199033%_))
                        (let ((_%e198819199038%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd198817199033%_))))
                          (let ((_%tl198821199043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198819199038%_)))
                                (_%hd198820199041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198819199038%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd198820199041%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd198820199041%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198821199043%_))
                                        (let ((_%e198822199046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198821199043%_))))
                                          (let ((_%tl198824199051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198822199046%_)))
                                                (_%hd198823199049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198822199046%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd198823199049%_))
                                                (let ((_%e198825199054%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198823199049%_))))
                                                  (let ((_%tl198827199059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198825199054%_)))
                                                        (_%hd198826199057%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198825199054%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd198826199057%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd198826199057%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198827199059%_))
                        (let ((_%e198828199062%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198827199059%_))))
                          (let ((_%tl198830199067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198828199062%_)))
                                (_%hd198829199065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198828199062%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198830199067%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198824199051%_))
                                    (let ((_%e198831199070%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198824199051%_))))
                                      (let ((_%tl198833199075%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198831199070%_)))
                                            (_%hd198832199073%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198831199070%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198832199073%_))
                                            (let ((_%e198834199078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198832199073%_))))
                                              (let ((_%tl198836199083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198834199078%_)))
                                                    (_%hd198835199081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198834199078%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198835199081%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd198835199081%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198836199083%_))
                                                            (let ((_%e198837199086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198836199083%_))))
                      (let ((_%tl198839199091%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198837199086%_)))
                            (_%hd198838199089%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198837199086%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198839199091%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198818199035%_))
                                (_%__kont201685201686%_
                                 _%hd198838199089%_
                                 _%hd198829199065%_
                                 _%tl198809199010%_
                                 _%arg198815199028%_)
                                (_%__match201786201787%_
                                 _%e198804199000%_
                                 _%hd198805199003%_
                                 _%tl198806199005%_
                                 _%e198816199030%_
                                 _%hd198817199033%_
                                 _%tl198818199035%_
                                 _%e198819199038%_
                                 _%hd198820199041%_
                                 _%tl198821199043%_
                                 _%e198822199046%_
                                 _%hd198823199049%_
                                 _%tl198824199051%_
                                 _%e198825199054%_
                                 _%hd198826199057%_
                                 _%tl198827199059%_
                                 _%e198828199062%_
                                 _%hd198829199065%_
                                 _%tl198830199067%_
                                 _%e198831199070%_
                                 _%hd198832199073%_
                                 _%tl198833199075%_
                                 _%e198834199078%_
                                 _%hd198835199081%_
                                 _%tl198836199083%_
                                 _%e198837199086%_
                                 _%hd198838199089%_
                                 _%tl198839199091%_))
                            (let ()
                              (declare (not safe))
                              (_%g198753198877%_)))))
                    (let () (declare (not safe)) (_%g198753198877%_)))
                (let () (declare (not safe)) (_%g198753198877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198753198877%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198753198877%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198753198877%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198753198877%_)))))
                        (let () (declare (not safe)) (_%g198753198877%_)))
                    (let () (declare (not safe)) (_%g198753198877%_)))
                (let () (declare (not safe)) (_%g198753198877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198753198877%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198753198877%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198753198877%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198753198877%_)))))
                        (let () (declare (not safe)) (_%g198753198877%_)))))
                (let () (declare (not safe)) (_%g198753198877%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop198810199013%_
                                     _%target198807199008%_
                                     '()))))
                               (_%__match201704201705%_
                                (lambda (_%e198758199134%_
                                         _%hd198759199137%_
                                         _%tl198760199139%_
                                         _%__splice201681201682%_
                                         _%target198761199142%_
                                         _%tl198763199144%_)
                                  (letrec ((_%loop198764199147%_
                                            (lambda (_%hd198762199150%_
                                                     _%arg198768199152%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198762199150%_))
                                                  (let ((_%e198765199154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198762199150%_))))
                                                    (let ((_%lp-tl198767199159%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198765199154%_)))
                                                          (_%lp-hd198766199157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198765199154%_))))
                                                      (_%loop198764199147%_
                                                       _%lp-tl198767199159%_
                                                       (cons _%lp-hd198766199157%_
                                                             _%arg198768199152%_))))
                                                  (let ((_%arg198769199162%_
                                                         (reverse _%arg198768199152%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198760199139%_))
                                                        (let ((_%e198770199164%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl198760199139%_))))
                  (let ((_%tl198772199169%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198770199164%_)))
                        (_%hd198771199167%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198770199164%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198771199167%_))
                        (let ((_%e198773199172%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd198771199167%_))))
                          (let ((_%tl198775199177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198773199172%_)))
                                (_%hd198774199175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198773199172%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd198774199175%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd198774199175%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198775199177%_))
                                        (let ((_%e198776199180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198775199177%_))))
                                          (let ((_%tl198778199185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198776199180%_)))
                                                (_%hd198777199183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198776199180%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd198777199183%_))
                                                (let ((_%e198779199188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198777199183%_))))
                                                  (let ((_%tl198781199193%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198779199188%_)))
                                                        (_%hd198780199191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198779199188%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd198780199191%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd198780199191%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198781199193%_))
                        (let ((_%e198782199196%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198781199193%_))))
                          (let ((_%tl198784199201%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198782199196%_)))
                                (_%hd198783199199%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198782199196%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198784199201%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198778199185%_))
                                    (let ((_%__splice201683201684%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl198778199185%_
                                              '0))))
                                      (let ((_%tl198787199206%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201683201684%_
                                                '1)))
                                            (_%target198785199204%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice201683201684%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198787199206%_))
                                            (letrec ((_%loop198788199209%_
                                                      (lambda (_%hd198786199212%_
                                                               _%xarg198792199214%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd198786199212%_))
                                                            (let ((_%e198789199216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd198786199212%_))))
                      (let ((_%lp-tl198791199221%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198789199216%_)))
                            (_%lp-hd198790199219%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198789199216%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd198790199219%_))
                            (let ((_%e198794199224%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd198790199219%_))))
                              (let ((_%tl198796199229%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198794199224%_)))
                                    (_%hd198795199227%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198794199224%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd198795199227%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd198795199227%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198796199229%_))
                                            (let ((_%e198797199232%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl198796199229%_))))
                                              (let ((_%tl198799199237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198797199232%_)))
                                                    (_%hd198798199235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198797199232%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198799199237%_))
                                                    (_%loop198788199209%_
                                                     _%lp-tl198791199221%_
                                                     (cons _%hd198798199235%_
                                                           _%xarg198792199214%_))
                                                    (_%__match201716201717%_
                                                     _%e198758199134%_
                                                     _%hd198759199137%_
                                                     _%tl198760199139%_
                                                     _%__splice201681201682%_
                                                     _%target198761199142%_
                                                     _%tl198763199144%_))))
                                            (_%__match201716201717%_
                                             _%e198758199134%_
                                             _%hd198759199137%_
                                             _%tl198760199139%_
                                             _%__splice201681201682%_
                                             _%target198761199142%_
                                             _%tl198763199144%_))
                                        (_%__match201716201717%_
                                         _%e198758199134%_
                                         _%hd198759199137%_
                                         _%tl198760199139%_
                                         _%__splice201681201682%_
                                         _%target198761199142%_
                                         _%tl198763199144%_))
                                    (_%__match201716201717%_
                                     _%e198758199134%_
                                     _%hd198759199137%_
                                     _%tl198760199139%_
                                     _%__splice201681201682%_
                                     _%target198761199142%_
                                     _%tl198763199144%_))))
                            (_%__match201716201717%_
                             _%e198758199134%_
                             _%hd198759199137%_
                             _%tl198760199139%_
                             _%__splice201681201682%_
                             _%target198761199142%_
                             _%tl198763199144%_))))
                    (let ((_%xarg198793199240%_
                           (reverse _%xarg198792199214%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198772199169%_))
                          (_%__kont201679201680%_
                           _%xarg198793199240%_
                           _%hd198783199199%_
                           _%arg198769199162%_)
                          (_%__match201716201717%_
                           _%e198758199134%_
                           _%hd198759199137%_
                           _%tl198760199139%_
                           _%__splice201681201682%_
                           _%target198761199142%_
                           _%tl198763199144%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop198788199209%_
                                               _%target198785199204%_
                                               '()))
                                            (_%__match201716201717%_
                                             _%e198758199134%_
                                             _%hd198759199137%_
                                             _%tl198760199139%_
                                             _%__splice201681201682%_
                                             _%target198761199142%_
                                             _%tl198763199144%_))))
                                    (_%__match201716201717%_
                                     _%e198758199134%_
                                     _%hd198759199137%_
                                     _%tl198760199139%_
                                     _%__splice201681201682%_
                                     _%target198761199142%_
                                     _%tl198763199144%_))
                                (_%__match201716201717%_
                                 _%e198758199134%_
                                 _%hd198759199137%_
                                 _%tl198760199139%_
                                 _%__splice201681201682%_
                                 _%target198761199142%_
                                 _%tl198763199144%_))))
                        (_%__match201716201717%_
                         _%e198758199134%_
                         _%hd198759199137%_
                         _%tl198760199139%_
                         _%__splice201681201682%_
                         _%target198761199142%_
                         _%tl198763199144%_))
                    (_%__match201716201717%_
                     _%e198758199134%_
                     _%hd198759199137%_
                     _%tl198760199139%_
                     _%__splice201681201682%_
                     _%target198761199142%_
                     _%tl198763199144%_))
                (_%__match201716201717%_
                 _%e198758199134%_
                 _%hd198759199137%_
                 _%tl198760199139%_
                 _%__splice201681201682%_
                 _%target198761199142%_
                 _%tl198763199144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match201716201717%_
                                                 _%e198758199134%_
                                                 _%hd198759199137%_
                                                 _%tl198760199139%_
                                                 _%__splice201681201682%_
                                                 _%target198761199142%_
                                                 _%tl198763199144%_))))
                                        (_%__match201716201717%_
                                         _%e198758199134%_
                                         _%hd198759199137%_
                                         _%tl198760199139%_
                                         _%__splice201681201682%_
                                         _%target198761199142%_
                                         _%tl198763199144%_))
                                    (_%__match201716201717%_
                                     _%e198758199134%_
                                     _%hd198759199137%_
                                     _%tl198760199139%_
                                     _%__splice201681201682%_
                                     _%target198761199142%_
                                     _%tl198763199144%_))
                                (_%__match201716201717%_
                                 _%e198758199134%_
                                 _%hd198759199137%_
                                 _%tl198760199139%_
                                 _%__splice201681201682%_
                                 _%target198761199142%_
                                 _%tl198763199144%_))))
                        (_%__match201716201717%_
                         _%e198758199134%_
                         _%hd198759199137%_
                         _%tl198760199139%_
                         _%__splice201681201682%_
                         _%target198761199142%_
                         _%tl198763199144%_))))
                (_%__match201716201717%_
                 _%e198758199134%_
                 _%hd198759199137%_
                 _%tl198760199139%_
                 _%__splice201681201682%_
                 _%target198761199142%_
                 _%tl198763199144%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop198764199147%_
                                     _%target198761199142%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx201677201678%_))
                              (let ((_%e198758199134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx201677201678%_))))
                                (let ((_%tl198760199139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198758199134%_)))
                                      (_%hd198759199137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198758199134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd198759199137%_))
                                      (let ((_%__splice201681201682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd198759199137%_
                                                '0))))
                                        (let ((_%tl198763199144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201681201682%_
                                                  '1)))
                                              (_%target198761199142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201681201682%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198763199144%_))
                                              (_%__match201704201705%_
                                               _%e198758199134%_
                                               _%hd198759199137%_
                                               _%tl198760199139%_
                                               _%__splice201681201682%_
                                               _%target198761199142%_
                                               _%tl198763199144%_)
                                              (_%__match201716201717%_
                                               _%e198758199134%_
                                               _%hd198759199137%_
                                               _%tl198760199139%_
                                               _%__splice201681201682%_
                                               _%target198761199142%_
                                               _%tl198763199144%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl198760199139%_))
                                          (let ((_%e198846198890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl198760199139%_))))
                                            (let ((_%tl198848198895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198846198890%_)))
                                                  (_%hd198847198893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198846198890%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198847198893%_))
                                                  (let ((_%e198849198898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198847198893%_))))
                                                    (let ((_%tl198851198903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198849198898%_)))
                                                          (_%hd198850198901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198849198898%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd198850198901%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd198850198901%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198851198903%_))
                          (let ((_%e198852198906%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198851198903%_))))
                            (let ((_%tl198854198911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198852198906%_)))
                                  (_%hd198853198909%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198852198906%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd198853198909%_))
                                  (let ((_%e198855198914%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198853198909%_))))
                                    (let ((_%tl198857198919%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198855198914%_)))
                                          (_%hd198856198917%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198855198914%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd198856198917%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd198856198917%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198857198919%_))
                                                  (let ((_%e198858198922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198857198919%_))))
                                                    (let ((_%tl198860198927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198858198922%_)))
                                                          (_%hd198859198925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198858198922%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198860198927%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl198854198911%_))
                      (let ((_%e198861198930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl198854198911%_))))
                        (let ((_%tl198863198935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198861198930%_)))
                              (_%hd198862198933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198861198930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198862198933%_))
                              (let ((_%e198864198938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd198862198933%_))))
                                (let ((_%tl198866198943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198864198938%_)))
                                      (_%hd198865198941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198864198938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198865198941%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd198865198941%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198866198943%_))
                                              (let ((_%e198867198946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198866198943%_))))
                                                (let ((_%tl198869198951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198867198946%_)))
                                                      (_%hd198868198949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198867198946%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198869198951%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198863198935%_))
                                                          (let ((_%e198870198954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl198863198935%_))))
                    (let ((_%tl198872198959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198870198954%_)))
                          (_%hd198871198957%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198870198954%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198872198959%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198848198895%_))
                              (_%__kont201689201690%_
                               _%hd198868198949%_
                               _%hd198859198925%_
                               _%hd198759199137%_)
                              (let ()
                                (declare (not safe))
                                (_%g198753198877%_)))
                          (let () (declare (not safe)) (_%g198753198877%_)))))
                  (let () (declare (not safe)) (_%g198753198877%_)))
              (let () (declare (not safe)) (_%g198753198877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198753198877%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198753198877%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198753198877%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198753198877%_)))))
                      (let () (declare (not safe)) (_%g198753198877%_)))
                  (let () (declare (not safe)) (_%g198753198877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198753198877%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198753198877%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198753198877%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g198753198877%_)))))
                          (let () (declare (not safe)) (_%g198753198877%_)))
                      (let () (declare (not safe)) (_%g198753198877%_)))
                  (let () (declare (not safe)) (_%g198753198877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198753198877%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198753198877%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g198753198877%_))))))))
                 (_%generate1198600%_
                  (lambda (_%args198731%_
                           _%arglen198732%_
                           _%hd198733%_
                           _%body198734%_)
                    (let* ((_%len198736%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd198733%_)))
                           (_%condition198741%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd198733%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen198732%_
                                                (cons _%len198736%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen198732%_ (cons _%len198736%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len198736%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen198732%_
                                                    (cons _%len198736%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen198732%_ (cons _%len198736%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch198743%_
                            (if (_%dispatch-case?198598%_
                                 _%hd198733%_
                                 _%body198734%_)
                                (_%dispatch-case-e198599%_
                                 _%hd198733%_
                                 _%body198734%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self198595%_
                                 _%hd198733%_
                                 _%body198734%_))))
                      (cons _%condition198741%_
                            (cons (cons 'apply
                                        (cons _%dispatch198743%_
                                              (cons _%args198731%_ '())))
                                  '()))))))
          (let* ((_%g198602198630%_
                  (lambda (_%g198603198627%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198603198627%_))))
                 (_%g198601198728%_
                  (lambda (_%g198603198633%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198603198633%_))
                        (let ((_%e198606198635%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198603198633%_))))
                          (let ((_%hd198607198638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198606198635%_)))
                                (_%tl198608198640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198606198635%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl198608198640%_))
                                (let ((_g202846_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl198608198640%_
                                          '0))))
                                  (begin
                                    (let ((_g202847_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g202846_)
                                                 (##values-length _g202846_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g202847_ 2)))
                                          (error "Context expects 2 values"
                                                 _g202847_)))
                                    (let ((_%target198609198643%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202846_ 0)))
                                          (_%tl198611198645%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202846_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198611198645%_))
                                          (letrec ((_%loop198612198648%_
                                                    (lambda (_%hd198610198651%_
                                                             _%body198616198653%_
                                                             _%hd198617198654%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198610198651%_))
                                                          (let ((_%e198613198656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd198610198651%_))))
                    (let ((_%lp-hd198614198659%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198613198656%_)))
                          (_%lp-tl198615198661%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198613198656%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd198614198659%_))
                          (let ((_%e198620198664%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd198614198659%_))))
                            (let ((_%hd198621198667%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198620198664%_)))
                                  (_%tl198622198669%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198620198664%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198622198669%_))
                                  (let ((_%e198623198672%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl198622198669%_))))
                                    (let ((_%hd198624198675%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198623198672%_)))
                                          (_%tl198625198677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198623198672%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198625198677%_))
                                          (_%loop198612198648%_
                                           _%lp-tl198615198661%_
                                           (cons _%hd198624198675%_
                                                 _%body198616198653%_)
                                           (cons _%hd198621198667%_
                                                 _%hd198617198654%_))
                                          (_%g198602198630%_
                                           _%g198603198633%_))))
                                  (_%g198602198630%_ _%g198603198633%_))))
                          (_%g198602198630%_ _%g198603198633%_))))
                  (let ((_%body198618198680%_ (reverse _%body198616198653%_))
                        (_%hd198619198681%_ (reverse _%hd198617198654%_)))
                    ((lambda (_%g198604198683%_ _%g198605198684%_)
                       (let ((_%args198703%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen198704%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name198705%_
                              (let ((_%$e198700%_
                                     (let ((__tmp202848
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp202848 _%stx198596%_))))
                                (if _%$e198700%_
                                    _%$e198700%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args198703%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen198704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args198703%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args198703%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp202852
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name198705%_
                                                                (cons _%args198703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp202849
                                  (map (lambda (_%g198706198709%_
                                                _%g198707198711%_)
                                         (_%generate1198600%_
                                          _%args198703%_
                                          _%arglen198704%_
                                          _%g198706198709%_
                                          _%g198707198711%_))
                                       (let ((__tmp202850
                                              (lambda (_%g198713198716%_
                                                       _%g198714198718%_)
                                                (cons _%g198713198716%_
                                                      _%g198714198718%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp202850
                                          '()
                                          _%g198605198684%_))
                                       (let ((__tmp202851
                                              (lambda (_%g198720198723%_
                                                       _%g198721198725%_)
                                                (cons _%g198720198723%_
                                                      _%g198721198725%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp202851
                                          '()
                                          _%g198604198683%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp202852 __tmp202849)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body198618198680%_
                     _%hd198619198681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop198612198648%_
                                             _%target198609198643%_
                                             '()
                                             '()))
                                          (_%g198602198630%_
                                           _%g198603198633%_)))))
                                (_%g198602198630%_ _%g198603198633%_))))
                        (_%g198602198630%_ _%g198603198633%_)))))
            (_%g198601198728%_ _%stx198596%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self197832%_ _%stx197833%_ _%compiled-body?197834%_)
        (letrec ((_%generate-simple197836%_
                  (lambda (_%hd198580%_ _%body198581%_)
                    (_%coalesce-boolean197837%_
                     (_%simplify-let197838%_
                      (gxc#generate-runtime-simple-let
                       _%self197832%_
                       'let
                       _%hd198580%_
                       _%body198581%_
                       _%compiled-body?197834%_)))))
                 (_%coalesce-boolean197837%_
                  (lambda (_%code198441%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code198442198468%_ _%code198441%_)
                               (_%else198444198476%_
                                (lambda () _%code198441%_))
                               (_%K198446198513%_
                                (lambda (_%expr2198479%_
                                         _%expr1198480%_
                                         _%id198481%_)
                                  (let* ((_%expr2198482198490%_
                                          _%expr2198479%_)
                                         (_%else198484198498%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1198480%_
                                                        (cons _%expr2198479%_
                                                              '())))))
                                         (_%K198486198503%_
                                          (lambda (_%exprs198501%_)
                                            (cons 'or
                                                  (cons _%expr1198480%_
                                                        _%exprs198501%_)))))
                                    (if (pair? _%expr2198482198490%_)
                                        (let ((_%hd198487198506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2198482198490%_)))
                                              (_%tl198488198508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2198482198490%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd198487198506%_ 'or))
                                              (let ((_%exprs198511%_
                                                     _%tl198488198508%_))
                                                (_%K198486198503%_
                                                 _%exprs198511%_))
                                              (_%else198484198498%_)))
                                        (_%else198484198498%_))))))
                          (if (pair? _%code198442198468%_)
                              (let ((_%hd198447198516%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code198442198468%_)))
                                    (_%tl198448198518%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code198442198468%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd198447198516%_ 'let))
                                    (if (pair? _%tl198448198518%_)
                                        (let ((_%hd198449198521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl198448198518%_)))
                                              (_%tl198450198523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl198448198518%_))))
                                          (if (pair? _%hd198449198521%_)
                                              (let ((_%hd198461198526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd198449198521%_)))
                                                    (_%tl198462198528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd198449198521%_))))
                                                (if (pair? _%hd198461198526%_)
                                                    (let ((_%hd198463198531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd198461198526%_)))
                                                          (_%tl198464198533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd198461198526%_))))
                                                      (let ((_%id198536%_
                                                             _%hd198463198531%_))
                                                        (if (pair? _%tl198464198533%_)
                                                            (let ((_%hd198465198538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl198464198533%_)))
                          (_%tl198466198540%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl198464198533%_))))
                      (let ((_%expr1198543%_ _%hd198465198538%_))
                        (if (null? _%tl198466198540%_)
                            (if (null? _%tl198462198528%_)
                                (if (pair? _%tl198450198523%_)
                                    (let ((_%hd198451198545%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl198450198523%_)))
                                          (_%tl198452198547%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl198450198523%_))))
                                      (if (pair? _%hd198451198545%_)
                                          (let ((_%hd198453198550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd198451198545%_)))
                                                (_%tl198454198552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd198451198545%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd198453198550%_
                                                         'if))
                                                (if (pair? _%tl198454198552%_)
                                                    (let ((_%hd198455198555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl198454198552%_)))
                                                          (_%tl198456198557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl198454198552%_))))
                                                      (if ((lambda (_%g198559198561%_)
                                                             (eq? _%g198559198561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id198536%_))
                   _%hd198455198555%_)
                  (if (pair? _%tl198456198557%_)
                      (let ((_%hd198457198564%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl198456198557%_)))
                            (_%tl198458198566%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl198456198557%_))))
                        (if ((lambda (_%g198568198570%_)
                               (eq? _%g198568198570%_ _%id198536%_))
                             _%hd198457198564%_)
                            (if (pair? _%tl198458198566%_)
                                (let ((_%hd198459198573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl198458198566%_)))
                                      (_%tl198460198575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl198458198566%_))))
                                  (let ((_%expr2198578%_ _%hd198459198573%_))
                                    (if (null? _%tl198460198575%_)
                                        (if (null? _%tl198452198547%_)
                                            (_%K198446198513%_
                                             _%expr2198578%_
                                             _%expr1198543%_
                                             _%id198536%_)
                                            (_%else198444198476%_))
                                        (_%else198444198476%_))))
                                (_%else198444198476%_))
                            (_%else198444198476%_)))
                      (_%else198444198476%_))
                  (_%else198444198476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198444198476%_))
                                                (_%else198444198476%_)))
                                          (_%else198444198476%_)))
                                    (_%else198444198476%_))
                                (_%else198444198476%_))
                            (_%else198444198476%_))))
                    (_%else198444198476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198444198476%_)))
                                              (_%else198444198476%_)))
                                        (_%else198444198476%_))
                                    (_%else198444198476%_)))
                              (_%else198444198476%_)))
                        _%code198441%_)))
                 (_%simplify-let197838%_
                  (lambda (_%code198140%_)
                    (let* ((_%code198141198213%_ _%code198140%_)
                           (_%else198146198221%_ (lambda () _%code198140%_)))
                      (let ((_%K198205198421%_
                             (lambda (_%expr198419%_) _%expr198419%_))
                            (_%K198188198367%_
                             (lambda (_%body198363%_
                                      _%expr198364%_
                                      _%id198365%_)
                               (cons 'let
                                     (cons (cons (cons _%id198365%_
                                                       (cons _%expr198364%_
                                                             '()))
                                                 '())
                                           _%body198363%_))))
                            (_%K198165198291%_
                             (lambda (_%body198285%_
                                      _%expr2198286%_
                                      _%id2198287%_
                                      _%expr1198288%_
                                      _%id1198289%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1198289%_
                                                       (cons _%expr1198288%_
                                                             '()))
                                                 (cons (cons _%id2198287%_
                                                             (cons _%expr2198286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body198285%_))))
                            (_%K198148198230%_
                             (lambda (_%body198225%_
                                      _%bind198226%_
                                      _%expr1198227%_
                                      _%id1198228%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1198228%_
                                                       (cons _%expr1198227%_
                                                             '()))
                                                 _%bind198226%_)
                                           _%body198225%_)))))
                        (if (pair? _%code198141198213%_)
                            (let ((_%tl198207198426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code198141198213%_)))
                                  (_%hd198206198424%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code198141198213%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd198206198424%_ 'let))
                                  (if (pair? _%tl198207198426%_)
                                      (let ((_%tl198209198431%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl198207198426%_)))
                                            (_%hd198208198429%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl198207198426%_))))
                                        (if (null? _%hd198208198429%_)
                                            (if (pair? _%tl198209198431%_)
                                                (let ((_%tl198211198436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl198209198431%_)))
                                                      (_%hd198210198434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl198209198431%_))))
                                                  (if (null? _%tl198211198436%_)
                                                      (let ((_%expr198439%_
                                                             _%hd198210198434%_))
                                                        (_%K198205198421%_
                                                         _%expr198439%_))
                                                      (_%else198146198221%_)))
                                                (_%else198146198221%_))
                                            (if (pair? _%hd198208198429%_)
                                                (let ((_%tl198200198382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd198208198429%_)))
                                                      (_%hd198199198380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd198208198429%_))))
                                                  (if (pair? _%hd198199198380%_)
                                                      (let ((_%tl198202198387%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd198199198380%_)))
                    (_%hd198201198385%_
                     (let () (declare (not safe)) (##car _%hd198199198380%_))))
                (if (pair? _%tl198202198387%_)
                    (let ((_%tl198204198394%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl198202198387%_)))
                          (_%hd198203198392%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl198202198387%_))))
                      (if (null? _%tl198204198394%_)
                          (if (null? _%tl198200198382%_)
                              (if (pair? _%tl198209198431%_)
                                  (let ((_%tl198194198401%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198209198431%_)))
                                        (_%hd198193198399%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198209198431%_))))
                                    (if (pair? _%hd198193198399%_)
                                        (let ((_%tl198196198406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd198193198399%_)))
                                              (_%hd198195198404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd198193198399%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd198195198404%_
                                                       'let))
                                              (if (pair? _%tl198196198406%_)
                                                  (let ((_%tl198198198411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl198196198406%_)))
                                                        (_%hd198197198409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl198196198406%_))))
                                                    (if (null? _%hd198197198409%_)
                                                        (if (null? _%tl198194198401%_)
                                                            (let ((_%id198390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd198201198385%_)
                          (_%expr198397%_ _%hd198203198392%_)
                          (_%body198414%_ _%tl198198198411%_))
                      (_%K198188198367%_
                       _%body198414%_
                       _%expr198397%_
                       _%id198390%_))
                    (_%else198146198221%_))
                (if (pair? _%hd198197198409%_)
                    (let ((_%tl198177198340%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd198197198409%_)))
                          (_%hd198176198338%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd198197198409%_))))
                      (if (pair? _%hd198176198338%_)
                          (let ((_%tl198179198345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd198176198338%_)))
                                (_%hd198178198343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd198176198338%_))))
                            (if (pair? _%tl198179198345%_)
                                (let ((_%tl198181198352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl198179198345%_)))
                                      (_%hd198180198350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl198179198345%_))))
                                  (if (null? _%tl198181198352%_)
                                      (if (null? _%tl198177198340%_)
                                          (if (null? _%tl198194198401%_)
                                              (let ((_%id1198314%_
                                                     _%hd198201198385%_)
                                                    (_%expr1198321%_
                                                     _%hd198203198392%_)
                                                    (_%id2198348%_
                                                     _%hd198178198343%_)
                                                    (_%expr2198355%_
                                                     _%hd198180198350%_)
                                                    (_%body198357%_
                                                     _%tl198198198411%_))
                                                (_%K198165198291%_
                                                 _%body198357%_
                                                 _%expr2198355%_
                                                 _%id2198348%_
                                                 _%expr1198321%_
                                                 _%id1198314%_))
                                              (_%else198146198221%_))
                                          (_%else198146198221%_))
                                      (_%else198146198221%_)))
                                (_%else198146198221%_)))
                          (_%else198146198221%_)))
                    (_%else198146198221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else198146198221%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd198195198404%_
                                                           'let*))
                                                  (if (pair? _%tl198196198406%_)
                                                      (let ((_%tl198158198274%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl198196198406%_)))
                    (_%hd198157198272%_
                     (let () (declare (not safe)) (##car _%tl198196198406%_))))
                (if (null? _%tl198194198401%_)
                    (let ((_%id1198253%_ _%hd198201198385%_)
                          (_%expr1198260%_ _%hd198203198392%_)
                          (_%bind198277%_ _%hd198157198272%_)
                          (_%body198279%_ _%tl198158198274%_))
                      (_%K198148198230%_
                       _%body198279%_
                       _%bind198277%_
                       _%expr1198260%_
                       _%id1198253%_))
                    (_%else198146198221%_)))
              (_%else198146198221%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else198146198221%_))))
                                        (_%else198146198221%_)))
                                  (_%else198146198221%_))
                              (_%else198146198221%_))
                          (_%else198146198221%_)))
                    (_%else198146198221%_)))
              (_%else198146198221%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else198146198221%_))))
                                      (_%else198146198221%_))
                                  (_%else198146198221%_)))
                            (_%else198146198221%_))))))
                 (_%generate-values197839%_
                  (lambda (_%hd197953%_ _%body197954%_)
                    (let _%lp197956%_ ((_%rest197958%_ _%hd197953%_)
                                       (_%bind197959%_ '())
                                       (_%check197960%_ '())
                                       (_%post197961%_ '()))
                      (let* ((_%__stx202006202007%_ _%rest197958%_)
                             (_%g197964197975%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx202006202007%_)))))
                        (let ((_%__kont202008202009%_
                               (lambda (_%g197966198002%_ _%g197967198003%_)
                                 (let* ((_%__stx201962201963%_
                                         _%g197967198003%_)
                                        (_%g198018198043%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx201962201963%_)))))
                                   (let ((_%__kont201964201965%_
                                          (lambda (_%g198020198116%_
                                                   _%g198021198117%_)
                                            (let ((_%eid198131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g198021198117%_)))
                                                  (_%expr198132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197832%_
                                                      _%g198020198116%_))))
                                              (_%lp197956%_
                                               _%g197966198002%_
                                               (cons (cons _%eid198131%_
                                                           (cons _%expr198132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197959%_)
                                               _%check197960%_
                                               _%post197961%_))))
                                         (_%__kont201966201967%_
                                          (lambda (_%g198031198064%_
                                                   _%g198032198065%_)
                                            (let* ((_%vals198078%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values198080%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals198078%_
                                                     _%g198032198065%_
                                                     _%g198031198064%_))
                                                   (_%refs198082%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals198078%_
                                                     _%g198032198065%_))
                                                   (_%expr198084%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self197832%_
                                                       _%g198031198064%_))))
                                              (_%lp197956%_
                                               _%g197966198002%_
                                               (cons (cons _%vals198078%_
                                                           (cons _%expr198084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197959%_)
                                               (cons _%check-values198080%_
                                                     _%check197960%_)
                                               (cons _%refs198082%_
                                                     _%post197961%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx201962201963%_))
                                         (let ((_%e198022198092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx201962201963%_))))
                                           (let ((_%tl198024198097%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198022198092%_)))
                                                 (_%hd198023198095%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198022198092%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd198023198095%_))
                                                 (let ((_%e198025198100%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd198023198095%_))))
                                                   (let ((_%tl198027198105%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198025198100%_)))
                                                         (_%hd198026198103%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198025198100%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198027198105%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198024198097%_))
                     (let ((_%e198028198108%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198024198097%_))))
                       (let ((_%tl198030198113%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198028198108%_)))
                             (_%hd198029198111%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198028198108%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198030198113%_))
                             (_%__kont201964201965%_
                              _%hd198029198111%_
                              _%hd198026198103%_)
                             (let ()
                               (declare (not safe))
                               (_%g198018198043%_)))))
                     (let () (declare (not safe)) (_%g198018198043%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl198024198097%_))
                     (let ((_%e198036198056%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198024198097%_))))
                       (let ((_%tl198038198061%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198036198056%_)))
                             (_%hd198037198059%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198036198056%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198038198061%_))
                             (_%__kont201966201967%_
                              _%hd198037198059%_
                              _%hd198023198095%_)
                             (let ()
                               (declare (not safe))
                               (_%g198018198043%_)))))
                     (let () (declare (not safe)) (_%g198018198043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198024198097%_))
                                                     (let ((_%e198036198056%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198024198097%_))))
                                                       (let ((_%tl198038198061%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198036198056%_)))
                     (_%hd198037198059%_
                      (let () (declare (not safe)) (##car _%e198036198056%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198038198061%_))
                     (_%__kont201966201967%_
                      _%hd198037198059%_
                      _%hd198023198095%_)
                     (let () (declare (not safe)) (_%g198018198043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g198018198043%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g198018198043%_)))))))
                              (_%__kont202010202011%_
                               (lambda ()
                                 (let* ((_%body197982%_
                                         (if _%compiled-body?197834%_
                                             _%body197954%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self197832%_
                                                _%body197954%_))))
                                        (_%body197984%_
                                         (_%generate-values-post197840%_
                                          _%post197961%_
                                          _%body197982%_))
                                        (_%body197986%_
                                         (_%generate-values-check197841%_
                                          _%check197960%_
                                          _%body197984%_)))
                                   (cons 'let
                                         (cons (reverse _%bind197959%_)
                                               (cons _%body197986%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx202006202007%_))
                              (let ((_%e197968197994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx202006202007%_))))
                                (let ((_%tl197970197999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197968197994%_)))
                                      (_%hd197969197997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197968197994%_))))
                                  (_%__kont202008202009%_
                                   _%tl197970197999%_
                                   _%hd197969197997%_)))
                              (_%__kont202010202011%_)))))))
                 (_%generate-values-post197840%_
                  (lambda (_%post197912%_ _%body197913%_)
                    (let _%lp197915%_ ((_%rest197917%_ _%post197912%_)
                                       (_%body197918%_ _%body197913%_))
                      (let* ((_%rest197919197927%_ _%rest197917%_)
                             (_%else197921197935%_ (lambda () _%body197918%_))
                             (_%K197923197941%_
                              (lambda (_%rest197938%_ _%bind197939%_)
                                (_%lp197915%_
                                 _%rest197938%_
                                 (cons 'let
                                       (cons _%bind197939%_
                                             (cons _%body197918%_ '())))))))
                        (if (pair? _%rest197919197927%_)
                            (let ((_%hd197924197944%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197919197927%_)))
                                  (_%tl197925197946%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197919197927%_))))
                              (let* ((_%bind197949%_ _%hd197924197944%_)
                                     (_%rest197951%_ _%tl197925197946%_))
                                (_%K197923197941%_
                                 _%rest197951%_
                                 _%bind197949%_)))
                            (_%else197921197935%_))))))
                 (_%generate-values-check197841%_
                  (lambda (_%check197909%_ _%body197910%_)
                    (cons 'begin
                          (let ((__tmp202854 (cons _%body197910%_ '()))
                                (__tmp202853 (reverse _%check197909%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp202854 __tmp202853))))))
          (let* ((_%g197843197860%_
                  (lambda (_%g197844197857%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197844197857%_))))
                 (_%g197842197906%_
                  (lambda (_%g197844197863%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197844197863%_))
                        (let ((_%e197847197865%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197844197863%_))))
                          (let ((_%hd197848197868%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197847197865%_)))
                                (_%tl197849197870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197847197865%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197849197870%_))
                                (let ((_%e197850197873%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197849197870%_))))
                                  (let ((_%hd197851197876%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197850197873%_)))
                                        (_%tl197852197878%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197850197873%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197852197878%_))
                                        (let ((_%e197853197881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197852197878%_))))
                                          (let ((_%hd197854197884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197853197881%_)))
                                                (_%tl197855197886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197853197881%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197855197886%_))
                                                ((lambda (_%g197845197889%_
                                                          _%g197846197890%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g197846197890%_)
                                                       (_%generate-simple197836%_
                                                        _%g197846197890%_
                                                        _%g197845197889%_)
                                                       (_%generate-values197839%_
                                                        _%g197846197890%_
                                                        _%g197845197889%_)))
                                                 _%hd197854197884%_
                                                 _%hd197851197876%_)
                                                (_%g197843197860%_
                                                 _%g197844197863%_))))
                                        (_%g197843197860%_
                                         _%g197844197863%_))))
                                (_%g197843197860%_ _%g197844197863%_))))
                        (_%g197843197860%_ _%g197844197863%_)))))
            (_%g197842197906%_ _%stx197833%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self198586%_ _%stx198587%_)
        (let ((_%compiled-body?198589%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self198586%_
           _%stx198587%_
           _%compiled-body?198589%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g202855_
        (let ((_g202856_ (let () (declare (not safe)) (##length _g202855_))))
          (cond ((let () (declare (not safe)) (##fx= _g202856_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g202855_))
                ((let () (declare (not safe)) (##fx= _g202856_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g202855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g202855_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals197726%_ _%hd197727%_)
        (let _%lp197729%_ ((_%rest197731%_ _%hd197727%_)
                           (_%k197732%_ '0)
                           (_%r197733%_ '()))
          (let* ((_%__stx202020202021%_ _%rest197731%_)
                 (_%g197738197755%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202020202021%_)))))
            (let ((_%__kont202022202023%_
                   (lambda (_%g197740197818%_)
                     (_%lp197729%_
                      _%g197740197818%_
                      (let () (declare (not safe)) (##fx+ _%k197732%_ '1))
                      _%r197733%_)))
                  (_%__kont202024202025%_
                   (lambda (_%g197745197791%_ _%g197746197792%_)
                     (_%lp197729%_
                      _%g197745197791%_
                      (let () (declare (not safe)) (##fx+ _%k197732%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g197746197792%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals197726%_
                                         _%k197732%_
                                         _%g197745197791%_)
                                        '()))
                            _%r197733%_))))
                  (_%__kont202026202027%_
                   (lambda (_%g197750197767%_)
                     (let ((__tmp202857
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g197750197767%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals197726%_
                                               _%k197732%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp202857 _%r197733%_))))
                  (_%__kont202028202029%_ (lambda () (reverse _%r197733%_))))
              (let ((_%g197736197778%_
                     (lambda ()
                       (let ((_%g197750197767%_ _%__stx202020202021%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g197750197767%_))
                             (_%__kont202026202027%_ _%g197750197767%_)
                             (_%__kont202028202029%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx202020202021%_))
                    (let ((_%e197741197807%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx202020202021%_))))
                      (let ((_%tl197743197812%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197741197807%_)))
                            (_%hd197742197810%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197741197807%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd197742197810%_))
                            (let ((_%e197744197815%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197742197810%_))))
                              (if (equal? _%e197744197815%_ '#f)
                                  (_%__kont202022202023%_ _%tl197743197812%_)
                                  (_%__kont202024202025%_
                                   _%tl197743197812%_
                                   _%hd197742197810%_)))
                            (_%__kont202024202025%_
                             _%tl197743197812%_
                             _%hd197742197810%_))))
                    (let () (declare (not safe)) (_%g197736197778%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self197405%_ _%stx197406%_ _%compiled-body?197407%_)
        (letrec ((_%generate-simple197409%_
                  (lambda (_%hd197711%_ _%body197712%_)
                    (gxc#generate-runtime-simple-let
                     _%self197405%_
                     'letrec
                     _%hd197711%_
                     _%body197712%_
                     _%compiled-body?197407%_)))
                 (_%generate-values197410%_
                  (lambda (_%hd197490%_ _%body197491%_)
                    (let _%lp197493%_ ((_%rest197495%_ _%hd197490%_)
                                       (_%bind197496%_ '())
                                       (_%check197497%_ '())
                                       (_%post197498%_ '()))
                      (let* ((_%__stx202094202095%_ _%rest197495%_)
                             (_%g197501197512%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx202094202095%_)))))
                        (let ((_%__kont202096202097%_
                               (lambda (_%g197503197539%_ _%g197504197540%_)
                                 (let* ((_%__stx202050202051%_
                                         _%g197504197540%_)
                                        (_%g197555197580%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx202050202051%_)))))
                                   (let ((_%__kont202052202053%_
                                          (lambda (_%g197557197687%_
                                                   _%g197558197688%_)
                                            (let ((_%eid197702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g197558197688%_)))
                                                  (_%expr197703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197405%_
                                                      _%g197557197687%_))))
                                              (_%lp197493%_
                                               _%g197503197539%_
                                               (cons (cons _%eid197702%_
                                                           (cons _%expr197703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197496%_)
                                               _%check197497%_
                                               _%post197498%_))))
                                         (_%__kont202054202055%_
                                          (lambda (_%g197568197601%_
                                                   _%g197569197602%_)
                                            (let* ((_%vals197615%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values197617%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals197615%_
                                                     _%g197569197602%_
                                                     _%g197568197601%_))
                                                   (_%refs197619%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals197615%_
                                                     _%g197569197602%_))
                                                   (_%expr197621%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self197405%_
                                                       _%g197568197601%_))))
                                              (_%lp197493%_
                                               _%g197503197539%_
                                               (let ((__tmp202859
                                                      (cons (cons _%vals197615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr197621%_ '()))
                    _%bind197496%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp202858
                                                      (map (lambda (_%e197623197625%_)
                                                             (let* ((_%e197623197627197636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e197623197625%_)
                            (_%E197629197640%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e197623197627197636%_
                                        '([eid _])))
                               '#!void))
                            (_%K197630197645%_
                             (lambda (_%eid197643%_)
                               (cons _%eid197643%_ (cons '#!void '())))))
                       (if (pair? _%e197623197627197636%_)
                           (let ((_%hd197631197648%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197623197627197636%_)))
                                 (_%tl197632197650%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197623197627197636%_))))
                             (let ((_%eid197653%_ _%hd197631197648%_))
                               (if (pair? _%tl197632197650%_)
                                   (let ((_%tl197634197655%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl197632197650%_))))
                                     (if (null? _%tl197634197655%_)
                                         (_%K197630197645%_ _%eid197653%_)
                                         (_%E197629197640%_)))
                                   (_%E197629197640%_))))
                           (_%E197629197640%_))))
                   _%refs197619%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp202859
                                                  __tmp202858))
                                               (cons _%check-values197617%_
                                                     _%check197497%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs197619%_
                                                  _%post197498%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx202050202051%_))
                                         (let ((_%e197559197663%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx202050202051%_))))
                                           (let ((_%tl197561197668%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197559197663%_)))
                                                 (_%hd197560197666%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197559197663%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd197560197666%_))
                                                 (let ((_%e197562197671%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd197560197666%_))))
                                                   (let ((_%tl197564197676%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197562197671%_)))
                                                         (_%hd197563197674%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197562197671%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl197564197676%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197561197668%_))
                     (let ((_%e197565197679%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197561197668%_))))
                       (let ((_%tl197567197684%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197565197679%_)))
                             (_%hd197566197682%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197565197679%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197567197684%_))
                             (_%__kont202052202053%_
                              _%hd197566197682%_
                              _%hd197563197674%_)
                             (let ()
                               (declare (not safe))
                               (_%g197555197580%_)))))
                     (let () (declare (not safe)) (_%g197555197580%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl197561197668%_))
                     (let ((_%e197573197593%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197561197668%_))))
                       (let ((_%tl197575197598%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197573197593%_)))
                             (_%hd197574197596%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197573197593%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197575197598%_))
                             (_%__kont202054202055%_
                              _%hd197574197596%_
                              _%hd197560197666%_)
                             (let ()
                               (declare (not safe))
                               (_%g197555197580%_)))))
                     (let () (declare (not safe)) (_%g197555197580%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl197561197668%_))
                                                     (let ((_%e197573197593%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl197561197668%_))))
                                                       (let ((_%tl197575197598%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197573197593%_)))
                     (_%hd197574197596%_
                      (let () (declare (not safe)) (##car _%e197573197593%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197575197598%_))
                     (_%__kont202054202055%_
                      _%hd197574197596%_
                      _%hd197560197666%_)
                     (let () (declare (not safe)) (_%g197555197580%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g197555197580%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g197555197580%_)))))))
                              (_%__kont202098202099%_
                               (lambda ()
                                 (let* ((_%body197519%_
                                         (if _%compiled-body?197407%_
                                             _%body197491%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self197405%_
                                                _%body197491%_))))
                                        (_%body197521%_
                                         (_%generate-values-post197412%_
                                          _%post197498%_
                                          _%body197519%_))
                                        (_%body197523%_
                                         (_%generate-values-check197411%_
                                          _%check197497%_
                                          _%body197521%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind197496%_)
                                               (cons _%body197523%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx202094202095%_))
                              (let ((_%e197505197531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx202094202095%_))))
                                (let ((_%tl197507197536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197505197531%_)))
                                      (_%hd197506197534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197505197531%_))))
                                  (_%__kont202096202097%_
                                   _%tl197507197536%_
                                   _%hd197506197534%_)))
                              (_%__kont202098202099%_)))))))
                 (_%generate-values-check197411%_
                  (lambda (_%check197487%_ _%body197488%_)
                    (cons 'begin
                          (let ((__tmp202861 (cons _%body197488%_ '()))
                                (__tmp202860 (reverse _%check197487%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp202861 __tmp202860)))))
                 (_%generate-values-post197412%_
                  (lambda (_%post197480%_ _%body197481%_)
                    (cons 'begin
                          (let ((__tmp202865 (cons _%body197481%_ '()))
                                (__tmp202862
                                 (let ((__tmp202864
                                        (lambda (_%g197482197484%_)
                                          (cons 'set! _%g197482197484%_)))
                                       (__tmp202863 (reverse _%post197480%_)))
                                   (declare (not safe))
                                   (##map __tmp202864 __tmp202863))))
                            (declare (not safe))
                            (foldr__0 cons __tmp202865 __tmp202862))))))
          (let* ((_%g197414197431%_
                  (lambda (_%g197415197428%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197415197428%_))))
                 (_%g197413197477%_
                  (lambda (_%g197415197434%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197415197434%_))
                        (let ((_%e197418197436%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197415197434%_))))
                          (let ((_%hd197419197439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197418197436%_)))
                                (_%tl197420197441%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197418197436%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197420197441%_))
                                (let ((_%e197421197444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197420197441%_))))
                                  (let ((_%hd197422197447%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197421197444%_)))
                                        (_%tl197423197449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197421197444%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197423197449%_))
                                        (let ((_%e197424197452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197423197449%_))))
                                          (let ((_%hd197425197455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197424197452%_)))
                                                (_%tl197426197457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197424197452%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197426197457%_))
                                                ((lambda (_%g197416197460%_
                                                          _%g197417197461%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g197417197461%_)
                                                       (_%generate-simple197409%_
                                                        _%g197417197461%_
                                                        _%g197416197460%_)
                                                       (_%generate-values197410%_
                                                        _%g197417197461%_
                                                        _%g197416197460%_)))
                                                 _%hd197425197455%_
                                                 _%hd197422197447%_)
                                                (_%g197414197431%_
                                                 _%g197415197434%_))))
                                        (_%g197414197431%_
                                         _%g197415197434%_))))
                                (_%g197414197431%_ _%g197415197434%_))))
                        (_%g197414197431%_ _%g197415197434%_)))))
            (_%g197413197477%_ _%stx197406%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self197717%_ _%stx197718%_)
        (let ((_%compiled-body?197720%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self197717%_
           _%stx197718%_
           _%compiled-body?197720%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g202866_
        (let ((_g202867_ (let () (declare (not safe)) (##length _g202866_))))
          (cond ((let () (declare (not safe)) (##fx= _g202867_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g202866_))
                ((let () (declare (not safe)) (##fx= _g202867_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g202866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g202866_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self196986%_ _%stx196987%_)
        (letrec ((_%generate-values196989%_
                  (lambda (_%hd197232%_ _%body197233%_)
                    (let _%lp197235%_ ((_%rest197237%_ _%hd197232%_)
                                       (_%bind197238%_ '()))
                      (let* ((_%rest197239197247%_ _%rest197237%_)
                             (_%else197241197258%_
                              (lambda ()
                                (let ((_%bind197255%_ (reverse _%bind197238%_))
                                      (_%body197256%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self196986%_
                                          _%body197233%_))))
                                  (cons 'letrec*
                                        (cons _%bind197255%_
                                              (cons _%body197256%_ '()))))))
                             (_%K197243197392%_
                              (lambda (_%rest197261%_ _%hd-bind197262%_)
                                (let* ((_%__stx202108202109%_
                                        _%hd-bind197262%_)
                                       (_%g197265197290%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx202108202109%_)))))
                                  (let ((_%__kont202110202111%_
                                         (lambda (_%g197267197371%_
                                                  _%g197268197372%_)
                                           (let ((_%eid197386%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g197268197372%_)))
                                                 (_%expr197387%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self196986%_
                                                     _%g197267197371%_))))
                                             (_%lp197235%_
                                              _%rest197261%_
                                              (cons (cons _%eid197386%_
                                                          (cons _%expr197387%_
                                                                '()))
                                                    _%bind197238%_)))))
                                        (_%__kont202112202113%_
                                         (lambda (_%g197278197311%_
                                                  _%g197279197312%_)
                                           (let* ((_%vals197331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp197333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values197335%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp197333%_
                                                    _%g197279197312%_
                                                    _%g197278197311%_))
                                                  (_%refs197337%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals197331%_
                                                    _%g197279197312%_))
                                                  (_%expr197339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196986%_
                                                      _%g197278197311%_))))
                                             (_%lp197235%_
                                              _%rest197261%_
                                              (let ((__tmp202868
                                                     (cons (cons _%vals197331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp197333%_
                                                       (cons _%expr197339%_
                                                             '()))
                                                 '())
                                           (cons _%check-values197335%_
                                                 (cons _%tmp197333%_ '()))))
                               '()))
                   _%bind197238%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp202868
                                                 _%refs197337%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx202108202109%_))
                                        (let ((_%e197269197347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx202108202109%_))))
                                          (let ((_%tl197271197352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197269197347%_)))
                                                (_%hd197270197350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197269197347%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd197270197350%_))
                                                (let ((_%e197272197355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197270197350%_))))
                                                  (let ((_%tl197274197360%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197272197355%_)))
                                                        (_%hd197273197358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197272197355%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197274197360%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197271197352%_))
                                                            (let ((_%e197275197363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197271197352%_))))
                      (let ((_%tl197277197368%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197275197363%_)))
                            (_%hd197276197366%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197275197363%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197277197368%_))
                            (_%__kont202110202111%_
                             _%hd197276197366%_
                             _%hd197273197358%_)
                            (let ()
                              (declare (not safe))
                              (_%g197265197290%_)))))
                    (let () (declare (not safe)) (_%g197265197290%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197271197352%_))
                    (let ((_%e197283197303%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197271197352%_))))
                      (let ((_%tl197285197308%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197283197303%_)))
                            (_%hd197284197306%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197283197303%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197285197308%_))
                            (_%__kont202112202113%_
                             _%hd197284197306%_
                             _%hd197270197350%_)
                            (let ()
                              (declare (not safe))
                              (_%g197265197290%_)))))
                    (let () (declare (not safe)) (_%g197265197290%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197271197352%_))
                                                    (let ((_%e197283197303%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197271197352%_))))
                                                      (let ((_%tl197285197308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197283197303%_)))
                    (_%hd197284197306%_
                     (let () (declare (not safe)) (##car _%e197283197303%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197285197308%_))
                    (_%__kont202112202113%_
                     _%hd197284197306%_
                     _%hd197270197350%_)
                    (let () (declare (not safe)) (_%g197265197290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197265197290%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197265197290%_))))))))
                        (if (pair? _%rest197239197247%_)
                            (let ((_%hd197244197395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197239197247%_)))
                                  (_%tl197245197397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197239197247%_))))
                              (let* ((_%hd-bind197400%_ _%hd197244197395%_)
                                     (_%rest197402%_ _%tl197245197397%_))
                                (_%K197243197392%_
                                 _%rest197402%_
                                 _%hd-bind197400%_)))
                            (_%else197241197258%_))))))
                 (_%generate-letrec?196990%_
                  (lambda (_%hd197122%_)
                    (let _%lp197124%_ ((_%rest197126%_ _%hd197122%_))
                      (let* ((_%rest197127197135%_ _%rest197126%_)
                             (_%else197129197143%_ (lambda () '#t))
                             (_%K197131197220%_
                              (lambda (_%rest197146%_ _%hd-bind197147%_)
                                (let* ((_%g197149197166%_
                                        (lambda (_%g197150197163%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g197150197163%_))))
                                       (_%g197148197217%_
                                        (lambda (_%g197150197169%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g197150197169%_))
                                              (let ((_%e197153197171%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g197150197169%_))))
                                                (let ((_%hd197154197174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197153197171%_)))
                                                      (_%tl197155197176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197153197171%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd197154197174%_))
                                                      (let ((_%e197156197179%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd197154197174%_))))
                (let ((_%hd197157197182%_
                       (let () (declare (not safe)) (##car _%e197156197179%_)))
                      (_%tl197158197184%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197156197179%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197158197184%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197155197176%_))
                          (let ((_%e197159197187%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197155197176%_))))
                            (let ((_%hd197160197190%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197159197187%_)))
                                  (_%tl197161197192%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197159197187%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197161197192%_))
                                  ((lambda (_%g197151197195%_
                                            _%g197152197196%_)
                                     (if (_%is-lambda-expr?196991%_
                                          _%g197151197195%_)
                                         (_%lp197124%_ _%rest197146%_)
                                         '#f))
                                   _%hd197160197190%_
                                   _%hd197157197182%_)
                                  (_%g197149197166%_ _%g197150197169%_))))
                          (_%g197149197166%_ _%g197150197169%_))
                      (_%g197149197166%_ _%g197150197169%_))))
              (_%g197149197166%_ _%g197150197169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197149197166%_
                                               _%g197150197169%_)))))
                                  (_%g197148197217%_ _%hd-bind197147%_)))))
                        (if (pair? _%rest197127197135%_)
                            (let ((_%hd197132197223%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197127197135%_)))
                                  (_%tl197133197225%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197127197135%_))))
                              (let* ((_%hd-bind197228%_ _%hd197132197223%_)
                                     (_%rest197230%_ _%tl197133197225%_))
                                (_%K197131197220%_
                                 _%rest197230%_
                                 _%hd-bind197228%_)))
                            (_%else197129197143%_))))))
                 (_%is-lambda-expr?196991%_
                  (lambda (_%expr197059%_)
                    (let* ((_%__stx202152202153%_ _%expr197059%_)
                           (_%g197062197076%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx202152202153%_)))))
                      (let ((_%__kont202154202155%_
                             (lambda (_%g197064197104%_ _%g197065197105%_)
                               '#t))
                            (_%__kont202156202157%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx202152202153%_))
                            (let ((_%e197066197088%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx202152202153%_))))
                              (let ((_%tl197068197093%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197066197088%_)))
                                    (_%hd197067197091%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197066197088%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197067197091%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd197067197091%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197068197093%_))
                                            (let ((_%e197069197096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197068197093%_))))
                                              (let ((_%tl197071197101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197069197096%_)))
                                                    (_%hd197070197099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197069197096%_))))
                                                (_%__kont202154202155%_
                                                 _%tl197071197101%_
                                                 _%hd197070197099%_)))
                                            (_%__kont202156202157%_))
                                        (_%__kont202156202157%_))
                                    (_%__kont202156202157%_))))
                            (_%__kont202156202157%_)))))))
          (let* ((_%g196993197010%_
                  (lambda (_%g196994197007%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196994197007%_))))
                 (_%g196992197056%_
                  (lambda (_%g196994197013%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196994197013%_))
                        (let ((_%e196997197015%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196994197013%_))))
                          (let ((_%hd196998197018%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196997197015%_)))
                                (_%tl196999197020%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196997197015%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196999197020%_))
                                (let ((_%e197000197023%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196999197020%_))))
                                  (let ((_%hd197001197026%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197000197023%_)))
                                        (_%tl197002197028%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197000197023%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197002197028%_))
                                        (let ((_%e197003197031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197002197028%_))))
                                          (let ((_%hd197004197034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197003197031%_)))
                                                (_%tl197005197036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197003197031%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197005197036%_))
                                                ((lambda (_%g196995197039%_
                                                          _%g196996197040%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g196996197040%_)
                                                       (if (_%generate-letrec?196990%_
                                                            _%g196996197040%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self196986%_
                                                            'letrec
                                                            _%g196996197040%_
                                                            _%g196995197039%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self196986%_
                                                            'letrec*
                                                            _%g196996197040%_
                                                            _%g196995197039%_
                                                            '#f))
                                                       (_%generate-values196989%_
                                                        _%g196996197040%_
                                                        _%g196995197039%_)))
                                                 _%hd197004197034%_
                                                 _%hd197001197026%_)
                                                (_%g196993197010%_
                                                 _%g196994197013%_))))
                                        (_%g196993197010%_
                                         _%g196994197013%_))))
                                (_%g196993197010%_ _%g196994197013%_))))
                        (_%g196993197010%_ _%g196994197013%_)))))
            (_%g196992197056%_ _%stx196987%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd196923%_)
        (let _%lp196925%_ ((_%rest196927%_ _%hd196923%_))
          (let* ((_%rest196928196944%_ _%rest196927%_)
                 (_%else196931196952%_ (lambda () '#f)))
            (let ((_%K196934196965%_
                   (lambda (_%rest196963%_) (_%lp196925%_ _%rest196963%_)))
                  (_%K196933196957%_ (lambda () '#t)))
              (let ((_%try-match196930196960%_
                     (lambda ()
                       (if (null? _%rest196928196944%_)
                           (_%K196933196957%_)
                           (_%else196931196952%_)))))
                (if (pair? _%rest196928196944%_)
                    (let ((_%tl196936196970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest196928196944%_)))
                          (_%hd196935196968%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest196928196944%_))))
                      (if (pair? _%hd196935196968%_)
                          (let ((_%tl196938196975%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd196935196968%_)))
                                (_%hd196937196973%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd196935196968%_))))
                            (if (pair? _%hd196937196973%_)
                                (let ((_%tl196942196978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd196937196973%_))))
                                  (if (null? _%tl196942196978%_)
                                      (if (pair? _%tl196938196975%_)
                                          (let ((_%tl196940196981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl196938196975%_))))
                                            (if (null? _%tl196940196981%_)
                                                (let ((_%rest196984%_
                                                       _%tl196936196970%_))
                                                  (_%lp196925%_
                                                   _%rest196984%_))
                                                (_%else196931196952%_)))
                                          (_%else196931196952%_))
                                      (_%else196931196952%_)))
                                (_%else196931196952%_)))
                          (_%else196931196952%_)))
                    (_%try-match196930196960%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self196835%_
               _%form196836%_
               _%hd196837%_
               _%body196838%_
               _%compiled-body?196839%_)
        (letrec ((_%generate1196841%_
                  (lambda (_%bind196880%_)
                    (let* ((_%bind196881196892%_ _%bind196880%_)
                           (_%E196883196895%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind196881196892%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K196884196901%_
                            (lambda (_%expr196898%_ _%id196899%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id196899%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self196835%_
                                             _%expr196898%_))
                                          '())))))
                      (if (pair? _%bind196881196892%_)
                          (let ((_%hd196885196904%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind196881196892%_)))
                                (_%tl196886196906%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind196881196892%_))))
                            (if (pair? _%hd196885196904%_)
                                (let ((_%hd196889196909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd196885196904%_)))
                                      (_%tl196890196911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd196885196904%_))))
                                  (let ((_%id196914%_ _%hd196889196909%_))
                                    (if (null? _%tl196890196911%_)
                                        (if (pair? _%tl196886196906%_)
                                            (let ((_%hd196887196916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl196886196906%_)))
                                                  (_%tl196888196918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl196886196906%_))))
                                              (let ((_%expr196921%_
                                                     _%hd196887196916%_))
                                                (if (null? _%tl196888196918%_)
                                                    (_%K196884196901%_
                                                     _%expr196921%_
                                                     _%id196914%_)
                                                    (_%E196883196895%_))))
                                            (_%E196883196895%_))
                                        (_%E196883196895%_))))
                                (_%E196883196895%_)))
                          (_%E196883196895%_))))))
          (let* ((_%bind196843%_ (map _%generate1196841%_ _%hd196837%_))
                 (_%body196845%_
                  (if _%compiled-body?196839%_
                      _%body196838%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196835%_ _%body196838%_))))
                 (_%body196877%_
                  (let* ((_%body196846196854%_ _%body196845%_)
                         (_%else196848196862%_
                          (lambda () (cons _%body196845%_ '())))
                         (_%K196850196867%_
                          (lambda (_%exprs196865%_) _%exprs196865%_)))
                    (if (pair? _%body196846196854%_)
                        (let ((_%hd196851196870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body196846196854%_)))
                              (_%tl196852196872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body196846196854%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd196851196870%_ 'begin))
                              (let ((_%exprs196875%_ _%tl196852196872%_))
                                (_%K196850196867%_ _%exprs196875%_))
                              (_%else196848196862%_)))
                        (_%else196848196862%_)))))
            (cons _%form196836%_ (cons _%bind196843%_ _%body196877%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self196735%_ _%stx196736%_)
        (letrec ((_%generate1196738%_
                  (lambda (_%datum196790%_)
                    (if (or (null? _%datum196790%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum196790%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum196790%_))
                            (eof-object? _%datum196790%_))
                        _%datum196790%_
                        (if (uninterned-symbol? _%datum196790%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum196790%_
                               '#t))
                            (if (pair? _%datum196790%_)
                                (cons (_%generate1196738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum196790%_)))
                                      (_%generate1196738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum196790%_))))
                                (if (box? _%datum196790%_)
                                    (box (_%generate1196738%_
                                          (unbox _%datum196790%_)))
                                    (if (vector? _%datum196790%_)
                                        (vector-map
                                         _%generate1196738%_
                                         _%datum196790%_)
                                        (if (or (s8vector? _%datum196790%_)
                                                (u8vector? _%datum196790%_)
                                                (s16vector? _%datum196790%_)
                                                (u16vector? _%datum196790%_)
                                                (s32vector? _%datum196790%_)
                                                (u32vector? _%datum196790%_)
                                                (s64vector? _%datum196790%_)
                                                (u64vector? _%datum196790%_)
                                                (f32vector? _%datum196790%_)
                                                (f64vector? _%datum196790%_))
                                            _%datum196790%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx196736%_)))))))))))
          (let* ((_%g196740196753%_
                  (lambda (_%g196741196750%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196741196750%_))))
                 (_%g196739196787%_
                  (lambda (_%g196741196756%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196741196756%_))
                        (let ((_%e196743196758%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196741196756%_))))
                          (let ((_%hd196744196761%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196743196758%_)))
                                (_%tl196745196763%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196743196758%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196745196763%_))
                                (let ((_%e196746196766%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196745196763%_))))
                                  (let ((_%hd196747196769%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196746196766%_)))
                                        (_%tl196748196771%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196746196766%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196748196771%_))
                                        ((lambda (_%g196742196774%_)
                                           (cons 'quote
                                                 (cons (_%generate1196738%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g196742196774%_)))
                                                       '())))
                                         _%hd196747196769%_)
                                        (_%g196740196753%_
                                         _%g196741196756%_))))
                                (_%g196740196753%_ _%g196741196756%_))))
                        (_%g196740196753%_ _%g196741196756%_)))))
            (_%g196739196787%_ _%stx196736%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self196182%_ _%stx196183%_)
        (letrec ((_%compile-call196185%_
                  (lambda (_%rator196472%_ _%rands196473%_)
                    (let ((_%rator196479%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self196182%_
                              _%rator196472%_)))
                          (_%rands196480%_
                           (map (lambda (_%g196474196476%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self196182%_
                                     _%g196474196476%_)))
                                _%rands196473%_)))
                      (let* ((_%__stx202199202200%_ _%rator196479%_)
                             (_%g196483196535%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx202199202200%_)))))
                        (let ((_%__kont202201202202%_
                               (lambda (_%g196485196655%_
                                        _%g196486196656%_
                                        _%g196487196657%_
                                        _%g196488196658%_)
                                 (if (let ((__tmp202871
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands196480%_)))
                                           (__tmp202869
                                            (length (let ((__tmp202870
                                                           (lambda (_%g196694196697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196695196699%_)
                     (cons _%g196694196697%_ _%g196695196699%_))))
              (declare (not safe))
              (foldr__0 __tmp202870 '() _%g196487196657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp202871 __tmp202869))
                                     (let* ((_%id196702%_ _%g196488196658%_)
                                            (_%args196711%_
                                             (let ((__tmp202872
                                                    (lambda (_%g196703196706%_
                                                             _%g196704196708%_)
                                                      (cons _%g196703196706%_
                                                            _%g196704196708%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202872
                                                '()
                                                _%g196487196657%_)))
                                            (_%body196720%_
                                             (let ((__tmp202873
                                                    (lambda (_%g196712196715%_
                                                             _%g196713196717%_)
                                                      (cons _%g196712196715%_
                                                            _%g196713196717%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp202873
                                                '()
                                                _%g196486196656%_)))
                                            (_%init196722%_
                                             (map list
                                                  _%args196711%_
                                                  _%rands196480%_)))
                                       (cons 'let
                                             (cons _%id196702%_
                                                   (cons _%init196722%_
                                                         _%body196720%_))))
                                     (let ((__tmp202874
                                            (let ((__tmp202875
                                                   (lambda (_%g196724196727%_
                                                            _%g196725196729%_)
                                                     (cons _%g196724196727%_
                                                           _%g196725196729%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp202875
                                               '()
                                               _%g196487196657%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx196183%_
                                        __tmp202874
                                        _%rands196480%_)))))
                              (_%__kont202207202208%_
                               (lambda ()
                                 (cons _%rator196479%_ _%rands196480%_))))
                          (let ((_%__match202266202267%_
                                 (lambda (_%e196489196547%_
                                          _%hd196490196550%_
                                          _%tl196491196552%_
                                          _%e196492196555%_
                                          _%hd196493196558%_
                                          _%tl196494196560%_
                                          _%e196495196563%_
                                          _%hd196496196566%_
                                          _%tl196497196568%_
                                          _%e196498196571%_
                                          _%hd196499196574%_
                                          _%tl196500196576%_
                                          _%e196501196579%_
                                          _%hd196502196582%_
                                          _%tl196503196584%_
                                          _%e196504196587%_
                                          _%hd196505196590%_
                                          _%tl196506196592%_
                                          _%e196507196595%_
                                          _%hd196508196598%_
                                          _%tl196509196600%_
                                          _%__splice202203202204%_
                                          _%target196510196603%_
                                          _%tl196512196605%_)
                                   (letrec ((_%loop196513196608%_
                                             (lambda (_%hd196511196611%_
                                                      _%arg196517196613%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd196511196611%_))
                                                   (let ((_%e196514196615%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd196511196611%_))))
                                                     (let ((_%lp-tl196516196620%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e196514196615%_)))
                                                           (_%lp-hd196515196618%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e196514196615%_))))
                                                       (_%loop196513196608%_
                                                        _%lp-tl196516196620%_
                                                        (cons _%lp-hd196515196618%_
                                                              _%arg196517196613%_))))
                                                   (let ((_%arg196518196623%_
                                                          (reverse _%arg196517196613%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl196509196600%_))
                                                         (let ((_%__splice202205202206%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl196509196600%_
                           '0))))
                   (let ((_%tl196521196627%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice202205202206%_ '1)))
                         (_%target196519196625%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice202205202206%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl196521196627%_))
                         (letrec ((_%loop196522196630%_
                                   (lambda (_%hd196520196633%_
                                            _%body196526196635%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd196520196633%_))
                                         (let ((_%e196523196637%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd196520196633%_))))
                                           (let ((_%lp-tl196525196642%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196523196637%_)))
                                                 (_%lp-hd196524196640%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196523196637%_))))
                                             (_%loop196522196630%_
                                              _%lp-tl196525196642%_
                                              (cons _%lp-hd196524196640%_
                                                    _%body196526196635%_))))
                                         (let ((_%body196527196645%_
                                                (reverse _%body196526196635%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl196503196584%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl196497196568%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl196494196560%_))
                                                       (let ((_%e196528196647%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl196494196560%_))))
                 (let ((_%tl196530196652%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e196528196647%_)))
                       (_%hd196529196650%_
                        (let ()
                          (declare (not safe))
                          (##car _%e196528196647%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl196530196652%_))
                       (let ((_%g196485196655%_ _%hd196529196650%_)
                             (_%g196486196656%_ _%body196527196645%_)
                             (_%g196487196657%_ _%arg196518196623%_)
                             (_%g196488196658%_ _%hd196499196574%_))
                         (if (eq? _%g196488196658%_ _%g196485196655%_)
                             (_%__kont202201202202%_
                              _%g196485196655%_
                              _%g196486196656%_
                              _%g196487196657%_
                              _%g196488196658%_)
                             (_%__kont202207202208%_)))
                       (_%__kont202207202208%_))))
               (_%__kont202207202208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont202207202208%_))
                                               (_%__kont202207202208%_)))))))
                           (_%loop196522196630%_ _%target196519196625%_ '()))
                         (_%__kont202207202208%_))))
                 (_%__kont202207202208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop196513196608%_
                                      _%target196510196603%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx202199202200%_))
                                (let ((_%e196489196547%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx202199202200%_))))
                                  (let ((_%tl196491196552%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196489196547%_)))
                                        (_%hd196490196550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196489196547%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196490196550%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd196490196550%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196491196552%_))
                                                (let ((_%e196492196555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196491196552%_))))
                                                  (let ((_%tl196494196560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196492196555%_)))
                                                        (_%hd196493196558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196492196555%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196493196558%_))
                                                        (let ((_%e196495196563%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196493196558%_))))
                  (let ((_%tl196497196568%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196495196563%_)))
                        (_%hd196496196566%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196495196563%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196496196566%_))
                        (let ((_%e196498196571%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd196496196566%_))))
                          (let ((_%tl196500196576%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196498196571%_)))
                                (_%hd196499196574%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196498196571%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196500196576%_))
                                (let ((_%e196501196579%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196500196576%_))))
                                  (let ((_%tl196503196584%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196501196579%_)))
                                        (_%hd196502196582%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196501196579%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd196502196582%_))
                                        (let ((_%e196504196587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd196502196582%_))))
                                          (let ((_%tl196506196592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196504196587%_)))
                                                (_%hd196505196590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196504196587%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd196505196590%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd196505196590%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl196506196592%_))
                                                        (let ((_%e196507196595%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl196506196592%_))))
                  (let ((_%tl196509196600%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196507196595%_)))
                        (_%hd196508196598%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196507196595%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd196508196598%_))
                        (let ((_%__splice202203202204%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd196508196598%_
                                  '0))))
                          (let ((_%tl196512196605%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice202203202204%_ '1)))
                                (_%target196510196603%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice202203202204%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196512196605%_))
                                (_%__match202266202267%_
                                 _%e196489196547%_
                                 _%hd196490196550%_
                                 _%tl196491196552%_
                                 _%e196492196555%_
                                 _%hd196493196558%_
                                 _%tl196494196560%_
                                 _%e196495196563%_
                                 _%hd196496196566%_
                                 _%tl196497196568%_
                                 _%e196498196571%_
                                 _%hd196499196574%_
                                 _%tl196500196576%_
                                 _%e196501196579%_
                                 _%hd196502196582%_
                                 _%tl196503196584%_
                                 _%e196504196587%_
                                 _%hd196505196590%_
                                 _%tl196506196592%_
                                 _%e196507196595%_
                                 _%hd196508196598%_
                                 _%tl196509196600%_
                                 _%__splice202203202204%_
                                 _%target196510196603%_
                                 _%tl196512196605%_)
                                (_%__kont202207202208%_))))
                        (_%__kont202207202208%_))))
                (_%__kont202207202208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont202207202208%_))
                                                (_%__kont202207202208%_))))
                                        (_%__kont202207202208%_))))
                                (_%__kont202207202208%_))))
                        (_%__kont202207202208%_))))
                (_%__kont202207202208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont202207202208%_))
                                            (_%__kont202207202208%_))
                                        (_%__kont202207202208%_))))
                                (_%__kont202207202208%_)))))))))
          (let* ((_%g196187196210%_
                  (lambda (_%g196188196207%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196188196207%_))))
                 (_%g196186196469%_
                  (lambda (_%g196188196213%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196188196213%_))
                        (let ((_%e196191196215%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196188196213%_))))
                          (let ((_%hd196192196218%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196191196215%_)))
                                (_%tl196193196220%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196191196215%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196193196220%_))
                                (let ((_%e196194196223%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196193196220%_))))
                                  (let ((_%hd196195196226%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196194196223%_)))
                                        (_%tl196196196228%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196194196223%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl196196196228%_))
                                        (let ((_g202876_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl196196196228%_
                                                  '0))))
                                          (begin
                                            (let ((_g202877_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g202876_)
                                                         (##values-length
                                                          _g202876_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g202877_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g202877_)))
                                            (let ((_%target196197196231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202876_
                                                      0)))
                                                  (_%tl196199196233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g202876_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196199196233%_))
                                                  (letrec ((_%loop196200196236%_
                                                            (lambda (_%hd196198196239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand196204196241%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196198196239%_))
                          (let ((_%e196201196243%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196198196239%_))))
                            (let ((_%lp-hd196202196246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196201196243%_)))
                                  (_%lp-tl196203196248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196201196243%_))))
                              (_%loop196200196236%_
                               _%lp-tl196203196248%_
                               (cons _%lp-hd196202196246%_
                                     _%rand196204196241%_))))
                          (let ((_%rand196205196251%_
                                 (reverse _%rand196204196241%_)))
                            ((lambda (_%g196189196253%_ _%g196190196254%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call196185%_
                                    _%g196190196254%_
                                    (let ((__tmp202878
                                           (lambda (_%g196271196274%_
                                                    _%g196272196276%_)
                                             (cons _%g196271196274%_
                                                   _%g196272196276%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp202878
                                       '()
                                       _%g196189196253%_)))
                                   (let* ((_%__stx202315202316%_
                                           _%g196190196254%_)
                                          (_%g196280196292%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx202315202316%_)))))
                                     (let ((_%__kont202317202318%_
                                            (lambda ()
                                              (let ((_%f196329%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self196182%_
                                                        _%g196190196254%_))))
                                                (if (and (let ((__tmp202879
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f196329%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp202879))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f196329%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp196331%_ ((_%rest196334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp202881
                                                (lambda (_%g196451196454%_
                                                         _%g196452196456%_)
                                                  (cons _%g196451196454%_
                                                        _%g196452196456%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp202881
                                            '()
                                            _%g196189196253%_))))
                               (_%bind196336%_ '())
                               (_%args196337%_ '()))
              (let* ((_%rest196338196346%_ _%rest196334%_)
                     (_%else196340196354%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind196336%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f196329%_
                                                      _%args196337%_)
                                                '()))))))
                     (_%K196342196440%_
                      (lambda (_%rest196357%_ _%e196358%_)
                        (let* ((_%__stx202269202270%_ _%e196358%_)
                               (_%g196363196381%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx202269202270%_)))))
                          (let ((_%__kont202271202272%_
                                 (lambda ()
                                   (_%lp196331%_
                                    _%rest196357%_
                                    _%bind196336%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e196358%_))
                                          _%args196337%_))))
                                (_%__kont202273202274%_
                                 (lambda ()
                                   (_%lp196331%_
                                    _%rest196357%_
                                    _%bind196336%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e196358%_))
                                          _%args196337%_))))
                                (_%__kont202275202276%_
                                 (lambda ()
                                   (let ((_%tmp196388%_
                                          (let ((__tmp202880
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp202880))))
                                     (_%lp196331%_
                                      _%rest196357%_
                                      (cons (cons _%tmp196388%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e196358%_))
                                                        '()))
                                            _%bind196336%_)
                                      (cons _%tmp196388%_ _%args196337%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx202269202270%_))
                                (let ((_%e196365196419%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx202269202270%_))))
                                  (let ((_%tl196367196424%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196365196419%_)))
                                        (_%hd196366196422%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196365196419%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196366196422%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd196366196422%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196367196424%_))
                                                (let ((_%e196368196427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196367196424%_))))
                                                  (let ((_%tl196370196432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196368196427%_)))
                                                        (_%hd196369196430%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196368196427%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196370196432%_))
                                                        (_%__kont202271202272%_)
                                                        (_%__kont202275202276%_))))
                                                (_%__kont202275202276%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd196366196422%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl196367196424%_))
                                                    (let ((_%e196374196404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl196367196424%_))))
                                                      (let ((_%tl196376196409%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e196374196404%_)))
                    (_%hd196375196407%_
                     (let () (declare (not safe)) (##car _%e196374196404%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl196376196409%_))
                    (_%__kont202273202274%_)
                    (_%__kont202275202276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont202275202276%_))
                                                (_%__kont202275202276%_)))
                                        (_%__kont202275202276%_))))
                                (_%__kont202275202276%_)))))))
                (if (pair? _%rest196338196346%_)
                    (let ((_%hd196343196443%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest196338196346%_)))
                          (_%tl196344196445%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest196338196346%_))))
                      (let* ((_%e196448%_ _%hd196343196443%_)
                             (_%rest196450%_ _%tl196344196445%_))
                        (_%K196342196440%_ _%rest196450%_ _%e196448%_)))
                    (_%else196340196354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call196185%_
                                                     _%g196190196254%_
                                                     (let ((__tmp202882
                                                            (lambda (_%g196458196461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g196459196463%_)
                      (cons _%g196458196461%_ _%g196459196463%_))))
               (declare (not safe))
               (foldr__0 __tmp202882 '() _%g196189196253%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont202319202320%_
                                            (lambda ()
                                              (_%compile-call196185%_
                                               _%g196190196254%_
                                               (let ((__tmp202883
                                                      (lambda (_%g196298196301%_
                                                               _%g196299196303%_)
                                                        (cons _%g196298196301%_
                                                              _%g196299196303%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp202883
                                                  '()
                                                  _%g196189196253%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx202315202316%_))
                                           (let ((_%e196282196311%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx202315202316%_))))
                                             (let ((_%tl196284196316%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e196282196311%_)))
                                                   (_%hd196283196314%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e196282196311%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd196283196314%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd196283196314%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl196284196316%_))
                                                           (let ((_%e196285196319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl196284196316%_))))
                     (let ((_%tl196287196324%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e196285196319%_)))
                           (_%hd196286196322%_
                            (let ()
                              (declare (not safe))
                              (##car _%e196285196319%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl196287196324%_))
                           (_%__kont202317202318%_)
                           (_%__kont202319202320%_))))
                   (_%__kont202319202320%_))
               (_%__kont202319202320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont202319202320%_))))
                                           (_%__kont202319202320%_))))))
                             _%rand196205196251%_
                             _%hd196195196226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop196200196236%_
                                                     _%target196197196231%_
                                                     '()))
                                                  (_%g196187196210%_
                                                   _%g196188196213%_)))))
                                        (_%g196187196210%_
                                         _%g196188196213%_))))
                                (_%g196187196210%_ _%g196188196213%_))))
                        (_%g196187196210%_ _%g196188196213%_)))))
            (_%g196186196469%_ _%stx196183%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self195927%_ _%stx195928%_)
        (let* ((_%__stx202387202388%_ _%stx195928%_)
               (_%g195931195960%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202387202388%_)))))
          (let ((_%__kont202389202390%_
                 (lambda (_%g195933196026%_ _%g195934196027%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self195927%_
                        _%stx195928%_)
                       (let ((_%f196049%_
                              (let ((__tmp202884
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g195934196027%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self195927%_
                                 __tmp202884))))
                         (let _%lp196051%_ ((_%rest196054%_
                                             (reverse (let ((__tmp202886
                                                             (lambda (_%g196171196174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g196172196176%_)
                       (cons _%g196171196174%_ _%g196172196176%_))))
                (declare (not safe))
                (foldr__0 __tmp202886 '() _%g195933196026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind196056%_ '())
                                            (_%args196057%_ '()))
                           (let* ((_%rest196058196066%_ _%rest196054%_)
                                  (_%else196060196074%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind196056%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f196049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args196057%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K196062196160%_
                                   (lambda (_%rest196077%_ _%e196078%_)
                                     (let* ((_%__stx202341202342%_ _%e196078%_)
                                            (_%g196083196101%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx202341202342%_)))))
                                       (let ((_%__kont202343202344%_
                                              (lambda ()
                                                (_%lp196051%_
                                                 _%rest196077%_
                                                 _%bind196056%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e196078%_))
                                                       _%args196057%_))))
                                             (_%__kont202345202346%_
                                              (lambda ()
                                                (_%lp196051%_
                                                 _%rest196077%_
                                                 _%bind196056%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e196078%_))
                                                       _%args196057%_))))
                                             (_%__kont202347202348%_
                                              (lambda ()
                                                (let ((_%tmp196108%_
                                                       (let ((__tmp202885
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp202885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp196051%_
                                                   _%rest196077%_
                                                   (cons (cons _%tmp196108%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e196078%_))
                             '()))
                 _%bind196056%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp196108%_
                                                         _%args196057%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx202341202342%_))
                                             (let ((_%e196085196139%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx202341202342%_))))
                                               (let ((_%tl196087196144%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e196085196139%_)))
                                                     (_%hd196086196142%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e196085196139%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd196086196142%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd196086196142%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl196087196144%_))
                     (let ((_%e196088196147%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl196087196144%_))))
                       (let ((_%tl196090196152%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e196088196147%_)))
                             (_%hd196089196150%_
                              (let ()
                                (declare (not safe))
                                (##car _%e196088196147%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl196090196152%_))
                             (_%__kont202343202344%_)
                             (_%__kont202347202348%_))))
                     (_%__kont202347202348%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd196086196142%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl196087196144%_))
                         (let ((_%e196094196124%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl196087196144%_))))
                           (let ((_%tl196096196129%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196094196124%_)))
                                 (_%hd196095196127%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196094196124%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl196096196129%_))
                                 (_%__kont202345202346%_)
                                 (_%__kont202347202348%_))))
                         (_%__kont202347202348%_))
                     (_%__kont202347202348%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202347202348%_))))
                                             (_%__kont202347202348%_)))))))
                             (if (pair? _%rest196058196066%_)
                                 (let ((_%hd196063196163%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest196058196066%_)))
                                       (_%tl196064196165%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest196058196066%_))))
                                   (let* ((_%e196168%_ _%hd196063196163%_)
                                          (_%rest196170%_ _%tl196064196165%_))
                                     (_%K196062196160%_
                                      _%rest196170%_
                                      _%e196168%_)))
                                 (_%else196060196074%_))))))))
                (_%__kont202393202394%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self195927%_ _%stx195928%_))))
            (let ((_%__match202432202433%_
                   (lambda (_%e195935195972%_
                            _%hd195936195975%_
                            _%tl195937195977%_
                            _%e195938195980%_
                            _%hd195939195983%_
                            _%tl195940195985%_
                            _%e195941195988%_
                            _%hd195942195991%_
                            _%tl195943195993%_
                            _%e195944195996%_
                            _%hd195945195999%_
                            _%tl195946196001%_
                            _%__splice202391202392%_
                            _%target195947196004%_
                            _%tl195949196006%_)
                     (letrec ((_%loop195950196009%_
                               (lambda (_%hd195948196012%_
                                        _%rand195954196014%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195948196012%_))
                                     (let ((_%e195951196016%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195948196012%_))))
                                       (let ((_%lp-tl195953196021%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195951196016%_)))
                                             (_%lp-hd195952196019%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195951196016%_))))
                                         (_%loop195950196009%_
                                          _%lp-tl195953196021%_
                                          (cons _%lp-hd195952196019%_
                                                _%rand195954196014%_))))
                                     (let ((_%rand195955196024%_
                                            (reverse _%rand195954196014%_)))
                                       (_%__kont202389202390%_
                                        _%rand195955196024%_
                                        _%hd195945195999%_))))))
                       (_%loop195950196009%_ _%target195947196004%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202387202388%_))
                  (let ((_%e195935195972%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx202387202388%_))))
                    (let ((_%tl195937195977%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195935195972%_)))
                          (_%hd195936195975%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195935195972%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195937195977%_))
                          (let ((_%e195938195980%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195937195977%_))))
                            (let ((_%tl195940195985%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195938195980%_)))
                                  (_%hd195939195983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195938195980%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195939195983%_))
                                  (let ((_%e195941195988%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195939195983%_))))
                                    (let ((_%tl195943195993%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195941195988%_)))
                                          (_%hd195942195991%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195941195988%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195942195991%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195942195991%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195943195993%_))
                                                  (let ((_%e195944195996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195943195993%_))))
                                                    (let ((_%tl195946196001%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195944195996%_)))
                                                          (_%hd195945195999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195944195996%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195946196001%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195940195985%_))
                      (let ((_%__splice202391202392%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl195940195985%_
                                '0))))
                        (let ((_%tl195949196006%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202391202392%_ '1)))
                              (_%target195947196004%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202391202392%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195949196006%_))
                              (_%__match202432202433%_
                               _%e195935195972%_
                               _%hd195936195975%_
                               _%tl195937195977%_
                               _%e195938195980%_
                               _%hd195939195983%_
                               _%tl195940195985%_
                               _%e195941195988%_
                               _%hd195942195991%_
                               _%tl195943195993%_
                               _%e195944195996%_
                               _%hd195945195999%_
                               _%tl195946196001%_
                               _%__splice202391202392%_
                               _%target195947196004%_
                               _%tl195949196006%_)
                              (_%__kont202393202394%_))))
                      (_%__kont202393202394%_))
                  (_%__kont202393202394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202393202394%_))
                                              (_%__kont202393202394%_))
                                          (_%__kont202393202394%_))))
                                  (_%__kont202393202394%_))))
                          (_%__kont202393202394%_))))
                  (_%__kont202393202394%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self195739%_ _%stx195740%_)
        (letrec ((_%simplify195742%_
                  (lambda (_%code195827%_)
                    (let* ((_%code195828195846%_ _%code195827%_)
                           (_%else195830195854%_ (lambda () _%code195827%_))
                           (_%K195832195890%_
                            (lambda (_%expr195857%_ _%test195858%_)
                              (let* ((_%expr195859195867%_ _%expr195857%_)
                                     (_%else195861195875%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test195858%_
                                                    (cons _%expr195857%_
                                                          '())))))
                                     (_%K195863195880%_
                                      (lambda (_%exprs195878%_)
                                        (cons 'and
                                              (cons _%test195858%_
                                                    _%exprs195878%_)))))
                                (if (pair? _%expr195859195867%_)
                                    (let ((_%hd195864195883%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr195859195867%_)))
                                          (_%tl195865195885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr195859195867%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd195864195883%_ 'and))
                                          (let ((_%exprs195888%_
                                                 _%tl195865195885%_))
                                            (_%K195863195880%_
                                             _%exprs195888%_))
                                          (_%else195861195875%_)))
                                    (_%else195861195875%_))))))
                      (if (pair? _%code195828195846%_)
                          (let ((_%hd195833195893%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code195828195846%_)))
                                (_%tl195834195895%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code195828195846%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd195833195893%_ 'if))
                                (if (pair? _%tl195834195895%_)
                                    (let ((_%hd195835195898%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl195834195895%_)))
                                          (_%tl195836195900%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl195834195895%_))))
                                      (let ((_%test195903%_
                                             _%hd195835195898%_))
                                        (if (pair? _%tl195836195900%_)
                                            (let ((_%hd195837195905%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl195836195900%_)))
                                                  (_%tl195838195907%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl195836195900%_))))
                                              (let ((_%expr195910%_
                                                     _%hd195837195905%_))
                                                (if (pair? _%tl195838195907%_)
                                                    (let ((_%hd195839195912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl195838195907%_)))
                                                          (_%tl195840195914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl195838195907%_))))
                                                      (if (pair? _%hd195839195912%_)
                                                          (let ((_%hd195841195917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd195839195912%_)))
                        (_%tl195842195919%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd195839195912%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd195841195917%_ 'quote))
                        (if (pair? _%tl195842195919%_)
                            (let ((_%hd195843195922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl195842195919%_)))
                                  (_%tl195844195924%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl195842195919%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd195843195922%_ '#f))
                                  (if (null? _%tl195844195924%_)
                                      (if (null? _%tl195840195914%_)
                                          (_%K195832195890%_
                                           _%expr195910%_
                                           _%test195903%_)
                                          (_%else195830195854%_))
                                      (_%else195830195854%_))
                                  (_%else195830195854%_)))
                            (_%else195830195854%_))
                        (_%else195830195854%_)))
                  (_%else195830195854%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else195830195854%_))))
                                            (_%else195830195854%_))))
                                    (_%else195830195854%_))
                                (_%else195830195854%_)))
                          (_%else195830195854%_))))))
          (let* ((_%g195744195765%_
                  (lambda (_%g195745195762%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195745195762%_))))
                 (_%g195743195824%_
                  (lambda (_%g195745195768%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195745195768%_))
                        (let ((_%e195749195770%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195745195768%_))))
                          (let ((_%hd195750195773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195749195770%_)))
                                (_%tl195751195775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195749195770%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195751195775%_))
                                (let ((_%e195752195778%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195751195775%_))))
                                  (let ((_%hd195753195781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195752195778%_)))
                                        (_%tl195754195783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195752195778%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195754195783%_))
                                        (let ((_%e195755195786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195754195783%_))))
                                          (let ((_%hd195756195789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195755195786%_)))
                                                (_%tl195757195791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195755195786%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195757195791%_))
                                                (let ((_%e195758195794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195757195791%_))))
                                                  (let ((_%hd195759195797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195758195794%_)))
                                                        (_%tl195760195799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195758195794%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195760195799%_))
                                                        ((lambda (_%g195746195802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g195747195803%_
                          _%g195748195804%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify195742%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self195739%_
                                       _%g195748195804%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self195739%_
                                             _%g195747195803%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self195739%_
                                                   _%g195746195802%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp202887
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self195739%_
                                               _%g195748195804%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp202887
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self195739%_
                                            _%g195747195803%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self195739%_
                                                  _%g195746195802%_))
                                               '()))))))
                 _%hd195759195797%_
                 _%hd195756195789%_
                 _%hd195753195781%_)
                (_%g195744195765%_ _%g195745195768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g195744195765%_
                                                 _%g195745195768%_))))
                                        (_%g195744195765%_
                                         _%g195745195768%_))))
                                (_%g195744195765%_ _%g195745195768%_))))
                        (_%g195744195765%_ _%g195745195768%_)))))
            (_%g195743195824%_ _%stx195740%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self195687%_ _%stx195688%_)
        (let* ((_%g195690195703%_
                (lambda (_%g195691195700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195691195700%_))))
               (_%g195689195736%_
                (lambda (_%g195691195706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195691195706%_))
                      (let ((_%e195693195708%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195691195706%_))))
                        (let ((_%hd195694195711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195693195708%_)))
                              (_%tl195695195713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195693195708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195695195713%_))
                              (let ((_%e195696195716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195695195713%_))))
                                (let ((_%hd195697195719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195696195716%_)))
                                      (_%tl195698195721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195696195716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195698195721%_))
                                      ((lambda (_%g195692195724%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g195692195724%_)))
                                       _%hd195697195719%_)
                                      (_%g195690195703%_ _%g195691195706%_))))
                              (_%g195690195703%_ _%g195691195706%_))))
                      (_%g195690195703%_ _%g195691195706%_)))))
          (_%g195689195736%_ _%stx195688%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self195619%_ _%stx195620%_)
        (let* ((_%g195622195639%_
                (lambda (_%g195623195636%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195623195636%_))))
               (_%g195621195684%_
                (lambda (_%g195623195642%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195623195642%_))
                      (let ((_%e195626195644%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195623195642%_))))
                        (let ((_%hd195627195647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195626195644%_)))
                              (_%tl195628195649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195626195644%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195628195649%_))
                              (let ((_%e195629195652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195628195649%_))))
                                (let ((_%hd195630195655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195629195652%_)))
                                      (_%tl195631195657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195629195652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195631195657%_))
                                      (let ((_%e195632195660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195631195657%_))))
                                        (let ((_%hd195633195663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195632195660%_)))
                                              (_%tl195634195665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195632195660%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195634195665%_))
                                              ((lambda (_%g195624195668%_
                                                        _%g195625195669%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g195625195669%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self195619%_
                              _%g195624195668%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195633195663%_
                                               _%hd195630195655%_)
                                              (_%g195622195639%_
                                               _%g195623195642%_))))
                                      (_%g195622195639%_ _%g195623195642%_))))
                              (_%g195622195639%_ _%g195623195642%_))))
                      (_%g195622195639%_ _%g195623195642%_)))))
          (_%g195621195684%_ _%stx195620%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self195430%_ _%stx195431%_)
        (let* ((_%g195433195450%_
                (lambda (_%g195434195447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195434195447%_))))
               (_%g195432195616%_
                (lambda (_%g195434195453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195434195453%_))
                      (let ((_%e195437195455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195434195453%_))))
                        (let ((_%hd195438195458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195437195455%_)))
                              (_%tl195439195460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195437195455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195439195460%_))
                              (let ((_%e195440195463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195439195460%_))))
                                (let ((_%hd195441195466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195440195463%_)))
                                      (_%tl195442195468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195440195463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195442195468%_))
                                      (let ((_%e195443195471%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195442195468%_))))
                                        (let ((_%hd195444195474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195443195471%_)))
                                              (_%tl195445195476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195443195471%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195445195476%_))
                                              ((lambda (_%g195435195479%_
                                                        _%g195436195480%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self195430%_ _%g195435195479%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195430%_
                                  _%g195436195480%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp195495%_ ((_%rest195498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g195436195480%_
                                       (cons _%g195435195479%_ '())))
                                (_%bind195500%_ '())
                                (_%args195501%_ '()))
               (let* ((_%rest195502195510%_ _%rest195498%_)
                      (_%else195504195518%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind195500%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args195501%_)
                                                 '()))))))
                      (_%K195506195604%_
                       (lambda (_%rest195521%_ _%e195522%_)
                         (let* ((_%__stx202435202436%_ _%e195522%_)
                                (_%g195527195545%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx202435202436%_)))))
                           (let ((_%__kont202437202438%_
                                  (lambda ()
                                    (_%lp195495%_
                                     _%rest195521%_
                                     _%bind195500%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195522%_))
                                           _%args195501%_))))
                                 (_%__kont202439202440%_
                                  (lambda ()
                                    (_%lp195495%_
                                     _%rest195521%_
                                     _%bind195500%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195522%_))
                                           _%args195501%_))))
                                 (_%__kont202441202442%_
                                  (lambda ()
                                    (let ((_%tmp195552%_
                                           (let ((__tmp202888
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp202888))))
                                      (_%lp195495%_
                                       _%rest195521%_
                                       (cons (cons _%tmp195552%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e195522%_))
                                                         '()))
                                             _%bind195500%_)
                                       (cons _%tmp195552%_ _%args195501%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx202435202436%_))
                                 (let ((_%e195529195583%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx202435202436%_))))
                                   (let ((_%tl195531195588%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e195529195583%_)))
                                         (_%hd195530195586%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e195529195583%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd195530195586%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd195530195586%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl195531195588%_))
                                                 (let ((_%e195532195591%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl195531195588%_))))
                                                   (let ((_%tl195534195596%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e195532195591%_)))
                                                         (_%hd195533195594%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e195532195591%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl195534195596%_))
                                                         (_%__kont202437202438%_)
                                                         (_%__kont202441202442%_))))
                                                 (_%__kont202441202442%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd195530195586%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl195531195588%_))
                                                     (let ((_%e195538195568%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl195531195588%_))))
                                                       (let ((_%tl195540195573%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e195538195568%_)))
                     (_%hd195539195571%_
                      (let () (declare (not safe)) (##car _%e195538195568%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl195540195573%_))
                     (_%__kont202439202440%_)
                     (_%__kont202441202442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202441202442%_))
                                                 (_%__kont202441202442%_)))
                                         (_%__kont202441202442%_))))
                                 (_%__kont202441202442%_)))))))
                 (if (pair? _%rest195502195510%_)
                     (let ((_%hd195507195607%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest195502195510%_)))
                           (_%tl195508195609%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest195502195510%_))))
                       (let* ((_%e195612%_ _%hd195507195607%_)
                              (_%rest195614%_ _%tl195508195609%_))
                         (_%K195506195604%_ _%rest195614%_ _%e195612%_)))
                     (_%else195504195518%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195444195474%_
                                               _%hd195441195466%_)
                                              (_%g195433195450%_
                                               _%g195434195453%_))))
                                      (_%g195433195450%_ _%g195434195453%_))))
                              (_%g195433195450%_ _%g195434195453%_))))
                      (_%g195433195450%_ _%g195434195453%_)))))
          (_%g195432195616%_ _%stx195431%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self195241%_ _%stx195242%_)
        (let* ((_%g195244195261%_
                (lambda (_%g195245195258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195245195258%_))))
               (_%g195243195427%_
                (lambda (_%g195245195264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195245195264%_))
                      (let ((_%e195248195266%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195245195264%_))))
                        (let ((_%hd195249195269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195248195266%_)))
                              (_%tl195250195271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195248195266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195250195271%_))
                              (let ((_%e195251195274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195250195271%_))))
                                (let ((_%hd195252195277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195251195274%_)))
                                      (_%tl195253195279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195251195274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195253195279%_))
                                      (let ((_%e195254195282%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195253195279%_))))
                                        (let ((_%hd195255195285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195254195282%_)))
                                              (_%tl195256195287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195254195282%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195256195287%_))
                                              ((lambda (_%g195246195290%_
                                                        _%g195247195291%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self195241%_ _%g195246195290%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195241%_
                                  _%g195247195291%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp195306%_ ((_%rest195309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g195247195291%_
                                       (cons _%g195246195290%_ '())))
                                (_%bind195311%_ '())
                                (_%args195312%_ '()))
               (let* ((_%rest195313195321%_ _%rest195309%_)
                      (_%else195315195329%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind195311%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args195312%_)
                                                 '()))))))
                      (_%K195317195415%_
                       (lambda (_%rest195332%_ _%e195333%_)
                         (let* ((_%__stx202481202482%_ _%e195333%_)
                                (_%g195338195356%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx202481202482%_)))))
                           (let ((_%__kont202483202484%_
                                  (lambda ()
                                    (_%lp195306%_
                                     _%rest195332%_
                                     _%bind195311%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195333%_))
                                           _%args195312%_))))
                                 (_%__kont202485202486%_
                                  (lambda ()
                                    (_%lp195306%_
                                     _%rest195332%_
                                     _%bind195311%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e195333%_))
                                           _%args195312%_))))
                                 (_%__kont202487202488%_
                                  (lambda ()
                                    (let ((_%tmp195363%_
                                           (let ((__tmp202889
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp202889))))
                                      (_%lp195306%_
                                       _%rest195332%_
                                       (cons (cons _%tmp195363%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e195333%_))
                                                         '()))
                                             _%bind195311%_)
                                       (cons _%tmp195363%_ _%args195312%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx202481202482%_))
                                 (let ((_%e195340195394%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx202481202482%_))))
                                   (let ((_%tl195342195399%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e195340195394%_)))
                                         (_%hd195341195397%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e195340195394%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd195341195397%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd195341195397%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl195342195399%_))
                                                 (let ((_%e195343195402%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl195342195399%_))))
                                                   (let ((_%tl195345195407%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e195343195402%_)))
                                                         (_%hd195344195405%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e195343195402%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl195345195407%_))
                                                         (_%__kont202483202484%_)
                                                         (_%__kont202487202488%_))))
                                                 (_%__kont202487202488%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd195341195397%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl195342195399%_))
                                                     (let ((_%e195349195379%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl195342195399%_))))
                                                       (let ((_%tl195351195384%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e195349195379%_)))
                     (_%hd195350195382%_
                      (let () (declare (not safe)) (##car _%e195349195379%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl195351195384%_))
                     (_%__kont202485202486%_)
                     (_%__kont202487202488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont202487202488%_))
                                                 (_%__kont202487202488%_)))
                                         (_%__kont202487202488%_))))
                                 (_%__kont202487202488%_)))))))
                 (if (pair? _%rest195313195321%_)
                     (let ((_%hd195318195418%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest195313195321%_)))
                           (_%tl195319195420%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest195313195321%_))))
                       (let* ((_%e195423%_ _%hd195318195418%_)
                              (_%rest195425%_ _%tl195319195420%_))
                         (_%K195317195415%_ _%rest195425%_ _%e195423%_)))
                     (_%else195315195329%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195255195285%_
                                               _%hd195252195277%_)
                                              (_%g195244195261%_
                                               _%g195245195264%_))))
                                      (_%g195244195261%_ _%g195245195264%_))))
                              (_%g195244195261%_ _%g195245195264%_))))
                      (_%g195244195261%_ _%g195245195264%_)))))
          (_%g195243195427%_ _%stx195242%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self195157%_ _%stx195158%_)
        (let* ((_%g195160195181%_
                (lambda (_%g195161195178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195161195178%_))))
               (_%g195159195238%_
                (lambda (_%g195161195184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195161195184%_))
                      (let ((_%e195165195186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195161195184%_))))
                        (let ((_%hd195166195189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195165195186%_)))
                              (_%tl195167195191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195165195186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195167195191%_))
                              (let ((_%e195168195194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195167195191%_))))
                                (let ((_%hd195169195197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195168195194%_)))
                                      (_%tl195170195199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195168195194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195170195199%_))
                                      (let ((_%e195171195202%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195170195199%_))))
                                        (let ((_%hd195172195205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195171195202%_)))
                                              (_%tl195173195207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195171195202%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195173195207%_))
                                              (let ((_%e195174195210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195173195207%_))))
                                                (let ((_%hd195175195213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195174195210%_)))
                                                      (_%tl195176195215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195174195210%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195176195215%_))
                                                      ((lambda (_%g195162195218%_
                                                                _%g195163195219%_
                                                                _%g195164195220%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195157%_
                                _%g195162195218%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195157%_
                                      _%g195163195219%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self195157%_
                                            _%g195164195220%_))
                                         (cons ''#f '()))))))
               _%hd195175195213%_
               _%hd195172195205%_
               _%hd195169195197%_)
              (_%g195160195181%_ _%g195161195184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195160195181%_
                                               _%g195161195184%_))))
                                      (_%g195160195181%_ _%g195161195184%_))))
                              (_%g195160195181%_ _%g195161195184%_))))
                      (_%g195160195181%_ _%g195161195184%_)))))
          (_%g195159195238%_ _%stx195158%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self195057%_ _%stx195058%_)
        (let* ((_%g195060195085%_
                (lambda (_%g195061195082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195061195082%_))))
               (_%g195059195154%_
                (lambda (_%g195061195088%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195061195088%_))
                      (let ((_%e195066195090%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195061195088%_))))
                        (let ((_%hd195067195093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195066195090%_)))
                              (_%tl195068195095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195066195090%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195068195095%_))
                              (let ((_%e195069195098%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195068195095%_))))
                                (let ((_%hd195070195101%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195069195098%_)))
                                      (_%tl195071195103%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195069195098%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195071195103%_))
                                      (let ((_%e195072195106%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195071195103%_))))
                                        (let ((_%hd195073195109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195072195106%_)))
                                              (_%tl195074195111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195072195106%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195074195111%_))
                                              (let ((_%e195075195114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195074195111%_))))
                                                (let ((_%hd195076195117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195075195114%_)))
                                                      (_%tl195077195119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195075195114%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195077195119%_))
                                                      (let ((_%e195078195122%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl195077195119%_))))
                (let ((_%hd195079195125%_
                       (let () (declare (not safe)) (##car _%e195078195122%_)))
                      (_%tl195080195127%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195078195122%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl195080195127%_))
                      ((lambda (_%g195062195130%_
                                _%g195063195131%_
                                _%g195064195132%_
                                _%g195065195133%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self195057%_
                                        _%g195063195131%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self195057%_
                                              _%g195062195130%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self195057%_
                                                    _%g195064195132%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self195057%_
                                                          _%g195065195133%_))
                                                       (cons ''#f '())))))))
                       _%hd195079195125%_
                       _%hd195076195117%_
                       _%hd195073195109%_
                       _%hd195070195101%_)
                      (_%g195060195085%_ _%g195061195088%_))))
              (_%g195060195085%_ _%g195061195088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195060195085%_
                                               _%g195061195088%_))))
                                      (_%g195060195085%_ _%g195061195088%_))))
                              (_%g195060195085%_ _%g195061195088%_))))
                      (_%g195060195085%_ _%g195061195088%_)))))
          (_%g195059195154%_ _%stx195058%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self194973%_ _%stx194974%_)
        (let* ((_%g194976194997%_
                (lambda (_%g194977194994%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194977194994%_))))
               (_%g194975195054%_
                (lambda (_%g194977195000%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194977195000%_))
                      (let ((_%e194981195002%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194977195000%_))))
                        (let ((_%hd194982195005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194981195002%_)))
                              (_%tl194983195007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194981195002%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194983195007%_))
                              (let ((_%e194984195010%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194983195007%_))))
                                (let ((_%hd194985195013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194984195010%_)))
                                      (_%tl194986195015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194984195010%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194986195015%_))
                                      (let ((_%e194987195018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194986195015%_))))
                                        (let ((_%hd194988195021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194987195018%_)))
                                              (_%tl194989195023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194987195018%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194989195023%_))
                                              (let ((_%e194990195026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194989195023%_))))
                                                (let ((_%hd194991195029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194990195026%_)))
                                                      (_%tl194992195031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194990195026%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194992195031%_))
                                                      ((lambda (_%g194978195034%_
                                                                _%g194979195035%_
                                                                _%g194980195036%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self194973%_
                                _%g194978195034%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self194973%_
                                      _%g194979195035%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self194973%_
                                            _%g194980195036%_))
                                         (cons ''#f '()))))))
               _%hd194991195029%_
               _%hd194988195021%_
               _%hd194985195013%_)
              (_%g194976194997%_ _%g194977195000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194976194997%_
                                               _%g194977195000%_))))
                                      (_%g194976194997%_ _%g194977195000%_))))
                              (_%g194976194997%_ _%g194977195000%_))))
                      (_%g194976194997%_ _%g194977195000%_)))))
          (_%g194975195054%_ _%stx194974%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self194873%_ _%stx194874%_)
        (let* ((_%g194876194901%_
                (lambda (_%g194877194898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194877194898%_))))
               (_%g194875194970%_
                (lambda (_%g194877194904%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194877194904%_))
                      (let ((_%e194882194906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194877194904%_))))
                        (let ((_%hd194883194909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194882194906%_)))
                              (_%tl194884194911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194882194906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194884194911%_))
                              (let ((_%e194885194914%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194884194911%_))))
                                (let ((_%hd194886194917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194885194914%_)))
                                      (_%tl194887194919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194885194914%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194887194919%_))
                                      (let ((_%e194888194922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194887194919%_))))
                                        (let ((_%hd194889194925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194888194922%_)))
                                              (_%tl194890194927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194888194922%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194890194927%_))
                                              (let ((_%e194891194930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194890194927%_))))
                                                (let ((_%hd194892194933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194891194930%_)))
                                                      (_%tl194893194935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194891194930%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194893194935%_))
                                                      (let ((_%e194894194938%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194893194935%_))))
                (let ((_%hd194895194941%_
                       (let () (declare (not safe)) (##car _%e194894194938%_)))
                      (_%tl194896194943%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e194894194938%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194896194943%_))
                      ((lambda (_%g194878194946%_
                                _%g194879194947%_
                                _%g194880194948%_
                                _%g194881194949%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self194873%_
                                        _%g194879194947%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self194873%_
                                              _%g194878194946%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self194873%_
                                                    _%g194880194948%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self194873%_
                                                          _%g194881194949%_))
                                                       (cons ''#f '())))))))
                       _%hd194895194941%_
                       _%hd194892194933%_
                       _%hd194889194925%_
                       _%hd194886194917%_)
                      (_%g194876194901%_ _%g194877194904%_))))
              (_%g194876194901%_ _%g194877194904%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194876194901%_
                                               _%g194877194904%_))))
                                      (_%g194876194901%_ _%g194877194904%_))))
                              (_%g194876194901%_ _%g194877194904%_))))
                      (_%g194876194901%_ _%g194877194904%_)))))
          (_%g194875194970%_ _%stx194874%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self194668%_ _%stx194669%_)
        (let* ((_%g194671194692%_
                (lambda (_%g194672194689%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194672194689%_))))
               (_%g194670194870%_
                (lambda (_%g194672194695%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194672194695%_))
                      (let ((_%e194676194697%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194672194695%_))))
                        (let ((_%hd194677194700%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194676194697%_)))
                              (_%tl194678194702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194676194697%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194678194702%_))
                              (let ((_%e194679194705%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194678194702%_))))
                                (let ((_%hd194680194708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194679194705%_)))
                                      (_%tl194681194710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194679194705%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194681194710%_))
                                      (let ((_%e194682194713%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194681194710%_))))
                                        (let ((_%hd194683194716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194682194713%_)))
                                              (_%tl194684194718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194682194713%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194684194718%_))
                                              (let ((_%e194685194721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194684194718%_))))
                                                (let ((_%hd194686194724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194685194721%_)))
                                                      (_%tl194687194726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194685194721%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194687194726%_))
                                                      ((lambda (_%g194673194729%_
                                                                _%g194674194730%_
                                                                _%g194675194731%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self194668%_
                                    _%g194673194729%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self194668%_
                                          _%g194674194730%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp194749%_ ((_%rest194752%_
                                         (cons _%g194674194730%_
                                               (cons _%g194673194729%_ '())))
                                        (_%bind194754%_ '())
                                        (_%args194755%_ '()))
                       (let* ((_%rest194756194764%_ _%rest194752%_)
                              (_%else194758194772%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind194754%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp202890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp202890 _%args194755%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K194760194858%_
                               (lambda (_%rest194775%_ _%e194776%_)
                                 (let* ((_%__stx202527202528%_ _%e194776%_)
                                        (_%g194781194799%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx202527202528%_)))))
                                   (let ((_%__kont202529202530%_
                                          (lambda ()
                                            (_%lp194749%_
                                             _%rest194775%_
                                             _%bind194754%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e194776%_))
                                                   _%args194755%_))))
                                         (_%__kont202531202532%_
                                          (lambda ()
                                            (_%lp194749%_
                                             _%rest194775%_
                                             _%bind194754%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e194776%_))
                                                   _%args194755%_))))
                                         (_%__kont202533202534%_
                                          (lambda ()
                                            (let ((_%tmp194806%_
                                                   (let ((__tmp202891
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp202891))))
                                              (_%lp194749%_
                                               _%rest194775%_
                                               (cons (cons _%tmp194806%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e194776%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind194754%_)
                                               (cons _%tmp194806%_
                                                     _%args194755%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx202527202528%_))
                                         (let ((_%e194783194837%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx202527202528%_))))
                                           (let ((_%tl194785194842%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194783194837%_)))
                                                 (_%hd194784194840%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194783194837%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194784194840%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd194784194840%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194785194842%_))
                                                         (let ((_%e194786194845%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194785194842%_))))
                   (let ((_%tl194788194850%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194786194845%_)))
                         (_%hd194787194848%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194786194845%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl194788194850%_))
                         (_%__kont202529202530%_)
                         (_%__kont202533202534%_))))
                 (_%__kont202533202534%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd194784194840%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl194785194842%_))
                     (let ((_%e194792194822%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl194785194842%_))))
                       (let ((_%tl194794194827%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e194792194822%_)))
                             (_%hd194793194825%_
                              (let ()
                                (declare (not safe))
                                (##car _%e194792194822%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl194794194827%_))
                             (_%__kont202531202532%_)
                             (_%__kont202533202534%_))))
                     (_%__kont202533202534%_))
                 (_%__kont202533202534%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont202533202534%_))))
                                         (_%__kont202533202534%_)))))))
                         (if (pair? _%rest194756194764%_)
                             (let ((_%hd194761194861%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest194756194764%_)))
                                   (_%tl194762194863%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest194756194764%_))))
                               (let* ((_%e194866%_ _%hd194761194861%_)
                                      (_%rest194868%_ _%tl194762194863%_))
                                 (_%K194760194858%_
                                  _%rest194868%_
                                  _%e194866%_)))
                             (_%else194758194772%_))))))
               _%hd194686194724%_
               _%hd194683194716%_
               _%hd194680194708%_)
              (_%g194671194692%_ _%g194672194695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194671194692%_
                                               _%g194672194695%_))))
                                      (_%g194671194692%_ _%g194672194695%_))))
                              (_%g194671194692%_ _%g194672194695%_))))
                      (_%g194671194692%_ _%g194672194695%_)))))
          (_%g194670194870%_ _%stx194669%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self194447%_ _%stx194448%_)
        (let* ((_%g194450194475%_
                (lambda (_%g194451194472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194451194472%_))))
               (_%g194449194665%_
                (lambda (_%g194451194478%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194451194478%_))
                      (let ((_%e194456194480%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194451194478%_))))
                        (let ((_%hd194457194483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194456194480%_)))
                              (_%tl194458194485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194456194480%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194458194485%_))
                              (let ((_%e194459194488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194458194485%_))))
                                (let ((_%hd194460194491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194459194488%_)))
                                      (_%tl194461194493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194459194488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194461194493%_))
                                      (let ((_%e194462194496%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194461194493%_))))
                                        (let ((_%hd194463194499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194462194496%_)))
                                              (_%tl194464194501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194462194496%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194464194501%_))
                                              (let ((_%e194465194504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194464194501%_))))
                                                (let ((_%hd194466194507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194465194504%_)))
                                                      (_%tl194467194509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194465194504%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194467194509%_))
                                                      (let ((_%e194468194512%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194467194509%_))))
                (let ((_%hd194469194515%_
                       (let () (declare (not safe)) (##car _%e194468194512%_)))
                      (_%tl194470194517%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e194468194512%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194470194517%_))
                      ((lambda (_%g194452194520%_
                                _%g194453194521%_
                                _%g194454194522%_
                                _%g194455194523%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self194447%_
                                            _%g194453194521%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self194447%_
                                                  _%g194452194520%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self194447%_
                                                        _%g194454194522%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp194544%_ ((_%rest194547%_
                                                 (cons _%g194454194522%_
                                                       (cons _%g194452194520%_
                                                             (cons _%g194453194521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind194549%_ '())
                                                (_%args194550%_ '()))
                               (let* ((_%rest194551194559%_ _%rest194547%_)
                                      (_%else194553194567%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind194549%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp202892 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp202892 _%args194550%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K194555194653%_
                                       (lambda (_%rest194570%_ _%e194571%_)
                                         (let* ((_%__stx202573202574%_
                                                 _%e194571%_)
                                                (_%g194576194594%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx202573202574%_)))))
                                           (let ((_%__kont202575202576%_
                                                  (lambda ()
                                                    (_%lp194544%_
                                                     _%rest194570%_
                                                     _%bind194549%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e194571%_))
                                                           _%args194550%_))))
                                                 (_%__kont202577202578%_
                                                  (lambda ()
                                                    (_%lp194544%_
                                                     _%rest194570%_
                                                     _%bind194549%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e194571%_))
                                                           _%args194550%_))))
                                                 (_%__kont202579202580%_
                                                  (lambda ()
                                                    (let ((_%tmp194601%_
                                                           (let ((__tmp202893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp202893))))
              (_%lp194544%_
               _%rest194570%_
               (cons (cons _%tmp194601%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e194571%_))
                                 '()))
                     _%bind194549%_)
               (cons _%tmp194601%_ _%args194550%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx202573202574%_))
                                                 (let ((_%e194578194632%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx202573202574%_))))
                                                   (let ((_%tl194580194637%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e194578194632%_)))
                                                         (_%hd194579194635%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e194578194632%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd194579194635%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd194579194635%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl194580194637%_))
                         (let ((_%e194581194640%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl194580194637%_))))
                           (let ((_%tl194583194645%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194581194640%_)))
                                 (_%hd194582194643%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194581194640%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl194583194645%_))
                                 (_%__kont202575202576%_)
                                 (_%__kont202579202580%_))))
                         (_%__kont202579202580%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd194579194635%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl194580194637%_))
                             (let ((_%e194587194617%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl194580194637%_))))
                               (let ((_%tl194589194622%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e194587194617%_)))
                                     (_%hd194588194620%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e194587194617%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl194589194622%_))
                                     (_%__kont202577202578%_)
                                     (_%__kont202579202580%_))))
                             (_%__kont202579202580%_))
                         (_%__kont202579202580%_)))
                 (_%__kont202579202580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont202579202580%_)))))))
                                 (if (pair? _%rest194551194559%_)
                                     (let ((_%hd194556194656%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest194551194559%_)))
                                           (_%tl194557194658%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest194551194559%_))))
                                       (let* ((_%e194661%_ _%hd194556194656%_)
                                              (_%rest194663%_
                                               _%tl194557194658%_))
                                         (_%K194555194653%_
                                          _%rest194663%_
                                          _%e194661%_)))
                                     (_%else194553194567%_))))))
                       _%hd194469194515%_
                       _%hd194466194507%_
                       _%hd194463194499%_
                       _%hd194460194491%_)
                      (_%g194450194475%_ _%g194451194478%_))))
              (_%g194450194475%_ _%g194451194478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194450194475%_
                                               _%g194451194478%_))))
                                      (_%g194450194475%_ _%g194451194478%_))))
                              (_%g194450194475%_ _%g194451194478%_))))
                      (_%g194450194475%_ _%g194451194478%_)))))
          (_%g194449194665%_ _%stx194448%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self194286%_ _%stx194287%_)
        (letrec ((_%import-set-template194289%_
                  (lambda (_%in194392%_ _%phi194393%_)
                    (let ((_%iphi194395%_
                           (fx+ _%phi194393%_
                                (##direct-structure-ref
                                 _%in194392%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports194396%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in194392%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp194398%_ ((_%rest194400%_ _%imports194396%_)
                                         (_%r194401%_ '()))
                        (let* ((_%rest194402194410%_ _%rest194400%_)
                               (_%else194404194418%_ (lambda () _%r194401%_))
                               (_%K194406194435%_
                                (lambda (_%rest194421%_ _%in194422%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in194422%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi194395%_))
                                          (_%lp194398%_
                                           _%rest194421%_
                                           (cons _%in194422%_ _%r194401%_))
                                          (_%lp194398%_
                                           _%rest194421%_
                                           _%r194401%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in194422%_
                                             'gx#module-import::t))
                                          (let ((_%iphi194426%_
                                                 (fx+ _%phi194393%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in194422%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi194426%_))
                                                (_%lp194398%_
                                                 _%rest194421%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in194422%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r194401%_))
                                                (_%lp194398%_
                                                 _%rest194421%_
                                                 _%r194401%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in194422%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi194429%_
                                                     (fx+ _%iphi194395%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in194422%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi194429%_))
                                                    (_%lp194398%_
                                                     _%rest194421%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in194422%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r194401%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi194429%_))
                                                        (_%lp194398%_
                                                         _%rest194421%_
                                                         (let ((__tmp202894
                                                                (_%import-set-template194289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in194422%_
                         _%iphi194395%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r194401%_ __tmp202894)))
                (_%lp194398%_ _%rest194421%_ _%r194401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp194398%_
                                               _%rest194421%_
                                               _%r194401%_)))))))
                          (if (pair? _%rest194402194410%_)
                              (let ((_%hd194407194438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194402194410%_)))
                                    (_%tl194408194440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194402194410%_))))
                                (let* ((_%in194443%_ _%hd194407194438%_)
                                       (_%rest194445%_ _%tl194408194440%_))
                                  (_%K194406194435%_
                                   _%rest194445%_
                                   _%in194443%_)))
                              (_%else194404194418%_))))))))
          (let* ((_%g194291194301%_
                  (lambda (_%g194292194298%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194292194298%_))))
                 (_%g194290194389%_
                  (lambda (_%g194292194304%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194292194304%_))
                        (let ((_%e194294194306%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194292194304%_))))
                          (let ((_%hd194295194309%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194294194306%_)))
                                (_%tl194296194311%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194294194306%_))))
                            ((lambda (_%g194293194314%_)
                               (let ((_%ht194325%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp194327%_ ((_%rest194329%_
                                                     _%g194293194314%_)
                                                    (_%loads194330%_ '()))
                                   (letrec ((_%K194332%_
                                             (lambda (_%ctx194382%_
                                                      _%rest194383%_)
                                               (let ((_%id194385%_
                                                      (##structure-ref
                                                       _%ctx194382%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht194325%_
                                                        _%id194385%_))
                                                     (_%lp194327%_
                                                      _%rest194383%_
                                                      _%loads194330%_)
                                                     (let ((_%rt194387%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id194385%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht194325%_
                                                          _%id194385%_
                                                          _%rt194387%_))
                                                       (_%lp194327%_
                                                        _%rest194383%_
                                                        (cons _%rt194387%_
                                                              _%loads194330%_))))))))
                                     (let* ((_%rest194333194341%_
                                             _%rest194329%_)
                                            (_%else194335194353%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp202896
                                                            (lambda (_%g194348194350%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194348194350%_)))
                   (__tmp202895 (reverse _%loads194330%_)))
               (declare (not safe))
               (##map __tmp202896 __tmp202895)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K194337194370%_
                                             (lambda (_%rest194356%_
                                                      _%in194357%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in194357%_
                                                      'gx#module-context::t))
                                                   (_%K194332%_
                                                    _%in194357%_
                                                    _%rest194356%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in194357%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in194357%_
                               '3
                               '#f
                               '#f)))
                   (_%K194332%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in194357%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest194356%_)
                   (_%lp194327%_ _%rest194356%_ _%loads194330%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in194357%_
                      'gx#import-set::t))
                   (let ((_%phi194362%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in194357%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi194362%_)
                         (_%K194332%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in194357%_
                             '1
                             '#f
                             '#f))
                          _%rest194356%_)
                         (if (fxpositive? _%phi194362%_)
                             (let ((_%deps194366%_
                                    (_%import-set-template194289%_
                                     _%in194357%_
                                     '0)))
                               (_%lp194327%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest194356%_
                                   _%deps194366%_))
                                _%loads194330%_))
                             (_%lp194327%_ _%rest194356%_ _%loads194330%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx194287%_
                      _%in194357%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest194333194341%_)
                                           (let ((_%hd194338194373%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest194333194341%_)))
                                                 (_%tl194339194375%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest194333194341%_))))
                                             (let* ((_%in194378%_
                                                     _%hd194338194373%_)
                                                    (_%rest194380%_
                                                     _%tl194339194375%_))
                                               (_%K194337194370%_
                                                _%rest194380%_
                                                _%in194378%_)))
                                           (_%else194335194353%_)))))))
                             _%tl194296194311%_)))
                        (_%g194291194301%_ _%g194292194304%_)))))
            (_%g194290194389%_ _%stx194287%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self194100%_ _%stx194101%_)
        (letrec ((_%add-lift!194103%_
                  (lambda (_%expr194284%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr194284%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote194104%_
                  (lambda (_%id194281%_ _%marks194282%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id194281%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks194282%_
                                                        '()))))))))
                 (_%generate-simple194105%_
                  (lambda (_%stxq194276%_)
                    (let ((_%gid194278%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid194279%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq194276%_))))
                      (_%add-lift!194103%_
                       (cons 'define
                             (cons _%gid194278%_
                                   (cons (_%generate-syntax-quote194104%_
                                          _%qid194279%_
                                          ''())
                                         '()))))
                      (let ((__tmp202897
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp202897 _%stxq194276%_ _%gid194278%_))
                      _%gid194278%_)))
                 (_%generate-serialized194106%_
                  (lambda (_%stxq194266%_ _%marks194267%_)
                    (let* ((_%mark-refs194269%_
                            (map _%generate-mark194107%_ _%marks194267%_))
                           (_%gid194271%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid194273%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq194266%_))))
                      (_%add-lift!194103%_
                       (cons 'define
                             (cons _%gid194271%_
                                   (cons (_%generate-syntax-quote194104%_
                                          _%qid194273%_
                                          (cons 'list _%mark-refs194269%_))
                                         '()))))
                      (let ((__tmp202898
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp202898 _%stxq194266%_ _%gid194271%_))
                      _%gid194271%_)))
                 (_%generate-mark194107%_
                  (lambda (_%mark194251%_)
                    (let ((_%$e194253%_
                           (let ((__tmp202899
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp202899 _%mark194251%_))))
                      (if _%$e194253%_
                          _%$e194253%_
                          (let* ((_%gid194257%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr194259%_
                                  (_%serialize-mark194108%_ _%mark194251%_))
                                 (_%ctx194261%_
                                  (let ((__tmp202900
                                         (##structure-ref
                                          _%mark194251%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp202900)))
                                 (_%ctx-ref194263%_
                                  (if (eq? _%ctx194261%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref194109%_
                                                               _%ctx194261%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp202901
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp202901
                               _%mark194251%_
                               _%gid194257%_))
                            (_%add-lift!194103%_
                             (cons 'define
                                   (cons _%gid194257%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr194259%_ '()))
                   (cons _%ctx-ref194263%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid194257%_)))))
                 (_%serialize-mark194108%_
                  (lambda (_%mark194199%_)
                    (letrec ((_%quote-e194201%_
                              (lambda (_%sym194249%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym194249%_))
                                    _%sym194249%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym194249%_))))))
                      (let* ((_%mark194202194211%_ _%mark194199%_)
                             (_%E194204194214%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark194202194211%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K194205194226%_
                              (lambda (_%trace194217%_
                                       _%phi194218%_
                                       _%ctx194219%_
                                       _%subst194220%_)
                                (let ((_%subs194222%_
                                       (if _%subst194220%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst194220%_))
                                           '())))
                                  (cons _%phi194218%_
                                        (let ((__tmp202902
                                               (lambda (_%pair194224%_)
                                                 (cons (_%quote-e194201%_
                                                        (car _%pair194224%_))
                                                       (_%quote-e194201%_
                                                        (cdr _%pair194224%_))))))
                                          (declare (not safe))
                                          (##map __tmp202902
                                                 _%subs194222%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark194202194211%_
                               'gx#expander-mark::t))
                            (let* ((_%e194206194229%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194202194211%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst194232%_ _%e194206194229%_)
                                   (_%e194207194234%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194202194211%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx194237%_ _%e194207194234%_)
                                   (_%e194208194239%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194202194211%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi194242%_ _%e194208194239%_)
                                   (_%e194209194244%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark194202194211%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace194247%_ _%e194209194244%_))
                              (_%K194205194226%_
                               _%trace194247%_
                               _%phi194242%_
                               _%ctx194237%_
                               _%subst194232%_))
                            (_%E194204194214%_))))))
                 (_%context-ref194109%_
                  (lambda (_%ctx194186%_)
                    (if (let ((__tmp202903
                               (##structure-ref
                                _%ctx194186%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp202903
                           'gx#module-context::t))
                        (let ((_%ctx-ref194188%_
                               (_%context-ref-nested194111%_ _%ctx194186%_))
                              (_%ctx-origin194189%_
                               (_%context-ref-origin194110%_ _%ctx194186%_))
                              (_%origin194190%_
                               (_%context-ref-origin194110%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin194190%_ _%ctx-origin194189%_)
                              (let ((_%ref194192%_
                                     (_%context-ref-nested194111%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp194194%_ ((_%ref194196%_
                                                    (cdr _%ref194192%_))
                                                   (_%ctx-ref194197%_
                                                    (cdr _%ctx-ref194188%_)))
                                  (if (and (pair? _%ref194196%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref194196%_))
                                                (car _%ctx-ref194197%_)))
                                      (_%lp194194%_
                                       (cdr _%ref194196%_)
                                       (cdr _%ctx-ref194197%_))
                                      (cons '#f _%ctx-ref194197%_))))
                              _%ctx-ref194188%_))
                        (let ((__tmp202904
                               (##structure-ref
                                _%ctx194186%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp202904)))))
                 (_%context-ref-origin194110%_
                  (lambda (_%ctx194178%_)
                    (let _%lp194180%_ ((_%ctx194182%_ _%ctx194178%_))
                      (let ((_%super194184%_
                             (##structure-ref
                              _%ctx194182%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super194184%_
                               'gx#module-context::t))
                            (_%lp194180%_ _%super194184%_)
                            _%ctx194182%_)))))
                 (_%context-ref-nested194111%_
                  (lambda (_%ctx194169%_)
                    (let _%lp194171%_ ((_%ctx194173%_ _%ctx194169%_)
                                       (_%r194174%_ '()))
                      (let ((_%super194176%_
                             (##structure-ref
                              _%ctx194173%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super194176%_
                               'gx#module-context::t))
                            (_%lp194171%_
                             _%super194176%_
                             (cons (car (##structure-ref
                                         _%ctx194173%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r194174%_))
                            (cons (let ((__tmp202905
                                         (##structure-ref
                                          _%ctx194173%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp202905))
                                  _%r194174%_)))))))
          (let* ((_%g194113194126%_
                  (lambda (_%g194114194123%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194114194123%_))))
                 (_%g194112194166%_
                  (lambda (_%g194114194129%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194114194129%_))
                        (let ((_%e194116194131%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194114194129%_))))
                          (let ((_%hd194117194134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194116194131%_)))
                                (_%tl194118194136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194116194131%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194118194136%_))
                                (let ((_%e194119194139%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194118194136%_))))
                                  (let ((_%hd194120194142%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194119194139%_)))
                                        (_%tl194121194144%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194119194139%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194121194144%_))
                                        ((lambda (_%g194115194147%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g194115194147%_))
                                               (let ((_%$e194160%_
                                                      (let ((__tmp202906
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp202906 _%g194115194147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e194160%_
                                                     _%$e194160%_
                                                     (let ((_%marks194164%_
                                                            (##direct-structure-ref
                                                             _%g194115194147%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks194164%_)
                                                           (_%generate-simple194105%_
                                                            _%g194115194147%_)
                                                           (_%generate-serialized194106%_
                                                            _%g194115194147%_
                                                            _%marks194164%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g194115194147%_))))
                                         _%hd194120194142%_)
                                        (_%g194113194126%_
                                         _%g194114194129%_))))
                                (_%g194113194126%_ _%g194114194129%_))))
                        (_%g194113194126%_ _%g194114194129%_)))))
            (_%g194112194166%_ _%stx194101%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self194032%_ _%stx194033%_)
        (let* ((_%g194035194052%_
                (lambda (_%g194036194049%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194036194049%_))))
               (_%g194034194097%_
                (lambda (_%g194036194055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194036194055%_))
                      (let ((_%e194039194057%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194036194055%_))))
                        (let ((_%hd194040194060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194039194057%_)))
                              (_%tl194041194062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194039194057%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194041194062%_))
                              (let ((_%e194042194065%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194041194062%_))))
                                (let ((_%hd194043194068%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194042194065%_)))
                                      (_%tl194044194070%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194042194065%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194044194070%_))
                                      (let ((_%e194045194073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194044194070%_))))
                                        (let ((_%hd194046194076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194045194073%_)))
                                              (_%tl194047194078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194045194073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194047194078%_))
                                              ((lambda (_%g194037194081%_
                                                        _%g194038194082%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g194038194082%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self194032%_
                              _%g194037194081%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd194046194076%_
                                               _%hd194043194068%_)
                                              (_%g194035194052%_
                                               _%g194036194055%_))))
                                      (_%g194035194052%_ _%g194036194055%_))))
                              (_%g194035194052%_ _%g194036194055%_))))
                      (_%g194035194052%_ _%g194036194055%_)))))
          (_%g194034194097%_ _%stx194033%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self193981%_ _%stx193982%_)
        (let* ((_%g193984193994%_
                (lambda (_%g193985193991%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193985193991%_))))
               (_%g193983194029%_
                (lambda (_%g193985193997%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193985193997%_))
                      (let ((_%e193987193999%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193985193997%_))))
                        (let ((_%hd193988194002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193987193999%_)))
                              (_%tl193989194004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193987193999%_))))
                          ((lambda (_%g193986194007%_)
                             (let* ((_%c-body194021%_
                                     (map (lambda (_%g194016194018%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self193981%_
                                               _%g194016194018%_)))
                                          _%g193986194007%_))
                                    (_%c-body194026%_
                                     (let ((__tmp202907
                                            (lambda (_%$obj194023%_)
                                              (not (eq? _%$obj194023%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp202907
                                        _%c-body194021%_))))
                               (cons '%#begin _%c-body194026%_)))
                           _%tl193989194004%_)))
                      (_%g193984193994%_ _%g193985193997%_)))))
          (_%g193983194029%_ _%stx193982%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self193886%_ _%stx193887%_)
        (let* ((_%g193889193899%_
                (lambda (_%g193890193896%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193890193896%_))))
               (_%g193888193978%_
                (lambda (_%g193890193902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193890193902%_))
                      (let ((_%e193892193904%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193890193902%_))))
                        (let ((_%hd193893193907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193892193904%_)))
                              (_%tl193894193909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193892193904%_))))
                          ((lambda (_%g193891193912%_)
                             (let* ((_%phi193922%_
                                     (let ((__tmp202908
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp202908 '1)))
                                    (_%block193924%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self193886%_ 'state))
                                      _%phi193922%_))
                                    (_%compiled193927%_
                                     (let ((__tmp202909
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self193886%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g193891193912%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp202909
                                        gx#current-expander-phi
                                        _%phi193922%_)))
                                    (_%g193930193940%_
                                     (lambda (_%g193931193937%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g193931193937%_))))
                                    (_%g193929193975%_
                                     (lambda (_%g193931193943%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g193931193943%_))
                                           (let ((_%e193933193945%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g193931193943%_))))
                                             (let ((_%hd193934193948%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e193933193945%_)))
                                                   (_%tl193935193950%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e193933193945%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd193934193948%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd193934193948%_))
                                                       ((lambda (_%g193932193953%_)
                                                          (let ((_%c-body193970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj193967%_)
                                   (not (eq? _%$obj193967%_ '#!void)))
                                 _%g193932193953%_)))
                    (if _%block193924%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block193924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body193970%_))
                        (if (null? _%c-body193970%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body193970%_)))))
                _%tl193935193950%_)
               (_%g193930193940%_ _%g193931193943%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g193930193940%_
                                                    _%g193931193943%_))))
                                           (_%g193930193940%_
                                            _%g193931193943%_)))))
                               (_%g193929193975%_ _%compiled193927%_)))
                           _%tl193894193909%_)))
                      (_%g193889193899%_ _%g193890193902%_)))))
          (_%g193888193978%_ _%stx193887%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self193817%_ _%stx193818%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193817%_ 'state)))
        (let* ((_%g193820193834%_
                (lambda (_%g193821193831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193821193831%_))))
               (_%g193819193883%_
                (lambda (_%g193821193837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193821193837%_))
                      (let ((_%e193824193839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193821193837%_))))
                        (let ((_%hd193825193842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193824193839%_)))
                              (_%tl193826193844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193824193839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193826193844%_))
                              (let ((_%e193827193847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193826193844%_))))
                                (let ((_%hd193828193850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193827193847%_)))
                                      (_%tl193829193852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193827193847%_))))
                                  ((lambda (_%g193822193855%_
                                            _%g193823193856%_)
                                     (let ((_%key193869%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g193823193856%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key193869%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx193818%_
                                              _%g193823193856%_
                                              _%key193869%_)))
                                       (let* ((_%ctx193871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g193823193856%_)))
                                              (_%code193874%_
                                               (let ((__tmp202910
                                                      (lambda ()
                                                        (let ((__tmp202911
                                                               (##structure-ref
                                                                _%ctx193871%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self193817%_
                                                           __tmp202911)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp202910
                                                  gx#current-expander-context
                                                  _%ctx193871%_)))
                                              (_%rt193876%_
                                               (let ((__tmp202912
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp202912
                                                  _%ctx193871%_)))
                                              (_%loader193878%_
                                               (if _%rt193876%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt193876%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid193880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g193823193856%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193817%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid193880%_
                                                     (cons _%code193874%_
                                                           _%loader193878%_))))))
                                   _%tl193829193852%_
                                   _%hd193828193850%_)))
                              (_%g193820193834%_ _%g193821193837%_))))
                      (_%g193820193834%_ _%g193821193837%_)))))
          (_%g193819193883%_ _%stx193818%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx193804%_ _%context-chain193805%_)
        (let _%lp193807%_ ((_%ctx193809%_ _%ctx193804%_) (_%path193810%_ '()))
          (let ((_%super193812%_
                 (##structure-ref _%ctx193809%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super193812%_ _%context-chain193805%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx193809%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path193810%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super193812%_
                       'gx#module-context::t))
                    (_%lp193807%_
                     _%super193812%_
                     (cons (car (##structure-ref
                                 _%ctx193809%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path193810%_))
                    (cons (let ((__tmp202913
                                 (##structure-ref
                                  _%ctx193809%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp202913))
                          _%path193810%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp193797%_ ((_%ctx193799%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r193800%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx193799%_ 'gx#module-context::t))
              (_%lp193797%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx193799%_ '3 '#f '#f))
               (cons _%ctx193799%_ _%r193800%_))
              _%r193800%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self193562%_ _%stx193563%_)
        (letrec* ((_%context-chain193565%_ (gxc#current-context-chain))
                  (_%make-import-spec193566%_
                   (lambda (_%in193734%_)
                     (let* ((_%in193735193747%_ _%in193734%_)
                            (_%E193737193750%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in193735193747%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K193738193760%_
                             (lambda (_%phi193753%_
                                      _%name193754%_
                                      _%src-name193755%_
                                      _%src-phi193756%_
                                      _%src-key193757%_
                                      _%src-ctx193758%_)
                               (cons _%phi193753%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name193754%_))
                                           (cons _%src-phi193756%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name193755%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in193735193747%_
                              'gx#module-import::t))
                           (let ((_%e193739193763%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in193735193747%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e193739193763%_
                                    'gx#module-export::t))
                                 (let* ((_%e193742193766%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193739193763%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx193769%_ _%e193742193766%_)
                                        (_%e193743193771%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193739193763%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key193774%_ _%e193743193771%_)
                                        (_%e193744193776%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193739193763%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi193779%_ _%e193744193776%_)
                                        (_%e193745193781%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e193739193763%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name193784%_ _%e193745193781%_)
                                        (_%e193740193786%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in193735193747%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name193789%_ _%e193740193786%_)
                                        (_%e193741193791%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in193735193747%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi193794%_ _%e193741193791%_))
                                   (_%K193738193760%_
                                    _%phi193794%_
                                    _%name193789%_
                                    _%src-name193784%_
                                    _%src-phi193779%_
                                    _%src-key193774%_
                                    _%src-ctx193769%_))
                                 (_%E193737193750%_)))
                           (_%E193737193750%_)))))
                  (_%make-import-path193567%_
                   (lambda (_%ctx193732%_)
                     (gxc#generate-meta-import-path
                      _%ctx193732%_
                      _%context-chain193565%_)))
                  (_%make-import-spec-in193568%_
                   (lambda (_%ctx193729%_ _%in193730%_)
                     (cons 'spec:
                           (cons (_%make-import-path193567%_ _%ctx193729%_)
                                 (reverse _%in193730%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self193562%_ 'state)))
          (let* ((_%g193570193580%_
                  (lambda (_%g193571193577%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193571193577%_))))
                 (_%g193569193726%_
                  (lambda (_%g193571193583%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193571193583%_))
                        (let ((_%e193573193585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193571193583%_))))
                          (let ((_%hd193574193588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193573193585%_)))
                                (_%tl193575193590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193573193585%_))))
                            ((lambda (_%g193572193593%_)
                               (let _%lp193604%_ ((_%rest193606%_
                                                   _%g193572193593%_)
                                                  (_%current-src193607%_ '#f)
                                                  (_%current-in193608%_ '())
                                                  (_%r193609%_ '()))
                                 (let* ((_%rest193610193618%_ _%rest193606%_)
                                        (_%else193612193628%_
                                         (lambda ()
                                           (let ((_%r193626%_
                                                  (if _%current-src193607%_
                                                      (cons (_%make-import-spec-in193568%_
                                                             _%current-src193607%_
                                                             _%current-in193608%_)
                                                            _%r193609%_)
                                                      _%r193609%_)))
                                             (cons '%#import
                                                   (reverse _%r193626%_)))))
                                        (_%K193614193714%_
                                         (lambda (_%rest193631%_ _%in193632%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in193632%_
                                                  'gx#module-import::t))
                                               (let* ((_%in193634193641%_
                                                       _%in193632%_)
                                                      (_%E193636193644%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in193634193641%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K193637193652%_
               (lambda (_%src-ctx193647%_)
                 (if (eq? _%current-src193607%_ _%src-ctx193647%_)
                     (_%lp193604%_
                      _%rest193631%_
                      _%current-src193607%_
                      (cons (_%make-import-spec193566%_ _%in193632%_)
                            _%current-in193608%_)
                      _%r193609%_)
                     (if _%current-src193607%_
                         (_%lp193604%_
                          _%rest193631%_
                          _%src-ctx193647%_
                          (cons (_%make-import-spec193566%_ _%in193632%_) '())
                          (cons (_%make-import-spec-in193568%_
                                 _%current-src193607%_
                                 _%current-in193608%_)
                                _%r193609%_))
                         (_%lp193604%_
                          _%rest193631%_
                          _%src-ctx193647%_
                          (cons (_%make-import-spec193566%_ _%in193632%_) '())
                          _%r193609%_)))))
              (_%e193638193655%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in193634193641%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e193638193655%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e193639193658%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e193638193655%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx193661%_ _%e193639193658%_))
               (_%K193637193652%_ _%src-ctx193661%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E193636193644%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in193632%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi193664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in193632%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src193666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in193632%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in193706%_
                                                           (let* ((_%g193667193676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path193567%_ _%src193666%_))
                          (_%E193670193680%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g193667193676%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K193672193696%_
                            (lambda (_%path193694%_) _%path193694%_))
                           (_%K193671193686%_
                            (lambda (_%path193684%_)
                              (cons 'in: _%path193684%_))))
                       (if (pair? _%g193667193676%_)
                           (let ((_%tl193674193701%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g193667193676%_)))
                                 (_%hd193673193699%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g193667193676%_))))
                             (if (null? _%tl193674193701%_)
                                 (let ((_%path193704%_ _%hd193673193699%_))
                                   (_%K193672193696%_ _%path193704%_))
                                 (let ((_%path193689%_ _%g193667193676%_))
                                   (_%K193671193686%_ _%path193689%_))))
                           (let ((_%path193689%_ _%g193667193676%_))
                             (_%K193671193686%_ _%path193689%_))))))
                  (_%r193708%_
                   (if _%current-src193607%_
                       (cons (_%make-import-spec-in193568%_
                              _%current-src193607%_
                              _%current-in193608%_)
                             _%r193609%_)
                       _%r193609%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp193604%_
                                                      _%rest193631%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi193664%_)
                                                                _%src-in193706%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi193664%_
                                    (cons _%src-in193706%_ '()))))
                    _%r193708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in193632%_
                                                          'gx#module-context::t))
                                                       (let ((_%r193712%_
                                                              (if _%current-src193607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in193568%_
                                 _%current-src193607%_
                                 _%current-in193608%_)
                                _%r193609%_)
                          _%r193609%_)))
                 (_%lp193604%_
                  _%rest193631%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path193567%_ _%in193632%_))
                        _%r193712%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest193610193618%_)
                                       (let ((_%hd193615193717%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest193610193618%_)))
                                             (_%tl193616193719%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest193610193618%_))))
                                         (let* ((_%in193722%_
                                                 _%hd193615193717%_)
                                                (_%rest193724%_
                                                 _%tl193616193719%_))
                                           (_%K193614193714%_
                                            _%rest193724%_
                                            _%in193722%_)))
                                       (_%else193612193628%_)))))
                             _%tl193575193590%_)))
                        (_%g193570193580%_ _%g193571193583%_)))))
            (_%g193569193726%_ _%stx193563%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self193372%_ _%stx193373%_)
        (letrec* ((_%context-chain193375%_ (gxc#current-context-chain))
                  (_%make-import-path193376%_
                   (lambda (_%ctx193560%_)
                     (gxc#generate-meta-import-path
                      _%ctx193560%_
                      _%context-chain193375%_))))
          (let* ((_%g193378193388%_
                  (lambda (_%g193379193385%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193379193385%_))))
                 (_%g193377193557%_
                  (lambda (_%g193379193391%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193379193391%_))
                        (let ((_%e193381193393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193379193391%_))))
                          (let ((_%hd193382193396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193381193393%_)))
                                (_%tl193383193398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193381193393%_))))
                            ((lambda (_%g193380193401%_)
                               (let _%lp193412%_ ((_%rest193414%_
                                                   _%g193380193401%_)
                                                  (_%r193415%_ '()))
                                 (let* ((_%rest193416193424%_ _%rest193414%_)
                                        (_%else193418193432%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r193415%_))))
                                        (_%K193420193545%_
                                         (lambda (_%rest193435%_ _%out193436%_)
                                           (let* ((_%out193437193450%_
                                                   _%out193436%_)
                                                  (_%E193440193454%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out193437193450%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K193444193524%_
                                                    (lambda (_%name193520%_
                                                             _%phi193521%_
                                                             _%key193522%_)
                                                      (_%lp193412%_
                                                       _%rest193435%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi193521%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key193522%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name193520%_))
                                             '()))))
                     _%r193415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K193441193504%_
                                                    (lambda (_%phi193458%_
                                                             _%src193459%_)
                                                      (let* ((_%out193499%_
                                                              (if _%src193459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g193460193469%_
                                              (_%make-import-path193376%_
                                               _%src193459%_))
                                             (_%E193463193473%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g193460193469%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K193465193489%_
                                               (lambda (_%path193487%_)
                                                 _%path193487%_))
                                              (_%K193464193479%_
                                               (lambda (_%path193477%_)
                                                 (cons 'in: _%path193477%_))))
                                          (if (pair? _%g193460193469%_)
                                              (let ((_%tl193467193494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g193460193469%_)))
                                                    (_%hd193466193492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g193460193469%_))))
                                                (if (null? _%tl193467193494%_)
                                                    (let ((_%path193497%_
                                                           _%hd193466193492%_))
                                                      (_%K193465193489%_
                                                       _%path193497%_))
                                                    (let ((_%path193482%_
                                                           _%g193460193469%_))
                                                      (_%K193464193479%_
                                                       _%path193482%_))))
                                              (let ((_%path193482%_
                                                     _%g193460193469%_))
                                                (_%K193464193479%_
                                                 _%path193482%_)))))
                                      '()))
                          '#t))
                     (_%out193501%_
                      (if (fxzero? _%phi193458%_)
                          _%out193499%_
                          (cons 'phi:
                                (cons _%phi193458%_
                                      (cons _%out193499%_ '()))))))
                (_%lp193412%_
                 _%rest193435%_
                 (cons _%out193501%_ _%r193415%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match193439193517%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out193437193450%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e193442193507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out193437193450%_
                               '1
                               '#f
                               '#f)))
                           (_%e193443193512%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out193437193450%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src193510%_ _%e193442193507%_)
                            (_%phi193515%_ _%e193443193512%_))
                        (_%K193441193504%_ _%phi193515%_ _%src193510%_)))
                    (_%E193440193454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out193437193450%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e193445193527%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out193437193450%_
                        '1
                        '#f
                        '#f)))
                    (_%e193446193530%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193437193450%_
                        '2
                        '#f
                        '#f)))
                    (_%e193447193535%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193437193450%_
                        '3
                        '#f
                        '#f)))
                    (_%e193448193540%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out193437193450%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key193533%_ _%e193446193530%_)
                     (_%phi193538%_ _%e193447193535%_)
                     (_%name193543%_ _%e193448193540%_))
                 (_%K193444193524%_
                  _%name193543%_
                  _%phi193538%_
                  _%key193533%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match193439193517%_))))))))
                                   (if (pair? _%rest193416193424%_)
                                       (let ((_%hd193421193548%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest193416193424%_)))
                                             (_%tl193422193550%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest193416193424%_))))
                                         (let* ((_%out193553%_
                                                 _%hd193421193548%_)
                                                (_%rest193555%_
                                                 _%tl193422193550%_))
                                           (_%K193420193545%_
                                            _%rest193555%_
                                            _%out193553%_)))
                                       (_%else193418193432%_)))))
                             _%tl193383193398%_)))
                        (_%g193378193388%_ _%g193379193391%_)))))
            (_%g193377193557%_ _%stx193373%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self193333%_ _%stx193334%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193333%_ 'state)))
        (let* ((_%g193336193346%_
                (lambda (_%g193337193343%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193337193343%_))))
               (_%g193335193369%_
                (lambda (_%g193337193349%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193337193349%_))
                      (let ((_%e193339193351%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193337193349%_))))
                        (let ((_%hd193340193354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193339193351%_)))
                              (_%tl193341193356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193339193351%_))))
                          ((lambda (_%g193338193359%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g193338193359%_)))
                           _%tl193341193356%_)))
                      (_%g193336193346%_ _%g193337193349%_)))))
          (_%g193335193369%_ _%stx193334%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self193208%_ _%stx193209%_)
        (letrec ((_%generate1193211%_
                  (lambda (_%id193328%_ _%eid193329%_)
                    (let ((_%eid193331%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid193329%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid193331%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx193209%_
                             _%eid193331%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id193328%_))
                            (cons _%eid193331%_ '()))))))
          (let* ((_%g193213193241%_
                  (lambda (_%g193214193238%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193214193238%_))))
                 (_%g193212193325%_
                  (lambda (_%g193214193244%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193214193244%_))
                        (let ((_%e193217193246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193214193244%_))))
                          (let ((_%hd193218193249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193217193246%_)))
                                (_%tl193219193251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193217193246%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl193219193251%_))
                                (let ((_g202914_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl193219193251%_
                                          '0))))
                                  (begin
                                    (let ((_g202915_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g202914_)
                                                 (##values-length _g202914_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g202915_ 2)))
                                          (error "Context expects 2 values"
                                                 _g202915_)))
                                    (let ((_%target193220193254%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202914_ 0)))
                                          (_%tl193222193256%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202914_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193222193256%_))
                                          (letrec ((_%loop193223193259%_
                                                    (lambda (_%hd193221193262%_
                                                             _%eid193227193264%_
                                                             _%id193228193265%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193221193262%_))
                                                          (let ((_%e193224193267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193221193262%_))))
                    (let ((_%lp-hd193225193270%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193224193267%_)))
                          (_%lp-tl193226193272%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193224193267%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd193225193270%_))
                          (let ((_%e193231193275%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd193225193270%_))))
                            (let ((_%hd193232193278%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193231193275%_)))
                                  (_%tl193233193280%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193231193275%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193233193280%_))
                                  (let ((_%e193234193283%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193233193280%_))))
                                    (let ((_%hd193235193286%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193234193283%_)))
                                          (_%tl193236193288%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193234193283%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193236193288%_))
                                          (_%loop193223193259%_
                                           _%lp-tl193226193272%_
                                           (cons _%hd193235193286%_
                                                 _%eid193227193264%_)
                                           (cons _%hd193232193278%_
                                                 _%id193228193265%_))
                                          (_%g193213193241%_
                                           _%g193214193244%_))))
                                  (_%g193213193241%_ _%g193214193244%_))))
                          (_%g193213193241%_ _%g193214193244%_))))
                  (let ((_%eid193229193291%_ (reverse _%eid193227193264%_))
                        (_%id193230193292%_ (reverse _%id193228193265%_)))
                    ((lambda (_%g193215193294%_ _%g193216193295%_)
                       (cons '%#extern
                             (map _%generate1193211%_
                                  (let ((__tmp202916
                                         (lambda (_%g193310193313%_
                                                  _%g193311193315%_)
                                           (cons _%g193310193313%_
                                                 _%g193311193315%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp202916
                                     '()
                                     _%g193216193295%_))
                                  (let ((__tmp202917
                                         (lambda (_%g193317193320%_
                                                  _%g193318193322%_)
                                           (cons _%g193317193320%_
                                                 _%g193318193322%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp202917
                                     '()
                                     _%g193215193294%_)))))
                     _%eid193229193291%_
                     _%id193230193292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop193223193259%_
                                             _%target193220193254%_
                                             '()
                                             '()))
                                          (_%g193213193241%_
                                           _%g193214193244%_)))))
                                (_%g193213193241%_ _%g193214193244%_))))
                        (_%g193213193241%_ _%g193214193244%_)))))
            (_%g193212193325%_ _%stx193209%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self192997%_ _%stx192998%_)
        (letrec ((_%generate1193000%_
                  (lambda (_%id193202%_)
                    (let ((_%eid193204%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id193202%_)))
                          (_%ident193205%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id193202%_)))
                          (_%props193206%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id193202%_))))
                      (cons '%#define-runtime
                            (cons _%ident193205%_
                                  (cons _%eid193204%_ _%props193206%_))))))
                 (_%generate*193001%_
                  (lambda (_%all193170%_)
                    (let* ((_%all193171193179%_ _%all193170%_)
                           (_%else193173193187%_
                            (lambda () (cons '%#begin _%all193170%_)))
                           (_%K193175193192%_
                            (lambda (_%one193190%_) _%one193190%_)))
                      (if (pair? _%all193171193179%_)
                          (let ((_%hd193176193195%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all193171193179%_)))
                                (_%tl193177193197%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all193171193179%_))))
                            (let ((_%one193200%_ _%hd193176193195%_))
                              (if (null? _%tl193177193197%_)
                                  (_%K193175193192%_ _%one193200%_)
                                  (_%else193173193187%_))))
                          (_%else193173193187%_))))))
          (let* ((_%g193003193020%_
                  (lambda (_%g193004193017%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193004193017%_))))
                 (_%g193002193167%_
                  (lambda (_%g193004193023%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193004193023%_))
                        (let ((_%e193007193025%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193004193023%_))))
                          (let ((_%hd193008193028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193007193025%_)))
                                (_%tl193009193030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193007193025%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl193009193030%_))
                                (let ((_%e193010193033%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl193009193030%_))))
                                  (let ((_%hd193011193036%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193010193033%_)))
                                        (_%tl193012193038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193010193033%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193012193038%_))
                                        (let ((_%e193013193041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193012193038%_))))
                                          (let ((_%hd193014193044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193013193041%_)))
                                                (_%tl193015193046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193013193041%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193015193046%_))
                                                ((lambda (_%g193005193049%_
                                                          _%g193006193050%_)
                                                   (let _%lp193066%_ ((_%rest193068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g193006193050%_)
                              (_%r193069%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx202652202653%_
                                                             _%rest193068%_)
                                                            (_%g193074193091%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx202652202653%_)))))
               (let ((_%__kont202654202655%_
                      (lambda (_%g193076193154%_)
                        (_%lp193066%_ _%g193076193154%_ _%r193069%_)))
                     (_%__kont202656202657%_
                      (lambda (_%g193081193127%_ _%g193082193128%_)
                        (_%lp193066%_
                         _%g193081193127%_
                         (cons (_%generate1193000%_ _%g193082193128%_)
                               _%r193069%_))))
                     (_%__kont202658202659%_
                      (lambda (_%g193086193103%_)
                        (_%generate*193001%_
                         (let ((__tmp202918
                                (cons (_%generate1193000%_ _%g193086193103%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp202918 _%r193069%_)))))
                     (_%__kont202660202661%_
                      (lambda ()
                        (_%generate*193001%_ (reverse! _%r193069%_)))))
                 (let ((_%g193072193114%_
                        (lambda ()
                          (let ((_%g193086193103%_ _%__stx202652202653%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g193086193103%_))
                                (_%__kont202658202659%_ _%g193086193103%_)
                                (_%__kont202660202661%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx202652202653%_))
                       (let ((_%e193077193143%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx202652202653%_))))
                         (let ((_%tl193079193148%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e193077193143%_)))
                               (_%hd193078193146%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e193077193143%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd193078193146%_))
                               (let ((_%e193080193151%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd193078193146%_))))
                                 (if (equal? _%e193080193151%_ '#f)
                                     (_%__kont202654202655%_
                                      _%tl193079193148%_)
                                     (_%__kont202656202657%_
                                      _%tl193079193148%_
                                      _%hd193078193146%_)))
                               (_%__kont202656202657%_
                                _%tl193079193148%_
                                _%hd193078193146%_))))
                       (let () (declare (not safe)) (_%g193072193114%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd193014193044%_
                                                 _%hd193011193036%_)
                                                (_%g193003193020%_
                                                 _%g193004193023%_))))
                                        (_%g193003193020%_
                                         _%g193004193023%_))))
                                (_%g193003193020%_ _%g193004193023%_))))
                        (_%g193003193020%_ _%g193004193023%_)))))
            (_%g193002193167%_ _%stx192998%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self192894%_ _%stx192895%_)
        (let* ((_%g192897192914%_
                (lambda (_%g192898192911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192898192911%_))))
               (_%g192896192994%_
                (lambda (_%g192898192917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192898192917%_))
                      (let ((_%e192901192919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192898192917%_))))
                        (let ((_%hd192902192922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192901192919%_)))
                              (_%tl192903192924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192901192919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192903192924%_))
                              (let ((_%e192904192927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192903192924%_))))
                                (let ((_%hd192905192930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192904192927%_)))
                                      (_%tl192906192932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192904192927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192906192932%_))
                                      (let ((_%e192907192935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192906192932%_))))
                                        (let ((_%hd192908192938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192907192935%_)))
                                              (_%tl192909192940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192907192935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192909192940%_))
                                              ((lambda (_%g192899192943%_
                                                        _%g192900192944%_)
                                                 (let* ((_%eid192959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g192900192944%_)))
                                                        (_%phi192961%_
                                                         (let ((__tmp202919
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp202919 '1)))
                (_%block192963%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self192894%_ 'state))
                  _%phi192961%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g192966192973%_
                                                           (lambda (_%g192967192970%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g192967192970%_))))
                  (_%g192965192991%_
                   (lambda (_%g192967192976%_)
                     ((lambda (_%g192968192978%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self192894%_ 'state))
                         _%phi192961%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g192968192978%_
                                     (cons _%g192899192943%_ '())))))
                      _%g192967192976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g192965192991%_
                                                      _%eid192959%_))
                                                   (if _%block192963%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block192963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g192900192944%_))
                                             (cons _%eid192959%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g192900192944%_))
                           (cons _%eid192959%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd192908192938%_
                                               _%hd192905192930%_)
                                              (_%g192897192914%_
                                               _%g192898192917%_))))
                                      (_%g192897192914%_ _%g192898192917%_))))
                              (_%g192897192914%_ _%g192898192917%_))))
                      (_%g192897192914%_ _%g192898192917%_)))))
          (_%g192896192994%_ _%stx192895%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self192826%_ _%stx192827%_)
        (let* ((_%g192829192846%_
                (lambda (_%g192830192843%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192830192843%_))))
               (_%g192828192891%_
                (lambda (_%g192830192849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192830192849%_))
                      (let ((_%e192833192851%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192830192849%_))))
                        (let ((_%hd192834192854%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192833192851%_)))
                              (_%tl192835192856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192833192851%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192835192856%_))
                              (let ((_%e192836192859%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192835192856%_))))
                                (let ((_%hd192837192862%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192836192859%_)))
                                      (_%tl192838192864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192836192859%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192838192864%_))
                                      (let ((_%e192839192867%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192838192864%_))))
                                        (let ((_%hd192840192870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192839192867%_)))
                                              (_%tl192841192872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192839192867%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192841192872%_))
                                              ((lambda (_%g192831192875%_
                                                        _%g192832192876%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g192832192876%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g192831192875%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd192840192870%_
                                               _%hd192837192862%_)
                                              (_%g192829192846%_
                                               _%g192830192849%_))))
                                      (_%g192829192846%_ _%g192830192849%_))))
                              (_%g192829192846%_ _%g192830192849%_))))
                      (_%g192829192846%_ _%g192830192849%_)))))
          (_%g192828192891%_ _%stx192827%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self192823%_ _%stx192824%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self192823%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx192824%_)
        (gxc#generate-meta-define-values% _%self192823%_ _%stx192824%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self192820%_ _%stx192821%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self192820%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx192821%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp202921 (list)) (__tmp202920 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp202921
         '(src n open blocks)
         __tmp202920
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args192817%_
        (apply make-instance gxc#meta-state::t _%$args192817%_)))
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
      (lambda (_%self192803%_ _%ctx192804%_)
        (let ((_%self192807%_ _%self192803%_))
          (if (let ((__tmp202922
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self192807%_))))
                (declare (not safe))
                (##fx< '4 __tmp202922))
              (begin
                (let ((__tmp202923
                       (let ((__tmp202924
                              (##structure-ref
                               _%ctx192804%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp202924))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self192807%_
                   __tmp202923
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self192807%_ '1 '2 '#f '#f))
                (let ((__tmp202925
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self192807%_
                   __tmp202925
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self192807%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp202926
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self192807%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self192807%_
                       '4
                       __tmp202926))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp202928 (list)) (__tmp202927 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp202928
         '(ctx phi n code)
         __tmp202927
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args192678%_
        (apply make-instance gxc#meta-state-block::t _%$args192678%_)))
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
      (lambda (_%state192638%_ _%phi192639%_)
        (let* ((_%state192640192648%_ _%state192638%_)
               (_%E192642192651%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state192640192648%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K192643192660%_
                (lambda (_%open192654%_ _%n192655%_ _%src192656%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open192654%_ _%phi192639%_))
                      '#f
                      (let ((_%block-ref192658%_
                             (let ((__tmp202929 (number->string _%n192655%_)))
                               (declare (not safe))
                               (##string-append
                                _%src192656%_
                                '"~"
                                __tmp202929))))
                        (##structure-set!
                         _%state192638%_
                         (let () (declare (not safe)) (##fx+ _%n192655%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp202930
                               (let ((__tmp202931
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp202931
                                  _%phi192639%_
                                  _%n192655%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open192654%_ _%phi192639%_ __tmp202930))
                        _%block-ref192658%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state192640192648%_
                 'gxc#meta-state::t))
              (let* ((_%e192644192663%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192640192648%_
                         '1
                         '#f
                         '#f)))
                     (_%src192666%_ _%e192644192663%_)
                     (_%e192645192668%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192640192648%_
                         '2
                         '#f
                         '#f)))
                     (_%n192671%_ _%e192645192668%_)
                     (_%e192646192673%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state192640192648%_
                         '3
                         '#f
                         '#f)))
                     (_%open192676%_ _%e192646192673%_))
                (_%K192643192660%_ _%open192676%_ _%n192671%_ _%src192666%_))
              (_%E192642192651%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state192632%_ _%phi192633%_ _%stx192634%_)
        (let ((_%block192636%_
               (let ((__tmp202932
                      (##structure-ref
                       _%state192632%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp202932 _%phi192633%_))))
          (##structure-set!
           _%block192636%_
           (cons _%stx192634%_
                 (##structure-ref
                  _%block192636%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state192626%_)
        (##structure-set!
         _%state192626%_
         (let ((__tmp202935
                (lambda (_%_192628%_ _%block192629%_ _%r192630%_)
                  (cons _%block192629%_ _%r192630%_)))
               (__tmp202934
                (##structure-ref _%state192626%_ '4 gxc#meta-state::t '#f))
               (__tmp202933
                (##structure-ref _%state192626%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp202935 __tmp202934 __tmp202933))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state192626%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state192579%_)
        (gxc#meta-state-end-phi! _%state192579%_)
        (let ((__tmp202937
               (lambda (_%block192581%_ _%r192582%_)
                 (let* ((_%block192583192592%_ _%block192581%_)
                        (_%E192585192595%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block192583192592%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K192586192603%_
                         (lambda (_%code192598%_
                                  _%n192599%_
                                  _%phi192600%_
                                  _%ctx192601%_)
                           (if (null? _%code192598%_)
                               _%r192582%_
                               (cons (cons _%ctx192601%_
                                           (cons _%phi192600%_
                                                 (cons _%n192599%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code192598%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r192582%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block192583192592%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e192587192606%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192583192592%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx192609%_ _%e192587192606%_)
                              (_%e192588192611%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192583192592%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi192614%_ _%e192588192611%_)
                              (_%e192589192616%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192583192592%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n192619%_ _%e192589192616%_)
                              (_%e192590192621%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block192583192592%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code192624%_ _%e192590192621%_))
                         (_%K192586192603%_
                          _%code192624%_
                          _%n192619%_
                          _%phi192614%_
                          _%ctx192609%_))
                       (_%E192585192595%_)))))
              (__tmp202936
               (##structure-ref _%state192579%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp202937 '() __tmp202936))))
    (define gxc#collect-expression-refs
      (lambda (_%stx192575%_)
        (let ((_%ht192577%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht192577%_ _%stx192575%_)
          _%ht192577%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self192518%_ _%stx192519%_)
        (let* ((_%g192521192534%_
                (lambda (_%g192522192531%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192522192531%_))))
               (_%g192520192572%_
                (lambda (_%g192522192537%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192522192537%_))
                      (let ((_%e192524192539%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192522192537%_))))
                        (let ((_%hd192525192542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192524192539%_)))
                              (_%tl192526192544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192524192539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192526192544%_))
                              (let ((_%e192527192547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192526192544%_))))
                                (let ((_%hd192528192550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192527192547%_)))
                                      (_%tl192529192552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192527192547%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192529192552%_))
                                      ((lambda (_%g192523192555%_)
                                         (let* ((_%bind192567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g192523192555%_)))
                                                (_%eid192569%_
                                                 (if _%bind192567%_
                                                     (##structure-ref
                                                      _%bind192567%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g192523192555%_))))
                                                (__tmp202938
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self192518%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp202938
                                            _%eid192569%_
                                            _%eid192569%_)))
                                       _%hd192528192550%_)
                                      (_%g192521192534%_ _%g192522192537%_))))
                              (_%g192521192534%_ _%g192522192537%_))))
                      (_%g192521192534%_ _%g192522192537%_)))))
          (_%g192520192572%_ _%stx192519%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self192445%_ _%stx192446%_)
        (let* ((_%g192448192465%_
                (lambda (_%g192449192462%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192449192462%_))))
               (_%g192447192515%_
                (lambda (_%g192449192468%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192449192468%_))
                      (let ((_%e192452192470%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192449192468%_))))
                        (let ((_%hd192453192473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192452192470%_)))
                              (_%tl192454192475%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192452192470%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192454192475%_))
                              (let ((_%e192455192478%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192454192475%_))))
                                (let ((_%hd192456192481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192455192478%_)))
                                      (_%tl192457192483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192455192478%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192457192483%_))
                                      (let ((_%e192458192486%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192457192483%_))))
                                        (let ((_%hd192459192489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192458192486%_)))
                                              (_%tl192460192491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192458192486%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192460192491%_))
                                              ((lambda (_%g192450192494%_
                                                        _%g192451192495%_)
                                                 (let* ((_%bind192510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g192451192495%_)))
                                                        (_%eid192512%_
                                                         (if _%bind192510%_
                                                             (##structure-ref
                                                              _%bind192510%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g192451192495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp202939
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self192445%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp202939
                                                      _%eid192512%_
                                                      _%eid192512%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self192445%_
                                                      _%g192450192494%_))))
                                               _%hd192459192489%_
                                               _%hd192456192481%_)
                                              (_%g192448192465%_
                                               _%g192449192468%_))))
                                      (_%g192448192465%_ _%g192449192468%_))))
                              (_%g192448192465%_ _%g192449192468%_))))
                      (_%g192448192465%_ _%g192449192468%_)))))
          (_%g192447192515%_ _%stx192446%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self192402%_ _%stx192403%_)
        (let* ((_%g192405192415%_
                (lambda (_%g192406192412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192406192412%_))))
               (_%g192404192442%_
                (lambda (_%g192406192418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192406192418%_))
                      (let ((_%e192408192420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192406192418%_))))
                        (let ((_%hd192409192423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192408192420%_)))
                              (_%tl192410192425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192408192420%_))))
                          ((lambda (_%g192407192428%_)
                             (let ((__tmp202940
                                    (lambda (_%g192437192439%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self192402%_
                                         _%g192437192439%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp202940 _%g192407192428%_)))
                           _%tl192410192425%_)))
                      (_%g192405192415%_ _%g192406192418%_)))))
          (_%g192404192442%_ _%stx192403%_))))
    (define gxc#count-values-single%
      (lambda (_%self192399%_ _%stx192400%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self192267%_ _%stx192268%_)
        (let* ((_%__stx202682202683%_ _%stx192268%_)
               (_%g192271192300%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202682202683%_)))))
          (let ((_%__kont202684202685%_
                 (lambda (_%g192273192366%_ _%g192274192367%_)
                   (length (let ((__tmp202941
                                  (lambda (_%g192388192391%_ _%g192389192393%_)
                                    (cons _%g192388192391%_
                                          _%g192389192393%_))))
                             (declare (not safe))
                             (foldr__0 __tmp202941 '() _%g192273192366%_)))))
                (_%__kont202688202689%_ (lambda () '#f)))
            (let ((_%__match202727202728%_
                   (lambda (_%e192275192312%_
                            _%hd192276192315%_
                            _%tl192277192317%_
                            _%e192278192320%_
                            _%hd192279192323%_
                            _%tl192280192325%_
                            _%e192281192328%_
                            _%hd192282192331%_
                            _%tl192283192333%_
                            _%e192284192336%_
                            _%hd192285192339%_
                            _%tl192286192341%_
                            _%__splice202686202687%_
                            _%target192287192344%_
                            _%tl192289192346%_)
                     (letrec ((_%loop192290192349%_
                               (lambda (_%hd192288192352%_
                                        _%rand192294192354%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd192288192352%_))
                                     (let ((_%e192291192356%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd192288192352%_))))
                                       (let ((_%lp-tl192293192361%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e192291192356%_)))
                                             (_%lp-hd192292192359%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e192291192356%_))))
                                         (_%loop192290192349%_
                                          _%lp-tl192293192361%_
                                          (cons _%lp-hd192292192359%_
                                                _%rand192294192354%_))))
                                     (let ((_%rand192295192364%_
                                            (reverse _%rand192294192354%_)))
                                       (let ((_%g192273192366%_
                                              _%rand192295192364%_)
                                             (_%g192274192367%_
                                              _%hd192285192339%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g192274192367%_
                                                'values))
                                             (_%__kont202684202685%_
                                              _%g192273192366%_
                                              _%g192274192367%_)
                                             (_%__kont202688202689%_))))))))
                       (_%loop192290192349%_ _%target192287192344%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202682202683%_))
                  (let ((_%e192275192312%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx202682202683%_))))
                    (let ((_%tl192277192317%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192275192312%_)))
                          (_%hd192276192315%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192275192312%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192277192317%_))
                          (let ((_%e192278192320%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192277192317%_))))
                            (let ((_%tl192280192325%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192278192320%_)))
                                  (_%hd192279192323%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192278192320%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192279192323%_))
                                  (let ((_%e192281192328%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192279192323%_))))
                                    (let ((_%tl192283192333%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192281192328%_)))
                                          (_%hd192282192331%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192281192328%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192282192331%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192282192331%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192283192333%_))
                                                  (let ((_%e192284192336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192283192333%_))))
                                                    (let ((_%tl192286192341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192284192336%_)))
                                                          (_%hd192285192339%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192284192336%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192286192341%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl192280192325%_))
                      (let ((_%__splice202686202687%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl192280192325%_
                                '0))))
                        (let ((_%tl192289192346%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202686202687%_ '1)))
                              (_%target192287192344%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202686202687%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192289192346%_))
                              (_%__match202727202728%_
                               _%e192275192312%_
                               _%hd192276192315%_
                               _%tl192277192317%_
                               _%e192278192320%_
                               _%hd192279192323%_
                               _%tl192280192325%_
                               _%e192281192328%_
                               _%hd192282192331%_
                               _%tl192283192333%_
                               _%e192284192336%_
                               _%hd192285192339%_
                               _%tl192286192341%_
                               _%__splice202686202687%_
                               _%target192287192344%_
                               _%tl192289192346%_)
                              (_%__kont202688202689%_))))
                      (_%__kont202688202689%_))
                  (_%__kont202688202689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202688202689%_))
                                              (_%__kont202688202689%_))
                                          (_%__kont202688202689%_))))
                                  (_%__kont202688202689%_))))
                          (_%__kont202688202689%_))))
                  (_%__kont202688202689%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self192172%_ _%stx192173%_)
        (let* ((_%g192175192196%_
                (lambda (_%g192176192193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192176192193%_))))
               (_%g192174192264%_
                (lambda (_%g192176192199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192176192199%_))
                      (let ((_%e192180192201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192176192199%_))))
                        (let ((_%hd192181192204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192180192201%_)))
                              (_%tl192182192206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192180192201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192182192206%_))
                              (let ((_%e192183192209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192182192206%_))))
                                (let ((_%hd192184192212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192183192209%_)))
                                      (_%tl192185192214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192183192209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192185192214%_))
                                      (let ((_%e192186192217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192185192214%_))))
                                        (let ((_%hd192187192220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192186192217%_)))
                                              (_%tl192188192222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192186192217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192188192222%_))
                                              (let ((_%e192189192225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192188192222%_))))
                                                (let ((_%hd192190192228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192189192225%_)))
                                                      (_%tl192191192230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192189192225%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192191192230%_))
                                                      ((lambda (_%g192177192233%_
                                                                _%g192178192234%_
                                                                _%g192179192235%_)
                                                         (let ((_%c1192252192254%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self192172%_
                           _%g192178192234%_))))
                   (if _%c1192252192254%_
                       (let* ((_%c1192256%_ _%c1192252192254%_)
                              (_%c2192257192259%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self192172%_
                                  _%g192177192233%_))))
                         (if _%c2192257192259%_
                             (let ((_%c2192261%_ _%c2192257192259%_))
                               (if (fx= _%c1192256%_ _%c2192261%_)
                                   _%c1192256%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd192190192228%_
               _%hd192187192220%_
               _%hd192184192212%_)
              (_%g192175192196%_ _%g192176192199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g192175192196%_
                                               _%g192176192199%_))))
                                      (_%g192175192196%_ _%g192176192199%_))))
                              (_%g192175192196%_ _%g192176192199%_))))
                      (_%g192175192196%_ _%g192176192199%_)))))
          (_%g192174192264%_ _%stx192173%_))))))
