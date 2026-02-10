(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770752337)
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
      (let ((__tmp203832 (list gxc#::void::t))
            (__tmp203831 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp203832
         '()
         __tmp203831
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args202446%_
        (apply make-instance gxc#::collect-bindings::t _%$args202446%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp203833
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
        (__make-atomic-promise __tmp203833)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx202438%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self202441%_
                (let ((__obj203807
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj203807))
               (__tmp203834
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202441%_ _%stx202438%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203834
           gxc#current-compile-method
           _%self202441%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp203836 (list gxc#::void::t))
            (__tmp203835 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp203836
         '(modules)
         __tmp203835
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args202435%_
        (apply make-instance gxc#::lift-modules::t _%$args202435%_)))
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
      (let ((__tmp203837
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
        (__make-atomic-promise __tmp203837)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords202410%_ _%modules202407202411%_ _%stx202412%_)
        (let ((_%modules202415%_
               (if (eq? _%modules202407202411%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules202407202411%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self202417%_
                  (let ((__obj203809
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj203809
                       _%modules202415%_
                       '1
                       '#f
                       '#f))
                    __obj203809))
                 (__tmp203838
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self202417%_ _%stx202412%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp203838
             gxc#current-compile-method
             _%self202417%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords202424%_ . _%args202425%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords202424%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202424%_
                  'modules:
                  absent-value))
               _%args202425%_)))
    (define gxc#apply-lift-modules
      (lambda _%args202408202431%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args202408202431%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp203840 (list)) (__tmp203839 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp203840
         '()
         __tmp203839
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args202403%_
        (apply make-instance gxc#::find-runtime-code::t _%$args202403%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp203841
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
        (__make-atomic-promise __tmp203841)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx202395%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self202398%_
                (let ((__obj203811
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj203811))
               (__tmp203842
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202398%_ _%stx202395%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203842
           gxc#current-compile-method
           _%self202398%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp203844 (list gxc#::false::t))
            (__tmp203843 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp203844
         '()
         __tmp203843
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args202392%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args202392%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp203845
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
        (__make-atomic-promise __tmp203845)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx202384%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self202387%_
                (let ((__obj203813
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj203813))
               (__tmp203846
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202387%_ _%stx202384%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203846
           gxc#current-compile-method
           _%self202387%_))))
    (define gxc#::count-values::t
      (let ((__tmp203848 (list gxc#::false-expression::t))
            (__tmp203847 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp203848
         '()
         __tmp203847
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args202381%_
        (apply make-instance gxc#::count-values::t _%$args202381%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp203849
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
        (__make-atomic-promise __tmp203849)))
    (define gxc#apply-count-values
      (lambda (_%stx202373%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self202376%_
                (let ((__obj203815
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj203815))
               (__tmp203850
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202376%_ _%stx202373%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203850
           gxc#current-compile-method
           _%self202376%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp203851 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp203851
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args202370%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args202370%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp203852
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
        (__make-atomic-promise __tmp203852)))
    (define gxc#::generate-loader::t
      (let ((__tmp203854 (list gxc#::generate-runtime-empty::t))
            (__tmp203853 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp203854
         '()
         __tmp203853
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args202366%_
        (apply make-instance gxc#::generate-loader::t _%$args202366%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp203855
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
        (__make-atomic-promise __tmp203855)))
    (define gxc#apply-generate-loader
      (lambda (_%stx202358%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self202361%_
                (let ((__obj203818
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj203818))
               (__tmp203856
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202361%_ _%stx202358%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203856
           gxc#current-compile-method
           _%self202361%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp203857 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp203857
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args202355%_
        (apply make-instance gxc#::generate-runtime::t _%$args202355%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp203858
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
        (__make-atomic-promise __tmp203858)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx202347%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self202350%_
                (let ((__obj203820
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj203820))
               (__tmp203859
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202350%_ _%stx202347%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203859
           gxc#current-compile-method
           _%self202350%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp203861 (list gxc#::generate-runtime::t))
            (__tmp203860 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp203861
         '()
         __tmp203860
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args202344%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args202344%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp203862
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
        (__make-atomic-promise __tmp203862)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx202336%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self202339%_
                (let ((__obj203822
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj203822))
               (__tmp203863
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202339%_ _%stx202336%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203863
           gxc#current-compile-method
           _%self202339%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp203864 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp203864
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args202333%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args202333%_)))
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
      (let ((__tmp203865
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
        (__make-atomic-promise __tmp203865)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords202308%_ _%table202305202309%_ _%stx202310%_)
        (let ((_%table202313%_
               (if (eq? _%table202305202309%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table202305202309%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self202315%_
                  (let ((__obj203824
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj203824
                       _%table202313%_
                       '1
                       '#f
                       '#f))
                    __obj203824))
                 (__tmp203866
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self202315%_ _%stx202310%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp203866
             gxc#current-compile-method
             _%self202315%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords202322%_ . _%args202323%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords202322%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202322%_
                  'table:
                  absent-value))
               _%args202323%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args202306202329%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args202306202329%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp203868 (list gxc#::void-expression::t))
            (__tmp203867 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp203868
         '(state)
         __tmp203867
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args202301%_
        (apply make-instance gxc#::generate-meta::t _%$args202301%_)))
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
      (let ((__tmp203869
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
        (__make-atomic-promise __tmp203869)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords202276%_ _%state202273202277%_ _%stx202278%_)
        (let ((_%state202281%_
               (if (eq? _%state202273202277%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state202273202277%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self202283%_
                  (let ((__obj203826
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj203826
                       _%state202281%_
                       '1
                       '#f
                       '#f))
                    __obj203826))
                 (__tmp203870
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self202283%_ _%stx202278%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp203870
             gxc#current-compile-method
             _%self202283%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords202290%_ . _%args202291%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords202290%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202290%_
                  'state:
                  absent-value))
               _%args202291%_)))
    (define gxc#apply-generate-meta
      (lambda _%args202274202297%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args202274202297%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp203872 (list)) (__tmp203871 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp203872
         '(state)
         __tmp203871
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args202269%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args202269%_)))
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
      (let ((__tmp203873
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
        (__make-atomic-promise __tmp203873)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords202244%_ _%state202241202245%_ _%stx202246%_)
        (let ((_%state202249%_
               (if (eq? _%state202241202245%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state202241202245%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self202251%_
                  (let ((__obj203828
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj203828
                       _%state202249%_
                       '1
                       '#f
                       '#f))
                    __obj203828))
                 (__tmp203874
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self202251%_ _%stx202246%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp203874
             gxc#current-compile-method
             _%self202251%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords202258%_ . _%args202259%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords202258%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202258%_
                  'state:
                  absent-value))
               _%args202259%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args202242202265%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args202242202265%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self202170%_ _%stx202171%_)
        (let* ((_%g202173202190%_
                (lambda (_%g202174202187%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202174202187%_))))
               (_%g202172202237%_
                (lambda (_%g202174202193%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202174202193%_))
                      (let ((_%e202177202195%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202174202193%_))))
                        (let ((_%hd202178202198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202177202195%_)))
                              (_%tl202179202200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202177202195%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202179202200%_))
                              (let ((_%e202180202203%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202179202200%_))))
                                (let ((_%hd202181202206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202180202203%_)))
                                      (_%tl202182202208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202180202203%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202182202208%_))
                                      (let ((_%e202183202211%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202182202208%_))))
                                        (let ((_%hd202184202214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202183202211%_)))
                                              (_%tl202185202216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202183202211%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202185202216%_))
                                              ((lambda (_%g202175202219%_
                                                        _%g202176202220%_)
                                                 (let ((__tmp203875
                                                        (lambda (_%bind202235%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind202235%_))
                      (gxc#add-module-binding! _%bind202235%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp203875
                                                    _%g202176202220%_)))
                                               _%hd202184202214%_
                                               _%hd202181202206%_)
                                              (_%g202173202190%_
                                               _%g202174202193%_))))
                                      (_%g202173202190%_ _%g202174202193%_))))
                              (_%g202173202190%_ _%g202174202193%_))))
                      (_%g202173202190%_ _%g202174202193%_)))))
          (_%g202172202237%_ _%stx202171%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self202102%_ _%stx202103%_)
        (let* ((_%g202105202122%_
                (lambda (_%g202106202119%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202106202119%_))))
               (_%g202104202167%_
                (lambda (_%g202106202125%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202106202125%_))
                      (let ((_%e202109202127%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202106202125%_))))
                        (let ((_%hd202110202130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202109202127%_)))
                              (_%tl202111202132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202109202127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202111202132%_))
                              (let ((_%e202112202135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202111202132%_))))
                                (let ((_%hd202113202138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202112202135%_)))
                                      (_%tl202114202140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202112202135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202114202140%_))
                                      (let ((_%e202115202143%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202114202140%_))))
                                        (let ((_%hd202116202146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202115202143%_)))
                                              (_%tl202117202148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202115202143%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202117202148%_))
                                              ((lambda (_%g202107202151%_
                                                        _%g202108202152%_)
                                                 (gxc#add-module-binding!
                                                  _%g202108202152%_
                                                  '#t))
                                               _%hd202116202146%_
                                               _%hd202113202138%_)
                                              (_%g202105202122%_
                                               _%g202106202125%_))))
                                      (_%g202105202122%_ _%g202106202125%_))))
                              (_%g202105202122%_ _%g202106202125%_))))
                      (_%g202105202122%_ _%g202106202125%_)))))
          (_%g202104202167%_ _%stx202103%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self202044%_ _%stx202045%_)
        (let* ((_%g202047202061%_
                (lambda (_%g202048202058%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202048202058%_))))
               (_%g202046202099%_
                (lambda (_%g202048202064%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202048202064%_))
                      (let ((_%e202051202066%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202048202064%_))))
                        (let ((_%hd202052202069%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202051202066%_)))
                              (_%tl202053202071%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202051202066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202053202071%_))
                              (let ((_%e202054202074%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202053202071%_))))
                                (let ((_%hd202055202077%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202054202074%_)))
                                      (_%tl202056202079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202054202074%_))))
                                  ((lambda (_%g202049202082%_
                                            _%g202050202083%_)
                                     (let ((_%ctx202096%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g202050202083%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self202044%_
                                           'modules))
                                        (cons _%ctx202096%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self202044%_
                                                        'modules)))))
                                       (let ((__tmp203876
                                              (lambda ()
                                                (let ((__tmp203877
                                                       (##structure-ref
                                                        _%ctx202096%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self202044%_
                                                   __tmp203877)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp203876
                                          gx#current-expander-context
                                          _%ctx202096%_))))
                                   _%tl202056202079%_
                                   _%hd202055202077%_)))
                              (_%g202047202061%_ _%g202048202064%_))))
                      (_%g202047202061%_ _%g202048202064%_)))))
          (_%g202046202099%_ _%stx202045%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls201998202000%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls201998202000%_
              (let ((_%decls202002%_ _%decls201998202000%_))
                (let _%lp202004%_ ((_%rest202006%_ _%decls202002%_))
                  (let* ((_%rest202007202015%_ _%rest202006%_)
                         (_%else202009202023%_ (lambda () '#f))
                         (_%K202011202032%_
                          (lambda (_%decls202026%_ _%decl202027%_)
                            (if (equal? _%decl202027%_ '(not safe))
                                '#t
                                (if (equal? _%decl202027%_ '(safe))
                                    '#f
                                    (_%lp202004%_ _%decls202026%_))))))
                    (if (pair? _%rest202007202015%_)
                        (let ((_%hd202012202035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202007202015%_)))
                              (_%tl202013202037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202007202015%_))))
                          (let* ((_%decl202040%_ _%hd202012202035%_)
                                 (_%decls202042%_ _%tl202013202037%_))
                            (_%K202011202032%_
                             _%decls202042%_
                             _%decl202040%_)))
                        (_%else202009202023%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id201992%_ _%syntax?201993%_)
        (let ((_%eid201995%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id201992%_))
                '1
                gx#binding::t
                '#f))
              (_%ht201996%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid201995%_))
              '#!void
              (let ((__tmp203878
                     (let ((__tmp203879
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid201995%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp203879 _%syntax?201993%_))))
                (declare (not safe))
                (hash-put! _%ht201996%_ _%eid201995%_ __tmp203878))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self201989%_ _%stx201990%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self201836%_ _%stx201837%_)
        (letrec ((_%simplify201839%_
                  (lambda (_%body201887%_)
                    (let _%lp201889%_ ((_%rest201891%_ _%body201887%_)
                                       (_%r201892%_ '()))
                      (let* ((_%rest201893201901%_ _%rest201891%_)
                             (_%else201895201909%_
                              (lambda () (reverse _%r201892%_)))
                             (_%K201897201977%_
                              (lambda (_%rest201912%_ _%hd201913%_)
                                (let* ((_%hd201914201930%_ _%hd201913%_)
                                       (_%else201918201938%_
                                        (lambda ()
                                          (_%lp201889%_
                                           _%rest201912%_
                                           (cons _%hd201913%_ _%r201892%_)))))
                                  (let ((_%K201926201967%_
                                         (lambda (_%exprs201965%_)
                                           (_%lp201889%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest201912%_
                                               _%exprs201965%_))
                                            _%r201892%_)))
                                        (_%K201921201951%_
                                         (lambda ()
                                           (if (null? _%rest201912%_)
                                               (_%lp201889%_
                                                _%rest201912%_
                                                (cons _%hd201913%_
                                                      _%r201892%_))
                                               (_%lp201889%_
                                                _%rest201912%_
                                                _%r201892%_))))
                                        (_%K201920201943%_
                                         (lambda ()
                                           (if (null? _%rest201912%_)
                                               (_%lp201889%_
                                                _%rest201912%_
                                                (cons _%hd201913%_
                                                      _%r201892%_))
                                               (_%lp201889%_
                                                _%rest201912%_
                                                _%r201892%_)))))
                                    (let ((_%try-match201917201946%_
                                           (lambda ()
                                             (if (symbol? _%hd201914201930%_)
                                                 (_%K201920201943%_)
                                                 (_%else201918201938%_)))))
                                      (if (pair? _%hd201914201930%_)
                                          (let ((_%tl201928201972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd201914201930%_)))
                                                (_%hd201927201970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd201914201930%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201927201970%_
                                                         'begin))
                                                (let ((_%exprs201975%_
                                                       _%tl201928201972%_))
                                                  (_%K201926201967%_
                                                   _%exprs201975%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd201927201970%_
                                                             'quote))
                                                    (if (pair? _%tl201928201972%_)
                                                        (let ((_%tl201925201959%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl201928201972%_))))
                  (if (null? _%tl201925201959%_)
                      (_%K201921201951%_)
                      (_%try-match201917201946%_)))
                (_%try-match201917201946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match201917201946%_))))
                                          (_%try-match201917201946%_))))))))
                        (if (pair? _%rest201893201901%_)
                            (let ((_%hd201898201980%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201893201901%_)))
                                  (_%tl201899201982%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201893201901%_))))
                              (let* ((_%hd201985%_ _%hd201898201980%_)
                                     (_%rest201987%_ _%tl201899201982%_))
                                (_%K201897201977%_
                                 _%rest201987%_
                                 _%hd201985%_)))
                            (_%else201895201909%_)))))))
          (let* ((_%g201841201851%_
                  (lambda (_%g201842201848%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201842201848%_))))
                 (_%g201840201884%_
                  (lambda (_%g201842201854%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201842201854%_))
                        (let ((_%e201844201856%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201842201854%_))))
                          (let ((_%hd201845201859%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201844201856%_)))
                                (_%tl201846201861%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201844201856%_))))
                            ((lambda (_%g201843201864%_)
                               (let* ((_%body201879%_
                                       (map (lambda (_%g201874201876%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self201836%_
                                                 _%g201874201876%_)))
                                            _%g201843201864%_))
                                      (_%body201881%_
                                       (_%simplify201839%_ _%body201879%_)))
                                 (if (let ((__tmp203880
                                            (length _%body201881%_)))
                                       (declare (not safe))
                                       (##fx= __tmp203880 '1))
                                     (car _%body201881%_)
                                     (cons 'begin _%body201881%_))))
                             _%tl201846201861%_)))
                        (_%g201841201851%_ _%g201842201854%_)))))
            (_%g201840201884%_ _%stx201837%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self201797%_ _%stx201798%_)
        (let* ((_%g201800201810%_
                (lambda (_%g201801201807%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201801201807%_))))
               (_%g201799201833%_
                (lambda (_%g201801201813%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201801201813%_))
                      (let ((_%e201803201815%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201801201813%_))))
                        (let ((_%hd201804201818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201803201815%_)))
                              (_%tl201805201820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201803201815%_))))
                          ((lambda (_%g201802201823%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g201802201823%_))))
                           _%tl201805201820%_)))
                      (_%g201800201810%_ _%g201801201813%_)))))
          (_%g201799201833%_ _%stx201798%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self201563%_ _%stx201564%_)
        (let* ((_%__stx202470202471%_ _%stx201564%_)
               (_%g201568201620%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202470202471%_)))))
          (let ((_%__kont202472202473%_
                 (lambda (_%g201570201779%_ _%g201571201780%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self201563%_ _%g201570201779%_))))
                (_%__kont202474202475%_
                 (lambda (_%g201581201727%_
                          _%g201582201728%_
                          _%g201583201729%_)
                   (if (let ((__tmp203881
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g201583201729%_))))
                         (declare (not safe))
                         (##memq __tmp203881 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self201563%_
                          _%g201581201727%_)))))
                (_%__kont202478202479%_
                 (lambda (_%g201605201649%_ _%g201606201650%_)
                   (let ((_%decls201665%_
                          (map gx#syntax->datum _%g201606201650%_)))
                     (let ((__tmp203884
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls201665%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self201563%_
                                                   _%g201605201649%_))
                                                '())))))
                           (__tmp203882
                            (let ((__tmp203883
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp203883 _%decls201665%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp203884
                        gxc#current-compile-decls
                        __tmp203882))))))
            (let* ((_%__match202525202526%_
                    (lambda (_%e201584201673%_
                             _%hd201585201676%_
                             _%tl201586201678%_
                             _%e201587201681%_
                             _%hd201588201684%_
                             _%tl201589201686%_
                             _%e201590201689%_
                             _%hd201591201692%_
                             _%tl201592201694%_
                             _%__splice202476202477%_
                             _%target201593201697%_
                             _%tl201595201699%_)
                      (letrec ((_%loop201596201702%_
                                (lambda (_%hd201594201705%_
                                         _%param201600201707%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd201594201705%_))
                                      (let ((_%e201597201709%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd201594201705%_))))
                                        (let ((_%lp-tl201599201714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201597201709%_)))
                                              (_%lp-hd201598201712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201597201709%_))))
                                          (_%loop201596201702%_
                                           _%lp-tl201599201714%_
                                           (cons _%lp-hd201598201712%_
                                                 _%param201600201707%_))))
                                      (let ((_%param201601201717%_
                                             (reverse _%param201600201707%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201589201686%_))
                                            (let ((_%e201602201719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201589201686%_))))
                                              (let ((_%tl201604201724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201602201719%_)))
                                                    (_%hd201603201722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201602201719%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl201604201724%_))
                                                    (let ((_%g201581201727%_
                                                           _%hd201603201722%_)
                                                          (_%g201582201728%_
                                                           _%param201601201717%_)
                                                          (_%g201583201729%_
                                                           _%hd201591201692%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g201583201729%_))
                       (not (let ((__tmp203885
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g201583201729%_))))
                              (declare (not safe))
                              (##memq __tmp203885 gxc#gambit-annotations))))
                  (_%__kont202474202475%_
                   _%g201581201727%_
                   _%g201582201728%_
                   _%g201583201729%_)
                  (_%__kont202478202479%_
                   _%hd201603201722%_
                   _%hd201588201684%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201568201620%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g201568201620%_))))))))
                        (_%loop201596201702%_ _%target201593201697%_ '()))))
                   (_%__match202499202500%_
                    (lambda (_%e201572201755%_
                             _%hd201573201758%_
                             _%tl201574201760%_
                             _%e201575201763%_
                             _%hd201576201766%_
                             _%tl201577201768%_
                             _%e201578201771%_
                             _%hd201579201774%_
                             _%tl201580201776%_)
                      (let ((_%g201570201779%_ _%hd201579201774%_)
                            (_%g201571201780%_ _%hd201576201766%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g201571201780%_))
                            (_%__kont202472202473%_
                             _%g201570201779%_
                             _%g201571201780%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd201576201766%_))
                                (let ((_%e201590201689%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201576201766%_))))
                                  (let ((_%tl201592201694%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201590201689%_)))
                                        (_%hd201591201692%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201590201689%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl201592201694%_))
                                        (let ((_%__splice202476202477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl201592201694%_
                                                  '0))))
                                          (let ((_%tl201595201699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice202476202477%_
                                                    '1)))
                                                (_%target201593201697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice202476202477%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201595201699%_))
                                                (_%__match202525202526%_
                                                 _%e201572201755%_
                                                 _%hd201573201758%_
                                                 _%tl201574201760%_
                                                 _%e201575201763%_
                                                 _%hd201576201766%_
                                                 _%tl201577201768%_
                                                 _%e201590201689%_
                                                 _%hd201591201692%_
                                                 _%tl201592201694%_
                                                 _%__splice202476202477%_
                                                 _%target201593201697%_
                                                 _%tl201595201699%_)
                                                (_%__kont202478202479%_
                                                 _%hd201579201774%_
                                                 _%hd201576201766%_))))
                                        (_%__kont202478202479%_
                                         _%hd201579201774%_
                                         _%hd201576201766%_))))
                                (_%__kont202478202479%_
                                 _%hd201579201774%_
                                 _%hd201576201766%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202470202471%_))
                  (let ((_%e201572201755%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx202470202471%_))))
                    (let ((_%tl201574201760%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201572201755%_)))
                          (_%hd201573201758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201572201755%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201574201760%_))
                          (let ((_%e201575201763%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201574201760%_))))
                            (let ((_%tl201577201768%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201575201763%_)))
                                  (_%hd201576201766%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201575201763%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201577201768%_))
                                  (let ((_%e201578201771%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201577201768%_))))
                                    (let ((_%tl201580201776%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201578201771%_)))
                                          (_%hd201579201774%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201578201771%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201580201776%_))
                                          (_%__match202499202500%_
                                           _%e201572201755%_
                                           _%hd201573201758%_
                                           _%tl201574201760%_
                                           _%e201575201763%_
                                           _%hd201576201766%_
                                           _%tl201577201768%_
                                           _%e201578201771%_
                                           _%hd201579201774%_
                                           _%tl201580201776%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd201576201766%_))
                                              (let ((_%e201590201689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd201576201766%_))))
                                                (let ((_%tl201592201694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201590201689%_)))
                                                      (_%hd201591201692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201590201689%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl201592201694%_))
                                                      (let ((_%__splice202476202477%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl201592201694%_
                        '0))))
                (let ((_%tl201595201699%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202476202477%_ '1)))
                      (_%target201593201697%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202476202477%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201595201699%_))
                      (_%__match202525202526%_
                       _%e201572201755%_
                       _%hd201573201758%_
                       _%tl201574201760%_
                       _%e201575201763%_
                       _%hd201576201766%_
                       _%tl201577201768%_
                       _%e201590201689%_
                       _%hd201591201692%_
                       _%tl201592201694%_
                       _%__splice202476202477%_
                       _%target201593201697%_
                       _%tl201595201699%_)
                      (let () (declare (not safe)) (_%g201568201620%_)))))
              (let () (declare (not safe)) (_%g201568201620%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201568201620%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd201576201766%_))
                                      (let ((_%e201590201689%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd201576201766%_))))
                                        (let ((_%tl201592201694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201590201689%_)))
                                              (_%hd201591201692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201590201689%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl201592201694%_))
                                              (let ((_%__splice202476202477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl201592201694%_
                                                        '0))))
                                                (let ((_%tl201595201699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202476202477%_
                                                          '1)))
                                                      (_%target201593201697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202476202477%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201595201699%_))
                                                      (_%__match202525202526%_
                                                       _%e201572201755%_
                                                       _%hd201573201758%_
                                                       _%tl201574201760%_
                                                       _%e201575201763%_
                                                       _%hd201576201766%_
                                                       _%tl201577201768%_
                                                       _%e201590201689%_
                                                       _%hd201591201692%_
                                                       _%tl201592201694%_
                                                       _%__splice202476202477%_
                                                       _%target201593201697%_
                                                       _%tl201595201699%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201568201620%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201568201620%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201568201620%_))))))
                          (let () (declare (not safe)) (_%g201568201620%_)))))
                  (let () (declare (not safe)) (_%g201568201620%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self201522%_ _%stx201523%_)
        (let* ((_%g201525201535%_
                (lambda (_%g201526201532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201526201532%_))))
               (_%g201524201560%_
                (lambda (_%g201526201538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201526201538%_))
                      (let ((_%e201528201540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201526201538%_))))
                        (let ((_%hd201529201543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201528201540%_)))
                              (_%tl201530201545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201528201540%_))))
                          ((lambda (_%g201527201548%_)
                             (let ((_%decls201558%_
                                    (map gx#syntax->datum _%g201527201548%_)))
                               (let ((__tmp203886
                                      (let ((__tmp203887
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp203887
                                         _%decls201558%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp203886))
                               (cons 'declare _%decls201558%_)))
                           _%tl201530201545%_)))
                      (_%g201525201535%_ _%g201526201538%_)))))
          (_%g201524201560%_ _%stx201523%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self201269%_ _%stx201270%_)
        (let* ((_%g201272201289%_
                (lambda (_%g201273201286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201273201286%_))))
               (_%g201271201519%_
                (lambda (_%g201273201292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201273201292%_))
                      (let ((_%e201276201294%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201273201292%_))))
                        (let ((_%hd201277201297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201276201294%_)))
                              (_%tl201278201299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201276201294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201278201299%_))
                              (let ((_%e201279201302%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201278201299%_))))
                                (let ((_%hd201280201305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201279201302%_)))
                                      (_%tl201281201307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201279201302%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201281201307%_))
                                      (let ((_%e201282201310%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201281201307%_))))
                                        (let ((_%hd201283201313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201282201310%_)))
                                              (_%tl201284201315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201282201310%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201284201315%_))
                                              ((lambda (_%g201274201318%_
                                                        _%g201275201319%_)
                                                 (let* ((_%__stx202578202579%_
                                                         _%g201275201319%_)
                                                        (_%g201336201350%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx202578202579%_)))))
                                                   (let ((_%__kont202580202581%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self201269%_
                                                               _%g201274201318%_))))
                                                         (_%__kont202582202583%_
                                                          (lambda (_%g201342201482%_)
                                                            (let ((_%eid201491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g201342201482%_))))
                      (let ((_%lambda-expr201492201494%_
                             (gxc#apply-find-lambda-expression
                              _%g201274201318%_)))
                        (if _%lambda-expr201492201494%_
                            (let* ((_%lambda-expr201496%_
                                    _%lambda-expr201492201494%_)
                                   (__tmp203888
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp203888
                               _%lambda-expr201496%_
                               _%eid201491%_))
                            '#f))
                      (cons 'define
                            (cons _%eid201491%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self201269%_
                                           _%g201274201318%_))
                                        '()))))))
                 (_%__kont202584202585%_
                  (lambda ()
                    (let* ((_%tmp201357%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body201466%_
                            (let _%lp201359%_ ((_%rest201361%_
                                                _%g201275201319%_)
                                               (_%k201362%_ '0)
                                               (_%r201363%_ '()))
                              (let* ((_%__stx202548202549%_ _%rest201361%_)
                                     (_%g201368201385%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx202548202549%_)))))
                                (let ((_%__kont202550202551%_
                                       (lambda (_%g201370201453%_)
                                         (_%lp201359%_
                                          _%g201370201453%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k201362%_ '1))
                                          _%r201363%_)))
                                      (_%__kont202552202553%_
                                       (lambda (_%g201375201426%_
                                                _%g201376201427%_)
                                         (_%lp201359%_
                                          _%g201375201426%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k201362%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g201376201427%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp201357%_
                           _%k201362%_
                           _%g201375201426%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r201363%_))))
                                      (_%__kont202554202555%_
                                       (lambda (_%g201380201397%_)
                                         (let ((__tmp203889
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g201380201397%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp201357%_
                                 _%k201362%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp203889
                                            _%r201363%_))))
                                      (_%__kont202556202557%_
                                       (lambda () (reverse _%r201363%_))))
                                  (let ((_%g201366201413%_
                                         (lambda ()
                                           (let ((_%g201380201397%_
                                                  _%__stx202548202549%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g201380201397%_))
                                                 (_%__kont202554202555%_
                                                  _%g201380201397%_)
                                                 (_%__kont202556202557%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx202548202549%_))
                                        (let ((_%e201371201442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx202548202549%_))))
                                          (let ((_%tl201373201447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201371201442%_)))
                                                (_%hd201372201445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201371201442%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd201372201445%_))
                                                (let ((_%e201374201450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201372201445%_))))
                                                  (if (equal? _%e201374201450%_
                                                              '#f)
                                                      (_%__kont202550202551%_
                                                       _%tl201373201447%_)
                                                      (_%__kont202552202553%_
                                                       _%tl201373201447%_
                                                       _%hd201372201445%_)))
                                                (_%__kont202552202553%_
                                                 _%tl201373201447%_
                                                 _%hd201372201445%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201366201413%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp201357%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201269%_
                                                       _%g201274201318%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp201357%_
                                         _%g201275201319%_
                                         _%g201274201318%_)
                                        _%body201466%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx202578202579%_))
                                                         (let ((_%e201338201503%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx202578202579%_))))
                   (let ((_%tl201340201508%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e201338201503%_)))
                         (_%hd201339201506%_
                          (let ()
                            (declare (not safe))
                            (##car _%e201338201503%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd201339201506%_))
                         (let ((_%e201341201511%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd201339201506%_))))
                           (if (equal? _%e201341201511%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl201340201508%_))
                                   (_%__kont202580202581%_)
                                   (_%__kont202584202585%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl201340201508%_))
                                   (_%__kont202582202583%_ _%hd201339201506%_)
                                   (_%__kont202584202585%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201340201508%_))
                             (_%__kont202582202583%_ _%hd201339201506%_)
                             (_%__kont202584202585%_)))))
                 (_%__kont202584202585%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201283201313%_
                                               _%hd201280201305%_)
                                              (_%g201272201289%_
                                               _%g201273201292%_))))
                                      (_%g201272201289%_ _%g201273201292%_))))
                              (_%g201272201289%_ _%g201273201292%_))))
                      (_%g201272201289%_ _%g201273201292%_)))))
          (_%g201271201519%_ _%stx201270%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals201244%_ _%hd201245%_ _%expr201246%_)
        (let ((_%$e201248%_ (gxc#apply-count-values _%expr201246%_)))
          (if _%$e201248%_
              ((lambda (_%count201251%_)
                 (let ((_%len201253%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd201245%_)))
                       (_%cmp201254%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd201245%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len201253%_ '0))
                           (_%cmp201254%_ _%count201251%_ _%len201253%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr201246%_
                          _%hd201245%_)))))
               _%$e201248%_)
              (let* ((_%len201260%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd201245%_)))
                     (_%cmp201262%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd201245%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg201264%_
                      (let ((__tmp203891
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd201245%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp203890 (number->string _%len201260%_)))
                        (declare (not safe))
                        (##string-append __tmp203891 __tmp203890 '" values")))
                     (_%count201266%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd201245%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len201260%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count201266%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals201244%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp201262%_
                                (cons _%count201266%_
                                      (cons _%len201260%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp201262%_
                                                        (cons _%count201266%_
                                                              (cons _%len201260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg201264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count201266%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var201239%_)
        (letrec ((_%generate-inline201241%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var201239%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var201239%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline201241%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline201241%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var201232%_ _%i201233%_ _%rest201234%_)
        (letrec ((_%generate-inline201236%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i201233%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest201234%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var201232%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var201232%_
                                                      (cons '0 '())))
                                          (cons _%var201232%_ '()))))
                        (cons '##values-ref
                              (cons _%var201232%_ (cons _%i201233%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline201236%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline201236%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var201226%_ _%i201227%_)
        (if (let () (declare (not safe)) (##fx= _%i201227%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var201226%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var201226%_ '()))
                                  (cons (cons 'list (cons _%var201226%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var201226%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var201226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var201226%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i201227%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var201226%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var201226%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var201226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var201226%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var201226%_ '()))
                                (cons _%i201227%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var201226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i201227%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self201158%_ _%stx201159%_)
        (let* ((_%g201161201178%_
                (lambda (_%g201162201175%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201162201175%_))))
               (_%g201160201223%_
                (lambda (_%g201162201181%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201162201181%_))
                      (let ((_%e201165201183%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201162201181%_))))
                        (let ((_%hd201166201186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201165201183%_)))
                              (_%tl201167201188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201165201183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201167201188%_))
                              (let ((_%e201168201191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201167201188%_))))
                                (let ((_%hd201169201194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201168201191%_)))
                                      (_%tl201170201196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201168201191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201170201196%_))
                                      (let ((_%e201171201199%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201170201196%_))))
                                        (let ((_%hd201172201202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201171201199%_)))
                                              (_%tl201173201204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201171201199%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201173201204%_))
                                              ((lambda (_%g201163201207%_
                                                        _%g201164201208%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self201158%_
                                                  _%g201164201208%_
                                                  _%g201163201207%_))
                                               _%hd201172201202%_
                                               _%hd201169201194%_)
                                              (_%g201161201178%_
                                               _%g201162201181%_))))
                                      (_%g201161201178%_ _%g201162201181%_))))
                              (_%g201161201178%_ _%g201162201181%_))))
                      (_%g201161201178%_ _%g201162201181%_)))))
          (_%g201160201223%_ _%stx201159%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self201117%_ _%hd201118%_ _%body201119%_)
        (let* ((_%hd201121%_ (gxc#generate-runtime-lambda-head _%hd201118%_))
               (_%body201123%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self201117%_ _%body201119%_)))
               (_%body201155%_
                (let* ((_%body201124201132%_ _%body201123%_)
                       (_%else201126201140%_
                        (lambda () (cons _%body201123%_ '())))
                       (_%K201128201145%_
                        (lambda (_%exprs201143%_) _%exprs201143%_)))
                  (if (pair? _%body201124201132%_)
                      (let ((_%hd201129201148%_
                             (let ()
                               (declare (not safe))
                               (##car _%body201124201132%_)))
                            (_%tl201130201150%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body201124201132%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd201129201148%_ 'begin))
                            (let ((_%exprs201153%_ _%tl201130201150%_))
                              (_%K201128201145%_ _%exprs201153%_))
                            (_%else201126201140%_)))
                      (_%else201126201140%_)))))
          (cons 'lambda (cons _%hd201121%_ _%body201155%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd201115%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd201115%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self199672%_ _%stx199673%_)
        (letrec ((_%dispatch-case?199675%_
                  (lambda (_%hd200353%_ _%body200354%_)
                    (let* ((_%form200356%_
                            (cons _%hd200353%_ (cons _%body200354%_ '())))
                           (_%__stx202610202611%_ _%form200356%_)
                           (_%g200361200518%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx202610202611%_)))))
                      (let ((_%__kont202612202613%_
                             (lambda (_%g200363201035%_
                                      _%g200364201036%_
                                      _%g200365201037%_)
                               '#t))
                            (_%__kont202618202619%_
                             (lambda (_%g200408200827%_
                                      _%g200409200828%_
                                      _%g200410200829%_
                                      _%g200411200830%_
                                      _%g200412200831%_
                                      _%g200413200832%_)
                               '#t))
                            (_%__kont202624202625%_
                             (lambda (_%g200474200626%_
                                      _%g200475200627%_
                                      _%g200476200628%_
                                      _%g200477200629%_)
                               '#t))
                            (_%__kont202626202627%_ (lambda () '#f)))
                        (let* ((_%__match202751202752%_
                                (lambda (_%e200478200530%_
                                         _%hd200479200533%_
                                         _%tl200480200535%_
                                         _%e200481200538%_
                                         _%hd200482200541%_
                                         _%tl200483200543%_
                                         _%e200484200546%_
                                         _%hd200485200549%_
                                         _%tl200486200551%_
                                         _%e200487200554%_
                                         _%hd200488200557%_
                                         _%tl200489200559%_
                                         _%e200490200562%_
                                         _%hd200491200565%_
                                         _%tl200492200567%_
                                         _%e200493200570%_
                                         _%hd200494200573%_
                                         _%tl200495200575%_
                                         _%e200496200578%_
                                         _%hd200497200581%_
                                         _%tl200498200583%_
                                         _%e200499200586%_
                                         _%hd200500200589%_
                                         _%tl200501200591%_
                                         _%e200502200594%_
                                         _%hd200503200597%_
                                         _%tl200504200599%_
                                         _%e200505200602%_
                                         _%hd200506200605%_
                                         _%tl200507200607%_
                                         _%e200508200610%_
                                         _%hd200509200613%_
                                         _%tl200510200615%_
                                         _%e200511200618%_
                                         _%hd200512200621%_
                                         _%tl200513200623%_)
                                  (let ((_%g200474200626%_ _%hd200512200621%_)
                                        (_%g200475200627%_ _%hd200503200597%_)
                                        (_%g200476200628%_ _%hd200494200573%_)
                                        (_%g200477200629%_ _%hd200479200533%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g200477200629%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g200476200628%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g200477200629%_
                                                _%g200474200626%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g200475200627%_
                                                     _%g200477200629%_))))
                                        (_%__kont202624202625%_
                                         _%g200474200626%_
                                         _%g200475200627%_
                                         _%g200476200628%_
                                         _%g200477200629%_)
                                        (_%__kont202626202627%_)))))
                               (_%__match202723202724%_
                                (lambda (_%e200478200530%_
                                         _%hd200479200533%_
                                         _%tl200480200535%_
                                         _%e200481200538%_
                                         _%hd200482200541%_
                                         _%tl200483200543%_
                                         _%e200484200546%_
                                         _%hd200485200549%_
                                         _%tl200486200551%_
                                         _%e200487200554%_
                                         _%hd200488200557%_
                                         _%tl200489200559%_
                                         _%e200490200562%_
                                         _%hd200491200565%_
                                         _%tl200492200567%_
                                         _%e200493200570%_
                                         _%hd200494200573%_
                                         _%tl200495200575%_
                                         _%e200496200578%_
                                         _%hd200497200581%_
                                         _%tl200498200583%_
                                         _%e200499200586%_
                                         _%hd200500200589%_
                                         _%tl200501200591%_
                                         _%e200502200594%_
                                         _%hd200503200597%_
                                         _%tl200504200599%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200498200583%_))
                                      (let ((_%e200505200602%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200498200583%_))))
                                        (let ((_%tl200507200607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200505200602%_)))
                                              (_%hd200506200605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200505200602%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd200506200605%_))
                                              (let ((_%e200508200610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd200506200605%_))))
                                                (let ((_%tl200510200615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200508200610%_)))
                                                      (_%hd200509200613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200508200610%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd200509200613%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd200509200613%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200510200615%_))
                      (let ((_%e200511200618%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200510200615%_))))
                        (let ((_%tl200513200623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200511200618%_)))
                              (_%hd200512200621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200511200618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200513200623%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200507200607%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200483200543%_))
                                      (_%__match202751202752%_
                                       _%e200478200530%_
                                       _%hd200479200533%_
                                       _%tl200480200535%_
                                       _%e200481200538%_
                                       _%hd200482200541%_
                                       _%tl200483200543%_
                                       _%e200484200546%_
                                       _%hd200485200549%_
                                       _%tl200486200551%_
                                       _%e200487200554%_
                                       _%hd200488200557%_
                                       _%tl200489200559%_
                                       _%e200490200562%_
                                       _%hd200491200565%_
                                       _%tl200492200567%_
                                       _%e200493200570%_
                                       _%hd200494200573%_
                                       _%tl200495200575%_
                                       _%e200496200578%_
                                       _%hd200497200581%_
                                       _%tl200498200583%_
                                       _%e200499200586%_
                                       _%hd200500200589%_
                                       _%tl200501200591%_
                                       _%e200502200594%_
                                       _%hd200503200597%_
                                       _%tl200504200599%_
                                       _%e200505200602%_
                                       _%hd200506200605%_
                                       _%tl200507200607%_
                                       _%e200508200610%_
                                       _%hd200509200613%_
                                       _%tl200510200615%_
                                       _%e200511200618%_
                                       _%hd200512200621%_
                                       _%tl200513200623%_)
                                      (_%__kont202626202627%_))
                                  (_%__kont202626202627%_))
                              (_%__kont202626202627%_))))
                      (_%__kont202626202627%_))
                  (_%__kont202626202627%_))
              (_%__kont202626202627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont202626202627%_))))
                                      (_%__kont202626202627%_))))
                               (_%__match202653202654%_
                                (lambda (_%e200414200671%_
                                         _%hd200415200674%_
                                         _%tl200416200676%_
                                         _%__splice202620202621%_
                                         _%target200417200679%_
                                         _%tl200419200681%_)
                                  (letrec ((_%loop200420200684%_
                                            (lambda (_%hd200418200687%_
                                                     _%arg200424200689%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd200418200687%_))
                                                  (let ((_%e200421200691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd200418200687%_))))
                                                    (let ((_%lp-tl200423200696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200421200691%_)))
                                                          (_%lp-hd200422200694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200421200691%_))))
                                                      (_%loop200420200684%_
                                                       _%lp-tl200423200696%_
                                                       (cons _%lp-hd200422200694%_
                                                             _%arg200424200689%_))))
                                                  (let ((_%arg200425200699%_
                                                         (reverse _%arg200424200689%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200416200676%_))
                                                        (let ((_%e200426200701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl200416200676%_))))
                  (let ((_%tl200428200706%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200426200701%_)))
                        (_%hd200427200704%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200426200701%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200427200704%_))
                        (let ((_%e200429200709%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd200427200704%_))))
                          (let ((_%tl200431200714%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200429200709%_)))
                                (_%hd200430200712%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200429200709%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd200430200712%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd200430200712%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200431200714%_))
                                        (let ((_%e200432200717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200431200714%_))))
                                          (let ((_%tl200434200722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200432200717%_)))
                                                (_%hd200433200720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200432200717%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200433200720%_))
                                                (let ((_%e200435200725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200433200720%_))))
                                                  (let ((_%tl200437200730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200435200725%_)))
                                                        (_%hd200436200728%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200435200725%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd200436200728%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd200436200728%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl200437200730%_))
                        (let ((_%e200438200733%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200437200730%_))))
                          (let ((_%tl200440200738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200438200733%_)))
                                (_%hd200439200736%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200438200733%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200440200738%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200434200722%_))
                                    (let ((_%e200441200741%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200434200722%_))))
                                      (let ((_%tl200443200746%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200441200741%_)))
                                            (_%hd200442200744%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200441200741%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd200442200744%_))
                                            (let ((_%e200444200749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd200442200744%_))))
                                              (let ((_%tl200446200754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200444200749%_)))
                                                    (_%hd200445200752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200444200749%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd200445200752%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd200445200752%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200446200754%_))
                                                            (let ((_%e200447200757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200446200754%_))))
                      (let ((_%tl200449200762%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200447200757%_)))
                            (_%hd200448200760%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200447200757%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200449200762%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl200443200746%_))
                                (if (let ((__tmp203892
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl200443200746%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp203892 '1))
                                    (let ((_%__splice202622202623%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl200443200746%_
                                              '1))))
                                      (let ((_%tl200452200767%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202622202623%_
                                                '1)))
                                            (_%target200450200765%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202622202623%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200452200767%_))
                                            (let ((_%e200459200770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200452200767%_))))
                                              (let ((_%tl200461200775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200459200770%_)))
                                                    (_%hd200460200773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200459200770%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd200460200773%_))
                                                    (let ((_%e200462200778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd200460200773%_))))
                                                      (let ((_%tl200464200783%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200462200778%_)))
                    (_%hd200463200781%_
                     (let () (declare (not safe)) (##car _%e200462200778%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd200463200781%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd200463200781%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200464200783%_))
                            (let ((_%e200465200786%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl200464200783%_))))
                              (let ((_%tl200467200791%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200465200786%_)))
                                    (_%hd200466200789%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200465200786%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl200467200791%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200461200775%_))
                                        (letrec ((_%loop200453200794%_
                                                  (lambda (_%hd200451200797%_
                                                           _%xarg200457200799%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200451200797%_))
                                                        (let ((_%e200454200801%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd200451200797%_))))
                  (let ((_%lp-tl200456200806%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200454200801%_)))
                        (_%lp-hd200455200804%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200454200801%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd200455200804%_))
                        (let ((_%e200468200809%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd200455200804%_))))
                          (let ((_%tl200470200814%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200468200809%_)))
                                (_%hd200469200812%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200468200809%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd200469200812%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd200469200812%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200470200814%_))
                                        (let ((_%e200471200817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200470200814%_))))
                                          (let ((_%tl200473200822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200471200817%_)))
                                                (_%hd200472200820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200471200817%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200473200822%_))
                                                (_%loop200453200794%_
                                                 _%lp-tl200456200806%_
                                                 (cons _%hd200472200820%_
                                                       _%xarg200457200799%_))
                                                (_%__match202723202724%_
                                                 _%e200414200671%_
                                                 _%hd200415200674%_
                                                 _%tl200416200676%_
                                                 _%e200426200701%_
                                                 _%hd200427200704%_
                                                 _%tl200428200706%_
                                                 _%e200429200709%_
                                                 _%hd200430200712%_
                                                 _%tl200431200714%_
                                                 _%e200432200717%_
                                                 _%hd200433200720%_
                                                 _%tl200434200722%_
                                                 _%e200435200725%_
                                                 _%hd200436200728%_
                                                 _%tl200437200730%_
                                                 _%e200438200733%_
                                                 _%hd200439200736%_
                                                 _%tl200440200738%_
                                                 _%e200441200741%_
                                                 _%hd200442200744%_
                                                 _%tl200443200746%_
                                                 _%e200444200749%_
                                                 _%hd200445200752%_
                                                 _%tl200446200754%_
                                                 _%e200447200757%_
                                                 _%hd200448200760%_
                                                 _%tl200449200762%_))))
                                        (_%__match202723202724%_
                                         _%e200414200671%_
                                         _%hd200415200674%_
                                         _%tl200416200676%_
                                         _%e200426200701%_
                                         _%hd200427200704%_
                                         _%tl200428200706%_
                                         _%e200429200709%_
                                         _%hd200430200712%_
                                         _%tl200431200714%_
                                         _%e200432200717%_
                                         _%hd200433200720%_
                                         _%tl200434200722%_
                                         _%e200435200725%_
                                         _%hd200436200728%_
                                         _%tl200437200730%_
                                         _%e200438200733%_
                                         _%hd200439200736%_
                                         _%tl200440200738%_
                                         _%e200441200741%_
                                         _%hd200442200744%_
                                         _%tl200443200746%_
                                         _%e200444200749%_
                                         _%hd200445200752%_
                                         _%tl200446200754%_
                                         _%e200447200757%_
                                         _%hd200448200760%_
                                         _%tl200449200762%_))
                                    (_%__match202723202724%_
                                     _%e200414200671%_
                                     _%hd200415200674%_
                                     _%tl200416200676%_
                                     _%e200426200701%_
                                     _%hd200427200704%_
                                     _%tl200428200706%_
                                     _%e200429200709%_
                                     _%hd200430200712%_
                                     _%tl200431200714%_
                                     _%e200432200717%_
                                     _%hd200433200720%_
                                     _%tl200434200722%_
                                     _%e200435200725%_
                                     _%hd200436200728%_
                                     _%tl200437200730%_
                                     _%e200438200733%_
                                     _%hd200439200736%_
                                     _%tl200440200738%_
                                     _%e200441200741%_
                                     _%hd200442200744%_
                                     _%tl200443200746%_
                                     _%e200444200749%_
                                     _%hd200445200752%_
                                     _%tl200446200754%_
                                     _%e200447200757%_
                                     _%hd200448200760%_
                                     _%tl200449200762%_))
                                (_%__match202723202724%_
                                 _%e200414200671%_
                                 _%hd200415200674%_
                                 _%tl200416200676%_
                                 _%e200426200701%_
                                 _%hd200427200704%_
                                 _%tl200428200706%_
                                 _%e200429200709%_
                                 _%hd200430200712%_
                                 _%tl200431200714%_
                                 _%e200432200717%_
                                 _%hd200433200720%_
                                 _%tl200434200722%_
                                 _%e200435200725%_
                                 _%hd200436200728%_
                                 _%tl200437200730%_
                                 _%e200438200733%_
                                 _%hd200439200736%_
                                 _%tl200440200738%_
                                 _%e200441200741%_
                                 _%hd200442200744%_
                                 _%tl200443200746%_
                                 _%e200444200749%_
                                 _%hd200445200752%_
                                 _%tl200446200754%_
                                 _%e200447200757%_
                                 _%hd200448200760%_
                                 _%tl200449200762%_))))
                        (_%__match202723202724%_
                         _%e200414200671%_
                         _%hd200415200674%_
                         _%tl200416200676%_
                         _%e200426200701%_
                         _%hd200427200704%_
                         _%tl200428200706%_
                         _%e200429200709%_
                         _%hd200430200712%_
                         _%tl200431200714%_
                         _%e200432200717%_
                         _%hd200433200720%_
                         _%tl200434200722%_
                         _%e200435200725%_
                         _%hd200436200728%_
                         _%tl200437200730%_
                         _%e200438200733%_
                         _%hd200439200736%_
                         _%tl200440200738%_
                         _%e200441200741%_
                         _%hd200442200744%_
                         _%tl200443200746%_
                         _%e200444200749%_
                         _%hd200445200752%_
                         _%tl200446200754%_
                         _%e200447200757%_
                         _%hd200448200760%_
                         _%tl200449200762%_))))
                (let ((_%xarg200458200825%_ (reverse _%xarg200457200799%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200428200706%_))
                      (let ((_%g200408200827%_ _%hd200466200789%_)
                            (_%g200409200828%_ _%xarg200458200825%_)
                            (_%g200410200829%_ _%hd200448200760%_)
                            (_%g200411200830%_ _%hd200439200736%_)
                            (_%g200412200831%_ _%tl200419200681%_)
                            (_%g200413200832%_ _%arg200425200699%_))
                        (if (and (let ((__tmp203893
                                        (let ((__tmp203894
                                               (lambda (_%g200875200878%_
                                                        _%g200876200880%_)
                                                 (cons _%g200875200878%_
                                                       _%g200876200880%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp203894
                                           '()
                                           _%g200413200832%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp203893))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g200412200831%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g200411200830%_
                                    'apply))
                                 (let ((__tmp203897
                                        (length (let ((__tmp203898
                                                       (lambda (_%g200882200885%_
                                                                _%g200883200887%_)
                                                         (cons _%g200882200885%_
                                                               _%g200883200887%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp203898
                                                   '()
                                                   _%g200413200832%_))))
                                       (__tmp203895
                                        (length (let ((__tmp203896
                                                       (lambda (_%g200889200892%_
                                                                _%g200890200894%_)
                                                         (cons _%g200889200892%_
                                                               _%g200890200894%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp203896
                                                   '()
                                                   _%g200409200828%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp203897 __tmp203895))
                                 (let ((__tmp203901
                                        (let ((__tmp203902
                                               (lambda (_%g200896200899%_
                                                        _%g200897200901%_)
                                                 (cons _%g200896200899%_
                                                       _%g200897200901%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp203902
                                           '()
                                           _%g200413200832%_)))
                                       (__tmp203899
                                        (let ((__tmp203900
                                               (lambda (_%g200903200906%_
                                                        _%g200904200908%_)
                                                 (cons _%g200903200906%_
                                                       _%g200904200908%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp203900
                                           '()
                                           _%g200409200828%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp203901
                                    __tmp203899))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g200412200831%_
                                    _%g200408200827%_))
                                 (not (let ((__tmp203906
                                             (lambda (_%g200910200912%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g200910200912%_
                                                  _%g200410200829%_))))
                                            (__tmp203903
                                             (let ((__tmp203905
                                                    (lambda (_%g200914200917%_
                                                             _%g200915200919%_)
                                                      (cons _%g200914200917%_
                                                            _%g200915200919%_)))
                                                   (__tmp203904
                                                    (cons _%g200412200831%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp203905
                                                __tmp203904
                                                _%g200413200832%_))))
                                        (declare (not safe))
                                        (__find __tmp203906 __tmp203903))))
                            (_%__kont202618202619%_
                             _%g200408200827%_
                             _%g200409200828%_
                             _%g200410200829%_
                             _%g200411200830%_
                             _%g200412200831%_
                             _%g200413200832%_)
                            (_%__match202723202724%_
                             _%e200414200671%_
                             _%hd200415200674%_
                             _%tl200416200676%_
                             _%e200426200701%_
                             _%hd200427200704%_
                             _%tl200428200706%_
                             _%e200429200709%_
                             _%hd200430200712%_
                             _%tl200431200714%_
                             _%e200432200717%_
                             _%hd200433200720%_
                             _%tl200434200722%_
                             _%e200435200725%_
                             _%hd200436200728%_
                             _%tl200437200730%_
                             _%e200438200733%_
                             _%hd200439200736%_
                             _%tl200440200738%_
                             _%e200441200741%_
                             _%hd200442200744%_
                             _%tl200443200746%_
                             _%e200444200749%_
                             _%hd200445200752%_
                             _%tl200446200754%_
                             _%e200447200757%_
                             _%hd200448200760%_
                             _%tl200449200762%_)))
                      (_%__match202723202724%_
                       _%e200414200671%_
                       _%hd200415200674%_
                       _%tl200416200676%_
                       _%e200426200701%_
                       _%hd200427200704%_
                       _%tl200428200706%_
                       _%e200429200709%_
                       _%hd200430200712%_
                       _%tl200431200714%_
                       _%e200432200717%_
                       _%hd200433200720%_
                       _%tl200434200722%_
                       _%e200435200725%_
                       _%hd200436200728%_
                       _%tl200437200730%_
                       _%e200438200733%_
                       _%hd200439200736%_
                       _%tl200440200738%_
                       _%e200441200741%_
                       _%hd200442200744%_
                       _%tl200443200746%_
                       _%e200444200749%_
                       _%hd200445200752%_
                       _%tl200446200754%_
                       _%e200447200757%_
                       _%hd200448200760%_
                       _%tl200449200762%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200453200794%_
                                           _%target200450200765%_
                                           '()))
                                        (_%__match202723202724%_
                                         _%e200414200671%_
                                         _%hd200415200674%_
                                         _%tl200416200676%_
                                         _%e200426200701%_
                                         _%hd200427200704%_
                                         _%tl200428200706%_
                                         _%e200429200709%_
                                         _%hd200430200712%_
                                         _%tl200431200714%_
                                         _%e200432200717%_
                                         _%hd200433200720%_
                                         _%tl200434200722%_
                                         _%e200435200725%_
                                         _%hd200436200728%_
                                         _%tl200437200730%_
                                         _%e200438200733%_
                                         _%hd200439200736%_
                                         _%tl200440200738%_
                                         _%e200441200741%_
                                         _%hd200442200744%_
                                         _%tl200443200746%_
                                         _%e200444200749%_
                                         _%hd200445200752%_
                                         _%tl200446200754%_
                                         _%e200447200757%_
                                         _%hd200448200760%_
                                         _%tl200449200762%_))
                                    (_%__match202723202724%_
                                     _%e200414200671%_
                                     _%hd200415200674%_
                                     _%tl200416200676%_
                                     _%e200426200701%_
                                     _%hd200427200704%_
                                     _%tl200428200706%_
                                     _%e200429200709%_
                                     _%hd200430200712%_
                                     _%tl200431200714%_
                                     _%e200432200717%_
                                     _%hd200433200720%_
                                     _%tl200434200722%_
                                     _%e200435200725%_
                                     _%hd200436200728%_
                                     _%tl200437200730%_
                                     _%e200438200733%_
                                     _%hd200439200736%_
                                     _%tl200440200738%_
                                     _%e200441200741%_
                                     _%hd200442200744%_
                                     _%tl200443200746%_
                                     _%e200444200749%_
                                     _%hd200445200752%_
                                     _%tl200446200754%_
                                     _%e200447200757%_
                                     _%hd200448200760%_
                                     _%tl200449200762%_))))
                            (_%__match202723202724%_
                             _%e200414200671%_
                             _%hd200415200674%_
                             _%tl200416200676%_
                             _%e200426200701%_
                             _%hd200427200704%_
                             _%tl200428200706%_
                             _%e200429200709%_
                             _%hd200430200712%_
                             _%tl200431200714%_
                             _%e200432200717%_
                             _%hd200433200720%_
                             _%tl200434200722%_
                             _%e200435200725%_
                             _%hd200436200728%_
                             _%tl200437200730%_
                             _%e200438200733%_
                             _%hd200439200736%_
                             _%tl200440200738%_
                             _%e200441200741%_
                             _%hd200442200744%_
                             _%tl200443200746%_
                             _%e200444200749%_
                             _%hd200445200752%_
                             _%tl200446200754%_
                             _%e200447200757%_
                             _%hd200448200760%_
                             _%tl200449200762%_))
                        (_%__match202723202724%_
                         _%e200414200671%_
                         _%hd200415200674%_
                         _%tl200416200676%_
                         _%e200426200701%_
                         _%hd200427200704%_
                         _%tl200428200706%_
                         _%e200429200709%_
                         _%hd200430200712%_
                         _%tl200431200714%_
                         _%e200432200717%_
                         _%hd200433200720%_
                         _%tl200434200722%_
                         _%e200435200725%_
                         _%hd200436200728%_
                         _%tl200437200730%_
                         _%e200438200733%_
                         _%hd200439200736%_
                         _%tl200440200738%_
                         _%e200441200741%_
                         _%hd200442200744%_
                         _%tl200443200746%_
                         _%e200444200749%_
                         _%hd200445200752%_
                         _%tl200446200754%_
                         _%e200447200757%_
                         _%hd200448200760%_
                         _%tl200449200762%_))
                    (_%__match202723202724%_
                     _%e200414200671%_
                     _%hd200415200674%_
                     _%tl200416200676%_
                     _%e200426200701%_
                     _%hd200427200704%_
                     _%tl200428200706%_
                     _%e200429200709%_
                     _%hd200430200712%_
                     _%tl200431200714%_
                     _%e200432200717%_
                     _%hd200433200720%_
                     _%tl200434200722%_
                     _%e200435200725%_
                     _%hd200436200728%_
                     _%tl200437200730%_
                     _%e200438200733%_
                     _%hd200439200736%_
                     _%tl200440200738%_
                     _%e200441200741%_
                     _%hd200442200744%_
                     _%tl200443200746%_
                     _%e200444200749%_
                     _%hd200445200752%_
                     _%tl200446200754%_
                     _%e200447200757%_
                     _%hd200448200760%_
                     _%tl200449200762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match202723202724%_
                                                     _%e200414200671%_
                                                     _%hd200415200674%_
                                                     _%tl200416200676%_
                                                     _%e200426200701%_
                                                     _%hd200427200704%_
                                                     _%tl200428200706%_
                                                     _%e200429200709%_
                                                     _%hd200430200712%_
                                                     _%tl200431200714%_
                                                     _%e200432200717%_
                                                     _%hd200433200720%_
                                                     _%tl200434200722%_
                                                     _%e200435200725%_
                                                     _%hd200436200728%_
                                                     _%tl200437200730%_
                                                     _%e200438200733%_
                                                     _%hd200439200736%_
                                                     _%tl200440200738%_
                                                     _%e200441200741%_
                                                     _%hd200442200744%_
                                                     _%tl200443200746%_
                                                     _%e200444200749%_
                                                     _%hd200445200752%_
                                                     _%tl200446200754%_
                                                     _%e200447200757%_
                                                     _%hd200448200760%_
                                                     _%tl200449200762%_))))
                                            (_%__match202723202724%_
                                             _%e200414200671%_
                                             _%hd200415200674%_
                                             _%tl200416200676%_
                                             _%e200426200701%_
                                             _%hd200427200704%_
                                             _%tl200428200706%_
                                             _%e200429200709%_
                                             _%hd200430200712%_
                                             _%tl200431200714%_
                                             _%e200432200717%_
                                             _%hd200433200720%_
                                             _%tl200434200722%_
                                             _%e200435200725%_
                                             _%hd200436200728%_
                                             _%tl200437200730%_
                                             _%e200438200733%_
                                             _%hd200439200736%_
                                             _%tl200440200738%_
                                             _%e200441200741%_
                                             _%hd200442200744%_
                                             _%tl200443200746%_
                                             _%e200444200749%_
                                             _%hd200445200752%_
                                             _%tl200446200754%_
                                             _%e200447200757%_
                                             _%hd200448200760%_
                                             _%tl200449200762%_))))
                                    (_%__match202723202724%_
                                     _%e200414200671%_
                                     _%hd200415200674%_
                                     _%tl200416200676%_
                                     _%e200426200701%_
                                     _%hd200427200704%_
                                     _%tl200428200706%_
                                     _%e200429200709%_
                                     _%hd200430200712%_
                                     _%tl200431200714%_
                                     _%e200432200717%_
                                     _%hd200433200720%_
                                     _%tl200434200722%_
                                     _%e200435200725%_
                                     _%hd200436200728%_
                                     _%tl200437200730%_
                                     _%e200438200733%_
                                     _%hd200439200736%_
                                     _%tl200440200738%_
                                     _%e200441200741%_
                                     _%hd200442200744%_
                                     _%tl200443200746%_
                                     _%e200444200749%_
                                     _%hd200445200752%_
                                     _%tl200446200754%_
                                     _%e200447200757%_
                                     _%hd200448200760%_
                                     _%tl200449200762%_))
                                (_%__match202723202724%_
                                 _%e200414200671%_
                                 _%hd200415200674%_
                                 _%tl200416200676%_
                                 _%e200426200701%_
                                 _%hd200427200704%_
                                 _%tl200428200706%_
                                 _%e200429200709%_
                                 _%hd200430200712%_
                                 _%tl200431200714%_
                                 _%e200432200717%_
                                 _%hd200433200720%_
                                 _%tl200434200722%_
                                 _%e200435200725%_
                                 _%hd200436200728%_
                                 _%tl200437200730%_
                                 _%e200438200733%_
                                 _%hd200439200736%_
                                 _%tl200440200738%_
                                 _%e200441200741%_
                                 _%hd200442200744%_
                                 _%tl200443200746%_
                                 _%e200444200749%_
                                 _%hd200445200752%_
                                 _%tl200446200754%_
                                 _%e200447200757%_
                                 _%hd200448200760%_
                                 _%tl200449200762%_))
                            (_%__kont202626202627%_))))
                    (_%__kont202626202627%_))
                (_%__kont202626202627%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont202626202627%_))))
                                            (_%__kont202626202627%_))))
                                    (_%__kont202626202627%_))
                                (_%__kont202626202627%_))))
                        (_%__kont202626202627%_))
                    (_%__kont202626202627%_))
                (_%__kont202626202627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont202626202627%_))))
                                        (_%__kont202626202627%_))
                                    (_%__kont202626202627%_))
                                (_%__kont202626202627%_))))
                        (_%__kont202626202627%_))))
                (_%__kont202626202627%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop200420200684%_
                                     _%target200417200679%_
                                     '()))))
                               (_%__match202641202642%_
                                (lambda (_%e200366200927%_
                                         _%hd200367200930%_
                                         _%tl200368200932%_
                                         _%__splice202614202615%_
                                         _%target200369200935%_
                                         _%tl200371200937%_)
                                  (letrec ((_%loop200372200940%_
                                            (lambda (_%hd200370200943%_
                                                     _%arg200376200945%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd200370200943%_))
                                                  (let ((_%e200373200947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd200370200943%_))))
                                                    (let ((_%lp-tl200375200952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200373200947%_)))
                                                          (_%lp-hd200374200950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200373200947%_))))
                                                      (_%loop200372200940%_
                                                       _%lp-tl200375200952%_
                                                       (cons _%lp-hd200374200950%_
                                                             _%arg200376200945%_))))
                                                  (let ((_%arg200377200955%_
                                                         (reverse _%arg200376200945%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200368200932%_))
                                                        (let ((_%e200378200957%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl200368200932%_))))
                  (let ((_%tl200380200962%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200378200957%_)))
                        (_%hd200379200960%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200378200957%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200379200960%_))
                        (let ((_%e200381200965%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd200379200960%_))))
                          (let ((_%tl200383200970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200381200965%_)))
                                (_%hd200382200968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200381200965%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd200382200968%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd200382200968%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200383200970%_))
                                        (let ((_%e200384200973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200383200970%_))))
                                          (let ((_%tl200386200978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200384200973%_)))
                                                (_%hd200385200976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200384200973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200385200976%_))
                                                (let ((_%e200387200981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200385200976%_))))
                                                  (let ((_%tl200389200986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200387200981%_)))
                                                        (_%hd200388200984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200387200981%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd200388200984%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd200388200984%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl200389200986%_))
                        (let ((_%e200390200989%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200389200986%_))))
                          (let ((_%tl200392200994%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200390200989%_)))
                                (_%hd200391200992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200390200989%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200392200994%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl200386200978%_))
                                    (let ((_%__splice202616202617%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl200386200978%_
                                              '0))))
                                      (let ((_%tl200395200999%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202616202617%_
                                                '1)))
                                            (_%target200393200997%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202616202617%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200395200999%_))
                                            (letrec ((_%loop200396201002%_
                                                      (lambda (_%hd200394201005%_
                                                               _%xarg200400201007%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd200394201005%_))
                                                            (let ((_%e200397201009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd200394201005%_))))
                      (let ((_%lp-tl200399201014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200397201009%_)))
                            (_%lp-hd200398201012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200397201009%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd200398201012%_))
                            (let ((_%e200402201017%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd200398201012%_))))
                              (let ((_%tl200404201022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200402201017%_)))
                                    (_%hd200403201020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200402201017%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200403201020%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd200403201020%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200404201022%_))
                                            (let ((_%e200405201025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200404201022%_))))
                                              (let ((_%tl200407201030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200405201025%_)))
                                                    (_%hd200406201028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200405201025%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200407201030%_))
                                                    (_%loop200396201002%_
                                                     _%lp-tl200399201014%_
                                                     (cons _%hd200406201028%_
                                                           _%xarg200400201007%_))
                                                    (_%__match202653202654%_
                                                     _%e200366200927%_
                                                     _%hd200367200930%_
                                                     _%tl200368200932%_
                                                     _%__splice202614202615%_
                                                     _%target200369200935%_
                                                     _%tl200371200937%_))))
                                            (_%__match202653202654%_
                                             _%e200366200927%_
                                             _%hd200367200930%_
                                             _%tl200368200932%_
                                             _%__splice202614202615%_
                                             _%target200369200935%_
                                             _%tl200371200937%_))
                                        (_%__match202653202654%_
                                         _%e200366200927%_
                                         _%hd200367200930%_
                                         _%tl200368200932%_
                                         _%__splice202614202615%_
                                         _%target200369200935%_
                                         _%tl200371200937%_))
                                    (_%__match202653202654%_
                                     _%e200366200927%_
                                     _%hd200367200930%_
                                     _%tl200368200932%_
                                     _%__splice202614202615%_
                                     _%target200369200935%_
                                     _%tl200371200937%_))))
                            (_%__match202653202654%_
                             _%e200366200927%_
                             _%hd200367200930%_
                             _%tl200368200932%_
                             _%__splice202614202615%_
                             _%target200369200935%_
                             _%tl200371200937%_))))
                    (let ((_%xarg200401201033%_
                           (reverse _%xarg200400201007%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200380200962%_))
                          (let ((_%g200363201035%_ _%xarg200401201033%_)
                                (_%g200364201036%_ _%hd200391200992%_)
                                (_%g200365201037%_ _%arg200377200955%_))
                            (if (and (let ((__tmp203907
                                            (let ((__tmp203908
                                                   (lambda (_%g201065201068%_
                                                            _%g201066201070%_)
                                                     (cons _%g201065201068%_
                                                           _%g201066201070%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp203908
                                               '()
                                               _%g200365201037%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp203907))
                                     (let ((__tmp203911
                                            (length (let ((__tmp203912
                                                           (lambda (_%g201072201075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g201073201077%_)
                     (cons _%g201072201075%_ _%g201073201077%_))))
              (declare (not safe))
              (foldr__0 __tmp203912 '() _%g200365201037%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp203909
                                            (length (let ((__tmp203910
                                                           (lambda (_%g201079201082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g201080201084%_)
                     (cons _%g201079201082%_ _%g201080201084%_))))
              (declare (not safe))
              (foldr__0 __tmp203910 '() _%g200363201035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp203911 __tmp203909))
                                     (let ((__tmp203915
                                            (let ((__tmp203916
                                                   (lambda (_%g201086201089%_
                                                            _%g201087201091%_)
                                                     (cons _%g201086201089%_
                                                           _%g201087201091%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp203916
                                               '()
                                               _%g200365201037%_)))
                                           (__tmp203913
                                            (let ((__tmp203914
                                                   (lambda (_%g201093201096%_
                                                            _%g201094201098%_)
                                                     (cons _%g201093201096%_
                                                           _%g201094201098%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp203914
                                               '()
                                               _%g200363201035%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp203915
                                        __tmp203913))
                                     (not (let ((__tmp203919
                                                 (lambda (_%g201100201102%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g201100201102%_
                                                      _%g200364201036%_))))
                                                (__tmp203917
                                                 (let ((__tmp203918
                                                        (lambda (_%g201104201107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g201105201109%_)
                  (cons _%g201104201107%_ _%g201105201109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp203918
                                                    '()
                                                    _%g200365201037%_))))
                                            (declare (not safe))
                                            (__find __tmp203919 __tmp203917))))
                                (_%__kont202612202613%_
                                 _%g200363201035%_
                                 _%g200364201036%_
                                 _%g200365201037%_)
                                (_%__match202653202654%_
                                 _%e200366200927%_
                                 _%hd200367200930%_
                                 _%tl200368200932%_
                                 _%__splice202614202615%_
                                 _%target200369200935%_
                                 _%tl200371200937%_)))
                          (_%__match202653202654%_
                           _%e200366200927%_
                           _%hd200367200930%_
                           _%tl200368200932%_
                           _%__splice202614202615%_
                           _%target200369200935%_
                           _%tl200371200937%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop200396201002%_
                                               _%target200393200997%_
                                               '()))
                                            (_%__match202653202654%_
                                             _%e200366200927%_
                                             _%hd200367200930%_
                                             _%tl200368200932%_
                                             _%__splice202614202615%_
                                             _%target200369200935%_
                                             _%tl200371200937%_))))
                                    (_%__match202653202654%_
                                     _%e200366200927%_
                                     _%hd200367200930%_
                                     _%tl200368200932%_
                                     _%__splice202614202615%_
                                     _%target200369200935%_
                                     _%tl200371200937%_))
                                (_%__match202653202654%_
                                 _%e200366200927%_
                                 _%hd200367200930%_
                                 _%tl200368200932%_
                                 _%__splice202614202615%_
                                 _%target200369200935%_
                                 _%tl200371200937%_))))
                        (_%__match202653202654%_
                         _%e200366200927%_
                         _%hd200367200930%_
                         _%tl200368200932%_
                         _%__splice202614202615%_
                         _%target200369200935%_
                         _%tl200371200937%_))
                    (_%__match202653202654%_
                     _%e200366200927%_
                     _%hd200367200930%_
                     _%tl200368200932%_
                     _%__splice202614202615%_
                     _%target200369200935%_
                     _%tl200371200937%_))
                (_%__match202653202654%_
                 _%e200366200927%_
                 _%hd200367200930%_
                 _%tl200368200932%_
                 _%__splice202614202615%_
                 _%target200369200935%_
                 _%tl200371200937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match202653202654%_
                                                 _%e200366200927%_
                                                 _%hd200367200930%_
                                                 _%tl200368200932%_
                                                 _%__splice202614202615%_
                                                 _%target200369200935%_
                                                 _%tl200371200937%_))))
                                        (_%__match202653202654%_
                                         _%e200366200927%_
                                         _%hd200367200930%_
                                         _%tl200368200932%_
                                         _%__splice202614202615%_
                                         _%target200369200935%_
                                         _%tl200371200937%_))
                                    (_%__match202653202654%_
                                     _%e200366200927%_
                                     _%hd200367200930%_
                                     _%tl200368200932%_
                                     _%__splice202614202615%_
                                     _%target200369200935%_
                                     _%tl200371200937%_))
                                (_%__match202653202654%_
                                 _%e200366200927%_
                                 _%hd200367200930%_
                                 _%tl200368200932%_
                                 _%__splice202614202615%_
                                 _%target200369200935%_
                                 _%tl200371200937%_))))
                        (_%__match202653202654%_
                         _%e200366200927%_
                         _%hd200367200930%_
                         _%tl200368200932%_
                         _%__splice202614202615%_
                         _%target200369200935%_
                         _%tl200371200937%_))))
                (_%__match202653202654%_
                 _%e200366200927%_
                 _%hd200367200930%_
                 _%tl200368200932%_
                 _%__splice202614202615%_
                 _%target200369200935%_
                 _%tl200371200937%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop200372200940%_
                                     _%target200369200935%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx202610202611%_))
                              (let ((_%e200366200927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx202610202611%_))))
                                (let ((_%tl200368200932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200366200927%_)))
                                      (_%hd200367200930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200366200927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd200367200930%_))
                                      (let ((_%__splice202614202615%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd200367200930%_
                                                '0))))
                                        (let ((_%tl200371200937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202614202615%_
                                                  '1)))
                                              (_%target200369200935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202614202615%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200371200937%_))
                                              (_%__match202641202642%_
                                               _%e200366200927%_
                                               _%hd200367200930%_
                                               _%tl200368200932%_
                                               _%__splice202614202615%_
                                               _%target200369200935%_
                                               _%tl200371200937%_)
                                              (_%__match202653202654%_
                                               _%e200366200927%_
                                               _%hd200367200930%_
                                               _%tl200368200932%_
                                               _%__splice202614202615%_
                                               _%target200369200935%_
                                               _%tl200371200937%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200368200932%_))
                                          (let ((_%e200481200538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200368200932%_))))
                                            (let ((_%tl200483200543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200481200538%_)))
                                                  (_%hd200482200541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200481200538%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd200482200541%_))
                                                  (let ((_%e200484200546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd200482200541%_))))
                                                    (let ((_%tl200486200551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200484200546%_)))
                                                          (_%hd200485200549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200484200546%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd200485200549%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd200485200549%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200486200551%_))
                          (let ((_%e200487200554%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200486200551%_))))
                            (let ((_%tl200489200559%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200487200554%_)))
                                  (_%hd200488200557%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200487200554%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200488200557%_))
                                  (let ((_%e200490200562%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200488200557%_))))
                                    (let ((_%tl200492200567%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200490200562%_)))
                                          (_%hd200491200565%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200490200562%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200491200565%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200491200565%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200492200567%_))
                                                  (let ((_%e200493200570%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200492200567%_))))
                                                    (let ((_%tl200495200575%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200493200570%_)))
                                                          (_%hd200494200573%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200493200570%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200495200575%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200489200559%_))
                      (let ((_%e200496200578%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200489200559%_))))
                        (let ((_%tl200498200583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200496200578%_)))
                              (_%hd200497200581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200496200578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200497200581%_))
                              (let ((_%e200499200586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200497200581%_))))
                                (let ((_%tl200501200591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200499200586%_)))
                                      (_%hd200500200589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200499200586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200500200589%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200500200589%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200501200591%_))
                                              (let ((_%e200502200594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200501200591%_))))
                                                (let ((_%tl200504200599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200502200594%_)))
                                                      (_%hd200503200597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200502200594%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200504200599%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200498200583%_))
                                                          (let ((_%e200505200602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200498200583%_))))
                    (let ((_%tl200507200607%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200505200602%_)))
                          (_%hd200506200605%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200505200602%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200506200605%_))
                          (let ((_%e200508200610%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200506200605%_))))
                            (let ((_%tl200510200615%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200508200610%_)))
                                  (_%hd200509200613%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200508200610%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200509200613%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd200509200613%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200510200615%_))
                                          (let ((_%e200511200618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200510200615%_))))
                                            (let ((_%tl200513200623%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200511200618%_)))
                                                  (_%hd200512200621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200511200618%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200513200623%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200507200607%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200483200543%_))
                                                          (_%__match202751202752%_
                                                           _%e200366200927%_
                                                           _%hd200367200930%_
                                                           _%tl200368200932%_
                                                           _%e200481200538%_
                                                           _%hd200482200541%_
                                                           _%tl200483200543%_
                                                           _%e200484200546%_
                                                           _%hd200485200549%_
                                                           _%tl200486200551%_
                                                           _%e200487200554%_
                                                           _%hd200488200557%_
                                                           _%tl200489200559%_
                                                           _%e200490200562%_
                                                           _%hd200491200565%_
                                                           _%tl200492200567%_
                                                           _%e200493200570%_
                                                           _%hd200494200573%_
                                                           _%tl200495200575%_
                                                           _%e200496200578%_
                                                           _%hd200497200581%_
                                                           _%tl200498200583%_
                                                           _%e200499200586%_
                                                           _%hd200500200589%_
                                                           _%tl200501200591%_
                                                           _%e200502200594%_
                                                           _%hd200503200597%_
                                                           _%tl200504200599%_
                                                           _%e200505200602%_
                                                           _%hd200506200605%_
                                                           _%tl200507200607%_
                                                           _%e200508200610%_
                                                           _%hd200509200613%_
                                                           _%tl200510200615%_
                                                           _%e200511200618%_
                                                           _%hd200512200621%_
                                                           _%tl200513200623%_)
                                                          (_%__kont202626202627%_))
                                                      (_%__kont202626202627%_))
                                                  (_%__kont202626202627%_))))
                                          (_%__kont202626202627%_))
                                      (_%__kont202626202627%_))
                                  (_%__kont202626202627%_))))
                          (_%__kont202626202627%_))))
                  (_%__kont202626202627%_))
              (_%__kont202626202627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont202626202627%_))
                                          (_%__kont202626202627%_))
                                      (_%__kont202626202627%_))))
                              (_%__kont202626202627%_))))
                      (_%__kont202626202627%_))
                  (_%__kont202626202627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202626202627%_))
                                              (_%__kont202626202627%_))
                                          (_%__kont202626202627%_))))
                                  (_%__kont202626202627%_))))
                          (_%__kont202626202627%_))
                      (_%__kont202626202627%_))
                  (_%__kont202626202627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202626202627%_))))
                                          (_%__kont202626202627%_)))))
                              (_%__kont202626202627%_)))))))
                 (_%dispatch-case-e199676%_
                  (lambda (_%hd199823%_ _%body199824%_)
                    (let* ((_%form199826%_
                            (cons _%hd199823%_ (cons _%body199824%_ '())))
                           (_%__stx202754202755%_ _%form199826%_)
                           (_%g199830199954%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx202754202755%_)))))
                      (let ((_%__kont202756202757%_
                             (lambda (_%g199832200319%_
                                      _%g199833200320%_
                                      _%g199834200321%_)
                               (let ((__tmp203920
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g199833200320%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199672%_
                                  __tmp203920))))
                            (_%__kont202762202763%_
                             (lambda (_%g199877200171%_
                                      _%g199878200172%_
                                      _%g199879200173%_
                                      _%g199880200174%_)
                               (let ((__tmp203921
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g199877200171%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199672%_
                                  __tmp203921))))
                            (_%__kont202766202767%_
                             (lambda (_%g199917200039%_
                                      _%g199918200040%_
                                      _%g199919200041%_)
                               (let ((__tmp203922
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g199917200039%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199672%_
                                  __tmp203922)))))
                        (let* ((_%__match202863202864%_
                                (lambda (_%e199920199959%_
                                         _%hd199921199962%_
                                         _%tl199922199964%_
                                         _%e199923199967%_
                                         _%hd199924199970%_
                                         _%tl199925199972%_
                                         _%e199926199975%_
                                         _%hd199927199978%_
                                         _%tl199928199980%_
                                         _%e199929199983%_
                                         _%hd199930199986%_
                                         _%tl199931199988%_
                                         _%e199932199991%_
                                         _%hd199933199994%_
                                         _%tl199934199996%_
                                         _%e199935199999%_
                                         _%hd199936200002%_
                                         _%tl199937200004%_
                                         _%e199938200007%_
                                         _%hd199939200010%_
                                         _%tl199940200012%_
                                         _%e199941200015%_
                                         _%hd199942200018%_
                                         _%tl199943200020%_
                                         _%e199944200023%_
                                         _%hd199945200026%_
                                         _%tl199946200028%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199940200012%_))
                                      (let ((_%e199947200031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199940200012%_))))
                                        (let ((_%tl199949200036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199947200031%_)))
                                              (_%hd199948200034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199947200031%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199949200036%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199925199972%_))
                                                  (_%__kont202766202767%_
                                                   _%hd199945200026%_
                                                   _%hd199936200002%_
                                                   _%hd199921199962%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199830199954%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199830199954%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199830199954%_)))))
                               (_%__match202793202794%_
                                (lambda (_%e199881200077%_
                                         _%hd199882200080%_
                                         _%tl199883200082%_
                                         _%__splice202764202765%_
                                         _%target199884200085%_
                                         _%tl199886200087%_)
                                  (letrec ((_%loop199887200090%_
                                            (lambda (_%hd199885200093%_
                                                     _%arg199891200095%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199885200093%_))
                                                  (let ((_%e199888200097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199885200093%_))))
                                                    (let ((_%lp-tl199890200102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199888200097%_)))
                                                          (_%lp-hd199889200100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199888200097%_))))
                                                      (_%loop199887200090%_
                                                       _%lp-tl199890200102%_
                                                       (cons _%lp-hd199889200100%_
                                                             _%arg199891200095%_))))
                                                  (let ((_%arg199892200105%_
                                                         (reverse _%arg199891200095%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199883200082%_))
                                                        (let ((_%e199893200107%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199883200082%_))))
                  (let ((_%tl199895200112%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199893200107%_)))
                        (_%hd199894200110%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199893200107%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199894200110%_))
                        (let ((_%e199896200115%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199894200110%_))))
                          (let ((_%tl199898200120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199896200115%_)))
                                (_%hd199897200118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199896200115%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199897200118%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199897200118%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199898200120%_))
                                        (let ((_%e199899200123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199898200120%_))))
                                          (let ((_%tl199901200128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199899200123%_)))
                                                (_%hd199900200126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199899200123%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199900200126%_))
                                                (let ((_%e199902200131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199900200126%_))))
                                                  (let ((_%tl199904200136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199902200131%_)))
                                                        (_%hd199903200134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199902200131%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199903200134%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199903200134%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199904200136%_))
                        (let ((_%e199905200139%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199904200136%_))))
                          (let ((_%tl199907200144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199905200139%_)))
                                (_%hd199906200142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199905200139%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199907200144%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199901200128%_))
                                    (let ((_%e199908200147%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199901200128%_))))
                                      (let ((_%tl199910200152%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199908200147%_)))
                                            (_%hd199909200150%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199908200147%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199909200150%_))
                                            (let ((_%e199911200155%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199909200150%_))))
                                              (let ((_%tl199913200160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199911200155%_)))
                                                    (_%hd199912200158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199911200155%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199912200158%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199912200158%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199913200160%_))
                                                            (let ((_%e199914200163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199913200160%_))))
                      (let ((_%tl199916200168%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199914200163%_)))
                            (_%hd199915200166%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199914200163%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199916200168%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199895200112%_))
                                (_%__kont202762202763%_
                                 _%hd199915200166%_
                                 _%hd199906200142%_
                                 _%tl199886200087%_
                                 _%arg199892200105%_)
                                (_%__match202863202864%_
                                 _%e199881200077%_
                                 _%hd199882200080%_
                                 _%tl199883200082%_
                                 _%e199893200107%_
                                 _%hd199894200110%_
                                 _%tl199895200112%_
                                 _%e199896200115%_
                                 _%hd199897200118%_
                                 _%tl199898200120%_
                                 _%e199899200123%_
                                 _%hd199900200126%_
                                 _%tl199901200128%_
                                 _%e199902200131%_
                                 _%hd199903200134%_
                                 _%tl199904200136%_
                                 _%e199905200139%_
                                 _%hd199906200142%_
                                 _%tl199907200144%_
                                 _%e199908200147%_
                                 _%hd199909200150%_
                                 _%tl199910200152%_
                                 _%e199911200155%_
                                 _%hd199912200158%_
                                 _%tl199913200160%_
                                 _%e199914200163%_
                                 _%hd199915200166%_
                                 _%tl199916200168%_))
                            (let ()
                              (declare (not safe))
                              (_%g199830199954%_)))))
                    (let () (declare (not safe)) (_%g199830199954%_)))
                (let () (declare (not safe)) (_%g199830199954%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199830199954%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199830199954%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199830199954%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199830199954%_)))))
                        (let () (declare (not safe)) (_%g199830199954%_)))
                    (let () (declare (not safe)) (_%g199830199954%_)))
                (let () (declare (not safe)) (_%g199830199954%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199830199954%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199830199954%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199830199954%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199830199954%_)))))
                        (let () (declare (not safe)) (_%g199830199954%_)))))
                (let () (declare (not safe)) (_%g199830199954%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199887200090%_
                                     _%target199884200085%_
                                     '()))))
                               (_%__match202781202782%_
                                (lambda (_%e199835200211%_
                                         _%hd199836200214%_
                                         _%tl199837200216%_
                                         _%__splice202758202759%_
                                         _%target199838200219%_
                                         _%tl199840200221%_)
                                  (letrec ((_%loop199841200224%_
                                            (lambda (_%hd199839200227%_
                                                     _%arg199845200229%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199839200227%_))
                                                  (let ((_%e199842200231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199839200227%_))))
                                                    (let ((_%lp-tl199844200236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199842200231%_)))
                                                          (_%lp-hd199843200234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199842200231%_))))
                                                      (_%loop199841200224%_
                                                       _%lp-tl199844200236%_
                                                       (cons _%lp-hd199843200234%_
                                                             _%arg199845200229%_))))
                                                  (let ((_%arg199846200239%_
                                                         (reverse _%arg199845200229%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199837200216%_))
                                                        (let ((_%e199847200241%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199837200216%_))))
                  (let ((_%tl199849200246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199847200241%_)))
                        (_%hd199848200244%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199847200241%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199848200244%_))
                        (let ((_%e199850200249%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199848200244%_))))
                          (let ((_%tl199852200254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199850200249%_)))
                                (_%hd199851200252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199850200249%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199851200252%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199851200252%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199852200254%_))
                                        (let ((_%e199853200257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199852200254%_))))
                                          (let ((_%tl199855200262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199853200257%_)))
                                                (_%hd199854200260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199853200257%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199854200260%_))
                                                (let ((_%e199856200265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199854200260%_))))
                                                  (let ((_%tl199858200270%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199856200265%_)))
                                                        (_%hd199857200268%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199856200265%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199857200268%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199857200268%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199858200270%_))
                        (let ((_%e199859200273%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199858200270%_))))
                          (let ((_%tl199861200278%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199859200273%_)))
                                (_%hd199860200276%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199859200273%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199861200278%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl199855200262%_))
                                    (let ((_%__splice202760202761%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl199855200262%_
                                              '0))))
                                      (let ((_%tl199864200283%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202760202761%_
                                                '1)))
                                            (_%target199862200281%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202760202761%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199864200283%_))
                                            (letrec ((_%loop199865200286%_
                                                      (lambda (_%hd199863200289%_
                                                               _%xarg199869200291%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd199863200289%_))
                                                            (let ((_%e199866200293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199863200289%_))))
                      (let ((_%lp-tl199868200298%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199866200293%_)))
                            (_%lp-hd199867200296%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199866200293%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd199867200296%_))
                            (let ((_%e199871200301%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd199867200296%_))))
                              (let ((_%tl199873200306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199871200301%_)))
                                    (_%hd199872200304%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199871200301%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199872200304%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd199872200304%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199873200306%_))
                                            (let ((_%e199874200309%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199873200306%_))))
                                              (let ((_%tl199876200314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199874200309%_)))
                                                    (_%hd199875200312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199874200309%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199876200314%_))
                                                    (_%loop199865200286%_
                                                     _%lp-tl199868200298%_
                                                     (cons _%hd199875200312%_
                                                           _%xarg199869200291%_))
                                                    (_%__match202793202794%_
                                                     _%e199835200211%_
                                                     _%hd199836200214%_
                                                     _%tl199837200216%_
                                                     _%__splice202758202759%_
                                                     _%target199838200219%_
                                                     _%tl199840200221%_))))
                                            (_%__match202793202794%_
                                             _%e199835200211%_
                                             _%hd199836200214%_
                                             _%tl199837200216%_
                                             _%__splice202758202759%_
                                             _%target199838200219%_
                                             _%tl199840200221%_))
                                        (_%__match202793202794%_
                                         _%e199835200211%_
                                         _%hd199836200214%_
                                         _%tl199837200216%_
                                         _%__splice202758202759%_
                                         _%target199838200219%_
                                         _%tl199840200221%_))
                                    (_%__match202793202794%_
                                     _%e199835200211%_
                                     _%hd199836200214%_
                                     _%tl199837200216%_
                                     _%__splice202758202759%_
                                     _%target199838200219%_
                                     _%tl199840200221%_))))
                            (_%__match202793202794%_
                             _%e199835200211%_
                             _%hd199836200214%_
                             _%tl199837200216%_
                             _%__splice202758202759%_
                             _%target199838200219%_
                             _%tl199840200221%_))))
                    (let ((_%xarg199870200317%_
                           (reverse _%xarg199869200291%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199849200246%_))
                          (_%__kont202756202757%_
                           _%xarg199870200317%_
                           _%hd199860200276%_
                           _%arg199846200239%_)
                          (_%__match202793202794%_
                           _%e199835200211%_
                           _%hd199836200214%_
                           _%tl199837200216%_
                           _%__splice202758202759%_
                           _%target199838200219%_
                           _%tl199840200221%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop199865200286%_
                                               _%target199862200281%_
                                               '()))
                                            (_%__match202793202794%_
                                             _%e199835200211%_
                                             _%hd199836200214%_
                                             _%tl199837200216%_
                                             _%__splice202758202759%_
                                             _%target199838200219%_
                                             _%tl199840200221%_))))
                                    (_%__match202793202794%_
                                     _%e199835200211%_
                                     _%hd199836200214%_
                                     _%tl199837200216%_
                                     _%__splice202758202759%_
                                     _%target199838200219%_
                                     _%tl199840200221%_))
                                (_%__match202793202794%_
                                 _%e199835200211%_
                                 _%hd199836200214%_
                                 _%tl199837200216%_
                                 _%__splice202758202759%_
                                 _%target199838200219%_
                                 _%tl199840200221%_))))
                        (_%__match202793202794%_
                         _%e199835200211%_
                         _%hd199836200214%_
                         _%tl199837200216%_
                         _%__splice202758202759%_
                         _%target199838200219%_
                         _%tl199840200221%_))
                    (_%__match202793202794%_
                     _%e199835200211%_
                     _%hd199836200214%_
                     _%tl199837200216%_
                     _%__splice202758202759%_
                     _%target199838200219%_
                     _%tl199840200221%_))
                (_%__match202793202794%_
                 _%e199835200211%_
                 _%hd199836200214%_
                 _%tl199837200216%_
                 _%__splice202758202759%_
                 _%target199838200219%_
                 _%tl199840200221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match202793202794%_
                                                 _%e199835200211%_
                                                 _%hd199836200214%_
                                                 _%tl199837200216%_
                                                 _%__splice202758202759%_
                                                 _%target199838200219%_
                                                 _%tl199840200221%_))))
                                        (_%__match202793202794%_
                                         _%e199835200211%_
                                         _%hd199836200214%_
                                         _%tl199837200216%_
                                         _%__splice202758202759%_
                                         _%target199838200219%_
                                         _%tl199840200221%_))
                                    (_%__match202793202794%_
                                     _%e199835200211%_
                                     _%hd199836200214%_
                                     _%tl199837200216%_
                                     _%__splice202758202759%_
                                     _%target199838200219%_
                                     _%tl199840200221%_))
                                (_%__match202793202794%_
                                 _%e199835200211%_
                                 _%hd199836200214%_
                                 _%tl199837200216%_
                                 _%__splice202758202759%_
                                 _%target199838200219%_
                                 _%tl199840200221%_))))
                        (_%__match202793202794%_
                         _%e199835200211%_
                         _%hd199836200214%_
                         _%tl199837200216%_
                         _%__splice202758202759%_
                         _%target199838200219%_
                         _%tl199840200221%_))))
                (_%__match202793202794%_
                 _%e199835200211%_
                 _%hd199836200214%_
                 _%tl199837200216%_
                 _%__splice202758202759%_
                 _%target199838200219%_
                 _%tl199840200221%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199841200224%_
                                     _%target199838200219%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx202754202755%_))
                              (let ((_%e199835200211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx202754202755%_))))
                                (let ((_%tl199837200216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199835200211%_)))
                                      (_%hd199836200214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199835200211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd199836200214%_))
                                      (let ((_%__splice202758202759%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd199836200214%_
                                                '0))))
                                        (let ((_%tl199840200221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202758202759%_
                                                  '1)))
                                              (_%target199838200219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202758202759%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199840200221%_))
                                              (_%__match202781202782%_
                                               _%e199835200211%_
                                               _%hd199836200214%_
                                               _%tl199837200216%_
                                               _%__splice202758202759%_
                                               _%target199838200219%_
                                               _%tl199840200221%_)
                                              (_%__match202793202794%_
                                               _%e199835200211%_
                                               _%hd199836200214%_
                                               _%tl199837200216%_
                                               _%__splice202758202759%_
                                               _%target199838200219%_
                                               _%tl199840200221%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199837200216%_))
                                          (let ((_%e199923199967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199837200216%_))))
                                            (let ((_%tl199925199972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199923199967%_)))
                                                  (_%hd199924199970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199923199967%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199924199970%_))
                                                  (let ((_%e199926199975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199924199970%_))))
                                                    (let ((_%tl199928199980%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199926199975%_)))
                                                          (_%hd199927199978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199926199975%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd199927199978%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd199927199978%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199928199980%_))
                          (let ((_%e199929199983%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199928199980%_))))
                            (let ((_%tl199931199988%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199929199983%_)))
                                  (_%hd199930199986%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199929199983%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199930199986%_))
                                  (let ((_%e199932199991%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199930199986%_))))
                                    (let ((_%tl199934199996%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199932199991%_)))
                                          (_%hd199933199994%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199932199991%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199933199994%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199933199994%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199934199996%_))
                                                  (let ((_%e199935199999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199934199996%_))))
                                                    (let ((_%tl199937200004%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199935199999%_)))
                                                          (_%hd199936200002%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199935199999%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199937200004%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199931199988%_))
                      (let ((_%e199938200007%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199931199988%_))))
                        (let ((_%tl199940200012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199938200007%_)))
                              (_%hd199939200010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199938200007%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199939200010%_))
                              (let ((_%e199941200015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199939200010%_))))
                                (let ((_%tl199943200020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199941200015%_)))
                                      (_%hd199942200018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199941200015%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199942200018%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199942200018%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199943200020%_))
                                              (let ((_%e199944200023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199943200020%_))))
                                                (let ((_%tl199946200028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199944200023%_)))
                                                      (_%hd199945200026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199944200023%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199946200028%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199940200012%_))
                                                          (let ((_%e199947200031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199940200012%_))))
                    (let ((_%tl199949200036%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199947200031%_)))
                          (_%hd199948200034%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199947200031%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199949200036%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199925199972%_))
                              (_%__kont202766202767%_
                               _%hd199945200026%_
                               _%hd199936200002%_
                               _%hd199836200214%_)
                              (let ()
                                (declare (not safe))
                                (_%g199830199954%_)))
                          (let () (declare (not safe)) (_%g199830199954%_)))))
                  (let () (declare (not safe)) (_%g199830199954%_)))
              (let () (declare (not safe)) (_%g199830199954%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199830199954%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199830199954%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199830199954%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199830199954%_)))))
                      (let () (declare (not safe)) (_%g199830199954%_)))
                  (let () (declare (not safe)) (_%g199830199954%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199830199954%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199830199954%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199830199954%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199830199954%_)))))
                          (let () (declare (not safe)) (_%g199830199954%_)))
                      (let () (declare (not safe)) (_%g199830199954%_)))
                  (let () (declare (not safe)) (_%g199830199954%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199830199954%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199830199954%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g199830199954%_))))))))
                 (_%generate1199677%_
                  (lambda (_%args199808%_
                           _%arglen199809%_
                           _%hd199810%_
                           _%body199811%_)
                    (let* ((_%len199813%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd199810%_)))
                           (_%condition199818%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd199810%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen199809%_
                                                (cons _%len199813%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen199809%_ (cons _%len199813%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len199813%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen199809%_
                                                    (cons _%len199813%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen199809%_ (cons _%len199813%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch199820%_
                            (if (_%dispatch-case?199675%_
                                 _%hd199810%_
                                 _%body199811%_)
                                (_%dispatch-case-e199676%_
                                 _%hd199810%_
                                 _%body199811%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self199672%_
                                 _%hd199810%_
                                 _%body199811%_))))
                      (cons _%condition199818%_
                            (cons (cons 'apply
                                        (cons _%dispatch199820%_
                                              (cons _%args199808%_ '())))
                                  '()))))))
          (let* ((_%g199679199707%_
                  (lambda (_%g199680199704%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199680199704%_))))
                 (_%g199678199805%_
                  (lambda (_%g199680199710%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199680199710%_))
                        (let ((_%e199683199712%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199680199710%_))))
                          (let ((_%hd199684199715%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199683199712%_)))
                                (_%tl199685199717%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199683199712%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl199685199717%_))
                                (let ((_g203923_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl199685199717%_
                                          '0))))
                                  (begin
                                    (let ((_g203924_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g203923_)
                                                 (##values-length _g203923_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g203924_ 2)))
                                          (error "Context expects 2 values"
                                                 _g203924_)))
                                    (let ((_%target199686199720%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g203923_ 0)))
                                          (_%tl199688199722%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g203923_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199688199722%_))
                                          (letrec ((_%loop199689199725%_
                                                    (lambda (_%hd199687199728%_
                                                             _%body199693199730%_
                                                             _%hd199694199731%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199687199728%_))
                                                          (let ((_%e199690199733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199687199728%_))))
                    (let ((_%lp-hd199691199736%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199690199733%_)))
                          (_%lp-tl199692199738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199690199733%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd199691199736%_))
                          (let ((_%e199697199741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd199691199736%_))))
                            (let ((_%hd199698199744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199697199741%_)))
                                  (_%tl199699199746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199697199741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199699199746%_))
                                  (let ((_%e199700199749%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199699199746%_))))
                                    (let ((_%hd199701199752%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199700199749%_)))
                                          (_%tl199702199754%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199700199749%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199702199754%_))
                                          (_%loop199689199725%_
                                           _%lp-tl199692199738%_
                                           (cons _%hd199701199752%_
                                                 _%body199693199730%_)
                                           (cons _%hd199698199744%_
                                                 _%hd199694199731%_))
                                          (_%g199679199707%_
                                           _%g199680199710%_))))
                                  (_%g199679199707%_ _%g199680199710%_))))
                          (_%g199679199707%_ _%g199680199710%_))))
                  (let ((_%body199695199757%_ (reverse _%body199693199730%_))
                        (_%hd199696199758%_ (reverse _%hd199694199731%_)))
                    ((lambda (_%g199681199760%_ _%g199682199761%_)
                       (let ((_%args199780%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen199781%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name199782%_
                              (let ((_%$e199777%_
                                     (let ((__tmp203925
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp203925 _%stx199673%_))))
                                (if _%$e199777%_
                                    _%$e199777%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args199780%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen199781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args199780%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args199780%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp203929
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name199782%_
                                                                (cons _%args199780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp203926
                                  (map (lambda (_%g199783199786%_
                                                _%g199784199788%_)
                                         (_%generate1199677%_
                                          _%args199780%_
                                          _%arglen199781%_
                                          _%g199783199786%_
                                          _%g199784199788%_))
                                       (let ((__tmp203927
                                              (lambda (_%g199790199793%_
                                                       _%g199791199795%_)
                                                (cons _%g199790199793%_
                                                      _%g199791199795%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp203927
                                          '()
                                          _%g199682199761%_))
                                       (let ((__tmp203928
                                              (lambda (_%g199797199800%_
                                                       _%g199798199802%_)
                                                (cons _%g199797199800%_
                                                      _%g199798199802%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp203928
                                          '()
                                          _%g199681199760%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp203929 __tmp203926)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body199695199757%_
                     _%hd199696199758%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop199689199725%_
                                             _%target199686199720%_
                                             '()
                                             '()))
                                          (_%g199679199707%_
                                           _%g199680199710%_)))))
                                (_%g199679199707%_ _%g199680199710%_))))
                        (_%g199679199707%_ _%g199680199710%_)))))
            (_%g199678199805%_ _%stx199673%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self198909%_ _%stx198910%_ _%compiled-body?198911%_)
        (letrec ((_%generate-simple198913%_
                  (lambda (_%hd199657%_ _%body199658%_)
                    (_%coalesce-boolean198914%_
                     (_%simplify-let198915%_
                      (gxc#generate-runtime-simple-let
                       _%self198909%_
                       'let
                       _%hd199657%_
                       _%body199658%_
                       _%compiled-body?198911%_)))))
                 (_%coalesce-boolean198914%_
                  (lambda (_%code199518%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code199519199545%_ _%code199518%_)
                               (_%else199521199553%_
                                (lambda () _%code199518%_))
                               (_%K199523199590%_
                                (lambda (_%expr2199556%_
                                         _%expr1199557%_
                                         _%id199558%_)
                                  (let* ((_%expr2199559199567%_
                                          _%expr2199556%_)
                                         (_%else199561199575%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1199557%_
                                                        (cons _%expr2199556%_
                                                              '())))))
                                         (_%K199563199580%_
                                          (lambda (_%exprs199578%_)
                                            (cons 'or
                                                  (cons _%expr1199557%_
                                                        _%exprs199578%_)))))
                                    (if (pair? _%expr2199559199567%_)
                                        (let ((_%hd199564199583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2199559199567%_)))
                                              (_%tl199565199585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2199559199567%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd199564199583%_ 'or))
                                              (let ((_%exprs199588%_
                                                     _%tl199565199585%_))
                                                (_%K199563199580%_
                                                 _%exprs199588%_))
                                              (_%else199561199575%_)))
                                        (_%else199561199575%_))))))
                          (if (pair? _%code199519199545%_)
                              (let ((_%hd199524199593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code199519199545%_)))
                                    (_%tl199525199595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code199519199545%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd199524199593%_ 'let))
                                    (if (pair? _%tl199525199595%_)
                                        (let ((_%hd199526199598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl199525199595%_)))
                                              (_%tl199527199600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl199525199595%_))))
                                          (if (pair? _%hd199526199598%_)
                                              (let ((_%hd199538199603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd199526199598%_)))
                                                    (_%tl199539199605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd199526199598%_))))
                                                (if (pair? _%hd199538199603%_)
                                                    (let ((_%hd199540199608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd199538199603%_)))
                                                          (_%tl199541199610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd199538199603%_))))
                                                      (let ((_%id199613%_
                                                             _%hd199540199608%_))
                                                        (if (pair? _%tl199541199610%_)
                                                            (let ((_%hd199542199615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl199541199610%_)))
                          (_%tl199543199617%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl199541199610%_))))
                      (let ((_%expr1199620%_ _%hd199542199615%_))
                        (if (null? _%tl199543199617%_)
                            (if (null? _%tl199539199605%_)
                                (if (pair? _%tl199527199600%_)
                                    (let ((_%hd199528199622%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl199527199600%_)))
                                          (_%tl199529199624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl199527199600%_))))
                                      (if (pair? _%hd199528199622%_)
                                          (let ((_%hd199530199627%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd199528199622%_)))
                                                (_%tl199531199629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd199528199622%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd199530199627%_
                                                         'if))
                                                (if (pair? _%tl199531199629%_)
                                                    (let ((_%hd199532199632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl199531199629%_)))
                                                          (_%tl199533199634%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl199531199629%_))))
                                                      (if ((lambda (_%g199636199638%_)
                                                             (eq? _%g199636199638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id199613%_))
                   _%hd199532199632%_)
                  (if (pair? _%tl199533199634%_)
                      (let ((_%hd199534199641%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl199533199634%_)))
                            (_%tl199535199643%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl199533199634%_))))
                        (if ((lambda (_%g199645199647%_)
                               (eq? _%g199645199647%_ _%id199613%_))
                             _%hd199534199641%_)
                            (if (pair? _%tl199535199643%_)
                                (let ((_%hd199536199650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199535199643%_)))
                                      (_%tl199537199652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199535199643%_))))
                                  (let ((_%expr2199655%_ _%hd199536199650%_))
                                    (if (null? _%tl199537199652%_)
                                        (if (null? _%tl199529199624%_)
                                            (_%K199523199590%_
                                             _%expr2199655%_
                                             _%expr1199620%_
                                             _%id199613%_)
                                            (_%else199521199553%_))
                                        (_%else199521199553%_))))
                                (_%else199521199553%_))
                            (_%else199521199553%_)))
                      (_%else199521199553%_))
                  (_%else199521199553%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199521199553%_))
                                                (_%else199521199553%_)))
                                          (_%else199521199553%_)))
                                    (_%else199521199553%_))
                                (_%else199521199553%_))
                            (_%else199521199553%_))))
                    (_%else199521199553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199521199553%_)))
                                              (_%else199521199553%_)))
                                        (_%else199521199553%_))
                                    (_%else199521199553%_)))
                              (_%else199521199553%_)))
                        _%code199518%_)))
                 (_%simplify-let198915%_
                  (lambda (_%code199217%_)
                    (let* ((_%code199218199290%_ _%code199217%_)
                           (_%else199223199298%_ (lambda () _%code199217%_)))
                      (let ((_%K199282199498%_
                             (lambda (_%expr199496%_) _%expr199496%_))
                            (_%K199265199444%_
                             (lambda (_%body199440%_
                                      _%expr199441%_
                                      _%id199442%_)
                               (cons 'let
                                     (cons (cons (cons _%id199442%_
                                                       (cons _%expr199441%_
                                                             '()))
                                                 '())
                                           _%body199440%_))))
                            (_%K199242199368%_
                             (lambda (_%body199362%_
                                      _%expr2199363%_
                                      _%id2199364%_
                                      _%expr1199365%_
                                      _%id1199366%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1199366%_
                                                       (cons _%expr1199365%_
                                                             '()))
                                                 (cons (cons _%id2199364%_
                                                             (cons _%expr2199363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body199362%_))))
                            (_%K199225199307%_
                             (lambda (_%body199302%_
                                      _%bind199303%_
                                      _%expr1199304%_
                                      _%id1199305%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1199305%_
                                                       (cons _%expr1199304%_
                                                             '()))
                                                 _%bind199303%_)
                                           _%body199302%_)))))
                        (if (pair? _%code199218199290%_)
                            (let ((_%tl199284199503%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code199218199290%_)))
                                  (_%hd199283199501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code199218199290%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd199283199501%_ 'let))
                                  (if (pair? _%tl199284199503%_)
                                      (let ((_%tl199286199508%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl199284199503%_)))
                                            (_%hd199285199506%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl199284199503%_))))
                                        (if (null? _%hd199285199506%_)
                                            (if (pair? _%tl199286199508%_)
                                                (let ((_%tl199288199513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl199286199508%_)))
                                                      (_%hd199287199511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl199286199508%_))))
                                                  (if (null? _%tl199288199513%_)
                                                      (let ((_%expr199516%_
                                                             _%hd199287199511%_))
                                                        (_%K199282199498%_
                                                         _%expr199516%_))
                                                      (_%else199223199298%_)))
                                                (_%else199223199298%_))
                                            (if (pair? _%hd199285199506%_)
                                                (let ((_%tl199277199459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd199285199506%_)))
                                                      (_%hd199276199457%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd199285199506%_))))
                                                  (if (pair? _%hd199276199457%_)
                                                      (let ((_%tl199279199464%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd199276199457%_)))
                    (_%hd199278199462%_
                     (let () (declare (not safe)) (##car _%hd199276199457%_))))
                (if (pair? _%tl199279199464%_)
                    (let ((_%tl199281199471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl199279199464%_)))
                          (_%hd199280199469%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl199279199464%_))))
                      (if (null? _%tl199281199471%_)
                          (if (null? _%tl199277199459%_)
                              (if (pair? _%tl199286199508%_)
                                  (let ((_%tl199271199478%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199286199508%_)))
                                        (_%hd199270199476%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199286199508%_))))
                                    (if (pair? _%hd199270199476%_)
                                        (let ((_%tl199273199483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd199270199476%_)))
                                              (_%hd199272199481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd199270199476%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd199272199481%_
                                                       'let))
                                              (if (pair? _%tl199273199483%_)
                                                  (let ((_%tl199275199488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl199273199483%_)))
                                                        (_%hd199274199486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl199273199483%_))))
                                                    (if (null? _%hd199274199486%_)
                                                        (if (null? _%tl199271199478%_)
                                                            (let ((_%id199467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd199278199462%_)
                          (_%expr199474%_ _%hd199280199469%_)
                          (_%body199491%_ _%tl199275199488%_))
                      (_%K199265199444%_
                       _%body199491%_
                       _%expr199474%_
                       _%id199467%_))
                    (_%else199223199298%_))
                (if (pair? _%hd199274199486%_)
                    (let ((_%tl199254199417%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd199274199486%_)))
                          (_%hd199253199415%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd199274199486%_))))
                      (if (pair? _%hd199253199415%_)
                          (let ((_%tl199256199422%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd199253199415%_)))
                                (_%hd199255199420%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd199253199415%_))))
                            (if (pair? _%tl199256199422%_)
                                (let ((_%tl199258199429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199256199422%_)))
                                      (_%hd199257199427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199256199422%_))))
                                  (if (null? _%tl199258199429%_)
                                      (if (null? _%tl199254199417%_)
                                          (if (null? _%tl199271199478%_)
                                              (let ((_%id1199391%_
                                                     _%hd199278199462%_)
                                                    (_%expr1199398%_
                                                     _%hd199280199469%_)
                                                    (_%id2199425%_
                                                     _%hd199255199420%_)
                                                    (_%expr2199432%_
                                                     _%hd199257199427%_)
                                                    (_%body199434%_
                                                     _%tl199275199488%_))
                                                (_%K199242199368%_
                                                 _%body199434%_
                                                 _%expr2199432%_
                                                 _%id2199425%_
                                                 _%expr1199398%_
                                                 _%id1199391%_))
                                              (_%else199223199298%_))
                                          (_%else199223199298%_))
                                      (_%else199223199298%_)))
                                (_%else199223199298%_)))
                          (_%else199223199298%_)))
                    (_%else199223199298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else199223199298%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd199272199481%_
                                                           'let*))
                                                  (if (pair? _%tl199273199483%_)
                                                      (let ((_%tl199235199351%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl199273199483%_)))
                    (_%hd199234199349%_
                     (let () (declare (not safe)) (##car _%tl199273199483%_))))
                (if (null? _%tl199271199478%_)
                    (let ((_%id1199330%_ _%hd199278199462%_)
                          (_%expr1199337%_ _%hd199280199469%_)
                          (_%bind199354%_ _%hd199234199349%_)
                          (_%body199356%_ _%tl199235199351%_))
                      (_%K199225199307%_
                       _%body199356%_
                       _%bind199354%_
                       _%expr1199337%_
                       _%id1199330%_))
                    (_%else199223199298%_)))
              (_%else199223199298%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else199223199298%_))))
                                        (_%else199223199298%_)))
                                  (_%else199223199298%_))
                              (_%else199223199298%_))
                          (_%else199223199298%_)))
                    (_%else199223199298%_)))
              (_%else199223199298%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else199223199298%_))))
                                      (_%else199223199298%_))
                                  (_%else199223199298%_)))
                            (_%else199223199298%_))))))
                 (_%generate-values198916%_
                  (lambda (_%hd199030%_ _%body199031%_)
                    (let _%lp199033%_ ((_%rest199035%_ _%hd199030%_)
                                       (_%bind199036%_ '())
                                       (_%check199037%_ '())
                                       (_%post199038%_ '()))
                      (let* ((_%__stx203083203084%_ _%rest199035%_)
                             (_%g199041199052%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx203083203084%_)))))
                        (let ((_%__kont203085203086%_
                               (lambda (_%g199043199079%_ _%g199044199080%_)
                                 (let* ((_%__stx203039203040%_
                                         _%g199044199080%_)
                                        (_%g199095199120%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx203039203040%_)))))
                                   (let ((_%__kont203041203042%_
                                          (lambda (_%g199097199193%_
                                                   _%g199098199194%_)
                                            (let ((_%eid199208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g199098199194%_)))
                                                  (_%expr199209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self198909%_
                                                      _%g199097199193%_))))
                                              (_%lp199033%_
                                               _%g199043199079%_
                                               (cons (cons _%eid199208%_
                                                           (cons _%expr199209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind199036%_)
                                               _%check199037%_
                                               _%post199038%_))))
                                         (_%__kont203043203044%_
                                          (lambda (_%g199108199141%_
                                                   _%g199109199142%_)
                                            (let* ((_%vals199155%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values199157%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals199155%_
                                                     _%g199109199142%_
                                                     _%g199108199141%_))
                                                   (_%refs199159%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals199155%_
                                                     _%g199109199142%_))
                                                   (_%expr199161%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self198909%_
                                                       _%g199108199141%_))))
                                              (_%lp199033%_
                                               _%g199043199079%_
                                               (cons (cons _%vals199155%_
                                                           (cons _%expr199161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind199036%_)
                                               (cons _%check-values199157%_
                                                     _%check199037%_)
                                               (cons _%refs199159%_
                                                     _%post199038%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx203039203040%_))
                                         (let ((_%e199099199169%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx203039203040%_))))
                                           (let ((_%tl199101199174%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199099199169%_)))
                                                 (_%hd199100199172%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199099199169%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd199100199172%_))
                                                 (let ((_%e199102199177%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd199100199172%_))))
                                                   (let ((_%tl199104199182%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199102199177%_)))
                                                         (_%hd199103199180%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199102199177%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199104199182%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199101199174%_))
                     (let ((_%e199105199185%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199101199174%_))))
                       (let ((_%tl199107199190%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199105199185%_)))
                             (_%hd199106199188%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199105199185%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199107199190%_))
                             (_%__kont203041203042%_
                              _%hd199106199188%_
                              _%hd199103199180%_)
                             (let ()
                               (declare (not safe))
                               (_%g199095199120%_)))))
                     (let () (declare (not safe)) (_%g199095199120%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl199101199174%_))
                     (let ((_%e199113199133%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199101199174%_))))
                       (let ((_%tl199115199138%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199113199133%_)))
                             (_%hd199114199136%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199113199133%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199115199138%_))
                             (_%__kont203043203044%_
                              _%hd199114199136%_
                              _%hd199100199172%_)
                             (let ()
                               (declare (not safe))
                               (_%g199095199120%_)))))
                     (let () (declare (not safe)) (_%g199095199120%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199101199174%_))
                                                     (let ((_%e199113199133%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199101199174%_))))
                                                       (let ((_%tl199115199138%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199113199133%_)))
                     (_%hd199114199136%_
                      (let () (declare (not safe)) (##car _%e199113199133%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199115199138%_))
                     (_%__kont203043203044%_
                      _%hd199114199136%_
                      _%hd199100199172%_)
                     (let () (declare (not safe)) (_%g199095199120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g199095199120%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g199095199120%_)))))))
                              (_%__kont203087203088%_
                               (lambda ()
                                 (let* ((_%body199059%_
                                         (if _%compiled-body?198911%_
                                             _%body199031%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self198909%_
                                                _%body199031%_))))
                                        (_%body199061%_
                                         (_%generate-values-post198917%_
                                          _%post199038%_
                                          _%body199059%_))
                                        (_%body199063%_
                                         (_%generate-values-check198918%_
                                          _%check199037%_
                                          _%body199061%_)))
                                   (cons 'let
                                         (cons (reverse _%bind199036%_)
                                               (cons _%body199063%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx203083203084%_))
                              (let ((_%e199045199071%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx203083203084%_))))
                                (let ((_%tl199047199076%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199045199071%_)))
                                      (_%hd199046199074%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199045199071%_))))
                                  (_%__kont203085203086%_
                                   _%tl199047199076%_
                                   _%hd199046199074%_)))
                              (_%__kont203087203088%_)))))))
                 (_%generate-values-post198917%_
                  (lambda (_%post198989%_ _%body198990%_)
                    (let _%lp198992%_ ((_%rest198994%_ _%post198989%_)
                                       (_%body198995%_ _%body198990%_))
                      (let* ((_%rest198996199004%_ _%rest198994%_)
                             (_%else198998199012%_ (lambda () _%body198995%_))
                             (_%K199000199018%_
                              (lambda (_%rest199015%_ _%bind199016%_)
                                (_%lp198992%_
                                 _%rest199015%_
                                 (cons 'let
                                       (cons _%bind199016%_
                                             (cons _%body198995%_ '())))))))
                        (if (pair? _%rest198996199004%_)
                            (let ((_%hd199001199021%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest198996199004%_)))
                                  (_%tl199002199023%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest198996199004%_))))
                              (let* ((_%bind199026%_ _%hd199001199021%_)
                                     (_%rest199028%_ _%tl199002199023%_))
                                (_%K199000199018%_
                                 _%rest199028%_
                                 _%bind199026%_)))
                            (_%else198998199012%_))))))
                 (_%generate-values-check198918%_
                  (lambda (_%check198986%_ _%body198987%_)
                    (cons 'begin
                          (let ((__tmp203931 (cons _%body198987%_ '()))
                                (__tmp203930 (reverse _%check198986%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp203931 __tmp203930))))))
          (let* ((_%g198920198937%_
                  (lambda (_%g198921198934%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198921198934%_))))
                 (_%g198919198983%_
                  (lambda (_%g198921198940%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198921198940%_))
                        (let ((_%e198924198942%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198921198940%_))))
                          (let ((_%hd198925198945%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198924198942%_)))
                                (_%tl198926198947%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198924198942%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198926198947%_))
                                (let ((_%e198927198950%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198926198947%_))))
                                  (let ((_%hd198928198953%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198927198950%_)))
                                        (_%tl198929198955%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198927198950%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198929198955%_))
                                        (let ((_%e198930198958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198929198955%_))))
                                          (let ((_%hd198931198961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198930198958%_)))
                                                (_%tl198932198963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198930198958%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198932198963%_))
                                                ((lambda (_%g198922198966%_
                                                          _%g198923198967%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g198923198967%_)
                                                       (_%generate-simple198913%_
                                                        _%g198923198967%_
                                                        _%g198922198966%_)
                                                       (_%generate-values198916%_
                                                        _%g198923198967%_
                                                        _%g198922198966%_)))
                                                 _%hd198931198961%_
                                                 _%hd198928198953%_)
                                                (_%g198920198937%_
                                                 _%g198921198940%_))))
                                        (_%g198920198937%_
                                         _%g198921198940%_))))
                                (_%g198920198937%_ _%g198921198940%_))))
                        (_%g198920198937%_ _%g198921198940%_)))))
            (_%g198919198983%_ _%stx198910%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self199663%_ _%stx199664%_)
        (let ((_%compiled-body?199666%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self199663%_
           _%stx199664%_
           _%compiled-body?199666%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g203932_
        (let ((_g203933_ (let () (declare (not safe)) (##length _g203932_))))
          (cond ((let () (declare (not safe)) (##fx= _g203933_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g203932_))
                ((let () (declare (not safe)) (##fx= _g203933_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g203932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g203932_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals198803%_ _%hd198804%_)
        (let _%lp198806%_ ((_%rest198808%_ _%hd198804%_)
                           (_%k198809%_ '0)
                           (_%r198810%_ '()))
          (let* ((_%__stx203097203098%_ _%rest198808%_)
                 (_%g198815198832%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx203097203098%_)))))
            (let ((_%__kont203099203100%_
                   (lambda (_%g198817198895%_)
                     (_%lp198806%_
                      _%g198817198895%_
                      (let () (declare (not safe)) (##fx+ _%k198809%_ '1))
                      _%r198810%_)))
                  (_%__kont203101203102%_
                   (lambda (_%g198822198868%_ _%g198823198869%_)
                     (_%lp198806%_
                      _%g198822198868%_
                      (let () (declare (not safe)) (##fx+ _%k198809%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g198823198869%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals198803%_
                                         _%k198809%_
                                         _%g198822198868%_)
                                        '()))
                            _%r198810%_))))
                  (_%__kont203103203104%_
                   (lambda (_%g198827198844%_)
                     (let ((__tmp203934
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g198827198844%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals198803%_
                                               _%k198809%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp203934 _%r198810%_))))
                  (_%__kont203105203106%_ (lambda () (reverse _%r198810%_))))
              (let ((_%g198813198855%_
                     (lambda ()
                       (let ((_%g198827198844%_ _%__stx203097203098%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g198827198844%_))
                             (_%__kont203103203104%_ _%g198827198844%_)
                             (_%__kont203105203106%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx203097203098%_))
                    (let ((_%e198818198884%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx203097203098%_))))
                      (let ((_%tl198820198889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198818198884%_)))
                            (_%hd198819198887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198818198884%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd198819198887%_))
                            (let ((_%e198821198892%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd198819198887%_))))
                              (if (equal? _%e198821198892%_ '#f)
                                  (_%__kont203099203100%_ _%tl198820198889%_)
                                  (_%__kont203101203102%_
                                   _%tl198820198889%_
                                   _%hd198819198887%_)))
                            (_%__kont203101203102%_
                             _%tl198820198889%_
                             _%hd198819198887%_))))
                    (let () (declare (not safe)) (_%g198813198855%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self198482%_ _%stx198483%_ _%compiled-body?198484%_)
        (letrec ((_%generate-simple198486%_
                  (lambda (_%hd198788%_ _%body198789%_)
                    (gxc#generate-runtime-simple-let
                     _%self198482%_
                     'letrec
                     _%hd198788%_
                     _%body198789%_
                     _%compiled-body?198484%_)))
                 (_%generate-values198487%_
                  (lambda (_%hd198567%_ _%body198568%_)
                    (let _%lp198570%_ ((_%rest198572%_ _%hd198567%_)
                                       (_%bind198573%_ '())
                                       (_%check198574%_ '())
                                       (_%post198575%_ '()))
                      (let* ((_%__stx203171203172%_ _%rest198572%_)
                             (_%g198578198589%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx203171203172%_)))))
                        (let ((_%__kont203173203174%_
                               (lambda (_%g198580198616%_ _%g198581198617%_)
                                 (let* ((_%__stx203127203128%_
                                         _%g198581198617%_)
                                        (_%g198632198657%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx203127203128%_)))))
                                   (let ((_%__kont203129203130%_
                                          (lambda (_%g198634198764%_
                                                   _%g198635198765%_)
                                            (let ((_%eid198779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g198635198765%_)))
                                                  (_%expr198780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self198482%_
                                                      _%g198634198764%_))))
                                              (_%lp198570%_
                                               _%g198580198616%_
                                               (cons (cons _%eid198779%_
                                                           (cons _%expr198780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind198573%_)
                                               _%check198574%_
                                               _%post198575%_))))
                                         (_%__kont203131203132%_
                                          (lambda (_%g198645198678%_
                                                   _%g198646198679%_)
                                            (let* ((_%vals198692%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values198694%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals198692%_
                                                     _%g198646198679%_
                                                     _%g198645198678%_))
                                                   (_%refs198696%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals198692%_
                                                     _%g198646198679%_))
                                                   (_%expr198698%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self198482%_
                                                       _%g198645198678%_))))
                                              (_%lp198570%_
                                               _%g198580198616%_
                                               (let ((__tmp203936
                                                      (cons (cons _%vals198692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr198698%_ '()))
                    _%bind198573%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp203935
                                                      (map (lambda (_%e198700198702%_)
                                                             (let* ((_%e198700198704198713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e198700198702%_)
                            (_%E198706198717%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e198700198704198713%_
                                        '([eid _])))
                               '#!void))
                            (_%K198707198722%_
                             (lambda (_%eid198720%_)
                               (cons _%eid198720%_ (cons '#!void '())))))
                       (if (pair? _%e198700198704198713%_)
                           (let ((_%hd198708198725%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198700198704198713%_)))
                                 (_%tl198709198727%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198700198704198713%_))))
                             (let ((_%eid198730%_ _%hd198708198725%_))
                               (if (pair? _%tl198709198727%_)
                                   (let ((_%tl198711198732%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl198709198727%_))))
                                     (if (null? _%tl198711198732%_)
                                         (_%K198707198722%_ _%eid198730%_)
                                         (_%E198706198717%_)))
                                   (_%E198706198717%_))))
                           (_%E198706198717%_))))
                   _%refs198696%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp203936
                                                  __tmp203935))
                                               (cons _%check-values198694%_
                                                     _%check198574%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs198696%_
                                                  _%post198575%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx203127203128%_))
                                         (let ((_%e198636198740%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx203127203128%_))))
                                           (let ((_%tl198638198745%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198636198740%_)))
                                                 (_%hd198637198743%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198636198740%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd198637198743%_))
                                                 (let ((_%e198639198748%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd198637198743%_))))
                                                   (let ((_%tl198641198753%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198639198748%_)))
                                                         (_%hd198640198751%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198639198748%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198641198753%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198638198745%_))
                     (let ((_%e198642198756%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198638198745%_))))
                       (let ((_%tl198644198761%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198642198756%_)))
                             (_%hd198643198759%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198642198756%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198644198761%_))
                             (_%__kont203129203130%_
                              _%hd198643198759%_
                              _%hd198640198751%_)
                             (let ()
                               (declare (not safe))
                               (_%g198632198657%_)))))
                     (let () (declare (not safe)) (_%g198632198657%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl198638198745%_))
                     (let ((_%e198650198670%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198638198745%_))))
                       (let ((_%tl198652198675%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198650198670%_)))
                             (_%hd198651198673%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198650198670%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198652198675%_))
                             (_%__kont203131203132%_
                              _%hd198651198673%_
                              _%hd198637198743%_)
                             (let ()
                               (declare (not safe))
                               (_%g198632198657%_)))))
                     (let () (declare (not safe)) (_%g198632198657%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198638198745%_))
                                                     (let ((_%e198650198670%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198638198745%_))))
                                                       (let ((_%tl198652198675%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198650198670%_)))
                     (_%hd198651198673%_
                      (let () (declare (not safe)) (##car _%e198650198670%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198652198675%_))
                     (_%__kont203131203132%_
                      _%hd198651198673%_
                      _%hd198637198743%_)
                     (let () (declare (not safe)) (_%g198632198657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g198632198657%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g198632198657%_)))))))
                              (_%__kont203175203176%_
                               (lambda ()
                                 (let* ((_%body198596%_
                                         (if _%compiled-body?198484%_
                                             _%body198568%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self198482%_
                                                _%body198568%_))))
                                        (_%body198598%_
                                         (_%generate-values-post198489%_
                                          _%post198575%_
                                          _%body198596%_))
                                        (_%body198600%_
                                         (_%generate-values-check198488%_
                                          _%check198574%_
                                          _%body198598%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind198573%_)
                                               (cons _%body198600%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx203171203172%_))
                              (let ((_%e198582198608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx203171203172%_))))
                                (let ((_%tl198584198613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198582198608%_)))
                                      (_%hd198583198611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198582198608%_))))
                                  (_%__kont203173203174%_
                                   _%tl198584198613%_
                                   _%hd198583198611%_)))
                              (_%__kont203175203176%_)))))))
                 (_%generate-values-check198488%_
                  (lambda (_%check198564%_ _%body198565%_)
                    (cons 'begin
                          (let ((__tmp203938 (cons _%body198565%_ '()))
                                (__tmp203937 (reverse _%check198564%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp203938 __tmp203937)))))
                 (_%generate-values-post198489%_
                  (lambda (_%post198557%_ _%body198558%_)
                    (cons 'begin
                          (let ((__tmp203942 (cons _%body198558%_ '()))
                                (__tmp203939
                                 (let ((__tmp203941
                                        (lambda (_%g198559198561%_)
                                          (cons 'set! _%g198559198561%_)))
                                       (__tmp203940 (reverse _%post198557%_)))
                                   (declare (not safe))
                                   (##map __tmp203941 __tmp203940))))
                            (declare (not safe))
                            (foldr__0 cons __tmp203942 __tmp203939))))))
          (let* ((_%g198491198508%_
                  (lambda (_%g198492198505%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198492198505%_))))
                 (_%g198490198554%_
                  (lambda (_%g198492198511%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198492198511%_))
                        (let ((_%e198495198513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198492198511%_))))
                          (let ((_%hd198496198516%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198495198513%_)))
                                (_%tl198497198518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198495198513%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198497198518%_))
                                (let ((_%e198498198521%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198497198518%_))))
                                  (let ((_%hd198499198524%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198498198521%_)))
                                        (_%tl198500198526%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198498198521%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198500198526%_))
                                        (let ((_%e198501198529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198500198526%_))))
                                          (let ((_%hd198502198532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198501198529%_)))
                                                (_%tl198503198534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198501198529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198503198534%_))
                                                ((lambda (_%g198493198537%_
                                                          _%g198494198538%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g198494198538%_)
                                                       (_%generate-simple198486%_
                                                        _%g198494198538%_
                                                        _%g198493198537%_)
                                                       (_%generate-values198487%_
                                                        _%g198494198538%_
                                                        _%g198493198537%_)))
                                                 _%hd198502198532%_
                                                 _%hd198499198524%_)
                                                (_%g198491198508%_
                                                 _%g198492198511%_))))
                                        (_%g198491198508%_
                                         _%g198492198511%_))))
                                (_%g198491198508%_ _%g198492198511%_))))
                        (_%g198491198508%_ _%g198492198511%_)))))
            (_%g198490198554%_ _%stx198483%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self198794%_ _%stx198795%_)
        (let ((_%compiled-body?198797%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self198794%_
           _%stx198795%_
           _%compiled-body?198797%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g203943_
        (let ((_g203944_ (let () (declare (not safe)) (##length _g203943_))))
          (cond ((let () (declare (not safe)) (##fx= _g203944_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g203943_))
                ((let () (declare (not safe)) (##fx= _g203944_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g203943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g203943_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self198063%_ _%stx198064%_)
        (letrec ((_%generate-values198066%_
                  (lambda (_%hd198309%_ _%body198310%_)
                    (let _%lp198312%_ ((_%rest198314%_ _%hd198309%_)
                                       (_%bind198315%_ '()))
                      (let* ((_%rest198316198324%_ _%rest198314%_)
                             (_%else198318198335%_
                              (lambda ()
                                (let ((_%bind198332%_ (reverse _%bind198315%_))
                                      (_%body198333%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self198063%_
                                          _%body198310%_))))
                                  (cons 'letrec*
                                        (cons _%bind198332%_
                                              (cons _%body198333%_ '()))))))
                             (_%K198320198469%_
                              (lambda (_%rest198338%_ _%hd-bind198339%_)
                                (let* ((_%__stx203185203186%_
                                        _%hd-bind198339%_)
                                       (_%g198342198367%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx203185203186%_)))))
                                  (let ((_%__kont203187203188%_
                                         (lambda (_%g198344198448%_
                                                  _%g198345198449%_)
                                           (let ((_%eid198463%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g198345198449%_)))
                                                 (_%expr198464%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self198063%_
                                                     _%g198344198448%_))))
                                             (_%lp198312%_
                                              _%rest198338%_
                                              (cons (cons _%eid198463%_
                                                          (cons _%expr198464%_
                                                                '()))
                                                    _%bind198315%_)))))
                                        (_%__kont203189203190%_
                                         (lambda (_%g198355198388%_
                                                  _%g198356198389%_)
                                           (let* ((_%vals198408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp198410%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values198412%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp198410%_
                                                    _%g198356198389%_
                                                    _%g198355198388%_))
                                                  (_%refs198414%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals198408%_
                                                    _%g198356198389%_))
                                                  (_%expr198416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self198063%_
                                                      _%g198355198388%_))))
                                             (_%lp198312%_
                                              _%rest198338%_
                                              (let ((__tmp203945
                                                     (cons (cons _%vals198408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp198410%_
                                                       (cons _%expr198416%_
                                                             '()))
                                                 '())
                                           (cons _%check-values198412%_
                                                 (cons _%tmp198410%_ '()))))
                               '()))
                   _%bind198315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp203945
                                                 _%refs198414%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx203185203186%_))
                                        (let ((_%e198346198424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx203185203186%_))))
                                          (let ((_%tl198348198429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198346198424%_)))
                                                (_%hd198347198427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198346198424%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd198347198427%_))
                                                (let ((_%e198349198432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198347198427%_))))
                                                  (let ((_%tl198351198437%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198349198432%_)))
                                                        (_%hd198350198435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198349198432%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198351198437%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198348198429%_))
                                                            (let ((_%e198352198440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198348198429%_))))
                      (let ((_%tl198354198445%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198352198440%_)))
                            (_%hd198353198443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198352198440%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198354198445%_))
                            (_%__kont203187203188%_
                             _%hd198353198443%_
                             _%hd198350198435%_)
                            (let ()
                              (declare (not safe))
                              (_%g198342198367%_)))))
                    (let () (declare (not safe)) (_%g198342198367%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl198348198429%_))
                    (let ((_%e198360198380%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198348198429%_))))
                      (let ((_%tl198362198385%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198360198380%_)))
                            (_%hd198361198383%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198360198380%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198362198385%_))
                            (_%__kont203189203190%_
                             _%hd198361198383%_
                             _%hd198347198427%_)
                            (let ()
                              (declare (not safe))
                              (_%g198342198367%_)))))
                    (let () (declare (not safe)) (_%g198342198367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl198348198429%_))
                                                    (let ((_%e198360198380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl198348198429%_))))
                                                      (let ((_%tl198362198385%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e198360198380%_)))
                    (_%hd198361198383%_
                     (let () (declare (not safe)) (##car _%e198360198380%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl198362198385%_))
                    (_%__kont203189203190%_
                     _%hd198361198383%_
                     _%hd198347198427%_)
                    (let () (declare (not safe)) (_%g198342198367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198342198367%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198342198367%_))))))))
                        (if (pair? _%rest198316198324%_)
                            (let ((_%hd198321198472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest198316198324%_)))
                                  (_%tl198322198474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest198316198324%_))))
                              (let* ((_%hd-bind198477%_ _%hd198321198472%_)
                                     (_%rest198479%_ _%tl198322198474%_))
                                (_%K198320198469%_
                                 _%rest198479%_
                                 _%hd-bind198477%_)))
                            (_%else198318198335%_))))))
                 (_%generate-letrec?198067%_
                  (lambda (_%hd198199%_)
                    (let _%lp198201%_ ((_%rest198203%_ _%hd198199%_))
                      (let* ((_%rest198204198212%_ _%rest198203%_)
                             (_%else198206198220%_ (lambda () '#t))
                             (_%K198208198297%_
                              (lambda (_%rest198223%_ _%hd-bind198224%_)
                                (let* ((_%g198226198243%_
                                        (lambda (_%g198227198240%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g198227198240%_))))
                                       (_%g198225198294%_
                                        (lambda (_%g198227198246%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g198227198246%_))
                                              (let ((_%e198230198248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g198227198246%_))))
                                                (let ((_%hd198231198251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198230198248%_)))
                                                      (_%tl198232198253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198230198248%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd198231198251%_))
                                                      (let ((_%e198233198256%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198231198251%_))))
                (let ((_%hd198234198259%_
                       (let () (declare (not safe)) (##car _%e198233198256%_)))
                      (_%tl198235198261%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198233198256%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198235198261%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198232198253%_))
                          (let ((_%e198236198264%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198232198253%_))))
                            (let ((_%hd198237198267%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198236198264%_)))
                                  (_%tl198238198269%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198236198264%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198238198269%_))
                                  ((lambda (_%g198228198272%_
                                            _%g198229198273%_)
                                     (if (_%is-lambda-expr?198068%_
                                          _%g198228198272%_)
                                         (_%lp198201%_ _%rest198223%_)
                                         '#f))
                                   _%hd198237198267%_
                                   _%hd198234198259%_)
                                  (_%g198226198243%_ _%g198227198246%_))))
                          (_%g198226198243%_ _%g198227198246%_))
                      (_%g198226198243%_ _%g198227198246%_))))
              (_%g198226198243%_ _%g198227198246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198226198243%_
                                               _%g198227198246%_)))))
                                  (_%g198225198294%_ _%hd-bind198224%_)))))
                        (if (pair? _%rest198204198212%_)
                            (let ((_%hd198209198300%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest198204198212%_)))
                                  (_%tl198210198302%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest198204198212%_))))
                              (let* ((_%hd-bind198305%_ _%hd198209198300%_)
                                     (_%rest198307%_ _%tl198210198302%_))
                                (_%K198208198297%_
                                 _%rest198307%_
                                 _%hd-bind198305%_)))
                            (_%else198206198220%_))))))
                 (_%is-lambda-expr?198068%_
                  (lambda (_%expr198136%_)
                    (let* ((_%__stx203229203230%_ _%expr198136%_)
                           (_%g198139198153%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx203229203230%_)))))
                      (let ((_%__kont203231203232%_
                             (lambda (_%g198141198181%_ _%g198142198182%_)
                               '#t))
                            (_%__kont203233203234%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx203229203230%_))
                            (let ((_%e198143198165%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx203229203230%_))))
                              (let ((_%tl198145198170%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198143198165%_)))
                                    (_%hd198144198168%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198143198165%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd198144198168%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd198144198168%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198145198170%_))
                                            (let ((_%e198146198173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl198145198170%_))))
                                              (let ((_%tl198148198178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198146198173%_)))
                                                    (_%hd198147198176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198146198173%_))))
                                                (_%__kont203231203232%_
                                                 _%tl198148198178%_
                                                 _%hd198147198176%_)))
                                            (_%__kont203233203234%_))
                                        (_%__kont203233203234%_))
                                    (_%__kont203233203234%_))))
                            (_%__kont203233203234%_)))))))
          (let* ((_%g198070198087%_
                  (lambda (_%g198071198084%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198071198084%_))))
                 (_%g198069198133%_
                  (lambda (_%g198071198090%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198071198090%_))
                        (let ((_%e198074198092%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198071198090%_))))
                          (let ((_%hd198075198095%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198074198092%_)))
                                (_%tl198076198097%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198074198092%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198076198097%_))
                                (let ((_%e198077198100%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198076198097%_))))
                                  (let ((_%hd198078198103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198077198100%_)))
                                        (_%tl198079198105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198077198100%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198079198105%_))
                                        (let ((_%e198080198108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198079198105%_))))
                                          (let ((_%hd198081198111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198080198108%_)))
                                                (_%tl198082198113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198080198108%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198082198113%_))
                                                ((lambda (_%g198072198116%_
                                                          _%g198073198117%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g198073198117%_)
                                                       (if (_%generate-letrec?198067%_
                                                            _%g198073198117%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self198063%_
                                                            'letrec
                                                            _%g198073198117%_
                                                            _%g198072198116%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self198063%_
                                                            'letrec*
                                                            _%g198073198117%_
                                                            _%g198072198116%_
                                                            '#f))
                                                       (_%generate-values198066%_
                                                        _%g198073198117%_
                                                        _%g198072198116%_)))
                                                 _%hd198081198111%_
                                                 _%hd198078198103%_)
                                                (_%g198070198087%_
                                                 _%g198071198090%_))))
                                        (_%g198070198087%_
                                         _%g198071198090%_))))
                                (_%g198070198087%_ _%g198071198090%_))))
                        (_%g198070198087%_ _%g198071198090%_)))))
            (_%g198069198133%_ _%stx198064%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd198000%_)
        (let _%lp198002%_ ((_%rest198004%_ _%hd198000%_))
          (let* ((_%rest198005198021%_ _%rest198004%_)
                 (_%else198008198029%_ (lambda () '#f)))
            (let ((_%K198011198042%_
                   (lambda (_%rest198040%_) (_%lp198002%_ _%rest198040%_)))
                  (_%K198010198034%_ (lambda () '#t)))
              (let ((_%try-match198007198037%_
                     (lambda ()
                       (if (null? _%rest198005198021%_)
                           (_%K198010198034%_)
                           (_%else198008198029%_)))))
                (if (pair? _%rest198005198021%_)
                    (let ((_%tl198013198047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest198005198021%_)))
                          (_%hd198012198045%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest198005198021%_))))
                      (if (pair? _%hd198012198045%_)
                          (let ((_%tl198015198052%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd198012198045%_)))
                                (_%hd198014198050%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd198012198045%_))))
                            (if (pair? _%hd198014198050%_)
                                (let ((_%tl198019198055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd198014198050%_))))
                                  (if (null? _%tl198019198055%_)
                                      (if (pair? _%tl198015198052%_)
                                          (let ((_%tl198017198058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl198015198052%_))))
                                            (if (null? _%tl198017198058%_)
                                                (let ((_%rest198061%_
                                                       _%tl198013198047%_))
                                                  (_%lp198002%_
                                                   _%rest198061%_))
                                                (_%else198008198029%_)))
                                          (_%else198008198029%_))
                                      (_%else198008198029%_)))
                                (_%else198008198029%_)))
                          (_%else198008198029%_)))
                    (_%try-match198007198037%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self197912%_
               _%form197913%_
               _%hd197914%_
               _%body197915%_
               _%compiled-body?197916%_)
        (letrec ((_%generate1197918%_
                  (lambda (_%bind197957%_)
                    (let* ((_%bind197958197969%_ _%bind197957%_)
                           (_%E197960197972%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind197958197969%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K197961197978%_
                            (lambda (_%expr197975%_ _%id197976%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id197976%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self197912%_
                                             _%expr197975%_))
                                          '())))))
                      (if (pair? _%bind197958197969%_)
                          (let ((_%hd197962197981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind197958197969%_)))
                                (_%tl197963197983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind197958197969%_))))
                            (if (pair? _%hd197962197981%_)
                                (let ((_%hd197966197986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd197962197981%_)))
                                      (_%tl197967197988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd197962197981%_))))
                                  (let ((_%id197991%_ _%hd197966197986%_))
                                    (if (null? _%tl197967197988%_)
                                        (if (pair? _%tl197963197983%_)
                                            (let ((_%hd197964197993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl197963197983%_)))
                                                  (_%tl197965197995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl197963197983%_))))
                                              (let ((_%expr197998%_
                                                     _%hd197964197993%_))
                                                (if (null? _%tl197965197995%_)
                                                    (_%K197961197978%_
                                                     _%expr197998%_
                                                     _%id197991%_)
                                                    (_%E197960197972%_))))
                                            (_%E197960197972%_))
                                        (_%E197960197972%_))))
                                (_%E197960197972%_)))
                          (_%E197960197972%_))))))
          (let* ((_%bind197920%_ (map _%generate1197918%_ _%hd197914%_))
                 (_%body197922%_
                  (if _%compiled-body?197916%_
                      _%body197915%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self197912%_ _%body197915%_))))
                 (_%body197954%_
                  (let* ((_%body197923197931%_ _%body197922%_)
                         (_%else197925197939%_
                          (lambda () (cons _%body197922%_ '())))
                         (_%K197927197944%_
                          (lambda (_%exprs197942%_) _%exprs197942%_)))
                    (if (pair? _%body197923197931%_)
                        (let ((_%hd197928197947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body197923197931%_)))
                              (_%tl197929197949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body197923197931%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd197928197947%_ 'begin))
                              (let ((_%exprs197952%_ _%tl197929197949%_))
                                (_%K197927197944%_ _%exprs197952%_))
                              (_%else197925197939%_)))
                        (_%else197925197939%_)))))
            (cons _%form197913%_ (cons _%bind197920%_ _%body197954%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self197812%_ _%stx197813%_)
        (letrec ((_%generate1197815%_
                  (lambda (_%datum197867%_)
                    (if (or (null? _%datum197867%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum197867%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum197867%_))
                            (eof-object? _%datum197867%_))
                        _%datum197867%_
                        (if (uninterned-symbol? _%datum197867%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum197867%_
                               '#t))
                            (if (pair? _%datum197867%_)
                                (cons (_%generate1197815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum197867%_)))
                                      (_%generate1197815%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum197867%_))))
                                (if (box? _%datum197867%_)
                                    (box (_%generate1197815%_
                                          (unbox _%datum197867%_)))
                                    (if (vector? _%datum197867%_)
                                        (vector-map
                                         _%generate1197815%_
                                         _%datum197867%_)
                                        (if (or (s8vector? _%datum197867%_)
                                                (u8vector? _%datum197867%_)
                                                (s16vector? _%datum197867%_)
                                                (u16vector? _%datum197867%_)
                                                (s32vector? _%datum197867%_)
                                                (u32vector? _%datum197867%_)
                                                (s64vector? _%datum197867%_)
                                                (u64vector? _%datum197867%_)
                                                (f32vector? _%datum197867%_)
                                                (f64vector? _%datum197867%_))
                                            _%datum197867%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx197813%_)))))))))))
          (let* ((_%g197817197830%_
                  (lambda (_%g197818197827%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197818197827%_))))
                 (_%g197816197864%_
                  (lambda (_%g197818197833%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197818197833%_))
                        (let ((_%e197820197835%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197818197833%_))))
                          (let ((_%hd197821197838%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197820197835%_)))
                                (_%tl197822197840%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197820197835%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197822197840%_))
                                (let ((_%e197823197843%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197822197840%_))))
                                  (let ((_%hd197824197846%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197823197843%_)))
                                        (_%tl197825197848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197823197843%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197825197848%_))
                                        ((lambda (_%g197819197851%_)
                                           (cons 'quote
                                                 (cons (_%generate1197815%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g197819197851%_)))
                                                       '())))
                                         _%hd197824197846%_)
                                        (_%g197817197830%_
                                         _%g197818197833%_))))
                                (_%g197817197830%_ _%g197818197833%_))))
                        (_%g197817197830%_ _%g197818197833%_)))))
            (_%g197816197864%_ _%stx197813%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self197259%_ _%stx197260%_)
        (letrec ((_%compile-call197262%_
                  (lambda (_%rator197549%_ _%rands197550%_)
                    (let ((_%rator197556%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self197259%_
                              _%rator197549%_)))
                          (_%rands197557%_
                           (map (lambda (_%g197551197553%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self197259%_
                                     _%g197551197553%_)))
                                _%rands197550%_)))
                      (let* ((_%__stx203276203277%_ _%rator197556%_)
                             (_%g197560197612%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx203276203277%_)))))
                        (let ((_%__kont203278203279%_
                               (lambda (_%g197562197732%_
                                        _%g197563197733%_
                                        _%g197564197734%_
                                        _%g197565197735%_)
                                 (if (let ((__tmp203948
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands197557%_)))
                                           (__tmp203946
                                            (length (let ((__tmp203947
                                                           (lambda (_%g197771197774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197772197776%_)
                     (cons _%g197771197774%_ _%g197772197776%_))))
              (declare (not safe))
              (foldr__0 __tmp203947 '() _%g197564197734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp203948 __tmp203946))
                                     (let* ((_%id197779%_ _%g197565197735%_)
                                            (_%args197788%_
                                             (let ((__tmp203949
                                                    (lambda (_%g197780197783%_
                                                             _%g197781197785%_)
                                                      (cons _%g197780197783%_
                                                            _%g197781197785%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp203949
                                                '()
                                                _%g197564197734%_)))
                                            (_%body197797%_
                                             (let ((__tmp203950
                                                    (lambda (_%g197789197792%_
                                                             _%g197790197794%_)
                                                      (cons _%g197789197792%_
                                                            _%g197790197794%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp203950
                                                '()
                                                _%g197563197733%_)))
                                            (_%init197799%_
                                             (map list
                                                  _%args197788%_
                                                  _%rands197557%_)))
                                       (cons 'let
                                             (cons _%id197779%_
                                                   (cons _%init197799%_
                                                         _%body197797%_))))
                                     (let ((__tmp203951
                                            (let ((__tmp203952
                                                   (lambda (_%g197801197804%_
                                                            _%g197802197806%_)
                                                     (cons _%g197801197804%_
                                                           _%g197802197806%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp203952
                                               '()
                                               _%g197564197734%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx197260%_
                                        __tmp203951
                                        _%rands197557%_)))))
                              (_%__kont203284203285%_
                               (lambda ()
                                 (cons _%rator197556%_ _%rands197557%_))))
                          (let ((_%__match203343203344%_
                                 (lambda (_%e197566197624%_
                                          _%hd197567197627%_
                                          _%tl197568197629%_
                                          _%e197569197632%_
                                          _%hd197570197635%_
                                          _%tl197571197637%_
                                          _%e197572197640%_
                                          _%hd197573197643%_
                                          _%tl197574197645%_
                                          _%e197575197648%_
                                          _%hd197576197651%_
                                          _%tl197577197653%_
                                          _%e197578197656%_
                                          _%hd197579197659%_
                                          _%tl197580197661%_
                                          _%e197581197664%_
                                          _%hd197582197667%_
                                          _%tl197583197669%_
                                          _%e197584197672%_
                                          _%hd197585197675%_
                                          _%tl197586197677%_
                                          _%__splice203280203281%_
                                          _%target197587197680%_
                                          _%tl197589197682%_)
                                   (letrec ((_%loop197590197685%_
                                             (lambda (_%hd197588197688%_
                                                      _%arg197594197690%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd197588197688%_))
                                                   (let ((_%e197591197692%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd197588197688%_))))
                                                     (let ((_%lp-tl197593197697%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e197591197692%_)))
                                                           (_%lp-hd197592197695%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e197591197692%_))))
                                                       (_%loop197590197685%_
                                                        _%lp-tl197593197697%_
                                                        (cons _%lp-hd197592197695%_
                                                              _%arg197594197690%_))))
                                                   (let ((_%arg197595197700%_
                                                          (reverse _%arg197594197690%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl197586197677%_))
                                                         (let ((_%__splice203282203283%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl197586197677%_
                           '0))))
                   (let ((_%tl197598197704%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice203282203283%_ '1)))
                         (_%target197596197702%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice203282203283%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl197598197704%_))
                         (letrec ((_%loop197599197707%_
                                   (lambda (_%hd197597197710%_
                                            _%body197603197712%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd197597197710%_))
                                         (let ((_%e197600197714%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd197597197710%_))))
                                           (let ((_%lp-tl197602197719%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197600197714%_)))
                                                 (_%lp-hd197601197717%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197600197714%_))))
                                             (_%loop197599197707%_
                                              _%lp-tl197602197719%_
                                              (cons _%lp-hd197601197717%_
                                                    _%body197603197712%_))))
                                         (let ((_%body197604197722%_
                                                (reverse _%body197603197712%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl197580197661%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl197574197645%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl197571197637%_))
                                                       (let ((_%e197605197724%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl197571197637%_))))
                 (let ((_%tl197607197729%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e197605197724%_)))
                       (_%hd197606197727%_
                        (let ()
                          (declare (not safe))
                          (##car _%e197605197724%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl197607197729%_))
                       (let ((_%g197562197732%_ _%hd197606197727%_)
                             (_%g197563197733%_ _%body197604197722%_)
                             (_%g197564197734%_ _%arg197595197700%_)
                             (_%g197565197735%_ _%hd197576197651%_))
                         (if (eq? _%g197565197735%_ _%g197562197732%_)
                             (_%__kont203278203279%_
                              _%g197562197732%_
                              _%g197563197733%_
                              _%g197564197734%_
                              _%g197565197735%_)
                             (_%__kont203284203285%_)))
                       (_%__kont203284203285%_))))
               (_%__kont203284203285%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont203284203285%_))
                                               (_%__kont203284203285%_)))))))
                           (_%loop197599197707%_ _%target197596197702%_ '()))
                         (_%__kont203284203285%_))))
                 (_%__kont203284203285%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop197590197685%_
                                      _%target197587197680%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx203276203277%_))
                                (let ((_%e197566197624%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx203276203277%_))))
                                  (let ((_%tl197568197629%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197566197624%_)))
                                        (_%hd197567197627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197566197624%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197567197627%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd197567197627%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197568197629%_))
                                                (let ((_%e197569197632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197568197629%_))))
                                                  (let ((_%tl197571197637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197569197632%_)))
                                                        (_%hd197570197635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197569197632%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197570197635%_))
                                                        (let ((_%e197572197640%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197570197635%_))))
                  (let ((_%tl197574197645%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197572197640%_)))
                        (_%hd197573197643%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197572197640%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd197573197643%_))
                        (let ((_%e197575197648%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd197573197643%_))))
                          (let ((_%tl197577197653%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197575197648%_)))
                                (_%hd197576197651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197575197648%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197577197653%_))
                                (let ((_%e197578197656%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197577197653%_))))
                                  (let ((_%tl197580197661%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197578197656%_)))
                                        (_%hd197579197659%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197578197656%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd197579197659%_))
                                        (let ((_%e197581197664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197579197659%_))))
                                          (let ((_%tl197583197669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197581197664%_)))
                                                (_%hd197582197667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197581197664%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd197582197667%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd197582197667%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl197583197669%_))
                                                        (let ((_%e197584197672%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl197583197669%_))))
                  (let ((_%tl197586197677%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197584197672%_)))
                        (_%hd197585197675%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197584197672%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd197585197675%_))
                        (let ((_%__splice203280203281%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd197585197675%_
                                  '0))))
                          (let ((_%tl197589197682%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice203280203281%_ '1)))
                                (_%target197587197680%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice203280203281%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197589197682%_))
                                (_%__match203343203344%_
                                 _%e197566197624%_
                                 _%hd197567197627%_
                                 _%tl197568197629%_
                                 _%e197569197632%_
                                 _%hd197570197635%_
                                 _%tl197571197637%_
                                 _%e197572197640%_
                                 _%hd197573197643%_
                                 _%tl197574197645%_
                                 _%e197575197648%_
                                 _%hd197576197651%_
                                 _%tl197577197653%_
                                 _%e197578197656%_
                                 _%hd197579197659%_
                                 _%tl197580197661%_
                                 _%e197581197664%_
                                 _%hd197582197667%_
                                 _%tl197583197669%_
                                 _%e197584197672%_
                                 _%hd197585197675%_
                                 _%tl197586197677%_
                                 _%__splice203280203281%_
                                 _%target197587197680%_
                                 _%tl197589197682%_)
                                (_%__kont203284203285%_))))
                        (_%__kont203284203285%_))))
                (_%__kont203284203285%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont203284203285%_))
                                                (_%__kont203284203285%_))))
                                        (_%__kont203284203285%_))))
                                (_%__kont203284203285%_))))
                        (_%__kont203284203285%_))))
                (_%__kont203284203285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont203284203285%_))
                                            (_%__kont203284203285%_))
                                        (_%__kont203284203285%_))))
                                (_%__kont203284203285%_)))))))))
          (let* ((_%g197264197287%_
                  (lambda (_%g197265197284%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197265197284%_))))
                 (_%g197263197546%_
                  (lambda (_%g197265197290%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197265197290%_))
                        (let ((_%e197268197292%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197265197290%_))))
                          (let ((_%hd197269197295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197268197292%_)))
                                (_%tl197270197297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197268197292%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197270197297%_))
                                (let ((_%e197271197300%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197270197297%_))))
                                  (let ((_%hd197272197303%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197271197300%_)))
                                        (_%tl197273197305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197271197300%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl197273197305%_))
                                        (let ((_g203953_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl197273197305%_
                                                  '0))))
                                          (begin
                                            (let ((_g203954_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g203953_)
                                                         (##values-length
                                                          _g203953_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g203954_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g203954_)))
                                            (let ((_%target197274197308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g203953_
                                                      0)))
                                                  (_%tl197276197310%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g203953_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197276197310%_))
                                                  (letrec ((_%loop197277197313%_
                                                            (lambda (_%hd197275197316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand197281197318%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd197275197316%_))
                          (let ((_%e197278197320%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197275197316%_))))
                            (let ((_%lp-hd197279197323%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197278197320%_)))
                                  (_%lp-tl197280197325%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197278197320%_))))
                              (_%loop197277197313%_
                               _%lp-tl197280197325%_
                               (cons _%lp-hd197279197323%_
                                     _%rand197281197318%_))))
                          (let ((_%rand197282197328%_
                                 (reverse _%rand197281197318%_)))
                            ((lambda (_%g197266197330%_ _%g197267197331%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call197262%_
                                    _%g197267197331%_
                                    (let ((__tmp203955
                                           (lambda (_%g197348197351%_
                                                    _%g197349197353%_)
                                             (cons _%g197348197351%_
                                                   _%g197349197353%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp203955
                                       '()
                                       _%g197266197330%_)))
                                   (let* ((_%__stx203392203393%_
                                           _%g197267197331%_)
                                          (_%g197357197369%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx203392203393%_)))))
                                     (let ((_%__kont203394203395%_
                                            (lambda ()
                                              (let ((_%f197406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self197259%_
                                                        _%g197267197331%_))))
                                                (if (and (let ((__tmp203956
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f197406%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp203956))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f197406%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp197408%_ ((_%rest197411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp203958
                                                (lambda (_%g197528197531%_
                                                         _%g197529197533%_)
                                                  (cons _%g197528197531%_
                                                        _%g197529197533%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp203958
                                            '()
                                            _%g197266197330%_))))
                               (_%bind197413%_ '())
                               (_%args197414%_ '()))
              (let* ((_%rest197415197423%_ _%rest197411%_)
                     (_%else197417197431%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind197413%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f197406%_
                                                      _%args197414%_)
                                                '()))))))
                     (_%K197419197517%_
                      (lambda (_%rest197434%_ _%e197435%_)
                        (let* ((_%__stx203346203347%_ _%e197435%_)
                               (_%g197440197458%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx203346203347%_)))))
                          (let ((_%__kont203348203349%_
                                 (lambda ()
                                   (_%lp197408%_
                                    _%rest197434%_
                                    _%bind197413%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e197435%_))
                                          _%args197414%_))))
                                (_%__kont203350203351%_
                                 (lambda ()
                                   (_%lp197408%_
                                    _%rest197434%_
                                    _%bind197413%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e197435%_))
                                          _%args197414%_))))
                                (_%__kont203352203353%_
                                 (lambda ()
                                   (let ((_%tmp197465%_
                                          (let ((__tmp203957
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp203957))))
                                     (_%lp197408%_
                                      _%rest197434%_
                                      (cons (cons _%tmp197465%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e197435%_))
                                                        '()))
                                            _%bind197413%_)
                                      (cons _%tmp197465%_ _%args197414%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx203346203347%_))
                                (let ((_%e197442197496%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx203346203347%_))))
                                  (let ((_%tl197444197501%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197442197496%_)))
                                        (_%hd197443197499%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197442197496%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197443197499%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd197443197499%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197444197501%_))
                                                (let ((_%e197445197504%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197444197501%_))))
                                                  (let ((_%tl197447197509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197445197504%_)))
                                                        (_%hd197446197507%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197445197504%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197447197509%_))
                                                        (_%__kont203348203349%_)
                                                        (_%__kont203352203353%_))))
                                                (_%__kont203352203353%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd197443197499%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197444197501%_))
                                                    (let ((_%e197451197481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197444197501%_))))
                                                      (let ((_%tl197453197486%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197451197481%_)))
                    (_%hd197452197484%_
                     (let () (declare (not safe)) (##car _%e197451197481%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197453197486%_))
                    (_%__kont203350203351%_)
                    (_%__kont203352203353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont203352203353%_))
                                                (_%__kont203352203353%_)))
                                        (_%__kont203352203353%_))))
                                (_%__kont203352203353%_)))))))
                (if (pair? _%rest197415197423%_)
                    (let ((_%hd197420197520%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest197415197423%_)))
                          (_%tl197421197522%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest197415197423%_))))
                      (let* ((_%e197525%_ _%hd197420197520%_)
                             (_%rest197527%_ _%tl197421197522%_))
                        (_%K197419197517%_ _%rest197527%_ _%e197525%_)))
                    (_%else197417197431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call197262%_
                                                     _%g197267197331%_
                                                     (let ((__tmp203959
                                                            (lambda (_%g197535197538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g197536197540%_)
                      (cons _%g197535197538%_ _%g197536197540%_))))
               (declare (not safe))
               (foldr__0 __tmp203959 '() _%g197266197330%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont203396203397%_
                                            (lambda ()
                                              (_%compile-call197262%_
                                               _%g197267197331%_
                                               (let ((__tmp203960
                                                      (lambda (_%g197375197378%_
                                                               _%g197376197380%_)
                                                        (cons _%g197375197378%_
                                                              _%g197376197380%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp203960
                                                  '()
                                                  _%g197266197330%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx203392203393%_))
                                           (let ((_%e197359197388%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx203392203393%_))))
                                             (let ((_%tl197361197393%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197359197388%_)))
                                                   (_%hd197360197391%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197359197388%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd197360197391%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd197360197391%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl197361197393%_))
                                                           (let ((_%e197362197396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl197361197393%_))))
                     (let ((_%tl197364197401%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e197362197396%_)))
                           (_%hd197363197399%_
                            (let ()
                              (declare (not safe))
                              (##car _%e197362197396%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl197364197401%_))
                           (_%__kont203394203395%_)
                           (_%__kont203396203397%_))))
                   (_%__kont203396203397%_))
               (_%__kont203396203397%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont203396203397%_))))
                                           (_%__kont203396203397%_))))))
                             _%rand197282197328%_
                             _%hd197272197303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop197277197313%_
                                                     _%target197274197308%_
                                                     '()))
                                                  (_%g197264197287%_
                                                   _%g197265197290%_)))))
                                        (_%g197264197287%_
                                         _%g197265197290%_))))
                                (_%g197264197287%_ _%g197265197290%_))))
                        (_%g197264197287%_ _%g197265197290%_)))))
            (_%g197263197546%_ _%stx197260%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self197004%_ _%stx197005%_)
        (let* ((_%__stx203464203465%_ _%stx197005%_)
               (_%g197008197037%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203464203465%_)))))
          (let ((_%__kont203466203467%_
                 (lambda (_%g197010197103%_ _%g197011197104%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self197004%_
                        _%stx197005%_)
                       (let ((_%f197126%_
                              (let ((__tmp203961
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g197011197104%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self197004%_
                                 __tmp203961))))
                         (let _%lp197128%_ ((_%rest197131%_
                                             (reverse (let ((__tmp203963
                                                             (lambda (_%g197248197251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197249197253%_)
                       (cons _%g197248197251%_ _%g197249197253%_))))
                (declare (not safe))
                (foldr__0 __tmp203963 '() _%g197010197103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind197133%_ '())
                                            (_%args197134%_ '()))
                           (let* ((_%rest197135197143%_ _%rest197131%_)
                                  (_%else197137197151%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind197133%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f197126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args197134%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K197139197237%_
                                   (lambda (_%rest197154%_ _%e197155%_)
                                     (let* ((_%__stx203418203419%_ _%e197155%_)
                                            (_%g197160197178%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx203418203419%_)))))
                                       (let ((_%__kont203420203421%_
                                              (lambda ()
                                                (_%lp197128%_
                                                 _%rest197154%_
                                                 _%bind197133%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e197155%_))
                                                       _%args197134%_))))
                                             (_%__kont203422203423%_
                                              (lambda ()
                                                (_%lp197128%_
                                                 _%rest197154%_
                                                 _%bind197133%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e197155%_))
                                                       _%args197134%_))))
                                             (_%__kont203424203425%_
                                              (lambda ()
                                                (let ((_%tmp197185%_
                                                       (let ((__tmp203962
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp203962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp197128%_
                                                   _%rest197154%_
                                                   (cons (cons _%tmp197185%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e197155%_))
                             '()))
                 _%bind197133%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp197185%_
                                                         _%args197134%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx203418203419%_))
                                             (let ((_%e197162197216%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx203418203419%_))))
                                               (let ((_%tl197164197221%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e197162197216%_)))
                                                     (_%hd197163197219%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e197162197216%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd197163197219%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd197163197219%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197164197221%_))
                     (let ((_%e197165197224%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197164197221%_))))
                       (let ((_%tl197167197229%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197165197224%_)))
                             (_%hd197166197227%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197165197224%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197167197229%_))
                             (_%__kont203420203421%_)
                             (_%__kont203424203425%_))))
                     (_%__kont203424203425%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd197163197219%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl197164197221%_))
                         (let ((_%e197171197201%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl197164197221%_))))
                           (let ((_%tl197173197206%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197171197201%_)))
                                 (_%hd197172197204%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197171197201%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl197173197206%_))
                                 (_%__kont203422203423%_)
                                 (_%__kont203424203425%_))))
                         (_%__kont203424203425%_))
                     (_%__kont203424203425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont203424203425%_))))
                                             (_%__kont203424203425%_)))))))
                             (if (pair? _%rest197135197143%_)
                                 (let ((_%hd197140197240%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest197135197143%_)))
                                       (_%tl197141197242%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest197135197143%_))))
                                   (let* ((_%e197245%_ _%hd197140197240%_)
                                          (_%rest197247%_ _%tl197141197242%_))
                                     (_%K197139197237%_
                                      _%rest197247%_
                                      _%e197245%_)))
                                 (_%else197137197151%_))))))))
                (_%__kont203470203471%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self197004%_ _%stx197005%_))))
            (let ((_%__match203509203510%_
                   (lambda (_%e197012197049%_
                            _%hd197013197052%_
                            _%tl197014197054%_
                            _%e197015197057%_
                            _%hd197016197060%_
                            _%tl197017197062%_
                            _%e197018197065%_
                            _%hd197019197068%_
                            _%tl197020197070%_
                            _%e197021197073%_
                            _%hd197022197076%_
                            _%tl197023197078%_
                            _%__splice203468203469%_
                            _%target197024197081%_
                            _%tl197026197083%_)
                     (letrec ((_%loop197027197086%_
                               (lambda (_%hd197025197089%_
                                        _%rand197031197091%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197025197089%_))
                                     (let ((_%e197028197093%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd197025197089%_))))
                                       (let ((_%lp-tl197030197098%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197028197093%_)))
                                             (_%lp-hd197029197096%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197028197093%_))))
                                         (_%loop197027197086%_
                                          _%lp-tl197030197098%_
                                          (cons _%lp-hd197029197096%_
                                                _%rand197031197091%_))))
                                     (let ((_%rand197032197101%_
                                            (reverse _%rand197031197091%_)))
                                       (_%__kont203466203467%_
                                        _%rand197032197101%_
                                        _%hd197022197076%_))))))
                       (_%loop197027197086%_ _%target197024197081%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203464203465%_))
                  (let ((_%e197012197049%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx203464203465%_))))
                    (let ((_%tl197014197054%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197012197049%_)))
                          (_%hd197013197052%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197012197049%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197014197054%_))
                          (let ((_%e197015197057%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197014197054%_))))
                            (let ((_%tl197017197062%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197015197057%_)))
                                  (_%hd197016197060%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197015197057%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197016197060%_))
                                  (let ((_%e197018197065%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197016197060%_))))
                                    (let ((_%tl197020197070%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197018197065%_)))
                                          (_%hd197019197068%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197018197065%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197019197068%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197019197068%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197020197070%_))
                                                  (let ((_%e197021197073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197020197070%_))))
                                                    (let ((_%tl197023197078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197021197073%_)))
                                                          (_%hd197022197076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197021197073%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197023197078%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197017197062%_))
                      (let ((_%__splice203468203469%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197017197062%_
                                '0))))
                        (let ((_%tl197026197083%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203468203469%_ '1)))
                              (_%target197024197081%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203468203469%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197026197083%_))
                              (_%__match203509203510%_
                               _%e197012197049%_
                               _%hd197013197052%_
                               _%tl197014197054%_
                               _%e197015197057%_
                               _%hd197016197060%_
                               _%tl197017197062%_
                               _%e197018197065%_
                               _%hd197019197068%_
                               _%tl197020197070%_
                               _%e197021197073%_
                               _%hd197022197076%_
                               _%tl197023197078%_
                               _%__splice203468203469%_
                               _%target197024197081%_
                               _%tl197026197083%_)
                              (_%__kont203470203471%_))))
                      (_%__kont203470203471%_))
                  (_%__kont203470203471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont203470203471%_))
                                              (_%__kont203470203471%_))
                                          (_%__kont203470203471%_))))
                                  (_%__kont203470203471%_))))
                          (_%__kont203470203471%_))))
                  (_%__kont203470203471%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self196816%_ _%stx196817%_)
        (letrec ((_%simplify196819%_
                  (lambda (_%code196904%_)
                    (let* ((_%code196905196923%_ _%code196904%_)
                           (_%else196907196931%_ (lambda () _%code196904%_))
                           (_%K196909196967%_
                            (lambda (_%expr196934%_ _%test196935%_)
                              (let* ((_%expr196936196944%_ _%expr196934%_)
                                     (_%else196938196952%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test196935%_
                                                    (cons _%expr196934%_
                                                          '())))))
                                     (_%K196940196957%_
                                      (lambda (_%exprs196955%_)
                                        (cons 'and
                                              (cons _%test196935%_
                                                    _%exprs196955%_)))))
                                (if (pair? _%expr196936196944%_)
                                    (let ((_%hd196941196960%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr196936196944%_)))
                                          (_%tl196942196962%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr196936196944%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd196941196960%_ 'and))
                                          (let ((_%exprs196965%_
                                                 _%tl196942196962%_))
                                            (_%K196940196957%_
                                             _%exprs196965%_))
                                          (_%else196938196952%_)))
                                    (_%else196938196952%_))))))
                      (if (pair? _%code196905196923%_)
                          (let ((_%hd196910196970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code196905196923%_)))
                                (_%tl196911196972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code196905196923%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd196910196970%_ 'if))
                                (if (pair? _%tl196911196972%_)
                                    (let ((_%hd196912196975%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl196911196972%_)))
                                          (_%tl196913196977%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl196911196972%_))))
                                      (let ((_%test196980%_
                                             _%hd196912196975%_))
                                        (if (pair? _%tl196913196977%_)
                                            (let ((_%hd196914196982%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl196913196977%_)))
                                                  (_%tl196915196984%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl196913196977%_))))
                                              (let ((_%expr196987%_
                                                     _%hd196914196982%_))
                                                (if (pair? _%tl196915196984%_)
                                                    (let ((_%hd196916196989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl196915196984%_)))
                                                          (_%tl196917196991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl196915196984%_))))
                                                      (if (pair? _%hd196916196989%_)
                                                          (let ((_%hd196918196994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd196916196989%_)))
                        (_%tl196919196996%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd196916196989%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd196918196994%_ 'quote))
                        (if (pair? _%tl196919196996%_)
                            (let ((_%hd196920196999%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl196919196996%_)))
                                  (_%tl196921197001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl196919196996%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd196920196999%_ '#f))
                                  (if (null? _%tl196921197001%_)
                                      (if (null? _%tl196917196991%_)
                                          (_%K196909196967%_
                                           _%expr196987%_
                                           _%test196980%_)
                                          (_%else196907196931%_))
                                      (_%else196907196931%_))
                                  (_%else196907196931%_)))
                            (_%else196907196931%_))
                        (_%else196907196931%_)))
                  (_%else196907196931%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else196907196931%_))))
                                            (_%else196907196931%_))))
                                    (_%else196907196931%_))
                                (_%else196907196931%_)))
                          (_%else196907196931%_))))))
          (let* ((_%g196821196842%_
                  (lambda (_%g196822196839%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196822196839%_))))
                 (_%g196820196901%_
                  (lambda (_%g196822196845%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196822196845%_))
                        (let ((_%e196826196847%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196822196845%_))))
                          (let ((_%hd196827196850%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196826196847%_)))
                                (_%tl196828196852%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196826196847%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196828196852%_))
                                (let ((_%e196829196855%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196828196852%_))))
                                  (let ((_%hd196830196858%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196829196855%_)))
                                        (_%tl196831196860%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196829196855%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196831196860%_))
                                        (let ((_%e196832196863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl196831196860%_))))
                                          (let ((_%hd196833196866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196832196863%_)))
                                                (_%tl196834196868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196832196863%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196834196868%_))
                                                (let ((_%e196835196871%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196834196868%_))))
                                                  (let ((_%hd196836196874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196835196871%_)))
                                                        (_%tl196837196876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196835196871%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196837196876%_))
                                                        ((lambda (_%g196823196879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196824196880%_
                          _%g196825196881%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify196819%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self196816%_
                                       _%g196825196881%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self196816%_
                                             _%g196824196880%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self196816%_
                                                   _%g196823196879%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp203964
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196816%_
                                               _%g196825196881%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp203964
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self196816%_
                                            _%g196824196880%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self196816%_
                                                  _%g196823196879%_))
                                               '()))))))
                 _%hd196836196874%_
                 _%hd196833196866%_
                 _%hd196830196858%_)
                (_%g196821196842%_ _%g196822196845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g196821196842%_
                                                 _%g196822196845%_))))
                                        (_%g196821196842%_
                                         _%g196822196845%_))))
                                (_%g196821196842%_ _%g196822196845%_))))
                        (_%g196821196842%_ _%g196822196845%_)))))
            (_%g196820196901%_ _%stx196817%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self196764%_ _%stx196765%_)
        (let* ((_%g196767196780%_
                (lambda (_%g196768196777%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196768196777%_))))
               (_%g196766196813%_
                (lambda (_%g196768196783%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196768196783%_))
                      (let ((_%e196770196785%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196768196783%_))))
                        (let ((_%hd196771196788%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196770196785%_)))
                              (_%tl196772196790%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196770196785%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196772196790%_))
                              (let ((_%e196773196793%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196772196790%_))))
                                (let ((_%hd196774196796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196773196793%_)))
                                      (_%tl196775196798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196773196793%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196775196798%_))
                                      ((lambda (_%g196769196801%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g196769196801%_)))
                                       _%hd196774196796%_)
                                      (_%g196767196780%_ _%g196768196783%_))))
                              (_%g196767196780%_ _%g196768196783%_))))
                      (_%g196767196780%_ _%g196768196783%_)))))
          (_%g196766196813%_ _%stx196765%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self196696%_ _%stx196697%_)
        (let* ((_%g196699196716%_
                (lambda (_%g196700196713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196700196713%_))))
               (_%g196698196761%_
                (lambda (_%g196700196719%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196700196719%_))
                      (let ((_%e196703196721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196700196719%_))))
                        (let ((_%hd196704196724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196703196721%_)))
                              (_%tl196705196726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196703196721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196705196726%_))
                              (let ((_%e196706196729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196705196726%_))))
                                (let ((_%hd196707196732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196706196729%_)))
                                      (_%tl196708196734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196706196729%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196708196734%_))
                                      (let ((_%e196709196737%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196708196734%_))))
                                        (let ((_%hd196710196740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196709196737%_)))
                                              (_%tl196711196742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196709196737%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196711196742%_))
                                              ((lambda (_%g196701196745%_
                                                        _%g196702196746%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g196702196746%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self196696%_
                              _%g196701196745%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196710196740%_
                                               _%hd196707196732%_)
                                              (_%g196699196716%_
                                               _%g196700196719%_))))
                                      (_%g196699196716%_ _%g196700196719%_))))
                              (_%g196699196716%_ _%g196700196719%_))))
                      (_%g196699196716%_ _%g196700196719%_)))))
          (_%g196698196761%_ _%stx196697%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self196507%_ _%stx196508%_)
        (let* ((_%g196510196527%_
                (lambda (_%g196511196524%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196511196524%_))))
               (_%g196509196693%_
                (lambda (_%g196511196530%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196511196530%_))
                      (let ((_%e196514196532%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196511196530%_))))
                        (let ((_%hd196515196535%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196514196532%_)))
                              (_%tl196516196537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196514196532%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196516196537%_))
                              (let ((_%e196517196540%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196516196537%_))))
                                (let ((_%hd196518196543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196517196540%_)))
                                      (_%tl196519196545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196517196540%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196519196545%_))
                                      (let ((_%e196520196548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196519196545%_))))
                                        (let ((_%hd196521196551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196520196548%_)))
                                              (_%tl196522196553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196520196548%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196522196553%_))
                                              ((lambda (_%g196512196556%_
                                                        _%g196513196557%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self196507%_ _%g196512196556%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self196507%_
                                  _%g196513196557%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp196572%_ ((_%rest196575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g196513196557%_
                                       (cons _%g196512196556%_ '())))
                                (_%bind196577%_ '())
                                (_%args196578%_ '()))
               (let* ((_%rest196579196587%_ _%rest196575%_)
                      (_%else196581196595%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind196577%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args196578%_)
                                                 '()))))))
                      (_%K196583196681%_
                       (lambda (_%rest196598%_ _%e196599%_)
                         (let* ((_%__stx203512203513%_ _%e196599%_)
                                (_%g196604196622%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx203512203513%_)))))
                           (let ((_%__kont203514203515%_
                                  (lambda ()
                                    (_%lp196572%_
                                     _%rest196598%_
                                     _%bind196577%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e196599%_))
                                           _%args196578%_))))
                                 (_%__kont203516203517%_
                                  (lambda ()
                                    (_%lp196572%_
                                     _%rest196598%_
                                     _%bind196577%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e196599%_))
                                           _%args196578%_))))
                                 (_%__kont203518203519%_
                                  (lambda ()
                                    (let ((_%tmp196629%_
                                           (let ((__tmp203965
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp203965))))
                                      (_%lp196572%_
                                       _%rest196598%_
                                       (cons (cons _%tmp196629%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e196599%_))
                                                         '()))
                                             _%bind196577%_)
                                       (cons _%tmp196629%_ _%args196578%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx203512203513%_))
                                 (let ((_%e196606196660%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx203512203513%_))))
                                   (let ((_%tl196608196665%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e196606196660%_)))
                                         (_%hd196607196663%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e196606196660%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd196607196663%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd196607196663%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl196608196665%_))
                                                 (let ((_%e196609196668%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl196608196665%_))))
                                                   (let ((_%tl196611196673%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e196609196668%_)))
                                                         (_%hd196610196671%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e196609196668%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl196611196673%_))
                                                         (_%__kont203514203515%_)
                                                         (_%__kont203518203519%_))))
                                                 (_%__kont203518203519%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd196607196663%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl196608196665%_))
                                                     (let ((_%e196615196645%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl196608196665%_))))
                                                       (let ((_%tl196617196650%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e196615196645%_)))
                     (_%hd196616196648%_
                      (let () (declare (not safe)) (##car _%e196615196645%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196617196650%_))
                     (_%__kont203516203517%_)
                     (_%__kont203518203519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont203518203519%_))
                                                 (_%__kont203518203519%_)))
                                         (_%__kont203518203519%_))))
                                 (_%__kont203518203519%_)))))))
                 (if (pair? _%rest196579196587%_)
                     (let ((_%hd196584196684%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest196579196587%_)))
                           (_%tl196585196686%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest196579196587%_))))
                       (let* ((_%e196689%_ _%hd196584196684%_)
                              (_%rest196691%_ _%tl196585196686%_))
                         (_%K196583196681%_ _%rest196691%_ _%e196689%_)))
                     (_%else196581196595%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196521196551%_
                                               _%hd196518196543%_)
                                              (_%g196510196527%_
                                               _%g196511196530%_))))
                                      (_%g196510196527%_ _%g196511196530%_))))
                              (_%g196510196527%_ _%g196511196530%_))))
                      (_%g196510196527%_ _%g196511196530%_)))))
          (_%g196509196693%_ _%stx196508%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self196318%_ _%stx196319%_)
        (let* ((_%g196321196338%_
                (lambda (_%g196322196335%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196322196335%_))))
               (_%g196320196504%_
                (lambda (_%g196322196341%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196322196341%_))
                      (let ((_%e196325196343%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196322196341%_))))
                        (let ((_%hd196326196346%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196325196343%_)))
                              (_%tl196327196348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196325196343%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196327196348%_))
                              (let ((_%e196328196351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196327196348%_))))
                                (let ((_%hd196329196354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196328196351%_)))
                                      (_%tl196330196356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196328196351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196330196356%_))
                                      (let ((_%e196331196359%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196330196356%_))))
                                        (let ((_%hd196332196362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196331196359%_)))
                                              (_%tl196333196364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196331196359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196333196364%_))
                                              ((lambda (_%g196323196367%_
                                                        _%g196324196368%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self196318%_ _%g196323196367%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self196318%_
                                  _%g196324196368%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp196383%_ ((_%rest196386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g196324196368%_
                                       (cons _%g196323196367%_ '())))
                                (_%bind196388%_ '())
                                (_%args196389%_ '()))
               (let* ((_%rest196390196398%_ _%rest196386%_)
                      (_%else196392196406%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind196388%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args196389%_)
                                                 '()))))))
                      (_%K196394196492%_
                       (lambda (_%rest196409%_ _%e196410%_)
                         (let* ((_%__stx203558203559%_ _%e196410%_)
                                (_%g196415196433%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx203558203559%_)))))
                           (let ((_%__kont203560203561%_
                                  (lambda ()
                                    (_%lp196383%_
                                     _%rest196409%_
                                     _%bind196388%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e196410%_))
                                           _%args196389%_))))
                                 (_%__kont203562203563%_
                                  (lambda ()
                                    (_%lp196383%_
                                     _%rest196409%_
                                     _%bind196388%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e196410%_))
                                           _%args196389%_))))
                                 (_%__kont203564203565%_
                                  (lambda ()
                                    (let ((_%tmp196440%_
                                           (let ((__tmp203966
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp203966))))
                                      (_%lp196383%_
                                       _%rest196409%_
                                       (cons (cons _%tmp196440%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e196410%_))
                                                         '()))
                                             _%bind196388%_)
                                       (cons _%tmp196440%_ _%args196389%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx203558203559%_))
                                 (let ((_%e196417196471%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx203558203559%_))))
                                   (let ((_%tl196419196476%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e196417196471%_)))
                                         (_%hd196418196474%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e196417196471%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd196418196474%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd196418196474%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl196419196476%_))
                                                 (let ((_%e196420196479%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl196419196476%_))))
                                                   (let ((_%tl196422196484%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e196420196479%_)))
                                                         (_%hd196421196482%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e196420196479%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl196422196484%_))
                                                         (_%__kont203560203561%_)
                                                         (_%__kont203564203565%_))))
                                                 (_%__kont203564203565%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd196418196474%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl196419196476%_))
                                                     (let ((_%e196426196456%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl196419196476%_))))
                                                       (let ((_%tl196428196461%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e196426196456%_)))
                     (_%hd196427196459%_
                      (let () (declare (not safe)) (##car _%e196426196456%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196428196461%_))
                     (_%__kont203562203563%_)
                     (_%__kont203564203565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont203564203565%_))
                                                 (_%__kont203564203565%_)))
                                         (_%__kont203564203565%_))))
                                 (_%__kont203564203565%_)))))))
                 (if (pair? _%rest196390196398%_)
                     (let ((_%hd196395196495%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest196390196398%_)))
                           (_%tl196396196497%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest196390196398%_))))
                       (let* ((_%e196500%_ _%hd196395196495%_)
                              (_%rest196502%_ _%tl196396196497%_))
                         (_%K196394196492%_ _%rest196502%_ _%e196500%_)))
                     (_%else196392196406%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196332196362%_
                                               _%hd196329196354%_)
                                              (_%g196321196338%_
                                               _%g196322196341%_))))
                                      (_%g196321196338%_ _%g196322196341%_))))
                              (_%g196321196338%_ _%g196322196341%_))))
                      (_%g196321196338%_ _%g196322196341%_)))))
          (_%g196320196504%_ _%stx196319%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self196234%_ _%stx196235%_)
        (let* ((_%g196237196258%_
                (lambda (_%g196238196255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196238196255%_))))
               (_%g196236196315%_
                (lambda (_%g196238196261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196238196261%_))
                      (let ((_%e196242196263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196238196261%_))))
                        (let ((_%hd196243196266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196242196263%_)))
                              (_%tl196244196268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196242196263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196244196268%_))
                              (let ((_%e196245196271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196244196268%_))))
                                (let ((_%hd196246196274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196245196271%_)))
                                      (_%tl196247196276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196245196271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196247196276%_))
                                      (let ((_%e196248196279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196247196276%_))))
                                        (let ((_%hd196249196282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196248196279%_)))
                                              (_%tl196250196284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196248196279%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196250196284%_))
                                              (let ((_%e196251196287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196250196284%_))))
                                                (let ((_%hd196252196290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196251196287%_)))
                                                      (_%tl196253196292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196251196287%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196253196292%_))
                                                      ((lambda (_%g196239196295%_
                                                                _%g196240196296%_
                                                                _%g196241196297%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self196234%_
                                _%g196239196295%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self196234%_
                                      _%g196240196296%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self196234%_
                                            _%g196241196297%_))
                                         (cons ''#f '()))))))
               _%hd196252196290%_
               _%hd196249196282%_
               _%hd196246196274%_)
              (_%g196237196258%_ _%g196238196261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196237196258%_
                                               _%g196238196261%_))))
                                      (_%g196237196258%_ _%g196238196261%_))))
                              (_%g196237196258%_ _%g196238196261%_))))
                      (_%g196237196258%_ _%g196238196261%_)))))
          (_%g196236196315%_ _%stx196235%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self196134%_ _%stx196135%_)
        (let* ((_%g196137196162%_
                (lambda (_%g196138196159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196138196159%_))))
               (_%g196136196231%_
                (lambda (_%g196138196165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196138196165%_))
                      (let ((_%e196143196167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196138196165%_))))
                        (let ((_%hd196144196170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196143196167%_)))
                              (_%tl196145196172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196143196167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196145196172%_))
                              (let ((_%e196146196175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196145196172%_))))
                                (let ((_%hd196147196178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196146196175%_)))
                                      (_%tl196148196180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196146196175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196148196180%_))
                                      (let ((_%e196149196183%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196148196180%_))))
                                        (let ((_%hd196150196186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196149196183%_)))
                                              (_%tl196151196188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196149196183%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196151196188%_))
                                              (let ((_%e196152196191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196151196188%_))))
                                                (let ((_%hd196153196194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196152196191%_)))
                                                      (_%tl196154196196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196152196191%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196154196196%_))
                                                      (let ((_%e196155196199%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl196154196196%_))))
                (let ((_%hd196156196202%_
                       (let () (declare (not safe)) (##car _%e196155196199%_)))
                      (_%tl196157196204%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196155196199%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196157196204%_))
                      ((lambda (_%g196139196207%_
                                _%g196140196208%_
                                _%g196141196209%_
                                _%g196142196210%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self196134%_
                                        _%g196140196208%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self196134%_
                                              _%g196139196207%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self196134%_
                                                    _%g196141196209%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self196134%_
                                                          _%g196142196210%_))
                                                       (cons ''#f '())))))))
                       _%hd196156196202%_
                       _%hd196153196194%_
                       _%hd196150196186%_
                       _%hd196147196178%_)
                      (_%g196137196162%_ _%g196138196165%_))))
              (_%g196137196162%_ _%g196138196165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196137196162%_
                                               _%g196138196165%_))))
                                      (_%g196137196162%_ _%g196138196165%_))))
                              (_%g196137196162%_ _%g196138196165%_))))
                      (_%g196137196162%_ _%g196138196165%_)))))
          (_%g196136196231%_ _%stx196135%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self196050%_ _%stx196051%_)
        (let* ((_%g196053196074%_
                (lambda (_%g196054196071%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196054196071%_))))
               (_%g196052196131%_
                (lambda (_%g196054196077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196054196077%_))
                      (let ((_%e196058196079%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196054196077%_))))
                        (let ((_%hd196059196082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196058196079%_)))
                              (_%tl196060196084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196058196079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196060196084%_))
                              (let ((_%e196061196087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196060196084%_))))
                                (let ((_%hd196062196090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196061196087%_)))
                                      (_%tl196063196092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196061196087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196063196092%_))
                                      (let ((_%e196064196095%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196063196092%_))))
                                        (let ((_%hd196065196098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196064196095%_)))
                                              (_%tl196066196100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196064196095%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196066196100%_))
                                              (let ((_%e196067196103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196066196100%_))))
                                                (let ((_%hd196068196106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196067196103%_)))
                                                      (_%tl196069196108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196067196103%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196069196108%_))
                                                      ((lambda (_%g196055196111%_
                                                                _%g196056196112%_
                                                                _%g196057196113%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self196050%_
                                _%g196055196111%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self196050%_
                                      _%g196056196112%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self196050%_
                                            _%g196057196113%_))
                                         (cons ''#f '()))))))
               _%hd196068196106%_
               _%hd196065196098%_
               _%hd196062196090%_)
              (_%g196053196074%_ _%g196054196077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196053196074%_
                                               _%g196054196077%_))))
                                      (_%g196053196074%_ _%g196054196077%_))))
                              (_%g196053196074%_ _%g196054196077%_))))
                      (_%g196053196074%_ _%g196054196077%_)))))
          (_%g196052196131%_ _%stx196051%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self195950%_ _%stx195951%_)
        (let* ((_%g195953195978%_
                (lambda (_%g195954195975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195954195975%_))))
               (_%g195952196047%_
                (lambda (_%g195954195981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195954195981%_))
                      (let ((_%e195959195983%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195954195981%_))))
                        (let ((_%hd195960195986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195959195983%_)))
                              (_%tl195961195988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195959195983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195961195988%_))
                              (let ((_%e195962195991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195961195988%_))))
                                (let ((_%hd195963195994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195962195991%_)))
                                      (_%tl195964195996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195962195991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195964195996%_))
                                      (let ((_%e195965195999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195964195996%_))))
                                        (let ((_%hd195966196002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195965195999%_)))
                                              (_%tl195967196004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195965195999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195967196004%_))
                                              (let ((_%e195968196007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195967196004%_))))
                                                (let ((_%hd195969196010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195968196007%_)))
                                                      (_%tl195970196012%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195968196007%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195970196012%_))
                                                      (let ((_%e195971196015%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl195970196012%_))))
                (let ((_%hd195972196018%_
                       (let () (declare (not safe)) (##car _%e195971196015%_)))
                      (_%tl195973196020%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195971196015%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl195973196020%_))
                      ((lambda (_%g195955196023%_
                                _%g195956196024%_
                                _%g195957196025%_
                                _%g195958196026%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self195950%_
                                        _%g195956196024%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self195950%_
                                              _%g195955196023%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self195950%_
                                                    _%g195957196025%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self195950%_
                                                          _%g195958196026%_))
                                                       (cons ''#f '())))))))
                       _%hd195972196018%_
                       _%hd195969196010%_
                       _%hd195966196002%_
                       _%hd195963195994%_)
                      (_%g195953195978%_ _%g195954195981%_))))
              (_%g195953195978%_ _%g195954195981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195953195978%_
                                               _%g195954195981%_))))
                                      (_%g195953195978%_ _%g195954195981%_))))
                              (_%g195953195978%_ _%g195954195981%_))))
                      (_%g195953195978%_ _%g195954195981%_)))))
          (_%g195952196047%_ _%stx195951%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self195745%_ _%stx195746%_)
        (let* ((_%g195748195769%_
                (lambda (_%g195749195766%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195749195766%_))))
               (_%g195747195947%_
                (lambda (_%g195749195772%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195749195772%_))
                      (let ((_%e195753195774%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195749195772%_))))
                        (let ((_%hd195754195777%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195753195774%_)))
                              (_%tl195755195779%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195753195774%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195755195779%_))
                              (let ((_%e195756195782%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195755195779%_))))
                                (let ((_%hd195757195785%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195756195782%_)))
                                      (_%tl195758195787%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195756195782%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195758195787%_))
                                      (let ((_%e195759195790%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195758195787%_))))
                                        (let ((_%hd195760195793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195759195790%_)))
                                              (_%tl195761195795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195759195790%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195761195795%_))
                                              (let ((_%e195762195798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195761195795%_))))
                                                (let ((_%hd195763195801%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195762195798%_)))
                                                      (_%tl195764195803%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195762195798%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195764195803%_))
                                                      ((lambda (_%g195750195806%_
                                                                _%g195751195807%_
                                                                _%g195752195808%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self195745%_
                                    _%g195750195806%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self195745%_
                                          _%g195751195807%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp195826%_ ((_%rest195829%_
                                         (cons _%g195751195807%_
                                               (cons _%g195750195806%_ '())))
                                        (_%bind195831%_ '())
                                        (_%args195832%_ '()))
                       (let* ((_%rest195833195841%_ _%rest195829%_)
                              (_%else195835195849%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind195831%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp203967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp203967 _%args195832%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K195837195935%_
                               (lambda (_%rest195852%_ _%e195853%_)
                                 (let* ((_%__stx203604203605%_ _%e195853%_)
                                        (_%g195858195876%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx203604203605%_)))))
                                   (let ((_%__kont203606203607%_
                                          (lambda ()
                                            (_%lp195826%_
                                             _%rest195852%_
                                             _%bind195831%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e195853%_))
                                                   _%args195832%_))))
                                         (_%__kont203608203609%_
                                          (lambda ()
                                            (_%lp195826%_
                                             _%rest195852%_
                                             _%bind195831%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e195853%_))
                                                   _%args195832%_))))
                                         (_%__kont203610203611%_
                                          (lambda ()
                                            (let ((_%tmp195883%_
                                                   (let ((__tmp203968
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp203968))))
                                              (_%lp195826%_
                                               _%rest195852%_
                                               (cons (cons _%tmp195883%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e195853%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind195831%_)
                                               (cons _%tmp195883%_
                                                     _%args195832%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx203604203605%_))
                                         (let ((_%e195860195914%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx203604203605%_))))
                                           (let ((_%tl195862195919%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e195860195914%_)))
                                                 (_%hd195861195917%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e195860195914%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd195861195917%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd195861195917%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl195862195919%_))
                                                         (let ((_%e195863195922%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl195862195919%_))))
                   (let ((_%tl195865195927%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e195863195922%_)))
                         (_%hd195864195925%_
                          (let ()
                            (declare (not safe))
                            (##car _%e195863195922%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl195865195927%_))
                         (_%__kont203606203607%_)
                         (_%__kont203610203611%_))))
                 (_%__kont203610203611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd195861195917%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl195862195919%_))
                     (let ((_%e195869195899%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl195862195919%_))))
                       (let ((_%tl195871195904%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e195869195899%_)))
                             (_%hd195870195902%_
                              (let ()
                                (declare (not safe))
                                (##car _%e195869195899%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl195871195904%_))
                             (_%__kont203608203609%_)
                             (_%__kont203610203611%_))))
                     (_%__kont203610203611%_))
                 (_%__kont203610203611%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont203610203611%_))))
                                         (_%__kont203610203611%_)))))))
                         (if (pair? _%rest195833195841%_)
                             (let ((_%hd195838195938%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest195833195841%_)))
                                   (_%tl195839195940%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest195833195841%_))))
                               (let* ((_%e195943%_ _%hd195838195938%_)
                                      (_%rest195945%_ _%tl195839195940%_))
                                 (_%K195837195935%_
                                  _%rest195945%_
                                  _%e195943%_)))
                             (_%else195835195849%_))))))
               _%hd195763195801%_
               _%hd195760195793%_
               _%hd195757195785%_)
              (_%g195748195769%_ _%g195749195772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195748195769%_
                                               _%g195749195772%_))))
                                      (_%g195748195769%_ _%g195749195772%_))))
                              (_%g195748195769%_ _%g195749195772%_))))
                      (_%g195748195769%_ _%g195749195772%_)))))
          (_%g195747195947%_ _%stx195746%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self195524%_ _%stx195525%_)
        (let* ((_%g195527195552%_
                (lambda (_%g195528195549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195528195549%_))))
               (_%g195526195742%_
                (lambda (_%g195528195555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195528195555%_))
                      (let ((_%e195533195557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195528195555%_))))
                        (let ((_%hd195534195560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195533195557%_)))
                              (_%tl195535195562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195533195557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195535195562%_))
                              (let ((_%e195536195565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195535195562%_))))
                                (let ((_%hd195537195568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195536195565%_)))
                                      (_%tl195538195570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195536195565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195538195570%_))
                                      (let ((_%e195539195573%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195538195570%_))))
                                        (let ((_%hd195540195576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195539195573%_)))
                                              (_%tl195541195578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195539195573%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195541195578%_))
                                              (let ((_%e195542195581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195541195578%_))))
                                                (let ((_%hd195543195584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195542195581%_)))
                                                      (_%tl195544195586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195542195581%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195544195586%_))
                                                      (let ((_%e195545195589%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl195544195586%_))))
                (let ((_%hd195546195592%_
                       (let () (declare (not safe)) (##car _%e195545195589%_)))
                      (_%tl195547195594%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195545195589%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl195547195594%_))
                      ((lambda (_%g195529195597%_
                                _%g195530195598%_
                                _%g195531195599%_
                                _%g195532195600%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self195524%_
                                            _%g195530195598%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self195524%_
                                                  _%g195529195597%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self195524%_
                                                        _%g195531195599%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp195621%_ ((_%rest195624%_
                                                 (cons _%g195531195599%_
                                                       (cons _%g195529195597%_
                                                             (cons _%g195530195598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind195626%_ '())
                                                (_%args195627%_ '()))
                               (let* ((_%rest195628195636%_ _%rest195624%_)
                                      (_%else195630195644%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind195626%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp203969 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp203969 _%args195627%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K195632195730%_
                                       (lambda (_%rest195647%_ _%e195648%_)
                                         (let* ((_%__stx203650203651%_
                                                 _%e195648%_)
                                                (_%g195653195671%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx203650203651%_)))))
                                           (let ((_%__kont203652203653%_
                                                  (lambda ()
                                                    (_%lp195621%_
                                                     _%rest195647%_
                                                     _%bind195626%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e195648%_))
                                                           _%args195627%_))))
                                                 (_%__kont203654203655%_
                                                  (lambda ()
                                                    (_%lp195621%_
                                                     _%rest195647%_
                                                     _%bind195626%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e195648%_))
                                                           _%args195627%_))))
                                                 (_%__kont203656203657%_
                                                  (lambda ()
                                                    (let ((_%tmp195678%_
                                                           (let ((__tmp203970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp203970))))
              (_%lp195621%_
               _%rest195647%_
               (cons (cons _%tmp195678%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e195648%_))
                                 '()))
                     _%bind195626%_)
               (cons _%tmp195678%_ _%args195627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx203650203651%_))
                                                 (let ((_%e195655195709%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx203650203651%_))))
                                                   (let ((_%tl195657195714%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e195655195709%_)))
                                                         (_%hd195656195712%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e195655195709%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd195656195712%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd195656195712%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl195657195714%_))
                         (let ((_%e195658195717%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl195657195714%_))))
                           (let ((_%tl195660195722%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e195658195717%_)))
                                 (_%hd195659195720%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e195658195717%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl195660195722%_))
                                 (_%__kont203652203653%_)
                                 (_%__kont203656203657%_))))
                         (_%__kont203656203657%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd195656195712%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl195657195714%_))
                             (let ((_%e195664195694%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl195657195714%_))))
                               (let ((_%tl195666195699%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e195664195694%_)))
                                     (_%hd195665195697%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e195664195694%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl195666195699%_))
                                     (_%__kont203654203655%_)
                                     (_%__kont203656203657%_))))
                             (_%__kont203656203657%_))
                         (_%__kont203656203657%_)))
                 (_%__kont203656203657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont203656203657%_)))))))
                                 (if (pair? _%rest195628195636%_)
                                     (let ((_%hd195633195733%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest195628195636%_)))
                                           (_%tl195634195735%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest195628195636%_))))
                                       (let* ((_%e195738%_ _%hd195633195733%_)
                                              (_%rest195740%_
                                               _%tl195634195735%_))
                                         (_%K195632195730%_
                                          _%rest195740%_
                                          _%e195738%_)))
                                     (_%else195630195644%_))))))
                       _%hd195546195592%_
                       _%hd195543195584%_
                       _%hd195540195576%_
                       _%hd195537195568%_)
                      (_%g195527195552%_ _%g195528195555%_))))
              (_%g195527195552%_ _%g195528195555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195527195552%_
                                               _%g195528195555%_))))
                                      (_%g195527195552%_ _%g195528195555%_))))
                              (_%g195527195552%_ _%g195528195555%_))))
                      (_%g195527195552%_ _%g195528195555%_)))))
          (_%g195526195742%_ _%stx195525%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self195363%_ _%stx195364%_)
        (letrec ((_%import-set-template195366%_
                  (lambda (_%in195469%_ _%phi195470%_)
                    (let ((_%iphi195472%_
                           (fx+ _%phi195470%_
                                (##direct-structure-ref
                                 _%in195469%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports195473%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in195469%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp195475%_ ((_%rest195477%_ _%imports195473%_)
                                         (_%r195478%_ '()))
                        (let* ((_%rest195479195487%_ _%rest195477%_)
                               (_%else195481195495%_ (lambda () _%r195478%_))
                               (_%K195483195512%_
                                (lambda (_%rest195498%_ _%in195499%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in195499%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi195472%_))
                                          (_%lp195475%_
                                           _%rest195498%_
                                           (cons _%in195499%_ _%r195478%_))
                                          (_%lp195475%_
                                           _%rest195498%_
                                           _%r195478%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in195499%_
                                             'gx#module-import::t))
                                          (let ((_%iphi195503%_
                                                 (fx+ _%phi195470%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in195499%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi195503%_))
                                                (_%lp195475%_
                                                 _%rest195498%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in195499%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r195478%_))
                                                (_%lp195475%_
                                                 _%rest195498%_
                                                 _%r195478%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in195499%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi195506%_
                                                     (fx+ _%iphi195472%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in195499%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi195506%_))
                                                    (_%lp195475%_
                                                     _%rest195498%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in195499%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r195478%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi195506%_))
                                                        (_%lp195475%_
                                                         _%rest195498%_
                                                         (let ((__tmp203971
                                                                (_%import-set-template195366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in195499%_
                         _%iphi195472%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r195478%_ __tmp203971)))
                (_%lp195475%_ _%rest195498%_ _%r195478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp195475%_
                                               _%rest195498%_
                                               _%r195478%_)))))))
                          (if (pair? _%rest195479195487%_)
                              (let ((_%hd195484195515%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195479195487%_)))
                                    (_%tl195485195517%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195479195487%_))))
                                (let* ((_%in195520%_ _%hd195484195515%_)
                                       (_%rest195522%_ _%tl195485195517%_))
                                  (_%K195483195512%_
                                   _%rest195522%_
                                   _%in195520%_)))
                              (_%else195481195495%_))))))))
          (let* ((_%g195368195378%_
                  (lambda (_%g195369195375%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195369195375%_))))
                 (_%g195367195466%_
                  (lambda (_%g195369195381%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195369195381%_))
                        (let ((_%e195371195383%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195369195381%_))))
                          (let ((_%hd195372195386%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195371195383%_)))
                                (_%tl195373195388%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195371195383%_))))
                            ((lambda (_%g195370195391%_)
                               (let ((_%ht195402%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp195404%_ ((_%rest195406%_
                                                     _%g195370195391%_)
                                                    (_%loads195407%_ '()))
                                   (letrec ((_%K195409%_
                                             (lambda (_%ctx195459%_
                                                      _%rest195460%_)
                                               (let ((_%id195462%_
                                                      (##structure-ref
                                                       _%ctx195459%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht195402%_
                                                        _%id195462%_))
                                                     (_%lp195404%_
                                                      _%rest195460%_
                                                      _%loads195407%_)
                                                     (let ((_%rt195464%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id195462%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht195402%_
                                                          _%id195462%_
                                                          _%rt195464%_))
                                                       (_%lp195404%_
                                                        _%rest195460%_
                                                        (cons _%rt195464%_
                                                              _%loads195407%_))))))))
                                     (let* ((_%rest195410195418%_
                                             _%rest195406%_)
                                            (_%else195412195430%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp203973
                                                            (lambda (_%g195425195427%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g195425195427%_)))
                   (__tmp203972 (reverse _%loads195407%_)))
               (declare (not safe))
               (##map __tmp203973 __tmp203972)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K195414195447%_
                                             (lambda (_%rest195433%_
                                                      _%in195434%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in195434%_
                                                      'gx#module-context::t))
                                                   (_%K195409%_
                                                    _%in195434%_
                                                    _%rest195433%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in195434%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in195434%_
                               '3
                               '#f
                               '#f)))
                   (_%K195409%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in195434%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest195433%_)
                   (_%lp195404%_ _%rest195433%_ _%loads195407%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in195434%_
                      'gx#import-set::t))
                   (let ((_%phi195439%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in195434%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi195439%_)
                         (_%K195409%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in195434%_
                             '1
                             '#f
                             '#f))
                          _%rest195433%_)
                         (if (fxpositive? _%phi195439%_)
                             (let ((_%deps195443%_
                                    (_%import-set-template195366%_
                                     _%in195434%_
                                     '0)))
                               (_%lp195404%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest195433%_
                                   _%deps195443%_))
                                _%loads195407%_))
                             (_%lp195404%_ _%rest195433%_ _%loads195407%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx195364%_
                      _%in195434%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest195410195418%_)
                                           (let ((_%hd195415195450%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest195410195418%_)))
                                                 (_%tl195416195452%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest195410195418%_))))
                                             (let* ((_%in195455%_
                                                     _%hd195415195450%_)
                                                    (_%rest195457%_
                                                     _%tl195416195452%_))
                                               (_%K195414195447%_
                                                _%rest195457%_
                                                _%in195455%_)))
                                           (_%else195412195430%_)))))))
                             _%tl195373195388%_)))
                        (_%g195368195378%_ _%g195369195381%_)))))
            (_%g195367195466%_ _%stx195364%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self195177%_ _%stx195178%_)
        (letrec ((_%add-lift!195180%_
                  (lambda (_%expr195361%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr195361%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote195181%_
                  (lambda (_%id195358%_ _%marks195359%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id195358%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks195359%_
                                                        '()))))))))
                 (_%generate-simple195182%_
                  (lambda (_%stxq195353%_)
                    (let ((_%gid195355%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid195356%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq195353%_))))
                      (_%add-lift!195180%_
                       (cons 'define
                             (cons _%gid195355%_
                                   (cons (_%generate-syntax-quote195181%_
                                          _%qid195356%_
                                          ''())
                                         '()))))
                      (let ((__tmp203974
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp203974 _%stxq195353%_ _%gid195355%_))
                      _%gid195355%_)))
                 (_%generate-serialized195183%_
                  (lambda (_%stxq195343%_ _%marks195344%_)
                    (let* ((_%mark-refs195346%_
                            (map _%generate-mark195184%_ _%marks195344%_))
                           (_%gid195348%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid195350%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq195343%_))))
                      (_%add-lift!195180%_
                       (cons 'define
                             (cons _%gid195348%_
                                   (cons (_%generate-syntax-quote195181%_
                                          _%qid195350%_
                                          (cons 'list _%mark-refs195346%_))
                                         '()))))
                      (let ((__tmp203975
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp203975 _%stxq195343%_ _%gid195348%_))
                      _%gid195348%_)))
                 (_%generate-mark195184%_
                  (lambda (_%mark195328%_)
                    (let ((_%$e195330%_
                           (let ((__tmp203976
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp203976 _%mark195328%_))))
                      (if _%$e195330%_
                          _%$e195330%_
                          (let* ((_%gid195334%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr195336%_
                                  (_%serialize-mark195185%_ _%mark195328%_))
                                 (_%ctx195338%_
                                  (let ((__tmp203977
                                         (##structure-ref
                                          _%mark195328%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp203977)))
                                 (_%ctx-ref195340%_
                                  (if (eq? _%ctx195338%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref195186%_
                                                               _%ctx195338%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp203978
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp203978
                               _%mark195328%_
                               _%gid195334%_))
                            (_%add-lift!195180%_
                             (cons 'define
                                   (cons _%gid195334%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr195336%_ '()))
                   (cons _%ctx-ref195340%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid195334%_)))))
                 (_%serialize-mark195185%_
                  (lambda (_%mark195276%_)
                    (letrec ((_%quote-e195278%_
                              (lambda (_%sym195326%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym195326%_))
                                    _%sym195326%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym195326%_))))))
                      (let* ((_%mark195279195288%_ _%mark195276%_)
                             (_%E195281195291%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark195279195288%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K195282195303%_
                              (lambda (_%trace195294%_
                                       _%phi195295%_
                                       _%ctx195296%_
                                       _%subst195297%_)
                                (let ((_%subs195299%_
                                       (if _%subst195297%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst195297%_))
                                           '())))
                                  (cons _%phi195295%_
                                        (let ((__tmp203979
                                               (lambda (_%pair195301%_)
                                                 (cons (_%quote-e195278%_
                                                        (car _%pair195301%_))
                                                       (_%quote-e195278%_
                                                        (cdr _%pair195301%_))))))
                                          (declare (not safe))
                                          (##map __tmp203979
                                                 _%subs195299%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark195279195288%_
                               'gx#expander-mark::t))
                            (let* ((_%e195283195306%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark195279195288%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst195309%_ _%e195283195306%_)
                                   (_%e195284195311%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark195279195288%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx195314%_ _%e195284195311%_)
                                   (_%e195285195316%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark195279195288%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi195319%_ _%e195285195316%_)
                                   (_%e195286195321%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark195279195288%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace195324%_ _%e195286195321%_))
                              (_%K195282195303%_
                               _%trace195324%_
                               _%phi195319%_
                               _%ctx195314%_
                               _%subst195309%_))
                            (_%E195281195291%_))))))
                 (_%context-ref195186%_
                  (lambda (_%ctx195263%_)
                    (if (let ((__tmp203980
                               (##structure-ref
                                _%ctx195263%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp203980
                           'gx#module-context::t))
                        (let ((_%ctx-ref195265%_
                               (_%context-ref-nested195188%_ _%ctx195263%_))
                              (_%ctx-origin195266%_
                               (_%context-ref-origin195187%_ _%ctx195263%_))
                              (_%origin195267%_
                               (_%context-ref-origin195187%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin195267%_ _%ctx-origin195266%_)
                              (let ((_%ref195269%_
                                     (_%context-ref-nested195188%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp195271%_ ((_%ref195273%_
                                                    (cdr _%ref195269%_))
                                                   (_%ctx-ref195274%_
                                                    (cdr _%ctx-ref195265%_)))
                                  (if (and (pair? _%ref195273%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref195273%_))
                                                (car _%ctx-ref195274%_)))
                                      (_%lp195271%_
                                       (cdr _%ref195273%_)
                                       (cdr _%ctx-ref195274%_))
                                      (cons '#f _%ctx-ref195274%_))))
                              _%ctx-ref195265%_))
                        (let ((__tmp203981
                               (##structure-ref
                                _%ctx195263%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp203981)))))
                 (_%context-ref-origin195187%_
                  (lambda (_%ctx195255%_)
                    (let _%lp195257%_ ((_%ctx195259%_ _%ctx195255%_))
                      (let ((_%super195261%_
                             (##structure-ref
                              _%ctx195259%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super195261%_
                               'gx#module-context::t))
                            (_%lp195257%_ _%super195261%_)
                            _%ctx195259%_)))))
                 (_%context-ref-nested195188%_
                  (lambda (_%ctx195246%_)
                    (let _%lp195248%_ ((_%ctx195250%_ _%ctx195246%_)
                                       (_%r195251%_ '()))
                      (let ((_%super195253%_
                             (##structure-ref
                              _%ctx195250%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super195253%_
                               'gx#module-context::t))
                            (_%lp195248%_
                             _%super195253%_
                             (cons (car (##structure-ref
                                         _%ctx195250%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r195251%_))
                            (cons (let ((__tmp203982
                                         (##structure-ref
                                          _%ctx195250%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp203982))
                                  _%r195251%_)))))))
          (let* ((_%g195190195203%_
                  (lambda (_%g195191195200%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195191195200%_))))
                 (_%g195189195243%_
                  (lambda (_%g195191195206%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195191195206%_))
                        (let ((_%e195193195208%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195191195206%_))))
                          (let ((_%hd195194195211%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195193195208%_)))
                                (_%tl195195195213%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195193195208%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195195195213%_))
                                (let ((_%e195196195216%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195195195213%_))))
                                  (let ((_%hd195197195219%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195196195216%_)))
                                        (_%tl195198195221%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195196195216%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195198195221%_))
                                        ((lambda (_%g195192195224%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g195192195224%_))
                                               (let ((_%$e195237%_
                                                      (let ((__tmp203983
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp203983 _%g195192195224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e195237%_
                                                     _%$e195237%_
                                                     (let ((_%marks195241%_
                                                            (##direct-structure-ref
                                                             _%g195192195224%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks195241%_)
                                                           (_%generate-simple195182%_
                                                            _%g195192195224%_)
                                                           (_%generate-serialized195183%_
                                                            _%g195192195224%_
                                                            _%marks195241%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g195192195224%_))))
                                         _%hd195197195219%_)
                                        (_%g195190195203%_
                                         _%g195191195206%_))))
                                (_%g195190195203%_ _%g195191195206%_))))
                        (_%g195190195203%_ _%g195191195206%_)))))
            (_%g195189195243%_ _%stx195178%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self195109%_ _%stx195110%_)
        (let* ((_%g195112195129%_
                (lambda (_%g195113195126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195113195126%_))))
               (_%g195111195174%_
                (lambda (_%g195113195132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195113195132%_))
                      (let ((_%e195116195134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195113195132%_))))
                        (let ((_%hd195117195137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195116195134%_)))
                              (_%tl195118195139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195116195134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195118195139%_))
                              (let ((_%e195119195142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195118195139%_))))
                                (let ((_%hd195120195145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195119195142%_)))
                                      (_%tl195121195147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195119195142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195121195147%_))
                                      (let ((_%e195122195150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195121195147%_))))
                                        (let ((_%hd195123195153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195122195150%_)))
                                              (_%tl195124195155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195122195150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195124195155%_))
                                              ((lambda (_%g195114195158%_
                                                        _%g195115195159%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g195115195159%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self195109%_
                              _%g195114195158%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195123195153%_
                                               _%hd195120195145%_)
                                              (_%g195112195129%_
                                               _%g195113195132%_))))
                                      (_%g195112195129%_ _%g195113195132%_))))
                              (_%g195112195129%_ _%g195113195132%_))))
                      (_%g195112195129%_ _%g195113195132%_)))))
          (_%g195111195174%_ _%stx195110%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self195058%_ _%stx195059%_)
        (let* ((_%g195061195071%_
                (lambda (_%g195062195068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195062195068%_))))
               (_%g195060195106%_
                (lambda (_%g195062195074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195062195074%_))
                      (let ((_%e195064195076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195062195074%_))))
                        (let ((_%hd195065195079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195064195076%_)))
                              (_%tl195066195081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195064195076%_))))
                          ((lambda (_%g195063195084%_)
                             (let* ((_%c-body195098%_
                                     (map (lambda (_%g195093195095%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self195058%_
                                               _%g195093195095%_)))
                                          _%g195063195084%_))
                                    (_%c-body195103%_
                                     (let ((__tmp203984
                                            (lambda (_%$obj195100%_)
                                              (not (eq? _%$obj195100%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp203984
                                        _%c-body195098%_))))
                               (cons '%#begin _%c-body195103%_)))
                           _%tl195066195081%_)))
                      (_%g195061195071%_ _%g195062195074%_)))))
          (_%g195060195106%_ _%stx195059%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self194963%_ _%stx194964%_)
        (let* ((_%g194966194976%_
                (lambda (_%g194967194973%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194967194973%_))))
               (_%g194965195055%_
                (lambda (_%g194967194979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194967194979%_))
                      (let ((_%e194969194981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194967194979%_))))
                        (let ((_%hd194970194984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194969194981%_)))
                              (_%tl194971194986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194969194981%_))))
                          ((lambda (_%g194968194989%_)
                             (let* ((_%phi194999%_
                                     (let ((__tmp203985
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp203985 '1)))
                                    (_%block195001%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self194963%_ 'state))
                                      _%phi194999%_))
                                    (_%compiled195004%_
                                     (let ((__tmp203986
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self194963%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g194968194989%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp203986
                                        gx#current-expander-phi
                                        _%phi194999%_)))
                                    (_%g195007195017%_
                                     (lambda (_%g195008195014%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g195008195014%_))))
                                    (_%g195006195052%_
                                     (lambda (_%g195008195020%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g195008195020%_))
                                           (let ((_%e195010195022%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g195008195020%_))))
                                             (let ((_%hd195011195025%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e195010195022%_)))
                                                   (_%tl195012195027%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e195010195022%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd195011195025%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd195011195025%_))
                                                       ((lambda (_%g195009195030%_)
                                                          (let ((_%c-body195047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj195044%_)
                                   (not (eq? _%$obj195044%_ '#!void)))
                                 _%g195009195030%_)))
                    (if _%block195001%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block195001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body195047%_))
                        (if (null? _%c-body195047%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body195047%_)))))
                _%tl195012195027%_)
               (_%g195007195017%_ _%g195008195020%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g195007195017%_
                                                    _%g195008195020%_))))
                                           (_%g195007195017%_
                                            _%g195008195020%_)))))
                               (_%g195006195052%_ _%compiled195004%_)))
                           _%tl194971194986%_)))
                      (_%g194966194976%_ _%g194967194979%_)))))
          (_%g194965195055%_ _%stx194964%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self194894%_ _%stx194895%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self194894%_ 'state)))
        (let* ((_%g194897194911%_
                (lambda (_%g194898194908%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194898194908%_))))
               (_%g194896194960%_
                (lambda (_%g194898194914%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194898194914%_))
                      (let ((_%e194901194916%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194898194914%_))))
                        (let ((_%hd194902194919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194901194916%_)))
                              (_%tl194903194921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194901194916%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194903194921%_))
                              (let ((_%e194904194924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194903194921%_))))
                                (let ((_%hd194905194927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194904194924%_)))
                                      (_%tl194906194929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194904194924%_))))
                                  ((lambda (_%g194899194932%_
                                            _%g194900194933%_)
                                     (let ((_%key194946%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g194900194933%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key194946%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx194895%_
                                              _%g194900194933%_
                                              _%key194946%_)))
                                       (let* ((_%ctx194948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g194900194933%_)))
                                              (_%code194951%_
                                               (let ((__tmp203987
                                                      (lambda ()
                                                        (let ((__tmp203988
                                                               (##structure-ref
                                                                _%ctx194948%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self194894%_
                                                           __tmp203988)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp203987
                                                  gx#current-expander-context
                                                  _%ctx194948%_)))
                                              (_%rt194953%_
                                               (let ((__tmp203989
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp203989
                                                  _%ctx194948%_)))
                                              (_%loader194955%_
                                               (if _%rt194953%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt194953%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid194957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g194900194933%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self194894%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid194957%_
                                                     (cons _%code194951%_
                                                           _%loader194955%_))))))
                                   _%tl194906194929%_
                                   _%hd194905194927%_)))
                              (_%g194897194911%_ _%g194898194914%_))))
                      (_%g194897194911%_ _%g194898194914%_)))))
          (_%g194896194960%_ _%stx194895%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx194881%_ _%context-chain194882%_)
        (let _%lp194884%_ ((_%ctx194886%_ _%ctx194881%_) (_%path194887%_ '()))
          (let ((_%super194889%_
                 (##structure-ref _%ctx194886%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super194889%_ _%context-chain194882%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx194886%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path194887%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super194889%_
                       'gx#module-context::t))
                    (_%lp194884%_
                     _%super194889%_
                     (cons (car (##structure-ref
                                 _%ctx194886%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path194887%_))
                    (cons (let ((__tmp203990
                                 (##structure-ref
                                  _%ctx194886%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp203990))
                          _%path194887%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp194874%_ ((_%ctx194876%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r194877%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx194876%_ 'gx#module-context::t))
              (_%lp194874%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx194876%_ '3 '#f '#f))
               (cons _%ctx194876%_ _%r194877%_))
              _%r194877%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self194639%_ _%stx194640%_)
        (letrec* ((_%context-chain194642%_ (gxc#current-context-chain))
                  (_%make-import-spec194643%_
                   (lambda (_%in194811%_)
                     (let* ((_%in194812194824%_ _%in194811%_)
                            (_%E194814194827%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in194812194824%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K194815194837%_
                             (lambda (_%phi194830%_
                                      _%name194831%_
                                      _%src-name194832%_
                                      _%src-phi194833%_
                                      _%src-key194834%_
                                      _%src-ctx194835%_)
                               (cons _%phi194830%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name194831%_))
                                           (cons _%src-phi194833%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name194832%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in194812194824%_
                              'gx#module-import::t))
                           (let ((_%e194816194840%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in194812194824%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e194816194840%_
                                    'gx#module-export::t))
                                 (let* ((_%e194819194843%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e194816194840%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx194846%_ _%e194819194843%_)
                                        (_%e194820194848%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e194816194840%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key194851%_ _%e194820194848%_)
                                        (_%e194821194853%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e194816194840%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi194856%_ _%e194821194853%_)
                                        (_%e194822194858%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e194816194840%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name194861%_ _%e194822194858%_)
                                        (_%e194817194863%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in194812194824%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name194866%_ _%e194817194863%_)
                                        (_%e194818194868%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in194812194824%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi194871%_ _%e194818194868%_))
                                   (_%K194815194837%_
                                    _%phi194871%_
                                    _%name194866%_
                                    _%src-name194861%_
                                    _%src-phi194856%_
                                    _%src-key194851%_
                                    _%src-ctx194846%_))
                                 (_%E194814194827%_)))
                           (_%E194814194827%_)))))
                  (_%make-import-path194644%_
                   (lambda (_%ctx194809%_)
                     (gxc#generate-meta-import-path
                      _%ctx194809%_
                      _%context-chain194642%_)))
                  (_%make-import-spec-in194645%_
                   (lambda (_%ctx194806%_ _%in194807%_)
                     (cons 'spec:
                           (cons (_%make-import-path194644%_ _%ctx194806%_)
                                 (reverse _%in194807%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self194639%_ 'state)))
          (let* ((_%g194647194657%_
                  (lambda (_%g194648194654%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194648194654%_))))
                 (_%g194646194803%_
                  (lambda (_%g194648194660%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194648194660%_))
                        (let ((_%e194650194662%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194648194660%_))))
                          (let ((_%hd194651194665%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194650194662%_)))
                                (_%tl194652194667%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194650194662%_))))
                            ((lambda (_%g194649194670%_)
                               (let _%lp194681%_ ((_%rest194683%_
                                                   _%g194649194670%_)
                                                  (_%current-src194684%_ '#f)
                                                  (_%current-in194685%_ '())
                                                  (_%r194686%_ '()))
                                 (let* ((_%rest194687194695%_ _%rest194683%_)
                                        (_%else194689194705%_
                                         (lambda ()
                                           (let ((_%r194703%_
                                                  (if _%current-src194684%_
                                                      (cons (_%make-import-spec-in194645%_
                                                             _%current-src194684%_
                                                             _%current-in194685%_)
                                                            _%r194686%_)
                                                      _%r194686%_)))
                                             (cons '%#import
                                                   (reverse _%r194703%_)))))
                                        (_%K194691194791%_
                                         (lambda (_%rest194708%_ _%in194709%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194709%_
                                                  'gx#module-import::t))
                                               (let* ((_%in194711194718%_
                                                       _%in194709%_)
                                                      (_%E194713194721%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in194711194718%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K194714194729%_
               (lambda (_%src-ctx194724%_)
                 (if (eq? _%current-src194684%_ _%src-ctx194724%_)
                     (_%lp194681%_
                      _%rest194708%_
                      _%current-src194684%_
                      (cons (_%make-import-spec194643%_ _%in194709%_)
                            _%current-in194685%_)
                      _%r194686%_)
                     (if _%current-src194684%_
                         (_%lp194681%_
                          _%rest194708%_
                          _%src-ctx194724%_
                          (cons (_%make-import-spec194643%_ _%in194709%_) '())
                          (cons (_%make-import-spec-in194645%_
                                 _%current-src194684%_
                                 _%current-in194685%_)
                                _%r194686%_))
                         (_%lp194681%_
                          _%rest194708%_
                          _%src-ctx194724%_
                          (cons (_%make-import-spec194643%_ _%in194709%_) '())
                          _%r194686%_)))))
              (_%e194715194732%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in194711194718%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e194715194732%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e194716194735%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e194715194732%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx194738%_ _%e194716194735%_))
               (_%K194714194729%_ _%src-ctx194738%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E194713194721%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in194709%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi194741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in194709%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src194743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in194709%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in194783%_
                                                           (let* ((_%g194744194753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path194644%_ _%src194743%_))
                          (_%E194747194757%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g194744194753%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K194749194773%_
                            (lambda (_%path194771%_) _%path194771%_))
                           (_%K194748194763%_
                            (lambda (_%path194761%_)
                              (cons 'in: _%path194761%_))))
                       (if (pair? _%g194744194753%_)
                           (let ((_%tl194751194778%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g194744194753%_)))
                                 (_%hd194750194776%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g194744194753%_))))
                             (if (null? _%tl194751194778%_)
                                 (let ((_%path194781%_ _%hd194750194776%_))
                                   (_%K194749194773%_ _%path194781%_))
                                 (let ((_%path194766%_ _%g194744194753%_))
                                   (_%K194748194763%_ _%path194766%_))))
                           (let ((_%path194766%_ _%g194744194753%_))
                             (_%K194748194763%_ _%path194766%_))))))
                  (_%r194785%_
                   (if _%current-src194684%_
                       (cons (_%make-import-spec-in194645%_
                              _%current-src194684%_
                              _%current-in194685%_)
                             _%r194686%_)
                       _%r194686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp194681%_
                                                      _%rest194708%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi194741%_)
                                                                _%src-in194783%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi194741%_
                                    (cons _%src-in194783%_ '()))))
                    _%r194785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in194709%_
                                                          'gx#module-context::t))
                                                       (let ((_%r194789%_
                                                              (if _%current-src194684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in194645%_
                                 _%current-src194684%_
                                 _%current-in194685%_)
                                _%r194686%_)
                          _%r194686%_)))
                 (_%lp194681%_
                  _%rest194708%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path194644%_ _%in194709%_))
                        _%r194789%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest194687194695%_)
                                       (let ((_%hd194692194794%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest194687194695%_)))
                                             (_%tl194693194796%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest194687194695%_))))
                                         (let* ((_%in194799%_
                                                 _%hd194692194794%_)
                                                (_%rest194801%_
                                                 _%tl194693194796%_))
                                           (_%K194691194791%_
                                            _%rest194801%_
                                            _%in194799%_)))
                                       (_%else194689194705%_)))))
                             _%tl194652194667%_)))
                        (_%g194647194657%_ _%g194648194660%_)))))
            (_%g194646194803%_ _%stx194640%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self194449%_ _%stx194450%_)
        (letrec* ((_%context-chain194452%_ (gxc#current-context-chain))
                  (_%make-import-path194453%_
                   (lambda (_%ctx194637%_)
                     (gxc#generate-meta-import-path
                      _%ctx194637%_
                      _%context-chain194452%_))))
          (let* ((_%g194455194465%_
                  (lambda (_%g194456194462%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194456194462%_))))
                 (_%g194454194634%_
                  (lambda (_%g194456194468%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194456194468%_))
                        (let ((_%e194458194470%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194456194468%_))))
                          (let ((_%hd194459194473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194458194470%_)))
                                (_%tl194460194475%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194458194470%_))))
                            ((lambda (_%g194457194478%_)
                               (let _%lp194489%_ ((_%rest194491%_
                                                   _%g194457194478%_)
                                                  (_%r194492%_ '()))
                                 (let* ((_%rest194493194501%_ _%rest194491%_)
                                        (_%else194495194509%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r194492%_))))
                                        (_%K194497194622%_
                                         (lambda (_%rest194512%_ _%out194513%_)
                                           (let* ((_%out194514194527%_
                                                   _%out194513%_)
                                                  (_%E194517194531%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out194514194527%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K194521194601%_
                                                    (lambda (_%name194597%_
                                                             _%phi194598%_
                                                             _%key194599%_)
                                                      (_%lp194489%_
                                                       _%rest194512%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi194598%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key194599%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name194597%_))
                                             '()))))
                     _%r194492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K194518194581%_
                                                    (lambda (_%phi194535%_
                                                             _%src194536%_)
                                                      (let* ((_%out194576%_
                                                              (if _%src194536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g194537194546%_
                                              (_%make-import-path194453%_
                                               _%src194536%_))
                                             (_%E194540194550%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g194537194546%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K194542194566%_
                                               (lambda (_%path194564%_)
                                                 _%path194564%_))
                                              (_%K194541194556%_
                                               (lambda (_%path194554%_)
                                                 (cons 'in: _%path194554%_))))
                                          (if (pair? _%g194537194546%_)
                                              (let ((_%tl194544194571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g194537194546%_)))
                                                    (_%hd194543194569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g194537194546%_))))
                                                (if (null? _%tl194544194571%_)
                                                    (let ((_%path194574%_
                                                           _%hd194543194569%_))
                                                      (_%K194542194566%_
                                                       _%path194574%_))
                                                    (let ((_%path194559%_
                                                           _%g194537194546%_))
                                                      (_%K194541194556%_
                                                       _%path194559%_))))
                                              (let ((_%path194559%_
                                                     _%g194537194546%_))
                                                (_%K194541194556%_
                                                 _%path194559%_)))))
                                      '()))
                          '#t))
                     (_%out194578%_
                      (if (fxzero? _%phi194535%_)
                          _%out194576%_
                          (cons 'phi:
                                (cons _%phi194535%_
                                      (cons _%out194576%_ '()))))))
                (_%lp194489%_
                 _%rest194512%_
                 (cons _%out194578%_ _%r194492%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match194516194594%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out194514194527%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e194519194584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out194514194527%_
                               '1
                               '#f
                               '#f)))
                           (_%e194520194589%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out194514194527%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src194587%_ _%e194519194584%_)
                            (_%phi194592%_ _%e194520194589%_))
                        (_%K194518194581%_ _%phi194592%_ _%src194587%_)))
                    (_%E194517194531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out194514194527%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e194522194604%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out194514194527%_
                        '1
                        '#f
                        '#f)))
                    (_%e194523194607%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out194514194527%_
                        '2
                        '#f
                        '#f)))
                    (_%e194524194612%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out194514194527%_
                        '3
                        '#f
                        '#f)))
                    (_%e194525194617%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out194514194527%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key194610%_ _%e194523194607%_)
                     (_%phi194615%_ _%e194524194612%_)
                     (_%name194620%_ _%e194525194617%_))
                 (_%K194521194601%_
                  _%name194620%_
                  _%phi194615%_
                  _%key194610%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match194516194594%_))))))))
                                   (if (pair? _%rest194493194501%_)
                                       (let ((_%hd194498194625%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest194493194501%_)))
                                             (_%tl194499194627%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest194493194501%_))))
                                         (let* ((_%out194630%_
                                                 _%hd194498194625%_)
                                                (_%rest194632%_
                                                 _%tl194499194627%_))
                                           (_%K194497194622%_
                                            _%rest194632%_
                                            _%out194630%_)))
                                       (_%else194495194509%_)))))
                             _%tl194460194475%_)))
                        (_%g194455194465%_ _%g194456194468%_)))))
            (_%g194454194634%_ _%stx194450%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self194410%_ _%stx194411%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self194410%_ 'state)))
        (let* ((_%g194413194423%_
                (lambda (_%g194414194420%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194414194420%_))))
               (_%g194412194446%_
                (lambda (_%g194414194426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194414194426%_))
                      (let ((_%e194416194428%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194414194426%_))))
                        (let ((_%hd194417194431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194416194428%_)))
                              (_%tl194418194433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194416194428%_))))
                          ((lambda (_%g194415194436%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g194415194436%_)))
                           _%tl194418194433%_)))
                      (_%g194413194423%_ _%g194414194426%_)))))
          (_%g194412194446%_ _%stx194411%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self194285%_ _%stx194286%_)
        (letrec ((_%generate1194288%_
                  (lambda (_%id194405%_ _%eid194406%_)
                    (let ((_%eid194408%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid194406%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid194408%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx194286%_
                             _%eid194408%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id194405%_))
                            (cons _%eid194408%_ '()))))))
          (let* ((_%g194290194318%_
                  (lambda (_%g194291194315%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194291194315%_))))
                 (_%g194289194402%_
                  (lambda (_%g194291194321%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194291194321%_))
                        (let ((_%e194294194323%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194291194321%_))))
                          (let ((_%hd194295194326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194294194323%_)))
                                (_%tl194296194328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194294194323%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl194296194328%_))
                                (let ((_g203991_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl194296194328%_
                                          '0))))
                                  (begin
                                    (let ((_g203992_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g203991_)
                                                 (##values-length _g203991_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g203992_ 2)))
                                          (error "Context expects 2 values"
                                                 _g203992_)))
                                    (let ((_%target194297194331%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g203991_ 0)))
                                          (_%tl194299194333%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g203991_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194299194333%_))
                                          (letrec ((_%loop194300194336%_
                                                    (lambda (_%hd194298194339%_
                                                             _%eid194304194341%_
                                                             _%id194305194342%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd194298194339%_))
                                                          (let ((_%e194301194344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd194298194339%_))))
                    (let ((_%lp-hd194302194347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194301194344%_)))
                          (_%lp-tl194303194349%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194301194344%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd194302194347%_))
                          (let ((_%e194308194352%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd194302194347%_))))
                            (let ((_%hd194309194355%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194308194352%_)))
                                  (_%tl194310194357%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194308194352%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194310194357%_))
                                  (let ((_%e194311194360%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194310194357%_))))
                                    (let ((_%hd194312194363%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194311194360%_)))
                                          (_%tl194313194365%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194311194360%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194313194365%_))
                                          (_%loop194300194336%_
                                           _%lp-tl194303194349%_
                                           (cons _%hd194312194363%_
                                                 _%eid194304194341%_)
                                           (cons _%hd194309194355%_
                                                 _%id194305194342%_))
                                          (_%g194290194318%_
                                           _%g194291194321%_))))
                                  (_%g194290194318%_ _%g194291194321%_))))
                          (_%g194290194318%_ _%g194291194321%_))))
                  (let ((_%eid194306194368%_ (reverse _%eid194304194341%_))
                        (_%id194307194369%_ (reverse _%id194305194342%_)))
                    ((lambda (_%g194292194371%_ _%g194293194372%_)
                       (cons '%#extern
                             (map _%generate1194288%_
                                  (let ((__tmp203993
                                         (lambda (_%g194387194390%_
                                                  _%g194388194392%_)
                                           (cons _%g194387194390%_
                                                 _%g194388194392%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp203993
                                     '()
                                     _%g194293194372%_))
                                  (let ((__tmp203994
                                         (lambda (_%g194394194397%_
                                                  _%g194395194399%_)
                                           (cons _%g194394194397%_
                                                 _%g194395194399%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp203994
                                     '()
                                     _%g194292194371%_)))))
                     _%eid194306194368%_
                     _%id194307194369%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop194300194336%_
                                             _%target194297194331%_
                                             '()
                                             '()))
                                          (_%g194290194318%_
                                           _%g194291194321%_)))))
                                (_%g194290194318%_ _%g194291194321%_))))
                        (_%g194290194318%_ _%g194291194321%_)))))
            (_%g194289194402%_ _%stx194286%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self194074%_ _%stx194075%_)
        (letrec ((_%generate1194077%_
                  (lambda (_%id194279%_)
                    (let ((_%eid194281%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id194279%_)))
                          (_%ident194282%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id194279%_)))
                          (_%props194283%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id194279%_))))
                      (cons '%#define-runtime
                            (cons _%ident194282%_
                                  (cons _%eid194281%_ _%props194283%_))))))
                 (_%generate*194078%_
                  (lambda (_%all194247%_)
                    (let* ((_%all194248194256%_ _%all194247%_)
                           (_%else194250194264%_
                            (lambda () (cons '%#begin _%all194247%_)))
                           (_%K194252194269%_
                            (lambda (_%one194267%_) _%one194267%_)))
                      (if (pair? _%all194248194256%_)
                          (let ((_%hd194253194272%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all194248194256%_)))
                                (_%tl194254194274%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all194248194256%_))))
                            (let ((_%one194277%_ _%hd194253194272%_))
                              (if (null? _%tl194254194274%_)
                                  (_%K194252194269%_ _%one194277%_)
                                  (_%else194250194264%_))))
                          (_%else194250194264%_))))))
          (let* ((_%g194080194097%_
                  (lambda (_%g194081194094%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194081194094%_))))
                 (_%g194079194244%_
                  (lambda (_%g194081194100%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194081194100%_))
                        (let ((_%e194084194102%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194081194100%_))))
                          (let ((_%hd194085194105%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194084194102%_)))
                                (_%tl194086194107%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194084194102%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194086194107%_))
                                (let ((_%e194087194110%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194086194107%_))))
                                  (let ((_%hd194088194113%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194087194110%_)))
                                        (_%tl194089194115%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194087194110%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194089194115%_))
                                        (let ((_%e194090194118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194089194115%_))))
                                          (let ((_%hd194091194121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194090194118%_)))
                                                (_%tl194092194123%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194090194118%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194092194123%_))
                                                ((lambda (_%g194082194126%_
                                                          _%g194083194127%_)
                                                   (let _%lp194143%_ ((_%rest194145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g194083194127%_)
                              (_%r194146%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx203729203730%_
                                                             _%rest194145%_)
                                                            (_%g194151194168%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx203729203730%_)))))
               (let ((_%__kont203731203732%_
                      (lambda (_%g194153194231%_)
                        (_%lp194143%_ _%g194153194231%_ _%r194146%_)))
                     (_%__kont203733203734%_
                      (lambda (_%g194158194204%_ _%g194159194205%_)
                        (_%lp194143%_
                         _%g194158194204%_
                         (cons (_%generate1194077%_ _%g194159194205%_)
                               _%r194146%_))))
                     (_%__kont203735203736%_
                      (lambda (_%g194163194180%_)
                        (_%generate*194078%_
                         (let ((__tmp203995
                                (cons (_%generate1194077%_ _%g194163194180%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp203995 _%r194146%_)))))
                     (_%__kont203737203738%_
                      (lambda ()
                        (_%generate*194078%_ (reverse! _%r194146%_)))))
                 (let ((_%g194149194191%_
                        (lambda ()
                          (let ((_%g194163194180%_ _%__stx203729203730%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g194163194180%_))
                                (_%__kont203735203736%_ _%g194163194180%_)
                                (_%__kont203737203738%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx203729203730%_))
                       (let ((_%e194154194220%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx203729203730%_))))
                         (let ((_%tl194156194225%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e194154194220%_)))
                               (_%hd194155194223%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e194154194220%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd194155194223%_))
                               (let ((_%e194157194228%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd194155194223%_))))
                                 (if (equal? _%e194157194228%_ '#f)
                                     (_%__kont203731203732%_
                                      _%tl194156194225%_)
                                     (_%__kont203733203734%_
                                      _%tl194156194225%_
                                      _%hd194155194223%_)))
                               (_%__kont203733203734%_
                                _%tl194156194225%_
                                _%hd194155194223%_))))
                       (let () (declare (not safe)) (_%g194149194191%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd194091194121%_
                                                 _%hd194088194113%_)
                                                (_%g194080194097%_
                                                 _%g194081194100%_))))
                                        (_%g194080194097%_
                                         _%g194081194100%_))))
                                (_%g194080194097%_ _%g194081194100%_))))
                        (_%g194080194097%_ _%g194081194100%_)))))
            (_%g194079194244%_ _%stx194075%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self193971%_ _%stx193972%_)
        (let* ((_%g193974193991%_
                (lambda (_%g193975193988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193975193988%_))))
               (_%g193973194071%_
                (lambda (_%g193975193994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193975193994%_))
                      (let ((_%e193978193996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193975193994%_))))
                        (let ((_%hd193979193999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193978193996%_)))
                              (_%tl193980194001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193978193996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193980194001%_))
                              (let ((_%e193981194004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193980194001%_))))
                                (let ((_%hd193982194007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193981194004%_)))
                                      (_%tl193983194009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193981194004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193983194009%_))
                                      (let ((_%e193984194012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193983194009%_))))
                                        (let ((_%hd193985194015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193984194012%_)))
                                              (_%tl193986194017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193984194012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193986194017%_))
                                              ((lambda (_%g193976194020%_
                                                        _%g193977194021%_)
                                                 (let* ((_%eid194036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g193977194021%_)))
                                                        (_%phi194038%_
                                                         (let ((__tmp203996
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp203996 '1)))
                (_%block194040%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self193971%_ 'state))
                  _%phi194038%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g194043194050%_
                                                           (lambda (_%g194044194047%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g194044194047%_))))
                  (_%g194042194068%_
                   (lambda (_%g194044194053%_)
                     ((lambda (_%g194045194055%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self193971%_ 'state))
                         _%phi194038%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g194045194055%_
                                     (cons _%g193976194020%_ '())))))
                      _%g194044194053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194042194068%_
                                                      _%eid194036%_))
                                                   (if _%block194040%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block194040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g193977194021%_))
                                             (cons _%eid194036%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g193977194021%_))
                           (cons _%eid194036%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd193985194015%_
                                               _%hd193982194007%_)
                                              (_%g193974193991%_
                                               _%g193975193994%_))))
                                      (_%g193974193991%_ _%g193975193994%_))))
                              (_%g193974193991%_ _%g193975193994%_))))
                      (_%g193974193991%_ _%g193975193994%_)))))
          (_%g193973194071%_ _%stx193972%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self193903%_ _%stx193904%_)
        (let* ((_%g193906193923%_
                (lambda (_%g193907193920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193907193920%_))))
               (_%g193905193968%_
                (lambda (_%g193907193926%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193907193926%_))
                      (let ((_%e193910193928%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193907193926%_))))
                        (let ((_%hd193911193931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193910193928%_)))
                              (_%tl193912193933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193910193928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193912193933%_))
                              (let ((_%e193913193936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193912193933%_))))
                                (let ((_%hd193914193939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193913193936%_)))
                                      (_%tl193915193941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193913193936%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193915193941%_))
                                      (let ((_%e193916193944%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193915193941%_))))
                                        (let ((_%hd193917193947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193916193944%_)))
                                              (_%tl193918193949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193916193944%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193918193949%_))
                                              ((lambda (_%g193908193952%_
                                                        _%g193909193953%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g193909193953%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g193908193952%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd193917193947%_
                                               _%hd193914193939%_)
                                              (_%g193906193923%_
                                               _%g193907193926%_))))
                                      (_%g193906193923%_ _%g193907193926%_))))
                              (_%g193906193923%_ _%g193907193926%_))))
                      (_%g193906193923%_ _%g193907193926%_)))))
          (_%g193905193968%_ _%stx193904%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self193900%_ _%stx193901%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193900%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx193901%_)
        (gxc#generate-meta-define-values% _%self193900%_ _%stx193901%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self193897%_ _%stx193898%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193897%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx193898%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp203998 (list)) (__tmp203997 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp203998
         '(src n open blocks)
         __tmp203997
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args193894%_
        (apply make-instance gxc#meta-state::t _%$args193894%_)))
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
      (lambda (_%self193880%_ _%ctx193881%_)
        (let ((_%self193884%_ _%self193880%_))
          (if (let ((__tmp203999
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self193884%_))))
                (declare (not safe))
                (##fx< '4 __tmp203999))
              (begin
                (let ((__tmp204000
                       (let ((__tmp204001
                              (##structure-ref
                               _%ctx193881%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp204001))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self193884%_
                   __tmp204000
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self193884%_ '1 '2 '#f '#f))
                (let ((__tmp204002
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self193884%_
                   __tmp204002
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self193884%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp204003
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self193884%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self193884%_
                       '4
                       __tmp204003))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp204005 (list)) (__tmp204004 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp204005
         '(ctx phi n code)
         __tmp204004
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args193755%_
        (apply make-instance gxc#meta-state-block::t _%$args193755%_)))
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
      (lambda (_%state193715%_ _%phi193716%_)
        (let* ((_%state193717193725%_ _%state193715%_)
               (_%E193719193728%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state193717193725%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K193720193737%_
                (lambda (_%open193731%_ _%n193732%_ _%src193733%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open193731%_ _%phi193716%_))
                      '#f
                      (let ((_%block-ref193735%_
                             (let ((__tmp204006 (number->string _%n193732%_)))
                               (declare (not safe))
                               (##string-append
                                _%src193733%_
                                '"~"
                                __tmp204006))))
                        (##structure-set!
                         _%state193715%_
                         (let () (declare (not safe)) (##fx+ _%n193732%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp204007
                               (let ((__tmp204008
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp204008
                                  _%phi193716%_
                                  _%n193732%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open193731%_ _%phi193716%_ __tmp204007))
                        _%block-ref193735%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state193717193725%_
                 'gxc#meta-state::t))
              (let* ((_%e193721193740%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state193717193725%_
                         '1
                         '#f
                         '#f)))
                     (_%src193743%_ _%e193721193740%_)
                     (_%e193722193745%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state193717193725%_
                         '2
                         '#f
                         '#f)))
                     (_%n193748%_ _%e193722193745%_)
                     (_%e193723193750%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state193717193725%_
                         '3
                         '#f
                         '#f)))
                     (_%open193753%_ _%e193723193750%_))
                (_%K193720193737%_ _%open193753%_ _%n193748%_ _%src193743%_))
              (_%E193719193728%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state193709%_ _%phi193710%_ _%stx193711%_)
        (let ((_%block193713%_
               (let ((__tmp204009
                      (##structure-ref
                       _%state193709%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp204009 _%phi193710%_))))
          (##structure-set!
           _%block193713%_
           (cons _%stx193711%_
                 (##structure-ref
                  _%block193713%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state193703%_)
        (##structure-set!
         _%state193703%_
         (let ((__tmp204012
                (lambda (_%_193705%_ _%block193706%_ _%r193707%_)
                  (cons _%block193706%_ _%r193707%_)))
               (__tmp204011
                (##structure-ref _%state193703%_ '4 gxc#meta-state::t '#f))
               (__tmp204010
                (##structure-ref _%state193703%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp204012 __tmp204011 __tmp204010))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state193703%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state193656%_)
        (gxc#meta-state-end-phi! _%state193656%_)
        (let ((__tmp204014
               (lambda (_%block193658%_ _%r193659%_)
                 (let* ((_%block193660193669%_ _%block193658%_)
                        (_%E193662193672%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block193660193669%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K193663193680%_
                         (lambda (_%code193675%_
                                  _%n193676%_
                                  _%phi193677%_
                                  _%ctx193678%_)
                           (if (null? _%code193675%_)
                               _%r193659%_
                               (cons (cons _%ctx193678%_
                                           (cons _%phi193677%_
                                                 (cons _%n193676%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code193675%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r193659%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block193660193669%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e193664193683%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block193660193669%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx193686%_ _%e193664193683%_)
                              (_%e193665193688%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block193660193669%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi193691%_ _%e193665193688%_)
                              (_%e193666193693%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block193660193669%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n193696%_ _%e193666193693%_)
                              (_%e193667193698%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block193660193669%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code193701%_ _%e193667193698%_))
                         (_%K193663193680%_
                          _%code193701%_
                          _%n193696%_
                          _%phi193691%_
                          _%ctx193686%_))
                       (_%E193662193672%_)))))
              (__tmp204013
               (##structure-ref _%state193656%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp204014 '() __tmp204013))))
    (define gxc#collect-expression-refs
      (lambda (_%stx193652%_)
        (let ((_%ht193654%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht193654%_ _%stx193652%_)
          _%ht193654%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self193595%_ _%stx193596%_)
        (let* ((_%g193598193611%_
                (lambda (_%g193599193608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193599193608%_))))
               (_%g193597193649%_
                (lambda (_%g193599193614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193599193614%_))
                      (let ((_%e193601193616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193599193614%_))))
                        (let ((_%hd193602193619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193601193616%_)))
                              (_%tl193603193621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193601193616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193603193621%_))
                              (let ((_%e193604193624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193603193621%_))))
                                (let ((_%hd193605193627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193604193624%_)))
                                      (_%tl193606193629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193604193624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193606193629%_))
                                      ((lambda (_%g193600193632%_)
                                         (let* ((_%bind193644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g193600193632%_)))
                                                (_%eid193646%_
                                                 (if _%bind193644%_
                                                     (##structure-ref
                                                      _%bind193644%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g193600193632%_))))
                                                (__tmp204015
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self193595%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp204015
                                            _%eid193646%_
                                            _%eid193646%_)))
                                       _%hd193605193627%_)
                                      (_%g193598193611%_ _%g193599193614%_))))
                              (_%g193598193611%_ _%g193599193614%_))))
                      (_%g193598193611%_ _%g193599193614%_)))))
          (_%g193597193649%_ _%stx193596%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self193522%_ _%stx193523%_)
        (let* ((_%g193525193542%_
                (lambda (_%g193526193539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193526193539%_))))
               (_%g193524193592%_
                (lambda (_%g193526193545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193526193545%_))
                      (let ((_%e193529193547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193526193545%_))))
                        (let ((_%hd193530193550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193529193547%_)))
                              (_%tl193531193552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193529193547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193531193552%_))
                              (let ((_%e193532193555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193531193552%_))))
                                (let ((_%hd193533193558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193532193555%_)))
                                      (_%tl193534193560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193532193555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193534193560%_))
                                      (let ((_%e193535193563%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193534193560%_))))
                                        (let ((_%hd193536193566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193535193563%_)))
                                              (_%tl193537193568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193535193563%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193537193568%_))
                                              ((lambda (_%g193527193571%_
                                                        _%g193528193572%_)
                                                 (let* ((_%bind193587%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g193528193572%_)))
                                                        (_%eid193589%_
                                                         (if _%bind193587%_
                                                             (##structure-ref
                                                              _%bind193587%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g193528193572%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp204016
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self193522%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp204016
                                                      _%eid193589%_
                                                      _%eid193589%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self193522%_
                                                      _%g193527193571%_))))
                                               _%hd193536193566%_
                                               _%hd193533193558%_)
                                              (_%g193525193542%_
                                               _%g193526193545%_))))
                                      (_%g193525193542%_ _%g193526193545%_))))
                              (_%g193525193542%_ _%g193526193545%_))))
                      (_%g193525193542%_ _%g193526193545%_)))))
          (_%g193524193592%_ _%stx193523%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self193479%_ _%stx193480%_)
        (let* ((_%g193482193492%_
                (lambda (_%g193483193489%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193483193489%_))))
               (_%g193481193519%_
                (lambda (_%g193483193495%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193483193495%_))
                      (let ((_%e193485193497%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193483193495%_))))
                        (let ((_%hd193486193500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193485193497%_)))
                              (_%tl193487193502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193485193497%_))))
                          ((lambda (_%g193484193505%_)
                             (let ((__tmp204017
                                    (lambda (_%g193514193516%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self193479%_
                                         _%g193514193516%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp204017 _%g193484193505%_)))
                           _%tl193487193502%_)))
                      (_%g193482193492%_ _%g193483193495%_)))))
          (_%g193481193519%_ _%stx193480%_))))
    (define gxc#count-values-single%
      (lambda (_%self193476%_ _%stx193477%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self193344%_ _%stx193345%_)
        (let* ((_%__stx203759203760%_ _%stx193345%_)
               (_%g193348193377%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203759203760%_)))))
          (let ((_%__kont203761203762%_
                 (lambda (_%g193350193443%_ _%g193351193444%_)
                   (length (let ((__tmp204018
                                  (lambda (_%g193465193468%_ _%g193466193470%_)
                                    (cons _%g193465193468%_
                                          _%g193466193470%_))))
                             (declare (not safe))
                             (foldr__0 __tmp204018 '() _%g193350193443%_)))))
                (_%__kont203765203766%_ (lambda () '#f)))
            (let ((_%__match203804203805%_
                   (lambda (_%e193352193389%_
                            _%hd193353193392%_
                            _%tl193354193394%_
                            _%e193355193397%_
                            _%hd193356193400%_
                            _%tl193357193402%_
                            _%e193358193405%_
                            _%hd193359193408%_
                            _%tl193360193410%_
                            _%e193361193413%_
                            _%hd193362193416%_
                            _%tl193363193418%_
                            _%__splice203763203764%_
                            _%target193364193421%_
                            _%tl193366193423%_)
                     (letrec ((_%loop193367193426%_
                               (lambda (_%hd193365193429%_
                                        _%rand193371193431%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193365193429%_))
                                     (let ((_%e193368193433%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193365193429%_))))
                                       (let ((_%lp-tl193370193438%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193368193433%_)))
                                             (_%lp-hd193369193436%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193368193433%_))))
                                         (_%loop193367193426%_
                                          _%lp-tl193370193438%_
                                          (cons _%lp-hd193369193436%_
                                                _%rand193371193431%_))))
                                     (let ((_%rand193372193441%_
                                            (reverse _%rand193371193431%_)))
                                       (let ((_%g193350193443%_
                                              _%rand193372193441%_)
                                             (_%g193351193444%_
                                              _%hd193362193416%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g193351193444%_
                                                'values))
                                             (_%__kont203761203762%_
                                              _%g193350193443%_
                                              _%g193351193444%_)
                                             (_%__kont203765203766%_))))))))
                       (_%loop193367193426%_ _%target193364193421%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203759203760%_))
                  (let ((_%e193352193389%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx203759203760%_))))
                    (let ((_%tl193354193394%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193352193389%_)))
                          (_%hd193353193392%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193352193389%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193354193394%_))
                          (let ((_%e193355193397%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193354193394%_))))
                            (let ((_%tl193357193402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193355193397%_)))
                                  (_%hd193356193400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193355193397%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193356193400%_))
                                  (let ((_%e193358193405%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193356193400%_))))
                                    (let ((_%tl193360193410%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193358193405%_)))
                                          (_%hd193359193408%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193358193405%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193359193408%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193359193408%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193360193410%_))
                                                  (let ((_%e193361193413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193360193410%_))))
                                                    (let ((_%tl193363193418%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193361193413%_)))
                                                          (_%hd193362193416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193361193413%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193363193418%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl193357193402%_))
                      (let ((_%__splice203763203764%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl193357193402%_
                                '0))))
                        (let ((_%tl193366193423%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203763203764%_ '1)))
                              (_%target193364193421%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203763203764%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193366193423%_))
                              (_%__match203804203805%_
                               _%e193352193389%_
                               _%hd193353193392%_
                               _%tl193354193394%_
                               _%e193355193397%_
                               _%hd193356193400%_
                               _%tl193357193402%_
                               _%e193358193405%_
                               _%hd193359193408%_
                               _%tl193360193410%_
                               _%e193361193413%_
                               _%hd193362193416%_
                               _%tl193363193418%_
                               _%__splice203763203764%_
                               _%target193364193421%_
                               _%tl193366193423%_)
                              (_%__kont203765203766%_))))
                      (_%__kont203765203766%_))
                  (_%__kont203765203766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont203765203766%_))
                                              (_%__kont203765203766%_))
                                          (_%__kont203765203766%_))))
                                  (_%__kont203765203766%_))))
                          (_%__kont203765203766%_))))
                  (_%__kont203765203766%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self193249%_ _%stx193250%_)
        (let* ((_%g193252193273%_
                (lambda (_%g193253193270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193253193270%_))))
               (_%g193251193341%_
                (lambda (_%g193253193276%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193253193276%_))
                      (let ((_%e193257193278%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193253193276%_))))
                        (let ((_%hd193258193281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193257193278%_)))
                              (_%tl193259193283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193257193278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193259193283%_))
                              (let ((_%e193260193286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193259193283%_))))
                                (let ((_%hd193261193289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193260193286%_)))
                                      (_%tl193262193291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193260193286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193262193291%_))
                                      (let ((_%e193263193294%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193262193291%_))))
                                        (let ((_%hd193264193297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193263193294%_)))
                                              (_%tl193265193299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193263193294%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193265193299%_))
                                              (let ((_%e193266193302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193265193299%_))))
                                                (let ((_%hd193267193305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193266193302%_)))
                                                      (_%tl193268193307%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193266193302%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193268193307%_))
                                                      ((lambda (_%g193254193310%_
                                                                _%g193255193311%_
                                                                _%g193256193312%_)
                                                         (let ((_%c1193329193331%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self193249%_
                           _%g193255193311%_))))
                   (if _%c1193329193331%_
                       (let* ((_%c1193333%_ _%c1193329193331%_)
                              (_%c2193334193336%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self193249%_
                                  _%g193254193310%_))))
                         (if _%c2193334193336%_
                             (let ((_%c2193338%_ _%c2193334193336%_))
                               (if (fx= _%c1193333%_ _%c2193338%_)
                                   _%c1193333%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd193267193305%_
               _%hd193264193297%_
               _%hd193261193289%_)
              (_%g193252193273%_ _%g193253193276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g193252193273%_
                                               _%g193253193276%_))))
                                      (_%g193252193273%_ _%g193253193276%_))))
                              (_%g193252193273%_ _%g193253193276%_))))
                      (_%g193252193273%_ _%g193253193276%_)))))
          (_%g193251193341%_ _%stx193250%_))))))
