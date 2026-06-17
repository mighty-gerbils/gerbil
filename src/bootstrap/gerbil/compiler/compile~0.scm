(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1781697564)
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
      (let ((__tmp210952 (list gxc#::void::t))
            (__tmp210951 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp210952
         '()
         __tmp210951
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args209566%_
        (apply make-instance gxc#::collect-bindings::t _%$args209566%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp210953
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
        (__make-atomic-promise __tmp210953)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx209558%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self209561%_
                (let ((__obj210927
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj210927))
               (__tmp210954
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209561%_ _%stx209558%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210954
           gxc#current-compile-method
           _%self209561%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp210956 (list gxc#::void::t))
            (__tmp210955 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp210956
         '(modules)
         __tmp210955
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args209555%_
        (apply make-instance gxc#::lift-modules::t _%$args209555%_)))
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
      (let ((__tmp210957
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
        (__make-atomic-promise __tmp210957)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords209530%_ _%$%modules209527209531%_ _%stx209532%_)
        (let ((_%modules209535%_
               (if (eq? _%$%modules209527209531%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules209527209531%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self209537%_
                  (let ((__obj210929
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210929
                       _%modules209535%_
                       '1
                       '#f
                       '#f))
                    __obj210929))
                 (__tmp210958
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209537%_ _%stx209532%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210958
             gxc#current-compile-method
             _%self209537%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords209544%_ . _%args209545%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords209544%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209544%_
                  'modules:
                  absent-value))
               _%args209545%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args209528209551%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args209528209551%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp210960 (list)) (__tmp210959 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp210960
         '()
         __tmp210959
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args209523%_
        (apply make-instance gxc#::find-runtime-code::t _%$args209523%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp210961
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
        (__make-atomic-promise __tmp210961)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx209515%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self209518%_
                (let ((__obj210931
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj210931))
               (__tmp210962
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209518%_ _%stx209515%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210962
           gxc#current-compile-method
           _%self209518%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp210964 (list gxc#::false::t))
            (__tmp210963 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp210964
         '()
         __tmp210963
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args209512%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args209512%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp210965
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
        (__make-atomic-promise __tmp210965)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx209504%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self209507%_
                (let ((__obj210933
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj210933))
               (__tmp210966
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209507%_ _%stx209504%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210966
           gxc#current-compile-method
           _%self209507%_))))
    (define gxc#::count-values::t
      (let ((__tmp210968 (list gxc#::false-expression::t))
            (__tmp210967 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp210968
         '()
         __tmp210967
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args209501%_
        (apply make-instance gxc#::count-values::t _%$args209501%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp210969
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
        (__make-atomic-promise __tmp210969)))
    (define gxc#apply-count-values
      (lambda (_%stx209493%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self209496%_
                (let ((__obj210935
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj210935))
               (__tmp210970
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209496%_ _%stx209493%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210970
           gxc#current-compile-method
           _%self209496%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp210971 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp210971
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args209490%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args209490%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp210972
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
        (__make-atomic-promise __tmp210972)))
    (define gxc#::generate-loader::t
      (let ((__tmp210974 (list gxc#::generate-runtime-empty::t))
            (__tmp210973 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp210974
         '()
         __tmp210973
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args209486%_
        (apply make-instance gxc#::generate-loader::t _%$args209486%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp210975
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
        (__make-atomic-promise __tmp210975)))
    (define gxc#apply-generate-loader
      (lambda (_%stx209478%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self209481%_
                (let ((__obj210938
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj210938))
               (__tmp210976
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209481%_ _%stx209478%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210976
           gxc#current-compile-method
           _%self209481%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp210977 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp210977
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args209475%_
        (apply make-instance gxc#::generate-runtime::t _%$args209475%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp210978
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
        (__make-atomic-promise __tmp210978)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx209467%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self209470%_
                (let ((__obj210940
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj210940))
               (__tmp210979
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209470%_ _%stx209467%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210979
           gxc#current-compile-method
           _%self209470%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp210981 (list gxc#::generate-runtime::t))
            (__tmp210980 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp210981
         '()
         __tmp210980
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args209464%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args209464%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp210982
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
        (__make-atomic-promise __tmp210982)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx209456%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self209459%_
                (let ((__obj210942
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj210942))
               (__tmp210983
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209459%_ _%stx209456%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210983
           gxc#current-compile-method
           _%self209459%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp210984 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp210984
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args209453%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args209453%_)))
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
      (let ((__tmp210985
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
        (__make-atomic-promise __tmp210985)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords209428%_ _%$%table209425209429%_ _%stx209430%_)
        (let ((_%table209433%_
               (if (eq? _%$%table209425209429%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table209425209429%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self209435%_
                  (let ((__obj210944
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210944
                       _%table209433%_
                       '1
                       '#f
                       '#f))
                    __obj210944))
                 (__tmp210986
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209435%_ _%stx209430%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210986
             gxc#current-compile-method
             _%self209435%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords209442%_ . _%args209443%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords209442%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209442%_
                  'table:
                  absent-value))
               _%args209443%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args209426209449%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args209426209449%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp210988 (list gxc#::void-expression::t))
            (__tmp210987 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp210988
         '(state)
         __tmp210987
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args209421%_
        (apply make-instance gxc#::generate-meta::t _%$args209421%_)))
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
      (let ((__tmp210989
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
        (__make-atomic-promise __tmp210989)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords209396%_ _%$%state209393209397%_ _%stx209398%_)
        (let ((_%state209401%_
               (if (eq? _%$%state209393209397%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state209393209397%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self209403%_
                  (let ((__obj210946
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210946
                       _%state209401%_
                       '1
                       '#f
                       '#f))
                    __obj210946))
                 (__tmp210990
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209403%_ _%stx209398%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210990
             gxc#current-compile-method
             _%self209403%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords209410%_ . _%args209411%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords209410%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209410%_
                  'state:
                  absent-value))
               _%args209411%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args209394209417%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args209394209417%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp210992 (list)) (__tmp210991 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp210992
         '(state)
         __tmp210991
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args209389%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args209389%_)))
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
      (let ((__tmp210993
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
        (__make-atomic-promise __tmp210993)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords209364%_ _%$%state209361209365%_ _%stx209366%_)
        (let ((_%state209369%_
               (if (eq? _%$%state209361209365%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state209361209365%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self209371%_
                  (let ((__obj210948
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj210948
                       _%state209369%_
                       '1
                       '#f
                       '#f))
                    __obj210948))
                 (__tmp210994
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209371%_ _%stx209366%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210994
             gxc#current-compile-method
             _%self209371%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords209378%_ . _%args209379%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords209378%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209378%_
                  'state:
                  absent-value))
               _%args209379%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args209362209385%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args209362209385%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self209290%_ _%stx209291%_)
        (let* ((_%$%g209293209310%_
                (lambda (_%$%g209294209307%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209294209307%_))))
               (_%$%g209292209357%_
                (lambda (_%$%g209294209313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209294209313%_))
                      (let ((_%$%e209297209315%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209294209313%_))))
                        (let ((_%$%hd209298209318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209297209315%_)))
                              (_%$%tl209299209320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209297209315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209299209320%_))
                              (let ((_%$%e209300209323%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209299209320%_))))
                                (let ((_%$%hd209301209326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209300209323%_)))
                                      (_%$%tl209302209328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209300209323%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209302209328%_))
                                      (let ((_%$%e209303209331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209302209328%_))))
                                        (let ((_%$%hd209304209334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209303209331%_)))
                                              (_%$%tl209305209336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209303209331%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl209305209336%_))
                                              (let ((__tmp210995
                                                     (lambda (_%bind209355%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind209355%_))
                                                           (gxc#add-module-binding!
                                                            _%bind209355%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp210995
                                                 _%$%hd209301209326%_))
                                              (_%$%g209293209310%_
                                               _%$%g209294209313%_))))
                                      (_%$%g209293209310%_
                                       _%$%g209294209313%_))))
                              (_%$%g209293209310%_ _%$%g209294209313%_))))
                      (_%$%g209293209310%_ _%$%g209294209313%_)))))
          (_%$%g209292209357%_ _%stx209291%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self209222%_ _%stx209223%_)
        (let* ((_%$%g209225209242%_
                (lambda (_%$%g209226209239%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209226209239%_))))
               (_%$%g209224209287%_
                (lambda (_%$%g209226209245%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209226209245%_))
                      (let ((_%$%e209229209247%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209226209245%_))))
                        (let ((_%$%hd209230209250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209229209247%_)))
                              (_%$%tl209231209252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209229209247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209231209252%_))
                              (let ((_%$%e209232209255%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209231209252%_))))
                                (let ((_%$%hd209233209258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209232209255%_)))
                                      (_%$%tl209234209260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209232209255%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209234209260%_))
                                      (let ((_%$%e209235209263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209234209260%_))))
                                        (let ((_%$%hd209236209266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209235209263%_)))
                                              (_%$%tl209237209268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209235209263%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl209237209268%_))
                                              (gxc#add-module-binding!
                                               _%$%hd209233209258%_
                                               '#t)
                                              (_%$%g209225209242%_
                                               _%$%g209226209245%_))))
                                      (_%$%g209225209242%_
                                       _%$%g209226209245%_))))
                              (_%$%g209225209242%_ _%$%g209226209245%_))))
                      (_%$%g209225209242%_ _%$%g209226209245%_)))))
          (_%$%g209224209287%_ _%stx209223%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self209164%_ _%stx209165%_)
        (let* ((_%$%g209167209181%_
                (lambda (_%$%g209168209178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209168209178%_))))
               (_%$%g209166209219%_
                (lambda (_%$%g209168209184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209168209184%_))
                      (let ((_%$%e209171209186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209168209184%_))))
                        (let ((_%$%hd209172209189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209171209186%_)))
                              (_%$%tl209173209191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209171209186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209173209191%_))
                              (let ((_%$%e209174209194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209173209191%_))))
                                (let ((_%$%hd209175209197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209174209194%_)))
                                      (_%$%tl209176209199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209174209194%_))))
                                  (let ((_%ctx209216%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd209175209197%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self209164%_ 'modules))
                                     (cons _%ctx209216%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self209164%_
                                                     'modules)))))
                                    (let ((__tmp210996
                                           (lambda ()
                                             (let ((__tmp210997
                                                    (##structure-ref
                                                     _%ctx209216%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self209164%_
                                                __tmp210997)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp210996
                                       gx#current-expander-context
                                       _%ctx209216%_)))))
                              (_%$%g209167209181%_ _%$%g209168209184%_))))
                      (_%$%g209167209181%_ _%$%g209168209184%_)))))
          (_%$%g209166209219%_ _%stx209165%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls209118209120%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls209118209120%_
              (let ((_%decls209122%_ _%$%decls209118209120%_))
                (let _%lp209124%_ ((_%rest209126%_ _%decls209122%_))
                  (let* ((_%$%rest209127209135%_ _%rest209126%_)
                         (_%$%else209129209143%_ (lambda () '#f))
                         (_%$%K209131209152%_
                          (lambda (_%decls209146%_ _%decl209147%_)
                            (if (equal? _%decl209147%_ '(not safe))
                                '#t
                                (if (equal? _%decl209147%_ '(safe))
                                    '#f
                                    (_%lp209124%_ _%decls209146%_))))))
                    (if (pair? _%$%rest209127209135%_)
                        (let ((_%$%hd209132209155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest209127209135%_)))
                              (_%$%tl209133209157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest209127209135%_))))
                          (let* ((_%decl209160%_ _%$%hd209132209155%_)
                                 (_%decls209162%_ _%$%tl209133209157%_))
                            (_%$%K209131209152%_
                             _%decls209162%_
                             _%decl209160%_)))
                        (_%$%else209129209143%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id209112%_ _%syntax?209113%_)
        (let ((_%eid209115%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id209112%_))
                '1
                gx#binding::t
                '#f))
              (_%ht209116%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid209115%_))
              '#!void
              (let ((__tmp210998
                     (let ((__tmp210999
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid209115%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp210999 _%syntax?209113%_))))
                (declare (not safe))
                (hash-put! _%ht209116%_ _%eid209115%_ __tmp210998))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self209109%_ _%stx209110%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self208956%_ _%stx208957%_)
        (letrec ((_%simplify208959%_
                  (lambda (_%body209007%_)
                    (let _%lp209009%_ ((_%rest209011%_ _%body209007%_)
                                       (_%r209012%_ '()))
                      (let* ((_%$%rest209013209021%_ _%rest209011%_)
                             (_%$%else209015209029%_
                              (lambda () (reverse _%r209012%_)))
                             (_%$%K209017209097%_
                              (lambda (_%rest209032%_ _%hd209033%_)
                                (let* ((_%$%hd209034209050%_ _%hd209033%_)
                                       (_%$%else209038209058%_
                                        (lambda ()
                                          (_%lp209009%_
                                           _%rest209032%_
                                           (cons _%hd209033%_ _%r209012%_)))))
                                  (let ((_%$%K209046209087%_
                                         (lambda (_%exprs209085%_)
                                           (_%lp209009%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest209032%_
                                               _%exprs209085%_))
                                            _%r209012%_)))
                                        (_%$%K209041209071%_
                                         (lambda ()
                                           (if (null? _%rest209032%_)
                                               (_%lp209009%_
                                                _%rest209032%_
                                                (cons _%hd209033%_
                                                      _%r209012%_))
                                               (_%lp209009%_
                                                _%rest209032%_
                                                _%r209012%_))))
                                        (_%$%K209040209063%_
                                         (lambda ()
                                           (if (null? _%rest209032%_)
                                               (_%lp209009%_
                                                _%rest209032%_
                                                (cons _%hd209033%_
                                                      _%r209012%_))
                                               (_%lp209009%_
                                                _%rest209032%_
                                                _%r209012%_)))))
                                    (let ((_%$%try-match209037209066%_
                                           (lambda ()
                                             (if (symbol? _%$%hd209034209050%_)
                                                 (_%$%K209040209063%_)
                                                 (_%$%else209038209058%_)))))
                                      (if (pair? _%$%hd209034209050%_)
                                          (let ((_%$%tl209048209092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd209034209050%_)))
                                                (_%$%hd209047209090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd209034209050%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd209047209090%_
                                                         'begin))
                                                (let ((_%exprs209095%_
                                                       _%$%tl209048209092%_))
                                                  (_%$%K209046209087%_
                                                   _%exprs209095%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd209047209090%_
                                                             'quote))
                                                    (if (pair? _%$%tl209048209092%_)
                                                        (let ((_%$%tl209045209079%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl209048209092%_))))
                  (if (null? _%$%tl209045209079%_)
                      (_%$%K209041209071%_)
                      (_%$%try-match209037209066%_)))
                (_%$%try-match209037209066%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match209037209066%_))))
                                          (_%$%try-match209037209066%_))))))))
                        (if (pair? _%$%rest209013209021%_)
                            (let ((_%$%hd209018209100%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest209013209021%_)))
                                  (_%$%tl209019209102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest209013209021%_))))
                              (let* ((_%hd209105%_ _%$%hd209018209100%_)
                                     (_%rest209107%_ _%$%tl209019209102%_))
                                (_%$%K209017209097%_
                                 _%rest209107%_
                                 _%hd209105%_)))
                            (_%$%else209015209029%_)))))))
          (let* ((_%$%g208961208971%_
                  (lambda (_%$%g208962208968%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208962208968%_))))
                 (_%$%g208960209004%_
                  (lambda (_%$%g208962208974%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208962208974%_))
                        (let ((_%$%e208964208976%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208962208974%_))))
                          (let ((_%$%hd208965208979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208964208976%_)))
                                (_%$%tl208966208981%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208964208976%_))))
                            (let* ((_%body208999%_
                                    (map (lambda (_%$%g208994208996%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self208956%_
                                              _%$%g208994208996%_)))
                                         _%$%tl208966208981%_))
                                   (_%body209001%_
                                    (_%simplify208959%_ _%body208999%_)))
                              (if (let ((__tmp211000 (length _%body209001%_)))
                                    (declare (not safe))
                                    (##fx= __tmp211000 '1))
                                  (car _%body209001%_)
                                  (cons 'begin _%body209001%_)))))
                        (_%$%g208961208971%_ _%$%g208962208974%_)))))
            (_%$%g208960209004%_ _%stx208957%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self208917%_ _%stx208918%_)
        (let* ((_%$%g208920208930%_
                (lambda (_%$%g208921208927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208921208927%_))))
               (_%$%g208919208953%_
                (lambda (_%$%g208921208933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208921208933%_))
                      (let ((_%$%e208923208935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208921208933%_))))
                        (let ((_%$%hd208924208938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208923208935%_)))
                              (_%$%tl208925208940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208923208935%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl208925208940%_)))))
                      (_%$%g208920208930%_ _%$%g208921208933%_)))))
          (_%$%g208919208953%_ _%stx208918%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self208683%_ _%stx208684%_)
        (let* ((_%__stx209590209591%_ _%stx208684%_)
               (_%$%g208688208740%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209590209591%_)))))
          (let ((_%__kont209592209593%_
                 (lambda (_%$%g208690208899%_ _%$%g208691208900%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self208683%_ _%$%g208690208899%_))))
                (_%__kont209594209595%_
                 (lambda (_%$%g208701208847%_
                          _%$%g208702208848%_
                          _%$%g208703208849%_)
                   (if (let ((__tmp211001
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g208703208849%_))))
                         (declare (not safe))
                         (##memq __tmp211001 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self208683%_
                          _%$%g208701208847%_)))))
                (_%__kont209598209599%_
                 (lambda (_%$%g208725208769%_ _%$%g208726208770%_)
                   (let ((_%decls208785%_
                          (map gx#syntax->datum _%$%g208726208770%_)))
                     (let ((__tmp211004
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls208785%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self208683%_
                                                   _%$%g208725208769%_))
                                                '())))))
                           (__tmp211002
                            (let ((__tmp211003
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp211003 _%decls208785%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp211004
                        gxc#current-compile-decls
                        __tmp211002))))))
            (let* ((_%__match209645209646%_
                    (lambda (_%$%e208704208793%_
                             _%$%hd208705208796%_
                             _%$%tl208706208798%_
                             _%$%e208707208801%_
                             _%$%hd208708208804%_
                             _%$%tl208709208806%_
                             _%$%e208710208809%_
                             _%$%hd208711208812%_
                             _%$%tl208712208814%_
                             _%__splice209596209597%_
                             _%$%target208713208817%_
                             _%$%tl208715208819%_)
                      (letrec ((_%$%loop208716208822%_
                                (lambda (_%$%hd208714208825%_
                                         _%$%param208720208827%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd208714208825%_))
                                      (let ((_%$%e208717208829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd208714208825%_))))
                                        (let ((_%$%lp-tl208719208834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208717208829%_)))
                                              (_%$%lp-hd208718208832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208717208829%_))))
                                          (_%$%loop208716208822%_
                                           _%$%lp-tl208719208834%_
                                           (cons _%$%lp-hd208718208832%_
                                                 _%$%param208720208827%_))))
                                      (let ((_%$%param208721208837%_
                                             (reverse _%$%param208720208827%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl208709208806%_))
                                            (let ((_%$%e208722208839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl208709208806%_))))
                                              (let ((_%$%tl208724208844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e208722208839%_)))
                                                    (_%$%hd208723208842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e208722208839%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl208724208844%_))
                                                    (let ((_%$%g208701208847%_
                                                           _%$%hd208723208842%_)
                                                          (_%$%g208702208848%_
                                                           _%$%param208721208837%_)
                                                          (_%$%g208703208849%_
                                                           _%$%hd208711208812%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g208703208849%_))
                       (not (let ((__tmp211005
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g208703208849%_))))
                              (declare (not safe))
                              (##memq __tmp211005 gxc#gambit-annotations))))
                  (_%__kont209594209595%_
                   _%$%g208701208847%_
                   _%$%g208702208848%_
                   _%$%g208703208849%_)
                  (_%__kont209598209599%_
                   _%$%hd208723208842%_
                   _%$%hd208708208804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g208688208740%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g208688208740%_))))))))
                        (_%$%loop208716208822%_
                         _%$%target208713208817%_
                         '()))))
                   (_%__match209619209620%_
                    (lambda (_%$%e208692208875%_
                             _%$%hd208693208878%_
                             _%$%tl208694208880%_
                             _%$%e208695208883%_
                             _%$%hd208696208886%_
                             _%$%tl208697208888%_
                             _%$%e208698208891%_
                             _%$%hd208699208894%_
                             _%$%tl208700208896%_)
                      (let ((_%$%g208690208899%_ _%$%hd208699208894%_)
                            (_%$%g208691208900%_ _%$%hd208696208886%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g208691208900%_))
                            (_%__kont209592209593%_
                             _%$%g208690208899%_
                             _%$%g208691208900%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd208696208886%_))
                                (let ((_%$%e208710208809%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd208696208886%_))))
                                  (let ((_%$%tl208712208814%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208710208809%_)))
                                        (_%$%hd208711208812%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208710208809%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl208712208814%_))
                                        (let ((_%__splice209596209597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl208712208814%_
                                                  '0))))
                                          (let ((_%$%tl208715208819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice209596209597%_
                                                    '1)))
                                                (_%$%target208713208817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice209596209597%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl208715208819%_))
                                                (_%__match209645209646%_
                                                 _%$%e208692208875%_
                                                 _%$%hd208693208878%_
                                                 _%$%tl208694208880%_
                                                 _%$%e208695208883%_
                                                 _%$%hd208696208886%_
                                                 _%$%tl208697208888%_
                                                 _%$%e208710208809%_
                                                 _%$%hd208711208812%_
                                                 _%$%tl208712208814%_
                                                 _%__splice209596209597%_
                                                 _%$%target208713208817%_
                                                 _%$%tl208715208819%_)
                                                (_%__kont209598209599%_
                                                 _%$%hd208699208894%_
                                                 _%$%hd208696208886%_))))
                                        (_%__kont209598209599%_
                                         _%$%hd208699208894%_
                                         _%$%hd208696208886%_))))
                                (_%__kont209598209599%_
                                 _%$%hd208699208894%_
                                 _%$%hd208696208886%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209590209591%_))
                  (let ((_%$%e208692208875%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209590209591%_))))
                    (let ((_%$%tl208694208880%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208692208875%_)))
                          (_%$%hd208693208878%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208692208875%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl208694208880%_))
                          (let ((_%$%e208695208883%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl208694208880%_))))
                            (let ((_%$%tl208697208888%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208695208883%_)))
                                  (_%$%hd208696208886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208695208883%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl208697208888%_))
                                  (let ((_%$%e208698208891%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl208697208888%_))))
                                    (let ((_%$%tl208700208896%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208698208891%_)))
                                          (_%$%hd208699208894%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208698208891%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208700208896%_))
                                          (_%__match209619209620%_
                                           _%$%e208692208875%_
                                           _%$%hd208693208878%_
                                           _%$%tl208694208880%_
                                           _%$%e208695208883%_
                                           _%$%hd208696208886%_
                                           _%$%tl208697208888%_
                                           _%$%e208698208891%_
                                           _%$%hd208699208894%_
                                           _%$%tl208700208896%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd208696208886%_))
                                              (let ((_%$%e208710208809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd208696208886%_))))
                                                (let ((_%$%tl208712208814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208710208809%_)))
                                                      (_%$%hd208711208812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208710208809%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl208712208814%_))
                                                      (let ((_%__splice209596209597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl208712208814%_
                        '0))))
                (let ((_%$%tl208715208819%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209596209597%_ '1)))
                      (_%$%target208713208817%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209596209597%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl208715208819%_))
                      (_%__match209645209646%_
                       _%$%e208692208875%_
                       _%$%hd208693208878%_
                       _%$%tl208694208880%_
                       _%$%e208695208883%_
                       _%$%hd208696208886%_
                       _%$%tl208697208888%_
                       _%$%e208710208809%_
                       _%$%hd208711208812%_
                       _%$%tl208712208814%_
                       _%__splice209596209597%_
                       _%$%target208713208817%_
                       _%$%tl208715208819%_)
                      (let () (declare (not safe)) (_%$%g208688208740%_)))))
              (let () (declare (not safe)) (_%$%g208688208740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g208688208740%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd208696208886%_))
                                      (let ((_%$%e208710208809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd208696208886%_))))
                                        (let ((_%$%tl208712208814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208710208809%_)))
                                              (_%$%hd208711208812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208710208809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl208712208814%_))
                                              (let ((_%__splice209596209597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl208712208814%_
                                                        '0))))
                                                (let ((_%$%tl208715208819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209596209597%_
                                                          '1)))
                                                      (_%$%target208713208817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209596209597%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208715208819%_))
                                                      (_%__match209645209646%_
                                                       _%$%e208692208875%_
                                                       _%$%hd208693208878%_
                                                       _%$%tl208694208880%_
                                                       _%$%e208695208883%_
                                                       _%$%hd208696208886%_
                                                       _%$%tl208697208888%_
                                                       _%$%e208710208809%_
                                                       _%$%hd208711208812%_
                                                       _%$%tl208712208814%_
                                                       _%__splice209596209597%_
                                                       _%$%target208713208817%_
                                                       _%$%tl208715208819%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g208688208740%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g208688208740%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g208688208740%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g208688208740%_)))))
                  (let () (declare (not safe)) (_%$%g208688208740%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self208642%_ _%stx208643%_)
        (let* ((_%$%g208645208655%_
                (lambda (_%$%g208646208652%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208646208652%_))))
               (_%$%g208644208680%_
                (lambda (_%$%g208646208658%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208646208658%_))
                      (let ((_%$%e208648208660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208646208658%_))))
                        (let ((_%$%hd208649208663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208648208660%_)))
                              (_%$%tl208650208665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208648208660%_))))
                          (let ((_%decls208678%_
                                 (map gx#syntax->datum _%$%tl208650208665%_)))
                            (let ((__tmp211006
                                   (let ((__tmp211007
                                          (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls))))
                                     (declare (not safe))
                                     (foldr__0
                                      cons
                                      __tmp211007
                                      _%decls208678%_))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp211006))
                            (cons 'declare _%decls208678%_))))
                      (_%$%g208645208655%_ _%$%g208646208658%_)))))
          (_%$%g208644208680%_ _%stx208643%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self208389%_ _%stx208390%_)
        (let* ((_%$%g208392208409%_
                (lambda (_%$%g208393208406%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208393208406%_))))
               (_%$%g208391208639%_
                (lambda (_%$%g208393208412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208393208412%_))
                      (let ((_%$%e208396208414%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208393208412%_))))
                        (let ((_%$%hd208397208417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208396208414%_)))
                              (_%$%tl208398208419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208396208414%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208398208419%_))
                              (let ((_%$%e208399208422%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208398208419%_))))
                                (let ((_%$%hd208400208425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208399208422%_)))
                                      (_%$%tl208401208427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208399208422%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208401208427%_))
                                      (let ((_%$%e208402208430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208401208427%_))))
                                        (let ((_%$%hd208403208433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208402208430%_)))
                                              (_%$%tl208404208435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208402208430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208404208435%_))
                                              (let* ((_%__stx209698209699%_
                                                      _%$%hd208400208425%_)
                                                     (_%$%g208456208470%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx209698209699%_)))))
                                                (let ((_%__kont209700209701%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self208389%_
                                                            _%$%hd208403208433%_))))
                                                      (_%__kont209702209703%_
                                                       (lambda (_%$%g208462208602%_)
                                                         (let ((_%eid208611%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g208462208602%_))))
                   (let ((_%$%lambda-expr208612208614%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd208403208433%_)))
                     (if _%$%lambda-expr208612208614%_
                         (let* ((_%lambda-expr208616%_
                                 _%$%lambda-expr208612208614%_)
                                (__tmp211008
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp211008
                            _%lambda-expr208616%_
                            _%eid208611%_))
                         '#f))
                   (cons 'define
                         (cons _%eid208611%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self208389%_
                                        _%$%hd208403208433%_))
                                     '()))))))
              (_%__kont209704209705%_
               (lambda ()
                 (let* ((_%tmp208477%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body208586%_
                         (let _%lp208479%_ ((_%rest208481%_
                                             _%$%hd208400208425%_)
                                            (_%k208482%_ '0)
                                            (_%r208483%_ '()))
                           (let* ((_%__stx209668209669%_ _%rest208481%_)
                                  (_%$%g208488208505%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx209668209669%_)))))
                             (let ((_%__kont209670209671%_
                                    (lambda (_%$%g208490208573%_)
                                      (_%lp208479%_
                                       _%$%g208490208573%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k208482%_ '1))
                                       _%r208483%_)))
                                   (_%__kont209672209673%_
                                    (lambda (_%$%g208495208546%_
                                             _%$%g208496208547%_)
                                      (_%lp208479%_
                                       _%$%g208495208546%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k208482%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g208496208547%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp208477%_
                                                                _%k208482%_
                                                                _%$%g208495208546%_)
                                                               '())))
                                             _%r208483%_))))
                                   (_%__kont209674209675%_
                                    (lambda (_%$%g208500208517%_)
                                      (let ((__tmp211009
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g208500208517%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp208477%_
                              _%k208482%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp211009
                                         _%r208483%_))))
                                   (_%__kont209676209677%_
                                    (lambda () (reverse _%r208483%_))))
                               (let ((_%$%g208486208533%_
                                      (lambda ()
                                        (let ((_%$%g208500208517%_
                                               _%__stx209668209669%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g208500208517%_))
                                              (_%__kont209674209675%_
                                               _%$%g208500208517%_)
                                              (_%__kont209676209677%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx209668209669%_))
                                     (let ((_%$%e208491208562%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx209668209669%_))))
                                       (let ((_%$%tl208493208567%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e208491208562%_)))
                                             (_%$%hd208492208565%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e208491208562%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd208492208565%_))
                                             (let ((_%$%e208494208570%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd208492208565%_))))
                                               (if (equal? _%$%e208494208570%_
                                                           '#f)
                                                   (_%__kont209670209671%_
                                                    _%$%tl208493208567%_)
                                                   (_%__kont209672209673%_
                                                    _%$%tl208493208567%_
                                                    _%$%hd208492208565%_)))
                                             (_%__kont209672209673%_
                                              _%$%tl208493208567%_
                                              _%$%hd208492208565%_))))
                                     (_%$%g208486208533%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp208477%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self208389%_
                                                    _%$%hd208403208433%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp208477%_
                                      _%$%hd208400208425%_
                                      _%$%hd208403208433%_)
                                     _%body208586%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx209698209699%_))
                                                      (let ((_%$%e208458208623%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx209698209699%_))))
                (let ((_%$%tl208460208628%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e208458208623%_)))
                      (_%$%hd208459208626%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e208458208623%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd208459208626%_))
                      (let ((_%$%e208461208631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd208459208626%_))))
                        (if (equal? _%$%e208461208631%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208460208628%_))
                                (_%__kont209700209701%_)
                                (_%__kont209704209705%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208460208628%_))
                                (_%__kont209702209703%_ _%$%hd208459208626%_)
                                (_%__kont209704209705%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl208460208628%_))
                          (_%__kont209702209703%_ _%$%hd208459208626%_)
                          (_%__kont209704209705%_)))))
              (_%__kont209704209705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208392208409%_
                                               _%$%g208393208412%_))))
                                      (_%$%g208392208409%_
                                       _%$%g208393208412%_))))
                              (_%$%g208392208409%_ _%$%g208393208412%_))))
                      (_%$%g208392208409%_ _%$%g208393208412%_)))))
          (_%$%g208391208639%_ _%stx208390%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals208364%_ _%hd208365%_ _%expr208366%_)
        (let ((_%$e208368%_ (gxc#apply-count-values _%expr208366%_)))
          (if _%$e208368%_
              (let ((_%len208373%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd208365%_)))
                    (_%cmp208374%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd208365%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len208373%_ '0))
                        (_%cmp208374%_ _%$e208368%_ _%len208373%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr208366%_
                       _%hd208365%_))))
              (let* ((_%len208380%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd208365%_)))
                     (_%cmp208382%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd208365%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg208384%_
                      (let ((__tmp211011
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd208365%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp211010 (number->string _%len208380%_)))
                        (declare (not safe))
                        (##string-append __tmp211011 __tmp211010 '" values")))
                     (_%count208386%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd208365%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len208380%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count208386%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals208364%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp208382%_
                                (cons _%count208386%_
                                      (cons _%len208380%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp208382%_
                                                        (cons _%count208386%_
                                                              (cons _%len208380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg208384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count208386%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var208359%_)
        (letrec ((_%generate-inline208361%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var208359%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var208359%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline208361%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline208361%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var208352%_ _%i208353%_ _%rest208354%_)
        (letrec ((_%generate-inline208356%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i208353%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest208354%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var208352%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var208352%_
                                                      (cons '0 '())))
                                          (cons _%var208352%_ '()))))
                        (cons '##values-ref
                              (cons _%var208352%_ (cons _%i208353%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline208356%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline208356%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var208346%_ _%i208347%_)
        (if (let () (declare (not safe)) (##fx= _%i208347%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var208346%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var208346%_ '()))
                                  (cons (cons 'list (cons _%var208346%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var208346%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var208346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var208346%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i208347%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var208346%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var208346%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var208346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var208346%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var208346%_ '()))
                                (cons _%i208347%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var208346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i208347%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self208278%_ _%stx208279%_)
        (let* ((_%$%g208281208298%_
                (lambda (_%$%g208282208295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208282208295%_))))
               (_%$%g208280208343%_
                (lambda (_%$%g208282208301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208282208301%_))
                      (let ((_%$%e208285208303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208282208301%_))))
                        (let ((_%$%hd208286208306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208285208303%_)))
                              (_%$%tl208287208308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208285208303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208287208308%_))
                              (let ((_%$%e208288208311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208287208308%_))))
                                (let ((_%$%hd208289208314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208288208311%_)))
                                      (_%$%tl208290208316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208288208311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208290208316%_))
                                      (let ((_%$%e208291208319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208290208316%_))))
                                        (let ((_%$%hd208292208322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208291208319%_)))
                                              (_%$%tl208293208324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208291208319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208293208324%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self208278%_
                                               _%$%hd208289208314%_
                                               _%$%hd208292208322%_)
                                              (_%$%g208281208298%_
                                               _%$%g208282208301%_))))
                                      (_%$%g208281208298%_
                                       _%$%g208282208301%_))))
                              (_%$%g208281208298%_ _%$%g208282208301%_))))
                      (_%$%g208281208298%_ _%$%g208282208301%_)))))
          (_%$%g208280208343%_ _%stx208279%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self208237%_ _%hd208238%_ _%body208239%_)
        (let* ((_%hd208241%_ (gxc#generate-runtime-lambda-head _%hd208238%_))
               (_%body208243%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self208237%_ _%body208239%_)))
               (_%body208275%_
                (let* ((_%$%body208244208252%_ _%body208243%_)
                       (_%$%else208246208260%_
                        (lambda () (cons _%body208243%_ '())))
                       (_%$%K208248208265%_
                        (lambda (_%exprs208263%_) _%exprs208263%_)))
                  (if (pair? _%$%body208244208252%_)
                      (let ((_%$%hd208249208268%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body208244208252%_)))
                            (_%$%tl208250208270%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body208244208252%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd208249208268%_ 'begin))
                            (let ((_%exprs208273%_ _%$%tl208250208270%_))
                              (_%$%K208248208265%_ _%exprs208273%_))
                            (_%$%else208246208260%_)))
                      (_%$%else208246208260%_)))))
          (cons 'lambda (cons _%hd208241%_ _%body208275%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd208235%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd208235%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self206792%_ _%stx206793%_)
        (letrec ((_%dispatch-case?206795%_
                  (lambda (_%hd207473%_ _%body207474%_)
                    (let* ((_%form207476%_
                            (cons _%hd207473%_ (cons _%body207474%_ '())))
                           (_%__stx209730209731%_ _%form207476%_)
                           (_%$%g207481207638%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx209730209731%_)))))
                      (let ((_%__kont209732209733%_
                             (lambda (_%$%g207483208155%_
                                      _%$%g207484208156%_
                                      _%$%g207485208157%_)
                               '#t))
                            (_%__kont209738209739%_
                             (lambda (_%$%g207528207947%_
                                      _%$%g207529207948%_
                                      _%$%g207530207949%_
                                      _%$%g207531207950%_
                                      _%$%g207532207951%_
                                      _%$%g207533207952%_)
                               '#t))
                            (_%__kont209744209745%_
                             (lambda (_%$%g207594207746%_
                                      _%$%g207595207747%_
                                      _%$%g207596207748%_
                                      _%$%g207597207749%_)
                               '#t))
                            (_%__kont209746209747%_ (lambda () '#f)))
                        (let* ((_%__match209871209872%_
                                (lambda (_%$%e207598207650%_
                                         _%$%hd207599207653%_
                                         _%$%tl207600207655%_
                                         _%$%e207601207658%_
                                         _%$%hd207602207661%_
                                         _%$%tl207603207663%_
                                         _%$%e207604207666%_
                                         _%$%hd207605207669%_
                                         _%$%tl207606207671%_
                                         _%$%e207607207674%_
                                         _%$%hd207608207677%_
                                         _%$%tl207609207679%_
                                         _%$%e207610207682%_
                                         _%$%hd207611207685%_
                                         _%$%tl207612207687%_
                                         _%$%e207613207690%_
                                         _%$%hd207614207693%_
                                         _%$%tl207615207695%_
                                         _%$%e207616207698%_
                                         _%$%hd207617207701%_
                                         _%$%tl207618207703%_
                                         _%$%e207619207706%_
                                         _%$%hd207620207709%_
                                         _%$%tl207621207711%_
                                         _%$%e207622207714%_
                                         _%$%hd207623207717%_
                                         _%$%tl207624207719%_
                                         _%$%e207625207722%_
                                         _%$%hd207626207725%_
                                         _%$%tl207627207727%_
                                         _%$%e207628207730%_
                                         _%$%hd207629207733%_
                                         _%$%tl207630207735%_
                                         _%$%e207631207738%_
                                         _%$%hd207632207741%_
                                         _%$%tl207633207743%_)
                                  (let ((_%$%g207594207746%_
                                         _%$%hd207632207741%_)
                                        (_%$%g207595207747%_
                                         _%$%hd207623207717%_)
                                        (_%$%g207596207748%_
                                         _%$%hd207614207693%_)
                                        (_%$%g207597207749%_
                                         _%$%hd207599207653%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g207597207749%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g207596207748%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g207597207749%_
                                                _%$%g207594207746%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g207595207747%_
                                                     _%$%g207597207749%_))))
                                        (_%__kont209744209745%_
                                         _%$%g207594207746%_
                                         _%$%g207595207747%_
                                         _%$%g207596207748%_
                                         _%$%g207597207749%_)
                                        (_%__kont209746209747%_)))))
                               (_%__match209843209844%_
                                (lambda (_%$%e207598207650%_
                                         _%$%hd207599207653%_
                                         _%$%tl207600207655%_
                                         _%$%e207601207658%_
                                         _%$%hd207602207661%_
                                         _%$%tl207603207663%_
                                         _%$%e207604207666%_
                                         _%$%hd207605207669%_
                                         _%$%tl207606207671%_
                                         _%$%e207607207674%_
                                         _%$%hd207608207677%_
                                         _%$%tl207609207679%_
                                         _%$%e207610207682%_
                                         _%$%hd207611207685%_
                                         _%$%tl207612207687%_
                                         _%$%e207613207690%_
                                         _%$%hd207614207693%_
                                         _%$%tl207615207695%_
                                         _%$%e207616207698%_
                                         _%$%hd207617207701%_
                                         _%$%tl207618207703%_
                                         _%$%e207619207706%_
                                         _%$%hd207620207709%_
                                         _%$%tl207621207711%_
                                         _%$%e207622207714%_
                                         _%$%hd207623207717%_
                                         _%$%tl207624207719%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207618207703%_))
                                      (let ((_%$%e207625207722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207618207703%_))))
                                        (let ((_%$%tl207627207727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207625207722%_)))
                                              (_%$%hd207626207725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207625207722%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd207626207725%_))
                                              (let ((_%$%e207628207730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd207626207725%_))))
                                                (let ((_%$%tl207630207735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207628207730%_)))
                                                      (_%$%hd207629207733%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207628207730%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd207629207733%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd207629207733%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl207630207735%_))
                      (let ((_%$%e207631207738%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl207630207735%_))))
                        (let ((_%$%tl207633207743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207631207738%_)))
                              (_%$%hd207632207741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207631207738%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl207633207743%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl207627207727%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl207603207663%_))
                                      (_%__match209871209872%_
                                       _%$%e207598207650%_
                                       _%$%hd207599207653%_
                                       _%$%tl207600207655%_
                                       _%$%e207601207658%_
                                       _%$%hd207602207661%_
                                       _%$%tl207603207663%_
                                       _%$%e207604207666%_
                                       _%$%hd207605207669%_
                                       _%$%tl207606207671%_
                                       _%$%e207607207674%_
                                       _%$%hd207608207677%_
                                       _%$%tl207609207679%_
                                       _%$%e207610207682%_
                                       _%$%hd207611207685%_
                                       _%$%tl207612207687%_
                                       _%$%e207613207690%_
                                       _%$%hd207614207693%_
                                       _%$%tl207615207695%_
                                       _%$%e207616207698%_
                                       _%$%hd207617207701%_
                                       _%$%tl207618207703%_
                                       _%$%e207619207706%_
                                       _%$%hd207620207709%_
                                       _%$%tl207621207711%_
                                       _%$%e207622207714%_
                                       _%$%hd207623207717%_
                                       _%$%tl207624207719%_
                                       _%$%e207625207722%_
                                       _%$%hd207626207725%_
                                       _%$%tl207627207727%_
                                       _%$%e207628207730%_
                                       _%$%hd207629207733%_
                                       _%$%tl207630207735%_
                                       _%$%e207631207738%_
                                       _%$%hd207632207741%_
                                       _%$%tl207633207743%_)
                                      (_%__kont209746209747%_))
                                  (_%__kont209746209747%_))
                              (_%__kont209746209747%_))))
                      (_%__kont209746209747%_))
                  (_%__kont209746209747%_))
              (_%__kont209746209747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont209746209747%_))))
                                      (_%__kont209746209747%_))))
                               (_%__match209773209774%_
                                (lambda (_%$%e207534207791%_
                                         _%$%hd207535207794%_
                                         _%$%tl207536207796%_
                                         _%__splice209740209741%_
                                         _%$%target207537207799%_
                                         _%$%tl207539207801%_)
                                  (letrec ((_%$%loop207540207804%_
                                            (lambda (_%$%hd207538207807%_
                                                     _%$%arg207544207809%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd207538207807%_))
                                                  (let ((_%$%e207541207811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd207538207807%_))))
                                                    (let ((_%$%lp-tl207543207816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207541207811%_)))
                                                          (_%$%lp-hd207542207814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207541207811%_))))
                                                      (_%$%loop207540207804%_
                                                       _%$%lp-tl207543207816%_
                                                       (cons _%$%lp-hd207542207814%_
                                                             _%$%arg207544207809%_))))
                                                  (let ((_%$%arg207545207819%_
                                                         (reverse _%$%arg207544207809%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl207536207796%_))
                                                        (let ((_%$%e207546207821%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl207536207796%_))))
                  (let ((_%$%tl207548207826%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e207546207821%_)))
                        (_%$%hd207547207824%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e207546207821%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd207547207824%_))
                        (let ((_%$%e207549207829%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd207547207824%_))))
                          (let ((_%$%tl207551207834%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207549207829%_)))
                                (_%$%hd207550207832%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207549207829%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd207550207832%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd207550207832%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl207551207834%_))
                                        (let ((_%$%e207552207837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl207551207834%_))))
                                          (let ((_%$%tl207554207842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207552207837%_)))
                                                (_%$%hd207553207840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207552207837%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd207553207840%_))
                                                (let ((_%$%e207555207845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd207553207840%_))))
                                                  (let ((_%$%tl207557207850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e207555207845%_)))
                                                        (_%$%hd207556207848%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e207555207845%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd207556207848%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd207556207848%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl207557207850%_))
                        (let ((_%$%e207558207853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl207557207850%_))))
                          (let ((_%$%tl207560207858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207558207853%_)))
                                (_%$%hd207559207856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207558207853%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl207560207858%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl207554207842%_))
                                    (let ((_%$%e207561207861%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl207554207842%_))))
                                      (let ((_%$%tl207563207866%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e207561207861%_)))
                                            (_%$%hd207562207864%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e207561207861%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd207562207864%_))
                                            (let ((_%$%e207564207869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd207562207864%_))))
                                              (let ((_%$%tl207566207874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e207564207869%_)))
                                                    (_%$%hd207565207872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e207564207869%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd207565207872%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd207565207872%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl207566207874%_))
                                                            (let ((_%$%e207567207877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl207566207874%_))))
                      (let ((_%$%tl207569207882%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e207567207877%_)))
                            (_%$%hd207568207880%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e207567207877%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl207569207882%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl207563207866%_))
                                (if (let ((__tmp211012
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl207563207866%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp211012 '1))
                                    (let ((_%__splice209742209743%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl207563207866%_
                                              '1))))
                                      (let ((_%$%tl207572207887%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice209742209743%_
                                                '1)))
                                            (_%$%target207570207885%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice209742209743%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl207572207887%_))
                                            (let ((_%$%e207579207890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl207572207887%_))))
                                              (let ((_%$%tl207581207895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e207579207890%_)))
                                                    (_%$%hd207580207893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e207579207890%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd207580207893%_))
                                                    (let ((_%$%e207582207898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd207580207893%_))))
                                                      (let ((_%$%tl207584207903%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e207582207898%_)))
                    (_%$%hd207583207901%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e207582207898%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd207583207901%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd207583207901%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl207584207903%_))
                            (let ((_%$%e207585207906%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl207584207903%_))))
                              (let ((_%$%tl207587207911%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e207585207906%_)))
                                    (_%$%hd207586207909%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e207585207906%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl207587207911%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl207581207895%_))
                                        (letrec ((_%$%loop207573207914%_
                                                  (lambda (_%$%hd207571207917%_
                                                           _%$%xarg207577207919%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd207571207917%_))
                                                        (let ((_%$%e207574207921%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd207571207917%_))))
                  (let ((_%$%lp-tl207576207926%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e207574207921%_)))
                        (_%$%lp-hd207575207924%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e207574207921%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd207575207924%_))
                        (let ((_%$%e207588207929%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd207575207924%_))))
                          (let ((_%$%tl207590207934%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207588207929%_)))
                                (_%$%hd207589207932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207588207929%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd207589207932%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd207589207932%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl207590207934%_))
                                        (let ((_%$%e207591207937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl207590207934%_))))
                                          (let ((_%$%tl207593207942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207591207937%_)))
                                                (_%$%hd207592207940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207591207937%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl207593207942%_))
                                                (_%$%loop207573207914%_
                                                 _%$%lp-tl207576207926%_
                                                 (cons _%$%hd207592207940%_
                                                       _%$%xarg207577207919%_))
                                                (_%__match209843209844%_
                                                 _%$%e207534207791%_
                                                 _%$%hd207535207794%_
                                                 _%$%tl207536207796%_
                                                 _%$%e207546207821%_
                                                 _%$%hd207547207824%_
                                                 _%$%tl207548207826%_
                                                 _%$%e207549207829%_
                                                 _%$%hd207550207832%_
                                                 _%$%tl207551207834%_
                                                 _%$%e207552207837%_
                                                 _%$%hd207553207840%_
                                                 _%$%tl207554207842%_
                                                 _%$%e207555207845%_
                                                 _%$%hd207556207848%_
                                                 _%$%tl207557207850%_
                                                 _%$%e207558207853%_
                                                 _%$%hd207559207856%_
                                                 _%$%tl207560207858%_
                                                 _%$%e207561207861%_
                                                 _%$%hd207562207864%_
                                                 _%$%tl207563207866%_
                                                 _%$%e207564207869%_
                                                 _%$%hd207565207872%_
                                                 _%$%tl207566207874%_
                                                 _%$%e207567207877%_
                                                 _%$%hd207568207880%_
                                                 _%$%tl207569207882%_))))
                                        (_%__match209843209844%_
                                         _%$%e207534207791%_
                                         _%$%hd207535207794%_
                                         _%$%tl207536207796%_
                                         _%$%e207546207821%_
                                         _%$%hd207547207824%_
                                         _%$%tl207548207826%_
                                         _%$%e207549207829%_
                                         _%$%hd207550207832%_
                                         _%$%tl207551207834%_
                                         _%$%e207552207837%_
                                         _%$%hd207553207840%_
                                         _%$%tl207554207842%_
                                         _%$%e207555207845%_
                                         _%$%hd207556207848%_
                                         _%$%tl207557207850%_
                                         _%$%e207558207853%_
                                         _%$%hd207559207856%_
                                         _%$%tl207560207858%_
                                         _%$%e207561207861%_
                                         _%$%hd207562207864%_
                                         _%$%tl207563207866%_
                                         _%$%e207564207869%_
                                         _%$%hd207565207872%_
                                         _%$%tl207566207874%_
                                         _%$%e207567207877%_
                                         _%$%hd207568207880%_
                                         _%$%tl207569207882%_))
                                    (_%__match209843209844%_
                                     _%$%e207534207791%_
                                     _%$%hd207535207794%_
                                     _%$%tl207536207796%_
                                     _%$%e207546207821%_
                                     _%$%hd207547207824%_
                                     _%$%tl207548207826%_
                                     _%$%e207549207829%_
                                     _%$%hd207550207832%_
                                     _%$%tl207551207834%_
                                     _%$%e207552207837%_
                                     _%$%hd207553207840%_
                                     _%$%tl207554207842%_
                                     _%$%e207555207845%_
                                     _%$%hd207556207848%_
                                     _%$%tl207557207850%_
                                     _%$%e207558207853%_
                                     _%$%hd207559207856%_
                                     _%$%tl207560207858%_
                                     _%$%e207561207861%_
                                     _%$%hd207562207864%_
                                     _%$%tl207563207866%_
                                     _%$%e207564207869%_
                                     _%$%hd207565207872%_
                                     _%$%tl207566207874%_
                                     _%$%e207567207877%_
                                     _%$%hd207568207880%_
                                     _%$%tl207569207882%_))
                                (_%__match209843209844%_
                                 _%$%e207534207791%_
                                 _%$%hd207535207794%_
                                 _%$%tl207536207796%_
                                 _%$%e207546207821%_
                                 _%$%hd207547207824%_
                                 _%$%tl207548207826%_
                                 _%$%e207549207829%_
                                 _%$%hd207550207832%_
                                 _%$%tl207551207834%_
                                 _%$%e207552207837%_
                                 _%$%hd207553207840%_
                                 _%$%tl207554207842%_
                                 _%$%e207555207845%_
                                 _%$%hd207556207848%_
                                 _%$%tl207557207850%_
                                 _%$%e207558207853%_
                                 _%$%hd207559207856%_
                                 _%$%tl207560207858%_
                                 _%$%e207561207861%_
                                 _%$%hd207562207864%_
                                 _%$%tl207563207866%_
                                 _%$%e207564207869%_
                                 _%$%hd207565207872%_
                                 _%$%tl207566207874%_
                                 _%$%e207567207877%_
                                 _%$%hd207568207880%_
                                 _%$%tl207569207882%_))))
                        (_%__match209843209844%_
                         _%$%e207534207791%_
                         _%$%hd207535207794%_
                         _%$%tl207536207796%_
                         _%$%e207546207821%_
                         _%$%hd207547207824%_
                         _%$%tl207548207826%_
                         _%$%e207549207829%_
                         _%$%hd207550207832%_
                         _%$%tl207551207834%_
                         _%$%e207552207837%_
                         _%$%hd207553207840%_
                         _%$%tl207554207842%_
                         _%$%e207555207845%_
                         _%$%hd207556207848%_
                         _%$%tl207557207850%_
                         _%$%e207558207853%_
                         _%$%hd207559207856%_
                         _%$%tl207560207858%_
                         _%$%e207561207861%_
                         _%$%hd207562207864%_
                         _%$%tl207563207866%_
                         _%$%e207564207869%_
                         _%$%hd207565207872%_
                         _%$%tl207566207874%_
                         _%$%e207567207877%_
                         _%$%hd207568207880%_
                         _%$%tl207569207882%_))))
                (let ((_%$%xarg207578207945%_
                       (reverse _%$%xarg207577207919%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207548207826%_))
                      (let ((_%$%g207528207947%_ _%$%hd207586207909%_)
                            (_%$%g207529207948%_ _%$%xarg207578207945%_)
                            (_%$%g207530207949%_ _%$%hd207568207880%_)
                            (_%$%g207531207950%_ _%$%hd207559207856%_)
                            (_%$%g207532207951%_ _%$%tl207539207801%_)
                            (_%$%g207533207952%_ _%$%arg207545207819%_))
                        (if (and (let ((__tmp211013
                                        (let ((__tmp211014
                                               (lambda (_%$%g207995207998%_
                                                        _%$%g207996208000%_)
                                                 (cons _%$%g207995207998%_
                                                       _%$%g207996208000%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp211014
                                           '()
                                           _%$%g207533207952%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp211013))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g207532207951%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g207531207950%_
                                    'apply))
                                 (let ((__tmp211017
                                        (length (let ((__tmp211018
                                                       (lambda (_%$%g208002208005%_
                                                                _%$%g208003208007%_)
                                                         (cons _%$%g208002208005%_
                                                               _%$%g208003208007%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp211018
                                                   '()
                                                   _%$%g207533207952%_))))
                                       (__tmp211015
                                        (length (let ((__tmp211016
                                                       (lambda (_%$%g208009208012%_
                                                                _%$%g208010208014%_)
                                                         (cons _%$%g208009208012%_
                                                               _%$%g208010208014%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp211016
                                                   '()
                                                   _%$%g207529207948%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp211017 __tmp211015))
                                 (let ((__tmp211021
                                        (let ((__tmp211022
                                               (lambda (_%$%g208016208019%_
                                                        _%$%g208017208021%_)
                                                 (cons _%$%g208016208019%_
                                                       _%$%g208017208021%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp211022
                                           '()
                                           _%$%g207533207952%_)))
                                       (__tmp211019
                                        (let ((__tmp211020
                                               (lambda (_%$%g208023208026%_
                                                        _%$%g208024208028%_)
                                                 (cons _%$%g208023208026%_
                                                       _%$%g208024208028%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp211020
                                           '()
                                           _%$%g207529207948%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp211021
                                    __tmp211019))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g207532207951%_
                                    _%$%g207528207947%_))
                                 (not (let ((__tmp211026
                                             (lambda (_%$%g208030208032%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g208030208032%_
                                                  _%$%g207530207949%_))))
                                            (__tmp211023
                                             (let ((__tmp211025
                                                    (lambda (_%$%g208034208037%_
                                                             _%$%g208035208039%_)
                                                      (cons _%$%g208034208037%_
                                                            _%$%g208035208039%_)))
                                                   (__tmp211024
                                                    (cons _%$%g207532207951%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp211025
                                                __tmp211024
                                                _%$%g207533207952%_))))
                                        (declare (not safe))
                                        (__find __tmp211026 __tmp211023))))
                            (_%__kont209738209739%_
                             _%$%g207528207947%_
                             _%$%g207529207948%_
                             _%$%g207530207949%_
                             _%$%g207531207950%_
                             _%$%g207532207951%_
                             _%$%g207533207952%_)
                            (_%__match209843209844%_
                             _%$%e207534207791%_
                             _%$%hd207535207794%_
                             _%$%tl207536207796%_
                             _%$%e207546207821%_
                             _%$%hd207547207824%_
                             _%$%tl207548207826%_
                             _%$%e207549207829%_
                             _%$%hd207550207832%_
                             _%$%tl207551207834%_
                             _%$%e207552207837%_
                             _%$%hd207553207840%_
                             _%$%tl207554207842%_
                             _%$%e207555207845%_
                             _%$%hd207556207848%_
                             _%$%tl207557207850%_
                             _%$%e207558207853%_
                             _%$%hd207559207856%_
                             _%$%tl207560207858%_
                             _%$%e207561207861%_
                             _%$%hd207562207864%_
                             _%$%tl207563207866%_
                             _%$%e207564207869%_
                             _%$%hd207565207872%_
                             _%$%tl207566207874%_
                             _%$%e207567207877%_
                             _%$%hd207568207880%_
                             _%$%tl207569207882%_)))
                      (_%__match209843209844%_
                       _%$%e207534207791%_
                       _%$%hd207535207794%_
                       _%$%tl207536207796%_
                       _%$%e207546207821%_
                       _%$%hd207547207824%_
                       _%$%tl207548207826%_
                       _%$%e207549207829%_
                       _%$%hd207550207832%_
                       _%$%tl207551207834%_
                       _%$%e207552207837%_
                       _%$%hd207553207840%_
                       _%$%tl207554207842%_
                       _%$%e207555207845%_
                       _%$%hd207556207848%_
                       _%$%tl207557207850%_
                       _%$%e207558207853%_
                       _%$%hd207559207856%_
                       _%$%tl207560207858%_
                       _%$%e207561207861%_
                       _%$%hd207562207864%_
                       _%$%tl207563207866%_
                       _%$%e207564207869%_
                       _%$%hd207565207872%_
                       _%$%tl207566207874%_
                       _%$%e207567207877%_
                       _%$%hd207568207880%_
                       _%$%tl207569207882%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop207573207914%_
                                           _%$%target207570207885%_
                                           '()))
                                        (_%__match209843209844%_
                                         _%$%e207534207791%_
                                         _%$%hd207535207794%_
                                         _%$%tl207536207796%_
                                         _%$%e207546207821%_
                                         _%$%hd207547207824%_
                                         _%$%tl207548207826%_
                                         _%$%e207549207829%_
                                         _%$%hd207550207832%_
                                         _%$%tl207551207834%_
                                         _%$%e207552207837%_
                                         _%$%hd207553207840%_
                                         _%$%tl207554207842%_
                                         _%$%e207555207845%_
                                         _%$%hd207556207848%_
                                         _%$%tl207557207850%_
                                         _%$%e207558207853%_
                                         _%$%hd207559207856%_
                                         _%$%tl207560207858%_
                                         _%$%e207561207861%_
                                         _%$%hd207562207864%_
                                         _%$%tl207563207866%_
                                         _%$%e207564207869%_
                                         _%$%hd207565207872%_
                                         _%$%tl207566207874%_
                                         _%$%e207567207877%_
                                         _%$%hd207568207880%_
                                         _%$%tl207569207882%_))
                                    (_%__match209843209844%_
                                     _%$%e207534207791%_
                                     _%$%hd207535207794%_
                                     _%$%tl207536207796%_
                                     _%$%e207546207821%_
                                     _%$%hd207547207824%_
                                     _%$%tl207548207826%_
                                     _%$%e207549207829%_
                                     _%$%hd207550207832%_
                                     _%$%tl207551207834%_
                                     _%$%e207552207837%_
                                     _%$%hd207553207840%_
                                     _%$%tl207554207842%_
                                     _%$%e207555207845%_
                                     _%$%hd207556207848%_
                                     _%$%tl207557207850%_
                                     _%$%e207558207853%_
                                     _%$%hd207559207856%_
                                     _%$%tl207560207858%_
                                     _%$%e207561207861%_
                                     _%$%hd207562207864%_
                                     _%$%tl207563207866%_
                                     _%$%e207564207869%_
                                     _%$%hd207565207872%_
                                     _%$%tl207566207874%_
                                     _%$%e207567207877%_
                                     _%$%hd207568207880%_
                                     _%$%tl207569207882%_))))
                            (_%__match209843209844%_
                             _%$%e207534207791%_
                             _%$%hd207535207794%_
                             _%$%tl207536207796%_
                             _%$%e207546207821%_
                             _%$%hd207547207824%_
                             _%$%tl207548207826%_
                             _%$%e207549207829%_
                             _%$%hd207550207832%_
                             _%$%tl207551207834%_
                             _%$%e207552207837%_
                             _%$%hd207553207840%_
                             _%$%tl207554207842%_
                             _%$%e207555207845%_
                             _%$%hd207556207848%_
                             _%$%tl207557207850%_
                             _%$%e207558207853%_
                             _%$%hd207559207856%_
                             _%$%tl207560207858%_
                             _%$%e207561207861%_
                             _%$%hd207562207864%_
                             _%$%tl207563207866%_
                             _%$%e207564207869%_
                             _%$%hd207565207872%_
                             _%$%tl207566207874%_
                             _%$%e207567207877%_
                             _%$%hd207568207880%_
                             _%$%tl207569207882%_))
                        (_%__match209843209844%_
                         _%$%e207534207791%_
                         _%$%hd207535207794%_
                         _%$%tl207536207796%_
                         _%$%e207546207821%_
                         _%$%hd207547207824%_
                         _%$%tl207548207826%_
                         _%$%e207549207829%_
                         _%$%hd207550207832%_
                         _%$%tl207551207834%_
                         _%$%e207552207837%_
                         _%$%hd207553207840%_
                         _%$%tl207554207842%_
                         _%$%e207555207845%_
                         _%$%hd207556207848%_
                         _%$%tl207557207850%_
                         _%$%e207558207853%_
                         _%$%hd207559207856%_
                         _%$%tl207560207858%_
                         _%$%e207561207861%_
                         _%$%hd207562207864%_
                         _%$%tl207563207866%_
                         _%$%e207564207869%_
                         _%$%hd207565207872%_
                         _%$%tl207566207874%_
                         _%$%e207567207877%_
                         _%$%hd207568207880%_
                         _%$%tl207569207882%_))
                    (_%__match209843209844%_
                     _%$%e207534207791%_
                     _%$%hd207535207794%_
                     _%$%tl207536207796%_
                     _%$%e207546207821%_
                     _%$%hd207547207824%_
                     _%$%tl207548207826%_
                     _%$%e207549207829%_
                     _%$%hd207550207832%_
                     _%$%tl207551207834%_
                     _%$%e207552207837%_
                     _%$%hd207553207840%_
                     _%$%tl207554207842%_
                     _%$%e207555207845%_
                     _%$%hd207556207848%_
                     _%$%tl207557207850%_
                     _%$%e207558207853%_
                     _%$%hd207559207856%_
                     _%$%tl207560207858%_
                     _%$%e207561207861%_
                     _%$%hd207562207864%_
                     _%$%tl207563207866%_
                     _%$%e207564207869%_
                     _%$%hd207565207872%_
                     _%$%tl207566207874%_
                     _%$%e207567207877%_
                     _%$%hd207568207880%_
                     _%$%tl207569207882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match209843209844%_
                                                     _%$%e207534207791%_
                                                     _%$%hd207535207794%_
                                                     _%$%tl207536207796%_
                                                     _%$%e207546207821%_
                                                     _%$%hd207547207824%_
                                                     _%$%tl207548207826%_
                                                     _%$%e207549207829%_
                                                     _%$%hd207550207832%_
                                                     _%$%tl207551207834%_
                                                     _%$%e207552207837%_
                                                     _%$%hd207553207840%_
                                                     _%$%tl207554207842%_
                                                     _%$%e207555207845%_
                                                     _%$%hd207556207848%_
                                                     _%$%tl207557207850%_
                                                     _%$%e207558207853%_
                                                     _%$%hd207559207856%_
                                                     _%$%tl207560207858%_
                                                     _%$%e207561207861%_
                                                     _%$%hd207562207864%_
                                                     _%$%tl207563207866%_
                                                     _%$%e207564207869%_
                                                     _%$%hd207565207872%_
                                                     _%$%tl207566207874%_
                                                     _%$%e207567207877%_
                                                     _%$%hd207568207880%_
                                                     _%$%tl207569207882%_))))
                                            (_%__match209843209844%_
                                             _%$%e207534207791%_
                                             _%$%hd207535207794%_
                                             _%$%tl207536207796%_
                                             _%$%e207546207821%_
                                             _%$%hd207547207824%_
                                             _%$%tl207548207826%_
                                             _%$%e207549207829%_
                                             _%$%hd207550207832%_
                                             _%$%tl207551207834%_
                                             _%$%e207552207837%_
                                             _%$%hd207553207840%_
                                             _%$%tl207554207842%_
                                             _%$%e207555207845%_
                                             _%$%hd207556207848%_
                                             _%$%tl207557207850%_
                                             _%$%e207558207853%_
                                             _%$%hd207559207856%_
                                             _%$%tl207560207858%_
                                             _%$%e207561207861%_
                                             _%$%hd207562207864%_
                                             _%$%tl207563207866%_
                                             _%$%e207564207869%_
                                             _%$%hd207565207872%_
                                             _%$%tl207566207874%_
                                             _%$%e207567207877%_
                                             _%$%hd207568207880%_
                                             _%$%tl207569207882%_))))
                                    (_%__match209843209844%_
                                     _%$%e207534207791%_
                                     _%$%hd207535207794%_
                                     _%$%tl207536207796%_
                                     _%$%e207546207821%_
                                     _%$%hd207547207824%_
                                     _%$%tl207548207826%_
                                     _%$%e207549207829%_
                                     _%$%hd207550207832%_
                                     _%$%tl207551207834%_
                                     _%$%e207552207837%_
                                     _%$%hd207553207840%_
                                     _%$%tl207554207842%_
                                     _%$%e207555207845%_
                                     _%$%hd207556207848%_
                                     _%$%tl207557207850%_
                                     _%$%e207558207853%_
                                     _%$%hd207559207856%_
                                     _%$%tl207560207858%_
                                     _%$%e207561207861%_
                                     _%$%hd207562207864%_
                                     _%$%tl207563207866%_
                                     _%$%e207564207869%_
                                     _%$%hd207565207872%_
                                     _%$%tl207566207874%_
                                     _%$%e207567207877%_
                                     _%$%hd207568207880%_
                                     _%$%tl207569207882%_))
                                (_%__match209843209844%_
                                 _%$%e207534207791%_
                                 _%$%hd207535207794%_
                                 _%$%tl207536207796%_
                                 _%$%e207546207821%_
                                 _%$%hd207547207824%_
                                 _%$%tl207548207826%_
                                 _%$%e207549207829%_
                                 _%$%hd207550207832%_
                                 _%$%tl207551207834%_
                                 _%$%e207552207837%_
                                 _%$%hd207553207840%_
                                 _%$%tl207554207842%_
                                 _%$%e207555207845%_
                                 _%$%hd207556207848%_
                                 _%$%tl207557207850%_
                                 _%$%e207558207853%_
                                 _%$%hd207559207856%_
                                 _%$%tl207560207858%_
                                 _%$%e207561207861%_
                                 _%$%hd207562207864%_
                                 _%$%tl207563207866%_
                                 _%$%e207564207869%_
                                 _%$%hd207565207872%_
                                 _%$%tl207566207874%_
                                 _%$%e207567207877%_
                                 _%$%hd207568207880%_
                                 _%$%tl207569207882%_))
                            (_%__kont209746209747%_))))
                    (_%__kont209746209747%_))
                (_%__kont209746209747%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont209746209747%_))))
                                            (_%__kont209746209747%_))))
                                    (_%__kont209746209747%_))
                                (_%__kont209746209747%_))))
                        (_%__kont209746209747%_))
                    (_%__kont209746209747%_))
                (_%__kont209746209747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont209746209747%_))))
                                        (_%__kont209746209747%_))
                                    (_%__kont209746209747%_))
                                (_%__kont209746209747%_))))
                        (_%__kont209746209747%_))))
                (_%__kont209746209747%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop207540207804%_
                                     _%$%target207537207799%_
                                     '()))))
                               (_%__match209761209762%_
                                (lambda (_%$%e207486208047%_
                                         _%$%hd207487208050%_
                                         _%$%tl207488208052%_
                                         _%__splice209734209735%_
                                         _%$%target207489208055%_
                                         _%$%tl207491208057%_)
                                  (letrec ((_%$%loop207492208060%_
                                            (lambda (_%$%hd207490208063%_
                                                     _%$%arg207496208065%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd207490208063%_))
                                                  (let ((_%$%e207493208067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd207490208063%_))))
                                                    (let ((_%$%lp-tl207495208072%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207493208067%_)))
                                                          (_%$%lp-hd207494208070%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207493208067%_))))
                                                      (_%$%loop207492208060%_
                                                       _%$%lp-tl207495208072%_
                                                       (cons _%$%lp-hd207494208070%_
                                                             _%$%arg207496208065%_))))
                                                  (let ((_%$%arg207497208075%_
                                                         (reverse _%$%arg207496208065%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl207488208052%_))
                                                        (let ((_%$%e207498208077%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl207488208052%_))))
                  (let ((_%$%tl207500208082%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e207498208077%_)))
                        (_%$%hd207499208080%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e207498208077%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd207499208080%_))
                        (let ((_%$%e207501208085%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd207499208080%_))))
                          (let ((_%$%tl207503208090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207501208085%_)))
                                (_%$%hd207502208088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207501208085%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd207502208088%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd207502208088%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl207503208090%_))
                                        (let ((_%$%e207504208093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl207503208090%_))))
                                          (let ((_%$%tl207506208098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207504208093%_)))
                                                (_%$%hd207505208096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207504208093%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd207505208096%_))
                                                (let ((_%$%e207507208101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd207505208096%_))))
                                                  (let ((_%$%tl207509208106%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e207507208101%_)))
                                                        (_%$%hd207508208104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e207507208101%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd207508208104%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd207508208104%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl207509208106%_))
                        (let ((_%$%e207510208109%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl207509208106%_))))
                          (let ((_%$%tl207512208114%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207510208109%_)))
                                (_%$%hd207511208112%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207510208109%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl207512208114%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl207506208098%_))
                                    (let ((_%__splice209736209737%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl207506208098%_
                                              '0))))
                                      (let ((_%$%tl207515208119%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice209736209737%_
                                                '1)))
                                            (_%$%target207513208117%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice209736209737%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl207515208119%_))
                                            (letrec ((_%$%loop207516208122%_
                                                      (lambda (_%$%hd207514208125%_
                                                               _%$%xarg207520208127%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd207514208125%_))
                                                            (let ((_%$%e207517208129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd207514208125%_))))
                      (let ((_%$%lp-tl207519208134%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e207517208129%_)))
                            (_%$%lp-hd207518208132%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e207517208129%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd207518208132%_))
                            (let ((_%$%e207522208137%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd207518208132%_))))
                              (let ((_%$%tl207524208142%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e207522208137%_)))
                                    (_%$%hd207523208140%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e207522208137%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd207523208140%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd207523208140%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl207524208142%_))
                                            (let ((_%$%e207525208145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl207524208142%_))))
                                              (let ((_%$%tl207527208150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e207525208145%_)))
                                                    (_%$%hd207526208148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e207525208145%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl207527208150%_))
                                                    (_%$%loop207516208122%_
                                                     _%$%lp-tl207519208134%_
                                                     (cons _%$%hd207526208148%_
                                                           _%$%xarg207520208127%_))
                                                    (_%__match209773209774%_
                                                     _%$%e207486208047%_
                                                     _%$%hd207487208050%_
                                                     _%$%tl207488208052%_
                                                     _%__splice209734209735%_
                                                     _%$%target207489208055%_
                                                     _%$%tl207491208057%_))))
                                            (_%__match209773209774%_
                                             _%$%e207486208047%_
                                             _%$%hd207487208050%_
                                             _%$%tl207488208052%_
                                             _%__splice209734209735%_
                                             _%$%target207489208055%_
                                             _%$%tl207491208057%_))
                                        (_%__match209773209774%_
                                         _%$%e207486208047%_
                                         _%$%hd207487208050%_
                                         _%$%tl207488208052%_
                                         _%__splice209734209735%_
                                         _%$%target207489208055%_
                                         _%$%tl207491208057%_))
                                    (_%__match209773209774%_
                                     _%$%e207486208047%_
                                     _%$%hd207487208050%_
                                     _%$%tl207488208052%_
                                     _%__splice209734209735%_
                                     _%$%target207489208055%_
                                     _%$%tl207491208057%_))))
                            (_%__match209773209774%_
                             _%$%e207486208047%_
                             _%$%hd207487208050%_
                             _%$%tl207488208052%_
                             _%__splice209734209735%_
                             _%$%target207489208055%_
                             _%$%tl207491208057%_))))
                    (let ((_%$%xarg207521208153%_
                           (reverse _%$%xarg207520208127%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl207500208082%_))
                          (let ((_%$%g207483208155%_ _%$%xarg207521208153%_)
                                (_%$%g207484208156%_ _%$%hd207511208112%_)
                                (_%$%g207485208157%_ _%$%arg207497208075%_))
                            (if (and (let ((__tmp211027
                                            (let ((__tmp211028
                                                   (lambda (_%$%g208185208188%_
                                                            _%$%g208186208190%_)
                                                     (cons _%$%g208185208188%_
                                                           _%$%g208186208190%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp211028
                                               '()
                                               _%$%g207485208157%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp211027))
                                     (let ((__tmp211031
                                            (length (let ((__tmp211032
                                                           (lambda (_%$%g208192208195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g208193208197%_)
                     (cons _%$%g208192208195%_ _%$%g208193208197%_))))
              (declare (not safe))
              (foldr__0 __tmp211032 '() _%$%g207485208157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp211029
                                            (length (let ((__tmp211030
                                                           (lambda (_%$%g208199208202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g208200208204%_)
                     (cons _%$%g208199208202%_ _%$%g208200208204%_))))
              (declare (not safe))
              (foldr__0 __tmp211030 '() _%$%g207483208155%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp211031 __tmp211029))
                                     (let ((__tmp211035
                                            (let ((__tmp211036
                                                   (lambda (_%$%g208206208209%_
                                                            _%$%g208207208211%_)
                                                     (cons _%$%g208206208209%_
                                                           _%$%g208207208211%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp211036
                                               '()
                                               _%$%g207485208157%_)))
                                           (__tmp211033
                                            (let ((__tmp211034
                                                   (lambda (_%$%g208213208216%_
                                                            _%$%g208214208218%_)
                                                     (cons _%$%g208213208216%_
                                                           _%$%g208214208218%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp211034
                                               '()
                                               _%$%g207483208155%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp211035
                                        __tmp211033))
                                     (not (let ((__tmp211039
                                                 (lambda (_%$%g208220208222%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g208220208222%_
                                                      _%$%g207484208156%_))))
                                                (__tmp211037
                                                 (let ((__tmp211038
                                                        (lambda (_%$%g208224208227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g208225208229%_)
                  (cons _%$%g208224208227%_ _%$%g208225208229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp211038
                                                    '()
                                                    _%$%g207485208157%_))))
                                            (declare (not safe))
                                            (__find __tmp211039 __tmp211037))))
                                (_%__kont209732209733%_
                                 _%$%g207483208155%_
                                 _%$%g207484208156%_
                                 _%$%g207485208157%_)
                                (_%__match209773209774%_
                                 _%$%e207486208047%_
                                 _%$%hd207487208050%_
                                 _%$%tl207488208052%_
                                 _%__splice209734209735%_
                                 _%$%target207489208055%_
                                 _%$%tl207491208057%_)))
                          (_%__match209773209774%_
                           _%$%e207486208047%_
                           _%$%hd207487208050%_
                           _%$%tl207488208052%_
                           _%__splice209734209735%_
                           _%$%target207489208055%_
                           _%$%tl207491208057%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop207516208122%_
                                               _%$%target207513208117%_
                                               '()))
                                            (_%__match209773209774%_
                                             _%$%e207486208047%_
                                             _%$%hd207487208050%_
                                             _%$%tl207488208052%_
                                             _%__splice209734209735%_
                                             _%$%target207489208055%_
                                             _%$%tl207491208057%_))))
                                    (_%__match209773209774%_
                                     _%$%e207486208047%_
                                     _%$%hd207487208050%_
                                     _%$%tl207488208052%_
                                     _%__splice209734209735%_
                                     _%$%target207489208055%_
                                     _%$%tl207491208057%_))
                                (_%__match209773209774%_
                                 _%$%e207486208047%_
                                 _%$%hd207487208050%_
                                 _%$%tl207488208052%_
                                 _%__splice209734209735%_
                                 _%$%target207489208055%_
                                 _%$%tl207491208057%_))))
                        (_%__match209773209774%_
                         _%$%e207486208047%_
                         _%$%hd207487208050%_
                         _%$%tl207488208052%_
                         _%__splice209734209735%_
                         _%$%target207489208055%_
                         _%$%tl207491208057%_))
                    (_%__match209773209774%_
                     _%$%e207486208047%_
                     _%$%hd207487208050%_
                     _%$%tl207488208052%_
                     _%__splice209734209735%_
                     _%$%target207489208055%_
                     _%$%tl207491208057%_))
                (_%__match209773209774%_
                 _%$%e207486208047%_
                 _%$%hd207487208050%_
                 _%$%tl207488208052%_
                 _%__splice209734209735%_
                 _%$%target207489208055%_
                 _%$%tl207491208057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match209773209774%_
                                                 _%$%e207486208047%_
                                                 _%$%hd207487208050%_
                                                 _%$%tl207488208052%_
                                                 _%__splice209734209735%_
                                                 _%$%target207489208055%_
                                                 _%$%tl207491208057%_))))
                                        (_%__match209773209774%_
                                         _%$%e207486208047%_
                                         _%$%hd207487208050%_
                                         _%$%tl207488208052%_
                                         _%__splice209734209735%_
                                         _%$%target207489208055%_
                                         _%$%tl207491208057%_))
                                    (_%__match209773209774%_
                                     _%$%e207486208047%_
                                     _%$%hd207487208050%_
                                     _%$%tl207488208052%_
                                     _%__splice209734209735%_
                                     _%$%target207489208055%_
                                     _%$%tl207491208057%_))
                                (_%__match209773209774%_
                                 _%$%e207486208047%_
                                 _%$%hd207487208050%_
                                 _%$%tl207488208052%_
                                 _%__splice209734209735%_
                                 _%$%target207489208055%_
                                 _%$%tl207491208057%_))))
                        (_%__match209773209774%_
                         _%$%e207486208047%_
                         _%$%hd207487208050%_
                         _%$%tl207488208052%_
                         _%__splice209734209735%_
                         _%$%target207489208055%_
                         _%$%tl207491208057%_))))
                (_%__match209773209774%_
                 _%$%e207486208047%_
                 _%$%hd207487208050%_
                 _%$%tl207488208052%_
                 _%__splice209734209735%_
                 _%$%target207489208055%_
                 _%$%tl207491208057%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop207492208060%_
                                     _%$%target207489208055%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx209730209731%_))
                              (let ((_%$%e207486208047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx209730209731%_))))
                                (let ((_%$%tl207488208052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207486208047%_)))
                                      (_%$%hd207487208050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207486208047%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd207487208050%_))
                                      (let ((_%__splice209734209735%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd207487208050%_
                                                '0))))
                                        (let ((_%$%tl207491208057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209734209735%_
                                                  '1)))
                                              (_%$%target207489208055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209734209735%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207491208057%_))
                                              (_%__match209761209762%_
                                               _%$%e207486208047%_
                                               _%$%hd207487208050%_
                                               _%$%tl207488208052%_
                                               _%__splice209734209735%_
                                               _%$%target207489208055%_
                                               _%$%tl207491208057%_)
                                              (_%__match209773209774%_
                                               _%$%e207486208047%_
                                               _%$%hd207487208050%_
                                               _%$%tl207488208052%_
                                               _%__splice209734209735%_
                                               _%$%target207489208055%_
                                               _%$%tl207491208057%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl207488208052%_))
                                          (let ((_%$%e207601207658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl207488208052%_))))
                                            (let ((_%$%tl207603207663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e207601207658%_)))
                                                  (_%$%hd207602207661%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e207601207658%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd207602207661%_))
                                                  (let ((_%$%e207604207666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd207602207661%_))))
                                                    (let ((_%$%tl207606207671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207604207666%_)))
                                                          (_%$%hd207605207669%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207604207666%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd207605207669%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd207605207669%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl207606207671%_))
                          (let ((_%$%e207607207674%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl207606207671%_))))
                            (let ((_%$%tl207609207679%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207607207674%_)))
                                  (_%$%hd207608207677%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207607207674%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd207608207677%_))
                                  (let ((_%$%e207610207682%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd207608207677%_))))
                                    (let ((_%$%tl207612207687%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e207610207682%_)))
                                          (_%$%hd207611207685%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e207610207682%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd207611207685%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd207611207685%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl207612207687%_))
                                                  (let ((_%$%e207613207690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl207612207687%_))))
                                                    (let ((_%$%tl207615207695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207613207690%_)))
                                                          (_%$%hd207614207693%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207613207690%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl207615207695%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl207609207679%_))
                      (let ((_%$%e207616207698%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl207609207679%_))))
                        (let ((_%$%tl207618207703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207616207698%_)))
                              (_%$%hd207617207701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207616207698%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd207617207701%_))
                              (let ((_%$%e207619207706%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd207617207701%_))))
                                (let ((_%$%tl207621207711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207619207706%_)))
                                      (_%$%hd207620207709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207619207706%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd207620207709%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd207620207709%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207621207711%_))
                                              (let ((_%$%e207622207714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207621207711%_))))
                                                (let ((_%$%tl207624207719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207622207714%_)))
                                                      (_%$%hd207623207717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207622207714%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207624207719%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl207618207703%_))
                                                          (let ((_%$%e207625207722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl207618207703%_))))
                    (let ((_%$%tl207627207727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207625207722%_)))
                          (_%$%hd207626207725%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207625207722%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd207626207725%_))
                          (let ((_%$%e207628207730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd207626207725%_))))
                            (let ((_%$%tl207630207735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207628207730%_)))
                                  (_%$%hd207629207733%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207628207730%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd207629207733%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd207629207733%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl207630207735%_))
                                          (let ((_%$%e207631207738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl207630207735%_))))
                                            (let ((_%$%tl207633207743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e207631207738%_)))
                                                  (_%$%hd207632207741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e207631207738%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl207633207743%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207627207727%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl207603207663%_))
                                                          (_%__match209871209872%_
                                                           _%$%e207486208047%_
                                                           _%$%hd207487208050%_
                                                           _%$%tl207488208052%_
                                                           _%$%e207601207658%_
                                                           _%$%hd207602207661%_
                                                           _%$%tl207603207663%_
                                                           _%$%e207604207666%_
                                                           _%$%hd207605207669%_
                                                           _%$%tl207606207671%_
                                                           _%$%e207607207674%_
                                                           _%$%hd207608207677%_
                                                           _%$%tl207609207679%_
                                                           _%$%e207610207682%_
                                                           _%$%hd207611207685%_
                                                           _%$%tl207612207687%_
                                                           _%$%e207613207690%_
                                                           _%$%hd207614207693%_
                                                           _%$%tl207615207695%_
                                                           _%$%e207616207698%_
                                                           _%$%hd207617207701%_
                                                           _%$%tl207618207703%_
                                                           _%$%e207619207706%_
                                                           _%$%hd207620207709%_
                                                           _%$%tl207621207711%_
                                                           _%$%e207622207714%_
                                                           _%$%hd207623207717%_
                                                           _%$%tl207624207719%_
                                                           _%$%e207625207722%_
                                                           _%$%hd207626207725%_
                                                           _%$%tl207627207727%_
                                                           _%$%e207628207730%_
                                                           _%$%hd207629207733%_
                                                           _%$%tl207630207735%_
                                                           _%$%e207631207738%_
                                                           _%$%hd207632207741%_
                                                           _%$%tl207633207743%_)
                                                          (_%__kont209746209747%_))
                                                      (_%__kont209746209747%_))
                                                  (_%__kont209746209747%_))))
                                          (_%__kont209746209747%_))
                                      (_%__kont209746209747%_))
                                  (_%__kont209746209747%_))))
                          (_%__kont209746209747%_))))
                  (_%__kont209746209747%_))
              (_%__kont209746209747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont209746209747%_))
                                          (_%__kont209746209747%_))
                                      (_%__kont209746209747%_))))
                              (_%__kont209746209747%_))))
                      (_%__kont209746209747%_))
                  (_%__kont209746209747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont209746209747%_))
                                              (_%__kont209746209747%_))
                                          (_%__kont209746209747%_))))
                                  (_%__kont209746209747%_))))
                          (_%__kont209746209747%_))
                      (_%__kont209746209747%_))
                  (_%__kont209746209747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont209746209747%_))))
                                          (_%__kont209746209747%_)))))
                              (_%__kont209746209747%_)))))))
                 (_%dispatch-case-e206796%_
                  (lambda (_%hd206943%_ _%body206944%_)
                    (let* ((_%form206946%_
                            (cons _%hd206943%_ (cons _%body206944%_ '())))
                           (_%__stx209874209875%_ _%form206946%_)
                           (_%$%g206950207074%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx209874209875%_)))))
                      (let ((_%__kont209876209877%_
                             (lambda (_%$%g206952207439%_
                                      _%$%g206953207440%_
                                      _%$%g206954207441%_)
                               (let ((__tmp211040
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g206953207440%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self206792%_
                                  __tmp211040))))
                            (_%__kont209882209883%_
                             (lambda (_%$%g206997207291%_
                                      _%$%g206998207292%_
                                      _%$%g206999207293%_
                                      _%$%g207000207294%_)
                               (let ((__tmp211041
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g206997207291%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self206792%_
                                  __tmp211041))))
                            (_%__kont209886209887%_
                             (lambda (_%$%g207037207159%_
                                      _%$%g207038207160%_
                                      _%$%g207039207161%_)
                               (let ((__tmp211042
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g207037207159%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self206792%_
                                  __tmp211042)))))
                        (let* ((_%__match209983209984%_
                                (lambda (_%$%e207040207079%_
                                         _%$%hd207041207082%_
                                         _%$%tl207042207084%_
                                         _%$%e207043207087%_
                                         _%$%hd207044207090%_
                                         _%$%tl207045207092%_
                                         _%$%e207046207095%_
                                         _%$%hd207047207098%_
                                         _%$%tl207048207100%_
                                         _%$%e207049207103%_
                                         _%$%hd207050207106%_
                                         _%$%tl207051207108%_
                                         _%$%e207052207111%_
                                         _%$%hd207053207114%_
                                         _%$%tl207054207116%_
                                         _%$%e207055207119%_
                                         _%$%hd207056207122%_
                                         _%$%tl207057207124%_
                                         _%$%e207058207127%_
                                         _%$%hd207059207130%_
                                         _%$%tl207060207132%_
                                         _%$%e207061207135%_
                                         _%$%hd207062207138%_
                                         _%$%tl207063207140%_
                                         _%$%e207064207143%_
                                         _%$%hd207065207146%_
                                         _%$%tl207066207148%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207060207132%_))
                                      (let ((_%$%e207067207151%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207060207132%_))))
                                        (let ((_%$%tl207069207156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207067207151%_)))
                                              (_%$%hd207068207154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207067207151%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207069207156%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl207045207092%_))
                                                  (_%__kont209886209887%_
                                                   _%$%hd207065207146%_
                                                   _%$%hd207056207122%_
                                                   _%$%hd207041207082%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g206950207074%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g206950207074%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g206950207074%_)))))
                               (_%__match209913209914%_
                                (lambda (_%$%e207001207197%_
                                         _%$%hd207002207200%_
                                         _%$%tl207003207202%_
                                         _%__splice209884209885%_
                                         _%$%target207004207205%_
                                         _%$%tl207006207207%_)
                                  (letrec ((_%$%loop207007207210%_
                                            (lambda (_%$%hd207005207213%_
                                                     _%$%arg207011207215%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd207005207213%_))
                                                  (let ((_%$%e207008207217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd207005207213%_))))
                                                    (let ((_%$%lp-tl207010207222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207008207217%_)))
                                                          (_%$%lp-hd207009207220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207008207217%_))))
                                                      (_%$%loop207007207210%_
                                                       _%$%lp-tl207010207222%_
                                                       (cons _%$%lp-hd207009207220%_
                                                             _%$%arg207011207215%_))))
                                                  (let ((_%$%arg207012207225%_
                                                         (reverse _%$%arg207011207215%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl207003207202%_))
                                                        (let ((_%$%e207013207227%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl207003207202%_))))
                  (let ((_%$%tl207015207232%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e207013207227%_)))
                        (_%$%hd207014207230%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e207013207227%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd207014207230%_))
                        (let ((_%$%e207016207235%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd207014207230%_))))
                          (let ((_%$%tl207018207240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207016207235%_)))
                                (_%$%hd207017207238%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207016207235%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd207017207238%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd207017207238%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl207018207240%_))
                                        (let ((_%$%e207019207243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl207018207240%_))))
                                          (let ((_%$%tl207021207248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207019207243%_)))
                                                (_%$%hd207020207246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207019207243%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd207020207246%_))
                                                (let ((_%$%e207022207251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd207020207246%_))))
                                                  (let ((_%$%tl207024207256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e207022207251%_)))
                                                        (_%$%hd207023207254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e207022207251%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd207023207254%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd207023207254%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl207024207256%_))
                        (let ((_%$%e207025207259%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl207024207256%_))))
                          (let ((_%$%tl207027207264%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207025207259%_)))
                                (_%$%hd207026207262%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207025207259%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl207027207264%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl207021207248%_))
                                    (let ((_%$%e207028207267%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl207021207248%_))))
                                      (let ((_%$%tl207030207272%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e207028207267%_)))
                                            (_%$%hd207029207270%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e207028207267%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd207029207270%_))
                                            (let ((_%$%e207031207275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd207029207270%_))))
                                              (let ((_%$%tl207033207280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e207031207275%_)))
                                                    (_%$%hd207032207278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e207031207275%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd207032207278%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd207032207278%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl207033207280%_))
                                                            (let ((_%$%e207034207283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl207033207280%_))))
                      (let ((_%$%tl207036207288%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e207034207283%_)))
                            (_%$%hd207035207286%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e207034207283%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl207036207288%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl207015207232%_))
                                (_%__kont209882209883%_
                                 _%$%hd207035207286%_
                                 _%$%hd207026207262%_
                                 _%$%tl207006207207%_
                                 _%$%arg207012207225%_)
                                (_%__match209983209984%_
                                 _%$%e207001207197%_
                                 _%$%hd207002207200%_
                                 _%$%tl207003207202%_
                                 _%$%e207013207227%_
                                 _%$%hd207014207230%_
                                 _%$%tl207015207232%_
                                 _%$%e207016207235%_
                                 _%$%hd207017207238%_
                                 _%$%tl207018207240%_
                                 _%$%e207019207243%_
                                 _%$%hd207020207246%_
                                 _%$%tl207021207248%_
                                 _%$%e207022207251%_
                                 _%$%hd207023207254%_
                                 _%$%tl207024207256%_
                                 _%$%e207025207259%_
                                 _%$%hd207026207262%_
                                 _%$%tl207027207264%_
                                 _%$%e207028207267%_
                                 _%$%hd207029207270%_
                                 _%$%tl207030207272%_
                                 _%$%e207031207275%_
                                 _%$%hd207032207278%_
                                 _%$%tl207033207280%_
                                 _%$%e207034207283%_
                                 _%$%hd207035207286%_
                                 _%$%tl207036207288%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g206950207074%_)))))
                    (let () (declare (not safe)) (_%$%g206950207074%_)))
                (let () (declare (not safe)) (_%$%g206950207074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g206950207074%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g206950207074%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g206950207074%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g206950207074%_)))))
                        (let () (declare (not safe)) (_%$%g206950207074%_)))
                    (let () (declare (not safe)) (_%$%g206950207074%_)))
                (let () (declare (not safe)) (_%$%g206950207074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g206950207074%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g206950207074%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g206950207074%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g206950207074%_)))))
                        (let () (declare (not safe)) (_%$%g206950207074%_)))))
                (let () (declare (not safe)) (_%$%g206950207074%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop207007207210%_
                                     _%$%target207004207205%_
                                     '()))))
                               (_%__match209901209902%_
                                (lambda (_%$%e206955207331%_
                                         _%$%hd206956207334%_
                                         _%$%tl206957207336%_
                                         _%__splice209878209879%_
                                         _%$%target206958207339%_
                                         _%$%tl206960207341%_)
                                  (letrec ((_%$%loop206961207344%_
                                            (lambda (_%$%hd206959207347%_
                                                     _%$%arg206965207349%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd206959207347%_))
                                                  (let ((_%$%e206962207351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd206959207347%_))))
                                                    (let ((_%$%lp-tl206964207356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e206962207351%_)))
                                                          (_%$%lp-hd206963207354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e206962207351%_))))
                                                      (_%$%loop206961207344%_
                                                       _%$%lp-tl206964207356%_
                                                       (cons _%$%lp-hd206963207354%_
                                                             _%$%arg206965207349%_))))
                                                  (let ((_%$%arg206966207359%_
                                                         (reverse _%$%arg206965207349%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl206957207336%_))
                                                        (let ((_%$%e206967207361%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl206957207336%_))))
                  (let ((_%$%tl206969207366%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206967207361%_)))
                        (_%$%hd206968207364%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206967207361%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd206968207364%_))
                        (let ((_%$%e206970207369%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd206968207364%_))))
                          (let ((_%$%tl206972207374%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206970207369%_)))
                                (_%$%hd206971207372%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206970207369%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd206971207372%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd206971207372%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl206972207374%_))
                                        (let ((_%$%e206973207377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl206972207374%_))))
                                          (let ((_%$%tl206975207382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206973207377%_)))
                                                (_%$%hd206974207380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206973207377%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd206974207380%_))
                                                (let ((_%$%e206976207385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd206974207380%_))))
                                                  (let ((_%$%tl206978207390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e206976207385%_)))
                                                        (_%$%hd206977207388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e206976207385%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd206977207388%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd206977207388%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl206978207390%_))
                        (let ((_%$%e206979207393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl206978207390%_))))
                          (let ((_%$%tl206981207398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206979207393%_)))
                                (_%$%hd206980207396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206979207393%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl206981207398%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl206975207382%_))
                                    (let ((_%__splice209880209881%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl206975207382%_
                                              '0))))
                                      (let ((_%$%tl206984207403%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice209880209881%_
                                                '1)))
                                            (_%$%target206982207401%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice209880209881%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl206984207403%_))
                                            (letrec ((_%$%loop206985207406%_
                                                      (lambda (_%$%hd206983207409%_
                                                               _%$%xarg206989207411%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd206983207409%_))
                                                            (let ((_%$%e206986207413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd206983207409%_))))
                      (let ((_%$%lp-tl206988207418%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e206986207413%_)))
                            (_%$%lp-hd206987207416%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e206986207413%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd206987207416%_))
                            (let ((_%$%e206991207421%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd206987207416%_))))
                              (let ((_%$%tl206993207426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e206991207421%_)))
                                    (_%$%hd206992207424%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e206991207421%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd206992207424%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd206992207424%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl206993207426%_))
                                            (let ((_%$%e206994207429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl206993207426%_))))
                                              (let ((_%$%tl206996207434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e206994207429%_)))
                                                    (_%$%hd206995207432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e206994207429%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl206996207434%_))
                                                    (_%$%loop206985207406%_
                                                     _%$%lp-tl206988207418%_
                                                     (cons _%$%hd206995207432%_
                                                           _%$%xarg206989207411%_))
                                                    (_%__match209913209914%_
                                                     _%$%e206955207331%_
                                                     _%$%hd206956207334%_
                                                     _%$%tl206957207336%_
                                                     _%__splice209878209879%_
                                                     _%$%target206958207339%_
                                                     _%$%tl206960207341%_))))
                                            (_%__match209913209914%_
                                             _%$%e206955207331%_
                                             _%$%hd206956207334%_
                                             _%$%tl206957207336%_
                                             _%__splice209878209879%_
                                             _%$%target206958207339%_
                                             _%$%tl206960207341%_))
                                        (_%__match209913209914%_
                                         _%$%e206955207331%_
                                         _%$%hd206956207334%_
                                         _%$%tl206957207336%_
                                         _%__splice209878209879%_
                                         _%$%target206958207339%_
                                         _%$%tl206960207341%_))
                                    (_%__match209913209914%_
                                     _%$%e206955207331%_
                                     _%$%hd206956207334%_
                                     _%$%tl206957207336%_
                                     _%__splice209878209879%_
                                     _%$%target206958207339%_
                                     _%$%tl206960207341%_))))
                            (_%__match209913209914%_
                             _%$%e206955207331%_
                             _%$%hd206956207334%_
                             _%$%tl206957207336%_
                             _%__splice209878209879%_
                             _%$%target206958207339%_
                             _%$%tl206960207341%_))))
                    (let ((_%$%xarg206990207437%_
                           (reverse _%$%xarg206989207411%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl206969207366%_))
                          (_%__kont209876209877%_
                           _%$%xarg206990207437%_
                           _%$%hd206980207396%_
                           _%$%arg206966207359%_)
                          (_%__match209913209914%_
                           _%$%e206955207331%_
                           _%$%hd206956207334%_
                           _%$%tl206957207336%_
                           _%__splice209878209879%_
                           _%$%target206958207339%_
                           _%$%tl206960207341%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop206985207406%_
                                               _%$%target206982207401%_
                                               '()))
                                            (_%__match209913209914%_
                                             _%$%e206955207331%_
                                             _%$%hd206956207334%_
                                             _%$%tl206957207336%_
                                             _%__splice209878209879%_
                                             _%$%target206958207339%_
                                             _%$%tl206960207341%_))))
                                    (_%__match209913209914%_
                                     _%$%e206955207331%_
                                     _%$%hd206956207334%_
                                     _%$%tl206957207336%_
                                     _%__splice209878209879%_
                                     _%$%target206958207339%_
                                     _%$%tl206960207341%_))
                                (_%__match209913209914%_
                                 _%$%e206955207331%_
                                 _%$%hd206956207334%_
                                 _%$%tl206957207336%_
                                 _%__splice209878209879%_
                                 _%$%target206958207339%_
                                 _%$%tl206960207341%_))))
                        (_%__match209913209914%_
                         _%$%e206955207331%_
                         _%$%hd206956207334%_
                         _%$%tl206957207336%_
                         _%__splice209878209879%_
                         _%$%target206958207339%_
                         _%$%tl206960207341%_))
                    (_%__match209913209914%_
                     _%$%e206955207331%_
                     _%$%hd206956207334%_
                     _%$%tl206957207336%_
                     _%__splice209878209879%_
                     _%$%target206958207339%_
                     _%$%tl206960207341%_))
                (_%__match209913209914%_
                 _%$%e206955207331%_
                 _%$%hd206956207334%_
                 _%$%tl206957207336%_
                 _%__splice209878209879%_
                 _%$%target206958207339%_
                 _%$%tl206960207341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match209913209914%_
                                                 _%$%e206955207331%_
                                                 _%$%hd206956207334%_
                                                 _%$%tl206957207336%_
                                                 _%__splice209878209879%_
                                                 _%$%target206958207339%_
                                                 _%$%tl206960207341%_))))
                                        (_%__match209913209914%_
                                         _%$%e206955207331%_
                                         _%$%hd206956207334%_
                                         _%$%tl206957207336%_
                                         _%__splice209878209879%_
                                         _%$%target206958207339%_
                                         _%$%tl206960207341%_))
                                    (_%__match209913209914%_
                                     _%$%e206955207331%_
                                     _%$%hd206956207334%_
                                     _%$%tl206957207336%_
                                     _%__splice209878209879%_
                                     _%$%target206958207339%_
                                     _%$%tl206960207341%_))
                                (_%__match209913209914%_
                                 _%$%e206955207331%_
                                 _%$%hd206956207334%_
                                 _%$%tl206957207336%_
                                 _%__splice209878209879%_
                                 _%$%target206958207339%_
                                 _%$%tl206960207341%_))))
                        (_%__match209913209914%_
                         _%$%e206955207331%_
                         _%$%hd206956207334%_
                         _%$%tl206957207336%_
                         _%__splice209878209879%_
                         _%$%target206958207339%_
                         _%$%tl206960207341%_))))
                (_%__match209913209914%_
                 _%$%e206955207331%_
                 _%$%hd206956207334%_
                 _%$%tl206957207336%_
                 _%__splice209878209879%_
                 _%$%target206958207339%_
                 _%$%tl206960207341%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop206961207344%_
                                     _%$%target206958207339%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx209874209875%_))
                              (let ((_%$%e206955207331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx209874209875%_))))
                                (let ((_%$%tl206957207336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206955207331%_)))
                                      (_%$%hd206956207334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206955207331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd206956207334%_))
                                      (let ((_%__splice209878209879%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd206956207334%_
                                                '0))))
                                        (let ((_%$%tl206960207341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209878209879%_
                                                  '1)))
                                              (_%$%target206958207339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209878209879%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206960207341%_))
                                              (_%__match209901209902%_
                                               _%$%e206955207331%_
                                               _%$%hd206956207334%_
                                               _%$%tl206957207336%_
                                               _%__splice209878209879%_
                                               _%$%target206958207339%_
                                               _%$%tl206960207341%_)
                                              (_%__match209913209914%_
                                               _%$%e206955207331%_
                                               _%$%hd206956207334%_
                                               _%$%tl206957207336%_
                                               _%__splice209878209879%_
                                               _%$%target206958207339%_
                                               _%$%tl206960207341%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl206957207336%_))
                                          (let ((_%$%e207043207087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl206957207336%_))))
                                            (let ((_%$%tl207045207092%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e207043207087%_)))
                                                  (_%$%hd207044207090%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e207043207087%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd207044207090%_))
                                                  (let ((_%$%e207046207095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd207044207090%_))))
                                                    (let ((_%$%tl207048207100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207046207095%_)))
                                                          (_%$%hd207047207098%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207046207095%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd207047207098%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd207047207098%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl207048207100%_))
                          (let ((_%$%e207049207103%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl207048207100%_))))
                            (let ((_%$%tl207051207108%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207049207103%_)))
                                  (_%$%hd207050207106%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207049207103%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd207050207106%_))
                                  (let ((_%$%e207052207111%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd207050207106%_))))
                                    (let ((_%$%tl207054207116%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e207052207111%_)))
                                          (_%$%hd207053207114%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e207052207111%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd207053207114%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd207053207114%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl207054207116%_))
                                                  (let ((_%$%e207055207119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl207054207116%_))))
                                                    (let ((_%$%tl207057207124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207055207119%_)))
                                                          (_%$%hd207056207122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207055207119%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl207057207124%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl207051207108%_))
                      (let ((_%$%e207058207127%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl207051207108%_))))
                        (let ((_%$%tl207060207132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207058207127%_)))
                              (_%$%hd207059207130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207058207127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd207059207130%_))
                              (let ((_%$%e207061207135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd207059207130%_))))
                                (let ((_%$%tl207063207140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207061207135%_)))
                                      (_%$%hd207062207138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207061207135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd207062207138%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd207062207138%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207063207140%_))
                                              (let ((_%$%e207064207143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207063207140%_))))
                                                (let ((_%$%tl207066207148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207064207143%_)))
                                                      (_%$%hd207065207146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207064207143%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207066207148%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl207060207132%_))
                                                          (let ((_%$%e207067207151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl207060207132%_))))
                    (let ((_%$%tl207069207156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207067207151%_)))
                          (_%$%hd207068207154%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207067207151%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl207069207156%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl207045207092%_))
                              (_%__kont209886209887%_
                               _%$%hd207065207146%_
                               _%$%hd207056207122%_
                               _%$%hd206956207334%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g206950207074%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g206950207074%_)))))
                  (let () (declare (not safe)) (_%$%g206950207074%_)))
              (let () (declare (not safe)) (_%$%g206950207074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g206950207074%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g206950207074%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g206950207074%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g206950207074%_)))))
                      (let () (declare (not safe)) (_%$%g206950207074%_)))
                  (let () (declare (not safe)) (_%$%g206950207074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g206950207074%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g206950207074%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g206950207074%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g206950207074%_)))))
                          (let () (declare (not safe)) (_%$%g206950207074%_)))
                      (let () (declare (not safe)) (_%$%g206950207074%_)))
                  (let () (declare (not safe)) (_%$%g206950207074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g206950207074%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g206950207074%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g206950207074%_))))))))
                 (_%generate1206797%_
                  (lambda (_%args206928%_
                           _%arglen206929%_
                           _%hd206930%_
                           _%body206931%_)
                    (let* ((_%len206933%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd206930%_)))
                           (_%condition206938%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd206930%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen206929%_
                                                (cons _%len206933%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen206929%_ (cons _%len206933%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len206933%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen206929%_
                                                    (cons _%len206933%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen206929%_ (cons _%len206933%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch206940%_
                            (if (_%dispatch-case?206795%_
                                 _%hd206930%_
                                 _%body206931%_)
                                (_%dispatch-case-e206796%_
                                 _%hd206930%_
                                 _%body206931%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self206792%_
                                 _%hd206930%_
                                 _%body206931%_))))
                      (cons _%condition206938%_
                            (cons (cons 'apply
                                        (cons _%dispatch206940%_
                                              (cons _%args206928%_ '())))
                                  '()))))))
          (let* ((_%$%g206799206827%_
                  (lambda (_%$%g206800206824%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206800206824%_))))
                 (_%$%g206798206925%_
                  (lambda (_%$%g206800206830%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206800206830%_))
                        (let ((_%$%e206803206832%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206800206830%_))))
                          (let ((_%$%hd206804206835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206803206832%_)))
                                (_%$%tl206805206837%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206803206832%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl206805206837%_))
                                (let ((_g211043_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl206805206837%_
                                          '0))))
                                  (begin
                                    (let ((_g211044_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g211043_)
                                                 (##values-length _g211043_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g211044_ 2)))
                                          (error "Context expects 2 values"
                                                 _g211044_)))
                                    (let ((_%$%target206806206840%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g211043_ 0)))
                                          (_%$%tl206808206842%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g211043_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206808206842%_))
                                          (letrec ((_%$%loop206809206845%_
                                                    (lambda (_%$%hd206807206848%_
                                                             _%$%body206813206850%_
                                                             _%$%hd206814206851%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd206807206848%_))
                                                          (let ((_%$%e206810206853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd206807206848%_))))
                    (let ((_%$%lp-hd206811206856%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e206810206853%_)))
                          (_%$%lp-tl206812206858%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e206810206853%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd206811206856%_))
                          (let ((_%$%e206817206861%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd206811206856%_))))
                            (let ((_%$%hd206818206864%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206817206861%_)))
                                  (_%$%tl206819206866%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206817206861%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl206819206866%_))
                                  (let ((_%$%e206820206869%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl206819206866%_))))
                                    (let ((_%$%hd206821206872%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206820206869%_)))
                                          (_%$%tl206822206874%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206820206869%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206822206874%_))
                                          (_%$%loop206809206845%_
                                           _%$%lp-tl206812206858%_
                                           (cons _%$%hd206821206872%_
                                                 _%$%body206813206850%_)
                                           (cons _%$%hd206818206864%_
                                                 _%$%hd206814206851%_))
                                          (_%$%g206799206827%_
                                           _%$%g206800206830%_))))
                                  (_%$%g206799206827%_ _%$%g206800206830%_))))
                          (_%$%g206799206827%_ _%$%g206800206830%_))))
                  (let ((_%$%body206815206877%_
                         (reverse _%$%body206813206850%_))
                        (_%$%hd206816206878%_ (reverse _%$%hd206814206851%_)))
                    (let ((_%args206900%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen206901%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name206902%_
                           (let ((_%$e206897%_
                                  (let ((__tmp211045
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp211045 _%stx206793%_))))
                             (if _%$e206897%_
                                 _%$e206897%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args206900%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen206901%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args206900%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args206900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp211049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name206902%_
                                                             (cons _%args206900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '()))
                              (__tmp211046
                               (map (lambda (_%$%g206903206906%_
                                             _%$%g206904206908%_)
                                      (_%generate1206797%_
                                       _%args206900%_
                                       _%arglen206901%_
                                       _%$%g206903206906%_
                                       _%$%g206904206908%_))
                                    (let ((__tmp211047
                                           (lambda (_%$%g206910206913%_
                                                    _%$%g206911206915%_)
                                             (cons _%$%g206910206913%_
                                                   _%$%g206911206915%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp211047
                                       '()
                                       _%$%hd206816206878%_))
                                    (let ((__tmp211048
                                           (lambda (_%$%g206917206920%_
                                                    _%$%g206918206922%_)
                                             (cons _%$%g206917206920%_
                                                   _%$%g206918206922%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp211048
                                       '()
                                       _%$%body206815206877%_)))))
                          (declare (not safe))
                          (foldr__0 cons __tmp211049 __tmp211046)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop206809206845%_
                                             _%$%target206806206840%_
                                             '()
                                             '()))
                                          (_%$%g206799206827%_
                                           _%$%g206800206830%_)))))
                                (_%$%g206799206827%_ _%$%g206800206830%_))))
                        (_%$%g206799206827%_ _%$%g206800206830%_)))))
            (_%$%g206798206925%_ _%stx206793%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self206029%_ _%stx206030%_ _%compiled-body?206031%_)
        (letrec ((_%generate-simple206033%_
                  (lambda (_%hd206777%_ _%body206778%_)
                    (_%coalesce-boolean206034%_
                     (_%simplify-let206035%_
                      (gxc#generate-runtime-simple-let
                       _%self206029%_
                       'let
                       _%hd206777%_
                       _%body206778%_
                       _%compiled-body?206031%_)))))
                 (_%coalesce-boolean206034%_
                  (lambda (_%code206638%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code206639206665%_ _%code206638%_)
                               (_%$%else206641206673%_
                                (lambda () _%code206638%_))
                               (_%$%K206643206710%_
                                (lambda (_%expr2206676%_
                                         _%expr1206677%_
                                         _%id206678%_)
                                  (let* ((_%$%expr2206679206687%_
                                          _%expr2206676%_)
                                         (_%$%else206681206695%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1206677%_
                                                        (cons _%expr2206676%_
                                                              '())))))
                                         (_%$%K206683206700%_
                                          (lambda (_%exprs206698%_)
                                            (cons 'or
                                                  (cons _%expr1206677%_
                                                        _%exprs206698%_)))))
                                    (if (pair? _%$%expr2206679206687%_)
                                        (let ((_%$%hd206684206703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2206679206687%_)))
                                              (_%$%tl206685206705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2206679206687%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd206684206703%_
                                                       'or))
                                              (let ((_%exprs206708%_
                                                     _%$%tl206685206705%_))
                                                (_%$%K206683206700%_
                                                 _%exprs206708%_))
                                              (_%$%else206681206695%_)))
                                        (_%$%else206681206695%_))))))
                          (if (pair? _%$%code206639206665%_)
                              (let ((_%$%hd206644206713%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code206639206665%_)))
                                    (_%$%tl206645206715%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code206639206665%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd206644206713%_ 'let))
                                    (if (pair? _%$%tl206645206715%_)
                                        (let ((_%$%hd206646206718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl206645206715%_)))
                                              (_%$%tl206647206720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl206645206715%_))))
                                          (if (pair? _%$%hd206646206718%_)
                                              (let ((_%$%hd206658206723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd206646206718%_)))
                                                    (_%$%tl206659206725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd206646206718%_))))
                                                (if (pair? _%$%hd206658206723%_)
                                                    (let ((_%$%hd206660206728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd206658206723%_)))
                                                          (_%$%tl206661206730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd206658206723%_))))
                                                      (let ((_%id206733%_
                                                             _%$%hd206660206728%_))
                                                        (if (pair? _%$%tl206661206730%_)
                                                            (let ((_%$%hd206662206735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl206661206730%_)))
                          (_%$%tl206663206737%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl206661206730%_))))
                      (let ((_%expr1206740%_ _%$%hd206662206735%_))
                        (if (null? _%$%tl206663206737%_)
                            (if (null? _%$%tl206659206725%_)
                                (if (pair? _%$%tl206647206720%_)
                                    (let ((_%$%hd206648206742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl206647206720%_)))
                                          (_%$%tl206649206744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl206647206720%_))))
                                      (if (pair? _%$%hd206648206742%_)
                                          (let ((_%$%hd206650206747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd206648206742%_)))
                                                (_%$%tl206651206749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd206648206742%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd206650206747%_
                                                         'if))
                                                (if (pair? _%$%tl206651206749%_)
                                                    (let ((_%$%hd206652206752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl206651206749%_)))
                                                          (_%$%tl206653206754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl206651206749%_))))
                                                      (if (eq? _%$%hd206652206752%_
                                                               _%id206733%_)
                                                          (if (pair? _%$%tl206653206754%_)
                                                              (let ((_%$%hd206654206761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl206653206754%_)))
                            (_%$%tl206655206763%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl206653206754%_))))
                        (if (eq? _%$%hd206654206761%_ _%id206733%_)
                            (if (pair? _%$%tl206655206763%_)
                                (let ((_%$%hd206656206770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl206655206763%_)))
                                      (_%$%tl206657206772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl206655206763%_))))
                                  (let ((_%expr2206775%_ _%$%hd206656206770%_))
                                    (if (null? _%$%tl206657206772%_)
                                        (if (null? _%$%tl206649206744%_)
                                            (_%$%K206643206710%_
                                             _%expr2206775%_
                                             _%expr1206740%_
                                             _%id206733%_)
                                            (_%$%else206641206673%_))
                                        (_%$%else206641206673%_))))
                                (_%$%else206641206673%_))
                            (_%$%else206641206673%_)))
                      (_%$%else206641206673%_))
                  (_%$%else206641206673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else206641206673%_))
                                                (_%$%else206641206673%_)))
                                          (_%$%else206641206673%_)))
                                    (_%$%else206641206673%_))
                                (_%$%else206641206673%_))
                            (_%$%else206641206673%_))))
                    (_%$%else206641206673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else206641206673%_)))
                                              (_%$%else206641206673%_)))
                                        (_%$%else206641206673%_))
                                    (_%$%else206641206673%_)))
                              (_%$%else206641206673%_)))
                        _%code206638%_)))
                 (_%simplify-let206035%_
                  (lambda (_%code206337%_)
                    (let* ((_%$%code206338206410%_ _%code206337%_)
                           (_%$%else206343206418%_ (lambda () _%code206337%_)))
                      (let ((_%$%K206402206618%_
                             (lambda (_%expr206616%_) _%expr206616%_))
                            (_%$%K206385206564%_
                             (lambda (_%body206560%_
                                      _%expr206561%_
                                      _%id206562%_)
                               (cons 'let
                                     (cons (cons (cons _%id206562%_
                                                       (cons _%expr206561%_
                                                             '()))
                                                 '())
                                           _%body206560%_))))
                            (_%$%K206362206488%_
                             (lambda (_%body206482%_
                                      _%expr2206483%_
                                      _%id2206484%_
                                      _%expr1206485%_
                                      _%id1206486%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1206486%_
                                                       (cons _%expr1206485%_
                                                             '()))
                                                 (cons (cons _%id2206484%_
                                                             (cons _%expr2206483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body206482%_))))
                            (_%$%K206345206427%_
                             (lambda (_%body206422%_
                                      _%bind206423%_
                                      _%expr1206424%_
                                      _%id1206425%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1206425%_
                                                       (cons _%expr1206424%_
                                                             '()))
                                                 _%bind206423%_)
                                           _%body206422%_)))))
                        (if (pair? _%$%code206338206410%_)
                            (let ((_%$%tl206404206623%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code206338206410%_)))
                                  (_%$%hd206403206621%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code206338206410%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd206403206621%_ 'let))
                                  (if (pair? _%$%tl206404206623%_)
                                      (let ((_%$%tl206406206628%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl206404206623%_)))
                                            (_%$%hd206405206626%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl206404206623%_))))
                                        (if (null? _%$%hd206405206626%_)
                                            (if (pair? _%$%tl206406206628%_)
                                                (let ((_%$%tl206408206633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl206406206628%_)))
                                                      (_%$%hd206407206631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl206406206628%_))))
                                                  (if (null? _%$%tl206408206633%_)
                                                      (let ((_%expr206636%_
                                                             _%$%hd206407206631%_))
                                                        (_%$%K206402206618%_
                                                         _%expr206636%_))
                                                      (_%$%else206343206418%_)))
                                                (_%$%else206343206418%_))
                                            (if (pair? _%$%hd206405206626%_)
                                                (let ((_%$%tl206397206579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd206405206626%_)))
                                                      (_%$%hd206396206577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd206405206626%_))))
                                                  (if (pair? _%$%hd206396206577%_)
                                                      (let ((_%$%tl206399206584%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd206396206577%_)))
                    (_%$%hd206398206582%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd206396206577%_))))
                (if (pair? _%$%tl206399206584%_)
                    (let ((_%$%tl206401206591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl206399206584%_)))
                          (_%$%hd206400206589%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl206399206584%_))))
                      (if (null? _%$%tl206401206591%_)
                          (if (null? _%$%tl206397206579%_)
                              (if (pair? _%$%tl206406206628%_)
                                  (let ((_%$%tl206391206598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl206406206628%_)))
                                        (_%$%hd206390206596%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl206406206628%_))))
                                    (if (pair? _%$%hd206390206596%_)
                                        (let ((_%$%tl206393206603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd206390206596%_)))
                                              (_%$%hd206392206601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd206390206596%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd206392206601%_
                                                       'let))
                                              (if (pair? _%$%tl206393206603%_)
                                                  (let ((_%$%tl206395206608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl206393206603%_)))
                                                        (_%$%hd206394206606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl206393206603%_))))
                                                    (if (null? _%$%hd206394206606%_)
                                                        (if (null? _%$%tl206391206598%_)
                                                            (let ((_%id206587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd206398206582%_)
                          (_%expr206594%_ _%$%hd206400206589%_)
                          (_%body206611%_ _%$%tl206395206608%_))
                      (_%$%K206385206564%_
                       _%body206611%_
                       _%expr206594%_
                       _%id206587%_))
                    (_%$%else206343206418%_))
                (if (pair? _%$%hd206394206606%_)
                    (let ((_%$%tl206374206537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd206394206606%_)))
                          (_%$%hd206373206535%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd206394206606%_))))
                      (if (pair? _%$%hd206373206535%_)
                          (let ((_%$%tl206376206542%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd206373206535%_)))
                                (_%$%hd206375206540%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd206373206535%_))))
                            (if (pair? _%$%tl206376206542%_)
                                (let ((_%$%tl206378206549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl206376206542%_)))
                                      (_%$%hd206377206547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl206376206542%_))))
                                  (if (null? _%$%tl206378206549%_)
                                      (if (null? _%$%tl206374206537%_)
                                          (if (null? _%$%tl206391206598%_)
                                              (let ((_%id1206511%_
                                                     _%$%hd206398206582%_)
                                                    (_%expr1206518%_
                                                     _%$%hd206400206589%_)
                                                    (_%id2206545%_
                                                     _%$%hd206375206540%_)
                                                    (_%expr2206552%_
                                                     _%$%hd206377206547%_)
                                                    (_%body206554%_
                                                     _%$%tl206395206608%_))
                                                (_%$%K206362206488%_
                                                 _%body206554%_
                                                 _%expr2206552%_
                                                 _%id2206545%_
                                                 _%expr1206518%_
                                                 _%id1206511%_))
                                              (_%$%else206343206418%_))
                                          (_%$%else206343206418%_))
                                      (_%$%else206343206418%_)))
                                (_%$%else206343206418%_)))
                          (_%$%else206343206418%_)))
                    (_%$%else206343206418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else206343206418%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd206392206601%_
                                                           'let*))
                                                  (if (pair? _%$%tl206393206603%_)
                                                      (let ((_%$%tl206355206471%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl206393206603%_)))
                    (_%$%hd206354206469%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl206393206603%_))))
                (if (null? _%$%tl206391206598%_)
                    (let ((_%id1206450%_ _%$%hd206398206582%_)
                          (_%expr1206457%_ _%$%hd206400206589%_)
                          (_%bind206474%_ _%$%hd206354206469%_)
                          (_%body206476%_ _%$%tl206355206471%_))
                      (_%$%K206345206427%_
                       _%body206476%_
                       _%bind206474%_
                       _%expr1206457%_
                       _%id1206450%_))
                    (_%$%else206343206418%_)))
              (_%$%else206343206418%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else206343206418%_))))
                                        (_%$%else206343206418%_)))
                                  (_%$%else206343206418%_))
                              (_%$%else206343206418%_))
                          (_%$%else206343206418%_)))
                    (_%$%else206343206418%_)))
              (_%$%else206343206418%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else206343206418%_))))
                                      (_%$%else206343206418%_))
                                  (_%$%else206343206418%_)))
                            (_%$%else206343206418%_))))))
                 (_%generate-values206036%_
                  (lambda (_%hd206150%_ _%body206151%_)
                    (let _%lp206153%_ ((_%rest206155%_ _%hd206150%_)
                                       (_%bind206156%_ '())
                                       (_%check206157%_ '())
                                       (_%post206158%_ '()))
                      (let* ((_%__stx210203210204%_ _%rest206155%_)
                             (_%$%g206161206172%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx210203210204%_)))))
                        (let ((_%__kont210205210206%_
                               (lambda (_%$%g206163206199%_
                                        _%$%g206164206200%_)
                                 (let* ((_%__stx210159210160%_
                                         _%$%g206164206200%_)
                                        (_%$%g206215206240%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx210159210160%_)))))
                                   (let ((_%__kont210161210162%_
                                          (lambda (_%$%g206217206313%_
                                                   _%$%g206218206314%_)
                                            (let ((_%eid206328%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g206218206314%_)))
                                                  (_%expr206329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self206029%_
                                                      _%$%g206217206313%_))))
                                              (_%lp206153%_
                                               _%$%g206163206199%_
                                               (cons (cons _%eid206328%_
                                                           (cons _%expr206329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind206156%_)
                                               _%check206157%_
                                               _%post206158%_))))
                                         (_%__kont210163210164%_
                                          (lambda (_%$%g206228206261%_
                                                   _%$%g206229206262%_)
                                            (let* ((_%vals206275%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values206277%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals206275%_
                                                     _%$%g206229206262%_
                                                     _%$%g206228206261%_))
                                                   (_%refs206279%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals206275%_
                                                     _%$%g206229206262%_))
                                                   (_%expr206281%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self206029%_
                                                       _%$%g206228206261%_))))
                                              (_%lp206153%_
                                               _%$%g206163206199%_
                                               (cons (cons _%vals206275%_
                                                           (cons _%expr206281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind206156%_)
                                               (cons _%check-values206277%_
                                                     _%check206157%_)
                                               (cons _%refs206279%_
                                                     _%post206158%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx210159210160%_))
                                         (let ((_%$%e206219206289%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx210159210160%_))))
                                           (let ((_%$%tl206221206294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e206219206289%_)))
                                                 (_%$%hd206220206292%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e206219206289%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd206220206292%_))
                                                 (let ((_%$%e206222206297%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd206220206292%_))))
                                                   (let ((_%$%tl206224206302%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e206222206297%_)))
                                                         (_%$%hd206223206300%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e206222206297%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl206224206302%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl206221206294%_))
                     (let ((_%$%e206225206305%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl206221206294%_))))
                       (let ((_%$%tl206227206310%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e206225206305%_)))
                             (_%$%hd206226206308%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e206225206305%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl206227206310%_))
                             (_%__kont210161210162%_
                              _%$%hd206226206308%_
                              _%$%hd206223206300%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g206215206240%_)))))
                     (let () (declare (not safe)) (_%$%g206215206240%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl206221206294%_))
                     (let ((_%$%e206233206253%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl206221206294%_))))
                       (let ((_%$%tl206235206258%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e206233206253%_)))
                             (_%$%hd206234206256%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e206233206253%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl206235206258%_))
                             (_%__kont210163210164%_
                              _%$%hd206234206256%_
                              _%$%hd206220206292%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g206215206240%_)))))
                     (let () (declare (not safe)) (_%$%g206215206240%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl206221206294%_))
                                                     (let ((_%$%e206233206253%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl206221206294%_))))
                                                       (let ((_%$%tl206235206258%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e206233206253%_)))
                     (_%$%hd206234206256%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e206233206253%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl206235206258%_))
                     (_%__kont210163210164%_
                      _%$%hd206234206256%_
                      _%$%hd206220206292%_)
                     (let () (declare (not safe)) (_%$%g206215206240%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g206215206240%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g206215206240%_)))))))
                              (_%__kont210207210208%_
                               (lambda ()
                                 (let* ((_%body206179%_
                                         (if _%compiled-body?206031%_
                                             _%body206151%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self206029%_
                                                _%body206151%_))))
                                        (_%body206181%_
                                         (_%generate-values-post206037%_
                                          _%post206158%_
                                          _%body206179%_))
                                        (_%body206183%_
                                         (_%generate-values-check206038%_
                                          _%check206157%_
                                          _%body206181%_)))
                                   (cons 'let
                                         (cons (reverse _%bind206156%_)
                                               (cons _%body206183%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx210203210204%_))
                              (let ((_%$%e206165206191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx210203210204%_))))
                                (let ((_%$%tl206167206196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206165206191%_)))
                                      (_%$%hd206166206194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206165206191%_))))
                                  (_%__kont210205210206%_
                                   _%$%tl206167206196%_
                                   _%$%hd206166206194%_)))
                              (_%__kont210207210208%_)))))))
                 (_%generate-values-post206037%_
                  (lambda (_%post206109%_ _%body206110%_)
                    (let _%lp206112%_ ((_%rest206114%_ _%post206109%_)
                                       (_%body206115%_ _%body206110%_))
                      (let* ((_%$%rest206116206124%_ _%rest206114%_)
                             (_%$%else206118206132%_
                              (lambda () _%body206115%_))
                             (_%$%K206120206138%_
                              (lambda (_%rest206135%_ _%bind206136%_)
                                (_%lp206112%_
                                 _%rest206135%_
                                 (cons 'let
                                       (cons _%bind206136%_
                                             (cons _%body206115%_ '())))))))
                        (if (pair? _%$%rest206116206124%_)
                            (let ((_%$%hd206121206141%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest206116206124%_)))
                                  (_%$%tl206122206143%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest206116206124%_))))
                              (let* ((_%bind206146%_ _%$%hd206121206141%_)
                                     (_%rest206148%_ _%$%tl206122206143%_))
                                (_%$%K206120206138%_
                                 _%rest206148%_
                                 _%bind206146%_)))
                            (_%$%else206118206132%_))))))
                 (_%generate-values-check206038%_
                  (lambda (_%check206106%_ _%body206107%_)
                    (cons 'begin
                          (let ((__tmp211051 (cons _%body206107%_ '()))
                                (__tmp211050 (reverse _%check206106%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp211051 __tmp211050))))))
          (let* ((_%$%g206040206057%_
                  (lambda (_%$%g206041206054%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206041206054%_))))
                 (_%$%g206039206103%_
                  (lambda (_%$%g206041206060%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206041206060%_))
                        (let ((_%$%e206044206062%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206041206060%_))))
                          (let ((_%$%hd206045206065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206044206062%_)))
                                (_%$%tl206046206067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206044206062%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206046206067%_))
                                (let ((_%$%e206047206070%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206046206067%_))))
                                  (let ((_%$%hd206048206073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206047206070%_)))
                                        (_%$%tl206049206075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206047206070%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl206049206075%_))
                                        (let ((_%$%e206050206078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl206049206075%_))))
                                          (let ((_%$%hd206051206081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206050206078%_)))
                                                (_%$%tl206052206083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206050206078%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206052206083%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd206048206073%_)
                                                    (_%generate-simple206033%_
                                                     _%$%hd206048206073%_
                                                     _%$%hd206051206081%_)
                                                    (_%generate-values206036%_
                                                     _%$%hd206048206073%_
                                                     _%$%hd206051206081%_))
                                                (_%$%g206040206057%_
                                                 _%$%g206041206060%_))))
                                        (_%$%g206040206057%_
                                         _%$%g206041206060%_))))
                                (_%$%g206040206057%_ _%$%g206041206060%_))))
                        (_%$%g206040206057%_ _%$%g206041206060%_)))))
            (_%$%g206039206103%_ _%stx206030%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self206783%_ _%stx206784%_)
        (let ((_%compiled-body?206786%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self206783%_
           _%stx206784%_
           _%compiled-body?206786%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g211052_
        (let ((_g211053_ (let () (declare (not safe)) (##length _g211052_))))
          (cond ((let () (declare (not safe)) (##fx= _g211053_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g211052_))
                ((let () (declare (not safe)) (##fx= _g211053_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g211052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g211052_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals205923%_ _%hd205924%_)
        (let _%lp205926%_ ((_%rest205928%_ _%hd205924%_)
                           (_%k205929%_ '0)
                           (_%r205930%_ '()))
          (let* ((_%__stx210217210218%_ _%rest205928%_)
                 (_%$%g205935205952%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx210217210218%_)))))
            (let ((_%__kont210219210220%_
                   (lambda (_%$%g205937206015%_)
                     (_%lp205926%_
                      _%$%g205937206015%_
                      (let () (declare (not safe)) (##fx+ _%k205929%_ '1))
                      _%r205930%_)))
                  (_%__kont210221210222%_
                   (lambda (_%$%g205942205988%_ _%$%g205943205989%_)
                     (_%lp205926%_
                      _%$%g205942205988%_
                      (let () (declare (not safe)) (##fx+ _%k205929%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g205943205989%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals205923%_
                                         _%k205929%_
                                         _%$%g205942205988%_)
                                        '()))
                            _%r205930%_))))
                  (_%__kont210223210224%_
                   (lambda (_%$%g205947205964%_)
                     (let ((__tmp211054
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g205947205964%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals205923%_
                                               _%k205929%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp211054 _%r205930%_))))
                  (_%__kont210225210226%_ (lambda () (reverse _%r205930%_))))
              (let ((_%$%g205933205975%_
                     (lambda ()
                       (let ((_%$%g205947205964%_ _%__stx210217210218%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g205947205964%_))
                             (_%__kont210223210224%_ _%$%g205947205964%_)
                             (_%__kont210225210226%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx210217210218%_))
                    (let ((_%$%e205938206004%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx210217210218%_))))
                      (let ((_%$%tl205940206009%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e205938206004%_)))
                            (_%$%hd205939206007%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e205938206004%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd205939206007%_))
                            (let ((_%$%e205941206012%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd205939206007%_))))
                              (if (equal? _%$%e205941206012%_ '#f)
                                  (_%__kont210219210220%_ _%$%tl205940206009%_)
                                  (_%__kont210221210222%_
                                   _%$%tl205940206009%_
                                   _%$%hd205939206007%_)))
                            (_%__kont210221210222%_
                             _%$%tl205940206009%_
                             _%$%hd205939206007%_))))
                    (let () (declare (not safe)) (_%$%g205933205975%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self205602%_ _%stx205603%_ _%compiled-body?205604%_)
        (letrec ((_%generate-simple205606%_
                  (lambda (_%hd205908%_ _%body205909%_)
                    (gxc#generate-runtime-simple-let
                     _%self205602%_
                     'letrec
                     _%hd205908%_
                     _%body205909%_
                     _%compiled-body?205604%_)))
                 (_%generate-values205607%_
                  (lambda (_%hd205687%_ _%body205688%_)
                    (let _%lp205690%_ ((_%rest205692%_ _%hd205687%_)
                                       (_%bind205693%_ '())
                                       (_%check205694%_ '())
                                       (_%post205695%_ '()))
                      (let* ((_%__stx210291210292%_ _%rest205692%_)
                             (_%$%g205698205709%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx210291210292%_)))))
                        (let ((_%__kont210293210294%_
                               (lambda (_%$%g205700205736%_
                                        _%$%g205701205737%_)
                                 (let* ((_%__stx210247210248%_
                                         _%$%g205701205737%_)
                                        (_%$%g205752205777%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx210247210248%_)))))
                                   (let ((_%__kont210249210250%_
                                          (lambda (_%$%g205754205884%_
                                                   _%$%g205755205885%_)
                                            (let ((_%eid205899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g205755205885%_)))
                                                  (_%expr205900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self205602%_
                                                      _%$%g205754205884%_))))
                                              (_%lp205690%_
                                               _%$%g205700205736%_
                                               (cons (cons _%eid205899%_
                                                           (cons _%expr205900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind205693%_)
                                               _%check205694%_
                                               _%post205695%_))))
                                         (_%__kont210251210252%_
                                          (lambda (_%$%g205765205798%_
                                                   _%$%g205766205799%_)
                                            (let* ((_%vals205812%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values205814%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals205812%_
                                                     _%$%g205766205799%_
                                                     _%$%g205765205798%_))
                                                   (_%refs205816%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals205812%_
                                                     _%$%g205766205799%_))
                                                   (_%expr205818%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self205602%_
                                                       _%$%g205765205798%_))))
                                              (_%lp205690%_
                                               _%$%g205700205736%_
                                               (let ((__tmp211056
                                                      (cons (cons _%vals205812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr205818%_ '()))
                    _%bind205693%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp211055
                                                      (map (lambda (_%$%e205820205822%_)
                                                             (let* ((_%$%$%e205820205824205833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e205820205822%_)
                            (_%$%E205826205837%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e205820205824205833%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K205827205842%_
                             (lambda (_%eid205840%_)
                               (cons _%eid205840%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e205820205824205833%_)
                           (let ((_%$%hd205828205845%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e205820205824205833%_)))
                                 (_%$%tl205829205847%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e205820205824205833%_))))
                             (let ((_%eid205850%_ _%$%hd205828205845%_))
                               (if (pair? _%$%tl205829205847%_)
                                   (let ((_%$%tl205831205852%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl205829205847%_))))
                                     (if (null? _%$%tl205831205852%_)
                                         (_%$%K205827205842%_ _%eid205850%_)
                                         (_%$%E205826205837%_)))
                                   (_%$%E205826205837%_))))
                           (_%$%E205826205837%_))))
                   _%refs205816%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp211056
                                                  __tmp211055))
                                               (cons _%check-values205814%_
                                                     _%check205694%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs205816%_
                                                  _%post205695%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx210247210248%_))
                                         (let ((_%$%e205756205860%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx210247210248%_))))
                                           (let ((_%$%tl205758205865%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e205756205860%_)))
                                                 (_%$%hd205757205863%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e205756205860%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd205757205863%_))
                                                 (let ((_%$%e205759205868%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd205757205863%_))))
                                                   (let ((_%$%tl205761205873%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e205759205868%_)))
                                                         (_%$%hd205760205871%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e205759205868%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl205761205873%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl205758205865%_))
                     (let ((_%$%e205762205876%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl205758205865%_))))
                       (let ((_%$%tl205764205881%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e205762205876%_)))
                             (_%$%hd205763205879%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e205762205876%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl205764205881%_))
                             (_%__kont210249210250%_
                              _%$%hd205763205879%_
                              _%$%hd205760205871%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g205752205777%_)))))
                     (let () (declare (not safe)) (_%$%g205752205777%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl205758205865%_))
                     (let ((_%$%e205770205790%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl205758205865%_))))
                       (let ((_%$%tl205772205795%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e205770205790%_)))
                             (_%$%hd205771205793%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e205770205790%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl205772205795%_))
                             (_%__kont210251210252%_
                              _%$%hd205771205793%_
                              _%$%hd205757205863%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g205752205777%_)))))
                     (let () (declare (not safe)) (_%$%g205752205777%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl205758205865%_))
                                                     (let ((_%$%e205770205790%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl205758205865%_))))
                                                       (let ((_%$%tl205772205795%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e205770205790%_)))
                     (_%$%hd205771205793%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e205770205790%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl205772205795%_))
                     (_%__kont210251210252%_
                      _%$%hd205771205793%_
                      _%$%hd205757205863%_)
                     (let () (declare (not safe)) (_%$%g205752205777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g205752205777%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g205752205777%_)))))))
                              (_%__kont210295210296%_
                               (lambda ()
                                 (let* ((_%body205716%_
                                         (if _%compiled-body?205604%_
                                             _%body205688%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self205602%_
                                                _%body205688%_))))
                                        (_%body205718%_
                                         (_%generate-values-post205609%_
                                          _%post205695%_
                                          _%body205716%_))
                                        (_%body205720%_
                                         (_%generate-values-check205608%_
                                          _%check205694%_
                                          _%body205718%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind205693%_)
                                               (cons _%body205720%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx210291210292%_))
                              (let ((_%$%e205702205728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx210291210292%_))))
                                (let ((_%$%tl205704205733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205702205728%_)))
                                      (_%$%hd205703205731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205702205728%_))))
                                  (_%__kont210293210294%_
                                   _%$%tl205704205733%_
                                   _%$%hd205703205731%_)))
                              (_%__kont210295210296%_)))))))
                 (_%generate-values-check205608%_
                  (lambda (_%check205684%_ _%body205685%_)
                    (cons 'begin
                          (let ((__tmp211058 (cons _%body205685%_ '()))
                                (__tmp211057 (reverse _%check205684%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp211058 __tmp211057)))))
                 (_%generate-values-post205609%_
                  (lambda (_%post205677%_ _%body205678%_)
                    (cons 'begin
                          (let ((__tmp211062 (cons _%body205678%_ '()))
                                (__tmp211059
                                 (let ((__tmp211061
                                        (lambda (_%$%g205679205681%_)
                                          (cons 'set! _%$%g205679205681%_)))
                                       (__tmp211060 (reverse _%post205677%_)))
                                   (declare (not safe))
                                   (##map __tmp211061 __tmp211060))))
                            (declare (not safe))
                            (foldr__0 cons __tmp211062 __tmp211059))))))
          (let* ((_%$%g205611205628%_
                  (lambda (_%$%g205612205625%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205612205625%_))))
                 (_%$%g205610205674%_
                  (lambda (_%$%g205612205631%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205612205631%_))
                        (let ((_%$%e205615205633%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205612205631%_))))
                          (let ((_%$%hd205616205636%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205615205633%_)))
                                (_%$%tl205617205638%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205615205633%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl205617205638%_))
                                (let ((_%$%e205618205641%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl205617205638%_))))
                                  (let ((_%$%hd205619205644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205618205641%_)))
                                        (_%$%tl205620205646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205618205641%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205620205646%_))
                                        (let ((_%$%e205621205649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205620205646%_))))
                                          (let ((_%$%hd205622205652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205621205649%_)))
                                                (_%$%tl205623205654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205621205649%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205623205654%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd205619205644%_)
                                                    (_%generate-simple205606%_
                                                     _%$%hd205619205644%_
                                                     _%$%hd205622205652%_)
                                                    (_%generate-values205607%_
                                                     _%$%hd205619205644%_
                                                     _%$%hd205622205652%_))
                                                (_%$%g205611205628%_
                                                 _%$%g205612205631%_))))
                                        (_%$%g205611205628%_
                                         _%$%g205612205631%_))))
                                (_%$%g205611205628%_ _%$%g205612205631%_))))
                        (_%$%g205611205628%_ _%$%g205612205631%_)))))
            (_%$%g205610205674%_ _%stx205603%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self205914%_ _%stx205915%_)
        (let ((_%compiled-body?205917%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self205914%_
           _%stx205915%_
           _%compiled-body?205917%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g211063_
        (let ((_g211064_ (let () (declare (not safe)) (##length _g211063_))))
          (cond ((let () (declare (not safe)) (##fx= _g211064_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g211063_))
                ((let () (declare (not safe)) (##fx= _g211064_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g211063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g211063_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self205183%_ _%stx205184%_)
        (letrec ((_%generate-values205186%_
                  (lambda (_%hd205429%_ _%body205430%_)
                    (let _%lp205432%_ ((_%rest205434%_ _%hd205429%_)
                                       (_%bind205435%_ '()))
                      (let* ((_%$%rest205436205444%_ _%rest205434%_)
                             (_%$%else205438205455%_
                              (lambda ()
                                (let ((_%bind205452%_ (reverse _%bind205435%_))
                                      (_%body205453%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self205183%_
                                          _%body205430%_))))
                                  (cons 'letrec*
                                        (cons _%bind205452%_
                                              (cons _%body205453%_ '()))))))
                             (_%$%K205440205589%_
                              (lambda (_%rest205458%_ _%hd-bind205459%_)
                                (let* ((_%__stx210305210306%_
                                        _%hd-bind205459%_)
                                       (_%$%g205462205487%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx210305210306%_)))))
                                  (let ((_%__kont210307210308%_
                                         (lambda (_%$%g205464205568%_
                                                  _%$%g205465205569%_)
                                           (let ((_%eid205583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g205465205569%_)))
                                                 (_%expr205584%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self205183%_
                                                     _%$%g205464205568%_))))
                                             (_%lp205432%_
                                              _%rest205458%_
                                              (cons (cons _%eid205583%_
                                                          (cons _%expr205584%_
                                                                '()))
                                                    _%bind205435%_)))))
                                        (_%__kont210309210310%_
                                         (lambda (_%$%g205475205508%_
                                                  _%$%g205476205509%_)
                                           (let* ((_%vals205528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp205530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values205532%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp205530%_
                                                    _%$%g205476205509%_
                                                    _%$%g205475205508%_))
                                                  (_%refs205534%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals205528%_
                                                    _%$%g205476205509%_))
                                                  (_%expr205536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self205183%_
                                                      _%$%g205475205508%_))))
                                             (_%lp205432%_
                                              _%rest205458%_
                                              (let ((__tmp211065
                                                     (cons (cons _%vals205528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp205530%_
                                                       (cons _%expr205536%_
                                                             '()))
                                                 '())
                                           (cons _%check-values205532%_
                                                 (cons _%tmp205530%_ '()))))
                               '()))
                   _%bind205435%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp211065
                                                 _%refs205534%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx210305210306%_))
                                        (let ((_%$%e205466205544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx210305210306%_))))
                                          (let ((_%$%tl205468205549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205466205544%_)))
                                                (_%$%hd205467205547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205466205544%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd205467205547%_))
                                                (let ((_%$%e205469205552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd205467205547%_))))
                                                  (let ((_%$%tl205471205557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e205469205552%_)))
                                                        (_%$%hd205470205555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e205469205552%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl205471205557%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl205468205549%_))
                                                            (let ((_%$%e205472205560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl205468205549%_))))
                      (let ((_%$%tl205474205565%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e205472205560%_)))
                            (_%$%hd205473205563%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e205472205560%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl205474205565%_))
                            (_%__kont210307210308%_
                             _%$%hd205473205563%_
                             _%$%hd205470205555%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g205462205487%_)))))
                    (let () (declare (not safe)) (_%$%g205462205487%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl205468205549%_))
                    (let ((_%$%e205480205500%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl205468205549%_))))
                      (let ((_%$%tl205482205505%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e205480205500%_)))
                            (_%$%hd205481205503%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e205480205500%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl205482205505%_))
                            (_%__kont210309210310%_
                             _%$%hd205481205503%_
                             _%$%hd205467205547%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g205462205487%_)))))
                    (let () (declare (not safe)) (_%$%g205462205487%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl205468205549%_))
                                                    (let ((_%$%e205480205500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl205468205549%_))))
                                                      (let ((_%$%tl205482205505%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e205480205500%_)))
                    (_%$%hd205481205503%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e205480205500%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl205482205505%_))
                    (_%__kont210309210310%_
                     _%$%hd205481205503%_
                     _%$%hd205467205547%_)
                    (let () (declare (not safe)) (_%$%g205462205487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g205462205487%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g205462205487%_))))))))
                        (if (pair? _%$%rest205436205444%_)
                            (let ((_%$%hd205441205592%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest205436205444%_)))
                                  (_%$%tl205442205594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest205436205444%_))))
                              (let* ((_%hd-bind205597%_ _%$%hd205441205592%_)
                                     (_%rest205599%_ _%$%tl205442205594%_))
                                (_%$%K205440205589%_
                                 _%rest205599%_
                                 _%hd-bind205597%_)))
                            (_%$%else205438205455%_))))))
                 (_%generate-letrec?205187%_
                  (lambda (_%hd205319%_)
                    (let _%lp205321%_ ((_%rest205323%_ _%hd205319%_))
                      (let* ((_%$%rest205324205332%_ _%rest205323%_)
                             (_%$%else205326205340%_ (lambda () '#t))
                             (_%$%K205328205417%_
                              (lambda (_%rest205343%_ _%hd-bind205344%_)
                                (let* ((_%$%g205346205363%_
                                        (lambda (_%$%g205347205360%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g205347205360%_))))
                                       (_%$%g205345205414%_
                                        (lambda (_%$%g205347205366%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g205347205366%_))
                                              (let ((_%$%e205350205368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g205347205366%_))))
                                                (let ((_%$%hd205351205371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e205350205368%_)))
                                                      (_%$%tl205352205373%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e205350205368%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd205351205371%_))
                                                      (let ((_%$%e205353205376%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd205351205371%_))))
                (let ((_%$%hd205354205379%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e205353205376%_)))
                      (_%$%tl205355205381%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e205353205376%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl205355205381%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl205352205373%_))
                          (let ((_%$%e205356205384%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl205352205373%_))))
                            (let ((_%$%hd205357205387%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205356205384%_)))
                                  (_%$%tl205358205389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205356205384%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl205358205389%_))
                                  (if (_%is-lambda-expr?205188%_
                                       _%$%hd205357205387%_)
                                      (_%lp205321%_ _%rest205343%_)
                                      '#f)
                                  (_%$%g205346205363%_ _%$%g205347205366%_))))
                          (_%$%g205346205363%_ _%$%g205347205366%_))
                      (_%$%g205346205363%_ _%$%g205347205366%_))))
              (_%$%g205346205363%_ _%$%g205347205366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205346205363%_
                                               _%$%g205347205366%_)))))
                                  (_%$%g205345205414%_ _%hd-bind205344%_)))))
                        (if (pair? _%$%rest205324205332%_)
                            (let ((_%$%hd205329205420%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest205324205332%_)))
                                  (_%$%tl205330205422%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest205324205332%_))))
                              (let* ((_%hd-bind205425%_ _%$%hd205329205420%_)
                                     (_%rest205427%_ _%$%tl205330205422%_))
                                (_%$%K205328205417%_
                                 _%rest205427%_
                                 _%hd-bind205425%_)))
                            (_%$%else205326205340%_))))))
                 (_%is-lambda-expr?205188%_
                  (lambda (_%expr205256%_)
                    (let* ((_%__stx210349210350%_ _%expr205256%_)
                           (_%$%g205259205273%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx210349210350%_)))))
                      (let ((_%__kont210351210352%_
                             (lambda (_%$%g205261205301%_ _%$%g205262205302%_)
                               '#t))
                            (_%__kont210353210354%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx210349210350%_))
                            (let ((_%$%e205263205285%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx210349210350%_))))
                              (let ((_%$%tl205265205290%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e205263205285%_)))
                                    (_%$%hd205264205288%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e205263205285%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd205264205288%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd205264205288%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl205265205290%_))
                                            (let ((_%$%e205266205293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl205265205290%_))))
                                              (let ((_%$%tl205268205298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e205266205293%_)))
                                                    (_%$%hd205267205296%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e205266205293%_))))
                                                (_%__kont210351210352%_
                                                 _%$%tl205268205298%_
                                                 _%$%hd205267205296%_)))
                                            (_%__kont210353210354%_))
                                        (_%__kont210353210354%_))
                                    (_%__kont210353210354%_))))
                            (_%__kont210353210354%_)))))))
          (let* ((_%$%g205190205207%_
                  (lambda (_%$%g205191205204%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205191205204%_))))
                 (_%$%g205189205253%_
                  (lambda (_%$%g205191205210%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205191205210%_))
                        (let ((_%$%e205194205212%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205191205210%_))))
                          (let ((_%$%hd205195205215%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205194205212%_)))
                                (_%$%tl205196205217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205194205212%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl205196205217%_))
                                (let ((_%$%e205197205220%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl205196205217%_))))
                                  (let ((_%$%hd205198205223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205197205220%_)))
                                        (_%$%tl205199205225%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205197205220%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205199205225%_))
                                        (let ((_%$%e205200205228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205199205225%_))))
                                          (let ((_%$%hd205201205231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205200205228%_)))
                                                (_%$%tl205202205233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205200205228%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205202205233%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd205198205223%_)
                                                    (if (_%generate-letrec?205187%_
                                                         _%$%hd205198205223%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self205183%_
                                                         'letrec
                                                         _%$%hd205198205223%_
                                                         _%$%hd205201205231%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self205183%_
                                                         'letrec*
                                                         _%$%hd205198205223%_
                                                         _%$%hd205201205231%_
                                                         '#f))
                                                    (_%generate-values205186%_
                                                     _%$%hd205198205223%_
                                                     _%$%hd205201205231%_))
                                                (_%$%g205190205207%_
                                                 _%$%g205191205210%_))))
                                        (_%$%g205190205207%_
                                         _%$%g205191205210%_))))
                                (_%$%g205190205207%_ _%$%g205191205210%_))))
                        (_%$%g205190205207%_ _%$%g205191205210%_)))))
            (_%$%g205189205253%_ _%stx205184%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd205120%_)
        (let _%lp205122%_ ((_%rest205124%_ _%hd205120%_))
          (let* ((_%$%rest205125205141%_ _%rest205124%_)
                 (_%$%else205128205149%_ (lambda () '#f)))
            (let ((_%$%K205131205162%_
                   (lambda (_%rest205160%_) (_%lp205122%_ _%rest205160%_)))
                  (_%$%K205130205154%_ (lambda () '#t)))
              (let ((_%$%try-match205127205157%_
                     (lambda ()
                       (if (null? _%$%rest205125205141%_)
                           (_%$%K205130205154%_)
                           (_%$%else205128205149%_)))))
                (if (pair? _%$%rest205125205141%_)
                    (let ((_%$%tl205133205167%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest205125205141%_)))
                          (_%$%hd205132205165%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest205125205141%_))))
                      (if (pair? _%$%hd205132205165%_)
                          (let ((_%$%tl205135205172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd205132205165%_)))
                                (_%$%hd205134205170%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd205132205165%_))))
                            (if (pair? _%$%hd205134205170%_)
                                (let ((_%$%tl205139205175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd205134205170%_))))
                                  (if (null? _%$%tl205139205175%_)
                                      (if (pair? _%$%tl205135205172%_)
                                          (let ((_%$%tl205137205178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl205135205172%_))))
                                            (if (null? _%$%tl205137205178%_)
                                                (let ((_%rest205181%_
                                                       _%$%tl205133205167%_))
                                                  (_%lp205122%_
                                                   _%rest205181%_))
                                                (_%$%else205128205149%_)))
                                          (_%$%else205128205149%_))
                                      (_%$%else205128205149%_)))
                                (_%$%else205128205149%_)))
                          (_%$%else205128205149%_)))
                    (_%$%try-match205127205157%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self205032%_
               _%form205033%_
               _%hd205034%_
               _%body205035%_
               _%compiled-body?205036%_)
        (letrec ((_%generate1205038%_
                  (lambda (_%bind205077%_)
                    (let* ((_%$%bind205078205089%_ _%bind205077%_)
                           (_%$%E205080205092%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind205078205089%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K205081205098%_
                            (lambda (_%expr205095%_ _%id205096%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id205096%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self205032%_
                                             _%expr205095%_))
                                          '())))))
                      (if (pair? _%$%bind205078205089%_)
                          (let ((_%$%hd205082205101%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind205078205089%_)))
                                (_%$%tl205083205103%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind205078205089%_))))
                            (if (pair? _%$%hd205082205101%_)
                                (let ((_%$%hd205086205106%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd205082205101%_)))
                                      (_%$%tl205087205108%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd205082205101%_))))
                                  (let ((_%id205111%_ _%$%hd205086205106%_))
                                    (if (null? _%$%tl205087205108%_)
                                        (if (pair? _%$%tl205083205103%_)
                                            (let ((_%$%hd205084205113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl205083205103%_)))
                                                  (_%$%tl205085205115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl205083205103%_))))
                                              (let ((_%expr205118%_
                                                     _%$%hd205084205113%_))
                                                (if (null? _%$%tl205085205115%_)
                                                    (_%$%K205081205098%_
                                                     _%expr205118%_
                                                     _%id205111%_)
                                                    (_%$%E205080205092%_))))
                                            (_%$%E205080205092%_))
                                        (_%$%E205080205092%_))))
                                (_%$%E205080205092%_)))
                          (_%$%E205080205092%_))))))
          (let* ((_%bind205040%_ (map _%generate1205038%_ _%hd205034%_))
                 (_%body205042%_
                  (if _%compiled-body?205036%_
                      _%body205035%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self205032%_ _%body205035%_))))
                 (_%body205074%_
                  (let* ((_%$%body205043205051%_ _%body205042%_)
                         (_%$%else205045205059%_
                          (lambda () (cons _%body205042%_ '())))
                         (_%$%K205047205064%_
                          (lambda (_%exprs205062%_) _%exprs205062%_)))
                    (if (pair? _%$%body205043205051%_)
                        (let ((_%$%hd205048205067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body205043205051%_)))
                              (_%$%tl205049205069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body205043205051%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd205048205067%_ 'begin))
                              (let ((_%exprs205072%_ _%$%tl205049205069%_))
                                (_%$%K205047205064%_ _%exprs205072%_))
                              (_%$%else205045205059%_)))
                        (_%$%else205045205059%_)))))
            (cons _%form205033%_ (cons _%bind205040%_ _%body205074%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self204932%_ _%stx204933%_)
        (letrec ((_%generate1204935%_
                  (lambda (_%datum204987%_)
                    (if (or (null? _%datum204987%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum204987%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum204987%_))
                            (eof-object? _%datum204987%_))
                        _%datum204987%_
                        (if (uninterned-symbol? _%datum204987%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum204987%_
                               '#t))
                            (if (pair? _%datum204987%_)
                                (cons (_%generate1204935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum204987%_)))
                                      (_%generate1204935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum204987%_))))
                                (if (box? _%datum204987%_)
                                    (box (_%generate1204935%_
                                          (unbox _%datum204987%_)))
                                    (if (vector? _%datum204987%_)
                                        (vector-map
                                         _%generate1204935%_
                                         _%datum204987%_)
                                        (if (or (s8vector? _%datum204987%_)
                                                (u8vector? _%datum204987%_)
                                                (s16vector? _%datum204987%_)
                                                (u16vector? _%datum204987%_)
                                                (s32vector? _%datum204987%_)
                                                (u32vector? _%datum204987%_)
                                                (s64vector? _%datum204987%_)
                                                (u64vector? _%datum204987%_)
                                                (f32vector? _%datum204987%_)
                                                (f64vector? _%datum204987%_))
                                            _%datum204987%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx204933%_)))))))))))
          (let* ((_%$%g204937204950%_
                  (lambda (_%$%g204938204947%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g204938204947%_))))
                 (_%$%g204936204984%_
                  (lambda (_%$%g204938204953%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g204938204953%_))
                        (let ((_%$%e204940204955%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g204938204953%_))))
                          (let ((_%$%hd204941204958%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204940204955%_)))
                                (_%$%tl204942204960%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204940204955%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl204942204960%_))
                                (let ((_%$%e204943204963%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl204942204960%_))))
                                  (let ((_%$%hd204944204966%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204943204963%_)))
                                        (_%$%tl204945204968%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204943204963%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl204945204968%_))
                                        (cons 'quote
                                              (cons (_%generate1204935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd204944204966%_)))
                                                    '()))
                                        (_%$%g204937204950%_
                                         _%$%g204938204953%_))))
                                (_%$%g204937204950%_ _%$%g204938204953%_))))
                        (_%$%g204937204950%_ _%$%g204938204953%_)))))
            (_%$%g204936204984%_ _%stx204933%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self204379%_ _%stx204380%_)
        (letrec ((_%compile-call204382%_
                  (lambda (_%rator204669%_ _%rands204670%_)
                    (let ((_%rator204676%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self204379%_
                              _%rator204669%_)))
                          (_%rands204677%_
                           (map (lambda (_%$%g204671204673%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self204379%_
                                     _%$%g204671204673%_)))
                                _%rands204670%_)))
                      (let* ((_%__stx210396210397%_ _%rator204676%_)
                             (_%$%g204680204732%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx210396210397%_)))))
                        (let ((_%__kont210398210399%_
                               (lambda (_%$%g204682204852%_
                                        _%$%g204683204853%_
                                        _%$%g204684204854%_
                                        _%$%g204685204855%_)
                                 (if (let ((__tmp211068
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands204677%_)))
                                           (__tmp211066
                                            (length (let ((__tmp211067
                                                           (lambda (_%$%g204891204894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g204892204896%_)
                     (cons _%$%g204891204894%_ _%$%g204892204896%_))))
              (declare (not safe))
              (foldr__0 __tmp211067 '() _%$%g204684204854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp211068 __tmp211066))
                                     (let* ((_%id204899%_ _%$%g204685204855%_)
                                            (_%args204908%_
                                             (let ((__tmp211069
                                                    (lambda (_%$%g204900204903%_
                                                             _%$%g204901204905%_)
                                                      (cons _%$%g204900204903%_
                                                            _%$%g204901204905%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp211069
                                                '()
                                                _%$%g204684204854%_)))
                                            (_%body204917%_
                                             (let ((__tmp211070
                                                    (lambda (_%$%g204909204912%_
                                                             _%$%g204910204914%_)
                                                      (cons _%$%g204909204912%_
                                                            _%$%g204910204914%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp211070
                                                '()
                                                _%$%g204683204853%_)))
                                            (_%init204919%_
                                             (map list
                                                  _%args204908%_
                                                  _%rands204677%_)))
                                       (cons 'let
                                             (cons _%id204899%_
                                                   (cons _%init204919%_
                                                         _%body204917%_))))
                                     (let ((__tmp211071
                                            (let ((__tmp211072
                                                   (lambda (_%$%g204921204924%_
                                                            _%$%g204922204926%_)
                                                     (cons _%$%g204921204924%_
                                                           _%$%g204922204926%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp211072
                                               '()
                                               _%$%g204684204854%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx204380%_
                                        __tmp211071
                                        _%rands204677%_)))))
                              (_%__kont210404210405%_
                               (lambda ()
                                 (cons _%rator204676%_ _%rands204677%_))))
                          (let ((_%__match210463210464%_
                                 (lambda (_%$%e204686204744%_
                                          _%$%hd204687204747%_
                                          _%$%tl204688204749%_
                                          _%$%e204689204752%_
                                          _%$%hd204690204755%_
                                          _%$%tl204691204757%_
                                          _%$%e204692204760%_
                                          _%$%hd204693204763%_
                                          _%$%tl204694204765%_
                                          _%$%e204695204768%_
                                          _%$%hd204696204771%_
                                          _%$%tl204697204773%_
                                          _%$%e204698204776%_
                                          _%$%hd204699204779%_
                                          _%$%tl204700204781%_
                                          _%$%e204701204784%_
                                          _%$%hd204702204787%_
                                          _%$%tl204703204789%_
                                          _%$%e204704204792%_
                                          _%$%hd204705204795%_
                                          _%$%tl204706204797%_
                                          _%__splice210400210401%_
                                          _%$%target204707204800%_
                                          _%$%tl204709204802%_)
                                   (letrec ((_%$%loop204710204805%_
                                             (lambda (_%$%hd204708204808%_
                                                      _%$%arg204714204810%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd204708204808%_))
                                                   (let ((_%$%e204711204812%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd204708204808%_))))
                                                     (let ((_%$%lp-tl204713204817%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e204711204812%_)))
                                                           (_%$%lp-hd204712204815%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e204711204812%_))))
                                                       (_%$%loop204710204805%_
                                                        _%$%lp-tl204713204817%_
                                                        (cons _%$%lp-hd204712204815%_
                                                              _%$%arg204714204810%_))))
                                                   (let ((_%$%arg204715204820%_
                                                          (reverse _%$%arg204714204810%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl204706204797%_))
                                                         (let ((_%__splice210402210403%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl204706204797%_
                           '0))))
                   (let ((_%$%tl204718204824%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice210402210403%_ '1)))
                         (_%$%target204716204822%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice210402210403%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl204718204824%_))
                         (letrec ((_%$%loop204719204827%_
                                   (lambda (_%$%hd204717204830%_
                                            _%$%body204723204832%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd204717204830%_))
                                         (let ((_%$%e204720204834%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd204717204830%_))))
                                           (let ((_%$%lp-tl204722204839%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e204720204834%_)))
                                                 (_%$%lp-hd204721204837%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e204720204834%_))))
                                             (_%$%loop204719204827%_
                                              _%$%lp-tl204722204839%_
                                              (cons _%$%lp-hd204721204837%_
                                                    _%$%body204723204832%_))))
                                         (let ((_%$%body204724204842%_
                                                (reverse _%$%body204723204832%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl204700204781%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl204694204765%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl204691204757%_))
                                                       (let ((_%$%e204725204844%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl204691204757%_))))
                 (let ((_%$%tl204727204849%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e204725204844%_)))
                       (_%$%hd204726204847%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e204725204844%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl204727204849%_))
                       (let ((_%$%g204682204852%_ _%$%hd204726204847%_)
                             (_%$%g204683204853%_ _%$%body204724204842%_)
                             (_%$%g204684204854%_ _%$%arg204715204820%_)
                             (_%$%g204685204855%_ _%$%hd204696204771%_))
                         (if (eq? _%$%g204685204855%_ _%$%g204682204852%_)
                             (_%__kont210398210399%_
                              _%$%g204682204852%_
                              _%$%g204683204853%_
                              _%$%g204684204854%_
                              _%$%g204685204855%_)
                             (_%__kont210404210405%_)))
                       (_%__kont210404210405%_))))
               (_%__kont210404210405%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont210404210405%_))
                                               (_%__kont210404210405%_)))))))
                           (_%$%loop204719204827%_
                            _%$%target204716204822%_
                            '()))
                         (_%__kont210404210405%_))))
                 (_%__kont210404210405%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop204710204805%_
                                      _%$%target204707204800%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx210396210397%_))
                                (let ((_%$%e204686204744%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx210396210397%_))))
                                  (let ((_%$%tl204688204749%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204686204744%_)))
                                        (_%$%hd204687204747%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204686204744%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd204687204747%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd204687204747%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl204688204749%_))
                                                (let ((_%$%e204689204752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl204688204749%_))))
                                                  (let ((_%$%tl204691204757%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e204689204752%_)))
                                                        (_%$%hd204690204755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e204689204752%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd204690204755%_))
                                                        (let ((_%$%e204692204760%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd204690204755%_))))
                  (let ((_%$%tl204694204765%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204692204760%_)))
                        (_%$%hd204693204763%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204692204760%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd204693204763%_))
                        (let ((_%$%e204695204768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd204693204763%_))))
                          (let ((_%$%tl204697204773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204695204768%_)))
                                (_%$%hd204696204771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204695204768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl204697204773%_))
                                (let ((_%$%e204698204776%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl204697204773%_))))
                                  (let ((_%$%tl204700204781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204698204776%_)))
                                        (_%$%hd204699204779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204698204776%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd204699204779%_))
                                        (let ((_%$%e204701204784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd204699204779%_))))
                                          (let ((_%$%tl204703204789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204701204784%_)))
                                                (_%$%hd204702204787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204701204784%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd204702204787%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd204702204787%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl204703204789%_))
                                                        (let ((_%$%e204704204792%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl204703204789%_))))
                  (let ((_%$%tl204706204797%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204704204792%_)))
                        (_%$%hd204705204795%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204704204792%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd204705204795%_))
                        (let ((_%__splice210400210401%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd204705204795%_
                                  '0))))
                          (let ((_%$%tl204709204802%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice210400210401%_ '1)))
                                (_%$%target204707204800%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice210400210401%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl204709204802%_))
                                (_%__match210463210464%_
                                 _%$%e204686204744%_
                                 _%$%hd204687204747%_
                                 _%$%tl204688204749%_
                                 _%$%e204689204752%_
                                 _%$%hd204690204755%_
                                 _%$%tl204691204757%_
                                 _%$%e204692204760%_
                                 _%$%hd204693204763%_
                                 _%$%tl204694204765%_
                                 _%$%e204695204768%_
                                 _%$%hd204696204771%_
                                 _%$%tl204697204773%_
                                 _%$%e204698204776%_
                                 _%$%hd204699204779%_
                                 _%$%tl204700204781%_
                                 _%$%e204701204784%_
                                 _%$%hd204702204787%_
                                 _%$%tl204703204789%_
                                 _%$%e204704204792%_
                                 _%$%hd204705204795%_
                                 _%$%tl204706204797%_
                                 _%__splice210400210401%_
                                 _%$%target204707204800%_
                                 _%$%tl204709204802%_)
                                (_%__kont210404210405%_))))
                        (_%__kont210404210405%_))))
                (_%__kont210404210405%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont210404210405%_))
                                                (_%__kont210404210405%_))))
                                        (_%__kont210404210405%_))))
                                (_%__kont210404210405%_))))
                        (_%__kont210404210405%_))))
                (_%__kont210404210405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont210404210405%_))
                                            (_%__kont210404210405%_))
                                        (_%__kont210404210405%_))))
                                (_%__kont210404210405%_)))))))))
          (let* ((_%$%g204384204407%_
                  (lambda (_%$%g204385204404%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g204385204404%_))))
                 (_%$%g204383204666%_
                  (lambda (_%$%g204385204410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g204385204410%_))
                        (let ((_%$%e204388204412%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g204385204410%_))))
                          (let ((_%$%hd204389204415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204388204412%_)))
                                (_%$%tl204390204417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204388204412%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl204390204417%_))
                                (let ((_%$%e204391204420%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl204390204417%_))))
                                  (let ((_%$%hd204392204423%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204391204420%_)))
                                        (_%$%tl204393204425%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204391204420%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl204393204425%_))
                                        (let ((_g211073_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl204393204425%_
                                                  '0))))
                                          (begin
                                            (let ((_g211074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g211073_)
                                                         (##values-length
                                                          _g211073_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g211074_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g211074_)))
                                            (let ((_%$%target204394204428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g211073_
                                                      0)))
                                                  (_%$%tl204396204430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g211073_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl204396204430%_))
                                                  (letrec ((_%$%loop204397204433%_
                                                            (lambda (_%$%hd204395204436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand204401204438%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd204395204436%_))
                          (let ((_%$%e204398204440%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd204395204436%_))))
                            (let ((_%$%lp-hd204399204443%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204398204440%_)))
                                  (_%$%lp-tl204400204445%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204398204440%_))))
                              (_%$%loop204397204433%_
                               _%$%lp-tl204400204445%_
                               (cons _%$%lp-hd204399204443%_
                                     _%$%rand204401204438%_))))
                          (let ((_%$%rand204402204448%_
                                 (reverse _%$%rand204401204438%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call204382%_
                                 _%$%hd204392204423%_
                                 (let ((__tmp211075
                                        (lambda (_%$%g204468204471%_
                                                 _%$%g204469204473%_)
                                          (cons _%$%g204468204471%_
                                                _%$%g204469204473%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp211075
                                    '()
                                    _%$%rand204402204448%_)))
                                (let* ((_%__stx210512210513%_
                                        _%$%hd204392204423%_)
                                       (_%$%g204477204489%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx210512210513%_)))))
                                  (let ((_%__kont210514210515%_
                                         (lambda ()
                                           (let ((_%f204526%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self204379%_
                                                     _%$%hd204392204423%_))))
                                             (if (and (let ((__tmp211076
                                                             (symbol->string
                                                              _%f204526%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp211076))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f204526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp204528%_ ((_%rest204531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp211078
                                             (lambda (_%$%g204648204651%_
                                                      _%$%g204649204653%_)
                                               (cons _%$%g204648204651%_
                                                     _%$%g204649204653%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp211078
                                         '()
                                         _%$%rand204402204448%_))))
                            (_%bind204533%_ '())
                            (_%args204534%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest204535204543%_
                                                           _%rest204531%_)
                                                          (_%$%else204537204551%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind204533%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f204526%_ _%args204534%_)
                                             '()))))))
                  (_%$%K204539204637%_
                   (lambda (_%rest204554%_ _%e204555%_)
                     (let* ((_%__stx210466210467%_ _%e204555%_)
                            (_%$%g204560204578%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx210466210467%_)))))
                       (let ((_%__kont210468210469%_
                              (lambda ()
                                (_%lp204528%_
                                 _%rest204554%_
                                 _%bind204533%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e204555%_))
                                       _%args204534%_))))
                             (_%__kont210470210471%_
                              (lambda ()
                                (_%lp204528%_
                                 _%rest204554%_
                                 _%bind204533%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e204555%_))
                                       _%args204534%_))))
                             (_%__kont210472210473%_
                              (lambda ()
                                (let ((_%tmp204585%_
                                       (let ((__tmp211077
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp211077))))
                                  (_%lp204528%_
                                   _%rest204554%_
                                   (cons (cons _%tmp204585%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e204555%_))
                                                     '()))
                                         _%bind204533%_)
                                   (cons _%tmp204585%_ _%args204534%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx210466210467%_))
                             (let ((_%$%e204562204616%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx210466210467%_))))
                               (let ((_%$%tl204564204621%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e204562204616%_)))
                                     (_%$%hd204563204619%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e204562204616%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd204563204619%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd204563204619%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl204564204621%_))
                                             (let ((_%$%e204565204624%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl204564204621%_))))
                                               (let ((_%$%tl204567204629%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e204565204624%_)))
                                                     (_%$%hd204566204627%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e204565204624%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl204567204629%_))
                                                     (_%__kont210468210469%_)
                                                     (_%__kont210472210473%_))))
                                             (_%__kont210472210473%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd204563204619%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl204564204621%_))
                                                 (let ((_%$%e204571204601%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl204564204621%_))))
                                                   (let ((_%$%tl204573204606%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e204571204601%_)))
                                                         (_%$%hd204572204604%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e204571204601%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl204573204606%_))
                                                         (_%__kont210470210471%_)
                                                         (_%__kont210472210473%_))))
                                                 (_%__kont210472210473%_))
                                             (_%__kont210472210473%_)))
                                     (_%__kont210472210473%_))))
                             (_%__kont210472210473%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest204535204543%_)
                                                         (let ((_%$%hd204540204640%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest204535204543%_)))
                       (_%$%tl204541204642%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest204535204543%_))))
                   (let* ((_%e204645%_ _%$%hd204540204640%_)
                          (_%rest204647%_ _%$%tl204541204642%_))
                     (_%$%K204539204637%_ _%rest204647%_ _%e204645%_)))
                 (_%$%else204537204551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call204382%_
                                                  _%$%hd204392204423%_
                                                  (let ((__tmp211079
                                                         (lambda (_%$%g204655204658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g204656204660%_)
                   (cons _%$%g204655204658%_ _%$%g204656204660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp211079
                                                     '()
                                                     _%$%rand204402204448%_)))))))
                                        (_%__kont210516210517%_
                                         (lambda ()
                                           (_%compile-call204382%_
                                            _%$%hd204392204423%_
                                            (let ((__tmp211080
                                                   (lambda (_%$%g204495204498%_
                                                            _%$%g204496204500%_)
                                                     (cons _%$%g204495204498%_
                                                           _%$%g204496204500%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp211080
                                               '()
                                               _%$%rand204402204448%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx210512210513%_))
                                        (let ((_%$%e204479204508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx210512210513%_))))
                                          (let ((_%$%tl204481204513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204479204508%_)))
                                                (_%$%hd204480204511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204479204508%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd204480204511%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd204480204511%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl204481204513%_))
                                                        (let ((_%$%e204482204516%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl204481204513%_))))
                  (let ((_%$%tl204484204521%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204482204516%_)))
                        (_%$%hd204483204519%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204482204516%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl204484204521%_))
                        (_%__kont210514210515%_)
                        (_%__kont210516210517%_))))
                (_%__kont210516210517%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont210516210517%_))
                                                (_%__kont210516210517%_))))
                                        (_%__kont210516210517%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop204397204433%_
                                                     _%$%target204394204428%_
                                                     '()))
                                                  (_%$%g204384204407%_
                                                   _%$%g204385204410%_)))))
                                        (_%$%g204384204407%_
                                         _%$%g204385204410%_))))
                                (_%$%g204384204407%_ _%$%g204385204410%_))))
                        (_%$%g204384204407%_ _%$%g204385204410%_)))))
            (_%$%g204383204666%_ _%stx204380%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self204124%_ _%stx204125%_)
        (let* ((_%__stx210584210585%_ _%stx204125%_)
               (_%$%g204128204157%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210584210585%_)))))
          (let ((_%__kont210586210587%_
                 (lambda (_%$%g204130204223%_ _%$%g204131204224%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self204124%_
                        _%stx204125%_)
                       (let ((_%f204246%_
                              (let ((__tmp211081
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g204131204224%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self204124%_
                                 __tmp211081))))
                         (let _%lp204248%_ ((_%rest204251%_
                                             (reverse (let ((__tmp211083
                                                             (lambda (_%$%g204368204371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g204369204373%_)
                       (cons _%$%g204368204371%_ _%$%g204369204373%_))))
                (declare (not safe))
                (foldr__0 __tmp211083 '() _%$%g204130204223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind204253%_ '())
                                            (_%args204254%_ '()))
                           (let* ((_%$%rest204255204263%_ _%rest204251%_)
                                  (_%$%else204257204271%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind204253%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f204246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args204254%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K204259204357%_
                                   (lambda (_%rest204274%_ _%e204275%_)
                                     (let* ((_%__stx210538210539%_ _%e204275%_)
                                            (_%$%g204280204298%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx210538210539%_)))))
                                       (let ((_%__kont210540210541%_
                                              (lambda ()
                                                (_%lp204248%_
                                                 _%rest204274%_
                                                 _%bind204253%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e204275%_))
                                                       _%args204254%_))))
                                             (_%__kont210542210543%_
                                              (lambda ()
                                                (_%lp204248%_
                                                 _%rest204274%_
                                                 _%bind204253%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e204275%_))
                                                       _%args204254%_))))
                                             (_%__kont210544210545%_
                                              (lambda ()
                                                (let ((_%tmp204305%_
                                                       (let ((__tmp211082
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp211082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp204248%_
                                                   _%rest204274%_
                                                   (cons (cons _%tmp204305%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e204275%_))
                             '()))
                 _%bind204253%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp204305%_
                                                         _%args204254%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx210538210539%_))
                                             (let ((_%$%e204282204336%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx210538210539%_))))
                                               (let ((_%$%tl204284204341%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e204282204336%_)))
                                                     (_%$%hd204283204339%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e204282204336%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd204283204339%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd204283204339%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl204284204341%_))
                     (let ((_%$%e204285204344%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl204284204341%_))))
                       (let ((_%$%tl204287204349%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e204285204344%_)))
                             (_%$%hd204286204347%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e204285204344%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl204287204349%_))
                             (_%__kont210540210541%_)
                             (_%__kont210544210545%_))))
                     (_%__kont210544210545%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd204283204339%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl204284204341%_))
                         (let ((_%$%e204291204321%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl204284204341%_))))
                           (let ((_%$%tl204293204326%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e204291204321%_)))
                                 (_%$%hd204292204324%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e204291204321%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl204293204326%_))
                                 (_%__kont210542210543%_)
                                 (_%__kont210544210545%_))))
                         (_%__kont210544210545%_))
                     (_%__kont210544210545%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont210544210545%_))))
                                             (_%__kont210544210545%_)))))))
                             (if (pair? _%$%rest204255204263%_)
                                 (let ((_%$%hd204260204360%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest204255204263%_)))
                                       (_%$%tl204261204362%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest204255204263%_))))
                                   (let* ((_%e204365%_ _%$%hd204260204360%_)
                                          (_%rest204367%_
                                           _%$%tl204261204362%_))
                                     (_%$%K204259204357%_
                                      _%rest204367%_
                                      _%e204365%_)))
                                 (_%$%else204257204271%_))))))))
                (_%__kont210590210591%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self204124%_ _%stx204125%_))))
            (let ((_%__match210629210630%_
                   (lambda (_%$%e204132204169%_
                            _%$%hd204133204172%_
                            _%$%tl204134204174%_
                            _%$%e204135204177%_
                            _%$%hd204136204180%_
                            _%$%tl204137204182%_
                            _%$%e204138204185%_
                            _%$%hd204139204188%_
                            _%$%tl204140204190%_
                            _%$%e204141204193%_
                            _%$%hd204142204196%_
                            _%$%tl204143204198%_
                            _%__splice210588210589%_
                            _%$%target204144204201%_
                            _%$%tl204146204203%_)
                     (letrec ((_%$%loop204147204206%_
                               (lambda (_%$%hd204145204209%_
                                        _%$%rand204151204211%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd204145204209%_))
                                     (let ((_%$%e204148204213%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd204145204209%_))))
                                       (let ((_%$%lp-tl204150204218%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e204148204213%_)))
                                             (_%$%lp-hd204149204216%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e204148204213%_))))
                                         (_%$%loop204147204206%_
                                          _%$%lp-tl204150204218%_
                                          (cons _%$%lp-hd204149204216%_
                                                _%$%rand204151204211%_))))
                                     (let ((_%$%rand204152204221%_
                                            (reverse _%$%rand204151204211%_)))
                                       (_%__kont210586210587%_
                                        _%$%rand204152204221%_
                                        _%$%hd204142204196%_))))))
                       (_%$%loop204147204206%_
                        _%$%target204144204201%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210584210585%_))
                  (let ((_%$%e204132204169%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx210584210585%_))))
                    (let ((_%$%tl204134204174%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e204132204169%_)))
                          (_%$%hd204133204172%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e204132204169%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl204134204174%_))
                          (let ((_%$%e204135204177%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl204134204174%_))))
                            (let ((_%$%tl204137204182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204135204177%_)))
                                  (_%$%hd204136204180%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204135204177%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd204136204180%_))
                                  (let ((_%$%e204138204185%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd204136204180%_))))
                                    (let ((_%$%tl204140204190%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e204138204185%_)))
                                          (_%$%hd204139204188%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e204138204185%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd204139204188%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd204139204188%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl204140204190%_))
                                                  (let ((_%$%e204141204193%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl204140204190%_))))
                                                    (let ((_%$%tl204143204198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204141204193%_)))
                                                          (_%$%hd204142204196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204141204193%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl204143204198%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl204137204182%_))
                      (let ((_%__splice210588210589%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl204137204182%_
                                '0))))
                        (let ((_%$%tl204146204203%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210588210589%_ '1)))
                              (_%$%target204144204201%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210588210589%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl204146204203%_))
                              (_%__match210629210630%_
                               _%$%e204132204169%_
                               _%$%hd204133204172%_
                               _%$%tl204134204174%_
                               _%$%e204135204177%_
                               _%$%hd204136204180%_
                               _%$%tl204137204182%_
                               _%$%e204138204185%_
                               _%$%hd204139204188%_
                               _%$%tl204140204190%_
                               _%$%e204141204193%_
                               _%$%hd204142204196%_
                               _%$%tl204143204198%_
                               _%__splice210588210589%_
                               _%$%target204144204201%_
                               _%$%tl204146204203%_)
                              (_%__kont210590210591%_))))
                      (_%__kont210590210591%_))
                  (_%__kont210590210591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont210590210591%_))
                                              (_%__kont210590210591%_))
                                          (_%__kont210590210591%_))))
                                  (_%__kont210590210591%_))))
                          (_%__kont210590210591%_))))
                  (_%__kont210590210591%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self203936%_ _%stx203937%_)
        (letrec ((_%simplify203939%_
                  (lambda (_%code204024%_)
                    (let* ((_%$%code204025204043%_ _%code204024%_)
                           (_%$%else204027204051%_ (lambda () _%code204024%_))
                           (_%$%K204029204087%_
                            (lambda (_%expr204054%_ _%test204055%_)
                              (let* ((_%$%expr204056204064%_ _%expr204054%_)
                                     (_%$%else204058204072%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test204055%_
                                                    (cons _%expr204054%_
                                                          '())))))
                                     (_%$%K204060204077%_
                                      (lambda (_%exprs204075%_)
                                        (cons 'and
                                              (cons _%test204055%_
                                                    _%exprs204075%_)))))
                                (if (pair? _%$%expr204056204064%_)
                                    (let ((_%$%hd204061204080%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr204056204064%_)))
                                          (_%$%tl204062204082%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr204056204064%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd204061204080%_ 'and))
                                          (let ((_%exprs204085%_
                                                 _%$%tl204062204082%_))
                                            (_%$%K204060204077%_
                                             _%exprs204085%_))
                                          (_%$%else204058204072%_)))
                                    (_%$%else204058204072%_))))))
                      (if (pair? _%$%code204025204043%_)
                          (let ((_%$%hd204030204090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code204025204043%_)))
                                (_%$%tl204031204092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code204025204043%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd204030204090%_ 'if))
                                (if (pair? _%$%tl204031204092%_)
                                    (let ((_%$%hd204032204095%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl204031204092%_)))
                                          (_%$%tl204033204097%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl204031204092%_))))
                                      (let ((_%test204100%_
                                             _%$%hd204032204095%_))
                                        (if (pair? _%$%tl204033204097%_)
                                            (let ((_%$%hd204034204102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl204033204097%_)))
                                                  (_%$%tl204035204104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl204033204097%_))))
                                              (let ((_%expr204107%_
                                                     _%$%hd204034204102%_))
                                                (if (pair? _%$%tl204035204104%_)
                                                    (let ((_%$%hd204036204109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl204035204104%_)))
                                                          (_%$%tl204037204111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl204035204104%_))))
                                                      (if (pair? _%$%hd204036204109%_)
                                                          (let ((_%$%hd204038204114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd204036204109%_)))
                        (_%$%tl204039204116%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd204036204109%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd204038204114%_ 'quote))
                        (if (pair? _%$%tl204039204116%_)
                            (let ((_%$%hd204040204119%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl204039204116%_)))
                                  (_%$%tl204041204121%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl204039204116%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd204040204119%_ '#f))
                                  (if (null? _%$%tl204041204121%_)
                                      (if (null? _%$%tl204037204111%_)
                                          (_%$%K204029204087%_
                                           _%expr204107%_
                                           _%test204100%_)
                                          (_%$%else204027204051%_))
                                      (_%$%else204027204051%_))
                                  (_%$%else204027204051%_)))
                            (_%$%else204027204051%_))
                        (_%$%else204027204051%_)))
                  (_%$%else204027204051%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else204027204051%_))))
                                            (_%$%else204027204051%_))))
                                    (_%$%else204027204051%_))
                                (_%$%else204027204051%_)))
                          (_%$%else204027204051%_))))))
          (let* ((_%$%g203941203962%_
                  (lambda (_%$%g203942203959%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203942203959%_))))
                 (_%$%g203940204021%_
                  (lambda (_%$%g203942203965%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203942203965%_))
                        (let ((_%$%e203946203967%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203942203965%_))))
                          (let ((_%$%hd203947203970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203946203967%_)))
                                (_%$%tl203948203972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203946203967%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl203948203972%_))
                                (let ((_%$%e203949203975%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl203948203972%_))))
                                  (let ((_%$%hd203950203978%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203949203975%_)))
                                        (_%$%tl203951203980%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203949203975%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl203951203980%_))
                                        (let ((_%$%e203952203983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl203951203980%_))))
                                          (let ((_%$%hd203953203986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203952203983%_)))
                                                (_%$%tl203954203988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203952203983%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl203954203988%_))
                                                (let ((_%$%e203955203991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl203954203988%_))))
                                                  (let ((_%$%hd203956203994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e203955203991%_)))
                                                        (_%$%tl203957203996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e203955203991%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl203957203996%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify203939%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self203936%_
                                    _%$%hd203950203978%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self203936%_
                                          _%$%hd203953203986%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self203936%_
                                                _%$%hd203956203994%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp211084
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self203936%_
                                            _%$%hd203950203978%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp211084
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self203936%_
                                         _%$%hd203953203986%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self203936%_
                                               _%$%hd203956203994%_))
                                            '())))))
                (_%$%g203941203962%_ _%$%g203942203965%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g203941203962%_
                                                 _%$%g203942203965%_))))
                                        (_%$%g203941203962%_
                                         _%$%g203942203965%_))))
                                (_%$%g203941203962%_ _%$%g203942203965%_))))
                        (_%$%g203941203962%_ _%$%g203942203965%_)))))
            (_%$%g203940204021%_ _%stx203937%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self203884%_ _%stx203885%_)
        (let* ((_%$%g203887203900%_
                (lambda (_%$%g203888203897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203888203897%_))))
               (_%$%g203886203933%_
                (lambda (_%$%g203888203903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203888203903%_))
                      (let ((_%$%e203890203905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203888203903%_))))
                        (let ((_%$%hd203891203908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203890203905%_)))
                              (_%$%tl203892203910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203890203905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203892203910%_))
                              (let ((_%$%e203893203913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203892203910%_))))
                                (let ((_%$%hd203894203916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203893203913%_)))
                                      (_%$%tl203895203918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203893203913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl203895203918%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd203894203916%_))
                                      (_%$%g203887203900%_
                                       _%$%g203888203903%_))))
                              (_%$%g203887203900%_ _%$%g203888203903%_))))
                      (_%$%g203887203900%_ _%$%g203888203903%_)))))
          (_%$%g203886203933%_ _%stx203885%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self203816%_ _%stx203817%_)
        (let* ((_%$%g203819203836%_
                (lambda (_%$%g203820203833%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203820203833%_))))
               (_%$%g203818203881%_
                (lambda (_%$%g203820203839%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203820203839%_))
                      (let ((_%$%e203823203841%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203820203839%_))))
                        (let ((_%$%hd203824203844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203823203841%_)))
                              (_%$%tl203825203846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203823203841%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203825203846%_))
                              (let ((_%$%e203826203849%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203825203846%_))))
                                (let ((_%$%hd203827203852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203826203849%_)))
                                      (_%$%tl203828203854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203826203849%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203828203854%_))
                                      (let ((_%$%e203829203857%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203828203854%_))))
                                        (let ((_%$%hd203830203860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203829203857%_)))
                                              (_%$%tl203831203862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203829203857%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203831203862%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd203827203852%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self203816%_
                           _%$%hd203830203860%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203819203836%_
                                               _%$%g203820203839%_))))
                                      (_%$%g203819203836%_
                                       _%$%g203820203839%_))))
                              (_%$%g203819203836%_ _%$%g203820203839%_))))
                      (_%$%g203819203836%_ _%$%g203820203839%_)))))
          (_%$%g203818203881%_ _%stx203817%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self203627%_ _%stx203628%_)
        (let* ((_%$%g203630203647%_
                (lambda (_%$%g203631203644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203631203644%_))))
               (_%$%g203629203813%_
                (lambda (_%$%g203631203650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203631203650%_))
                      (let ((_%$%e203634203652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203631203650%_))))
                        (let ((_%$%hd203635203655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203634203652%_)))
                              (_%$%tl203636203657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203634203652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203636203657%_))
                              (let ((_%$%e203637203660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203636203657%_))))
                                (let ((_%$%hd203638203663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203637203660%_)))
                                      (_%$%tl203639203665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203637203660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203639203665%_))
                                      (let ((_%$%e203640203668%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203639203665%_))))
                                        (let ((_%$%hd203641203671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203640203668%_)))
                                              (_%$%tl203642203673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203640203668%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203642203673%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self203627%_ _%$%hd203641203671%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self203627%_
                               _%$%hd203638203663%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp203692%_ ((_%rest203695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd203638203663%_
                                    (cons _%$%hd203641203671%_ '())))
                             (_%bind203697%_ '())
                             (_%args203698%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest203699203707%_
                                                            _%rest203695%_)
                                                           (_%$%else203701203715%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind203697%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args203698%_)
                                              '()))))))
                   (_%$%K203703203801%_
                    (lambda (_%rest203718%_ _%e203719%_)
                      (let* ((_%__stx210632210633%_ _%e203719%_)
                             (_%$%g203724203742%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx210632210633%_)))))
                        (let ((_%__kont210634210635%_
                               (lambda ()
                                 (_%lp203692%_
                                  _%rest203718%_
                                  _%bind203697%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e203719%_))
                                        _%args203698%_))))
                              (_%__kont210636210637%_
                               (lambda ()
                                 (_%lp203692%_
                                  _%rest203718%_
                                  _%bind203697%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e203719%_))
                                        _%args203698%_))))
                              (_%__kont210638210639%_
                               (lambda ()
                                 (let ((_%tmp203749%_
                                        (let ((__tmp211085
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp211085))))
                                   (_%lp203692%_
                                    _%rest203718%_
                                    (cons (cons _%tmp203749%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e203719%_))
                                                      '()))
                                          _%bind203697%_)
                                    (cons _%tmp203749%_ _%args203698%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx210632210633%_))
                              (let ((_%$%e203726203780%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx210632210633%_))))
                                (let ((_%$%tl203728203785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203726203780%_)))
                                      (_%$%hd203727203783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203726203780%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd203727203783%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd203727203783%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl203728203785%_))
                                              (let ((_%$%e203729203788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl203728203785%_))))
                                                (let ((_%$%tl203731203793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203729203788%_)))
                                                      (_%$%hd203730203791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203729203788%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl203731203793%_))
                                                      (_%__kont210634210635%_)
                                                      (_%__kont210638210639%_))))
                                              (_%__kont210638210639%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd203727203783%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl203728203785%_))
                                                  (let ((_%$%e203735203765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl203728203785%_))))
                                                    (let ((_%$%tl203737203770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e203735203765%_)))
                                                          (_%$%hd203736203768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e203735203765%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl203737203770%_))
                                                          (_%__kont210636210637%_)
                                                          (_%__kont210638210639%_))))
                                                  (_%__kont210638210639%_))
                                              (_%__kont210638210639%_)))
                                      (_%__kont210638210639%_))))
                              (_%__kont210638210639%_)))))))
              (if (pair? _%$%rest203699203707%_)
                  (let ((_%$%hd203704203804%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest203699203707%_)))
                        (_%$%tl203705203806%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest203699203707%_))))
                    (let* ((_%e203809%_ _%$%hd203704203804%_)
                           (_%rest203811%_ _%$%tl203705203806%_))
                      (_%$%K203703203801%_ _%rest203811%_ _%e203809%_)))
                  (_%$%else203701203715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203630203647%_
                                               _%$%g203631203650%_))))
                                      (_%$%g203630203647%_
                                       _%$%g203631203650%_))))
                              (_%$%g203630203647%_ _%$%g203631203650%_))))
                      (_%$%g203630203647%_ _%$%g203631203650%_)))))
          (_%$%g203629203813%_ _%stx203628%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self203438%_ _%stx203439%_)
        (let* ((_%$%g203441203458%_
                (lambda (_%$%g203442203455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203442203455%_))))
               (_%$%g203440203624%_
                (lambda (_%$%g203442203461%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203442203461%_))
                      (let ((_%$%e203445203463%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203442203461%_))))
                        (let ((_%$%hd203446203466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203445203463%_)))
                              (_%$%tl203447203468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203445203463%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203447203468%_))
                              (let ((_%$%e203448203471%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203447203468%_))))
                                (let ((_%$%hd203449203474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203448203471%_)))
                                      (_%$%tl203450203476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203448203471%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203450203476%_))
                                      (let ((_%$%e203451203479%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203450203476%_))))
                                        (let ((_%$%hd203452203482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203451203479%_)))
                                              (_%$%tl203453203484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203451203479%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203453203484%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self203438%_ _%$%hd203452203482%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self203438%_
                               _%$%hd203449203474%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp203503%_ ((_%rest203506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd203449203474%_
                                    (cons _%$%hd203452203482%_ '())))
                             (_%bind203508%_ '())
                             (_%args203509%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest203510203518%_
                                                            _%rest203506%_)
                                                           (_%$%else203512203526%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind203508%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args203509%_)
                                              '()))))))
                   (_%$%K203514203612%_
                    (lambda (_%rest203529%_ _%e203530%_)
                      (let* ((_%__stx210678210679%_ _%e203530%_)
                             (_%$%g203535203553%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx210678210679%_)))))
                        (let ((_%__kont210680210681%_
                               (lambda ()
                                 (_%lp203503%_
                                  _%rest203529%_
                                  _%bind203508%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e203530%_))
                                        _%args203509%_))))
                              (_%__kont210682210683%_
                               (lambda ()
                                 (_%lp203503%_
                                  _%rest203529%_
                                  _%bind203508%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e203530%_))
                                        _%args203509%_))))
                              (_%__kont210684210685%_
                               (lambda ()
                                 (let ((_%tmp203560%_
                                        (let ((__tmp211086
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp211086))))
                                   (_%lp203503%_
                                    _%rest203529%_
                                    (cons (cons _%tmp203560%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e203530%_))
                                                      '()))
                                          _%bind203508%_)
                                    (cons _%tmp203560%_ _%args203509%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx210678210679%_))
                              (let ((_%$%e203537203591%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx210678210679%_))))
                                (let ((_%$%tl203539203596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203537203591%_)))
                                      (_%$%hd203538203594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203537203591%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd203538203594%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd203538203594%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl203539203596%_))
                                              (let ((_%$%e203540203599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl203539203596%_))))
                                                (let ((_%$%tl203542203604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203540203599%_)))
                                                      (_%$%hd203541203602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203540203599%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl203542203604%_))
                                                      (_%__kont210680210681%_)
                                                      (_%__kont210684210685%_))))
                                              (_%__kont210684210685%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd203538203594%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl203539203596%_))
                                                  (let ((_%$%e203546203576%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl203539203596%_))))
                                                    (let ((_%$%tl203548203581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e203546203576%_)))
                                                          (_%$%hd203547203579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e203546203576%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl203548203581%_))
                                                          (_%__kont210682210683%_)
                                                          (_%__kont210684210685%_))))
                                                  (_%__kont210684210685%_))
                                              (_%__kont210684210685%_)))
                                      (_%__kont210684210685%_))))
                              (_%__kont210684210685%_)))))))
              (if (pair? _%$%rest203510203518%_)
                  (let ((_%$%hd203515203615%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest203510203518%_)))
                        (_%$%tl203516203617%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest203510203518%_))))
                    (let* ((_%e203620%_ _%$%hd203515203615%_)
                           (_%rest203622%_ _%$%tl203516203617%_))
                      (_%$%K203514203612%_ _%rest203622%_ _%e203620%_)))
                  (_%$%else203512203526%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203441203458%_
                                               _%$%g203442203461%_))))
                                      (_%$%g203441203458%_
                                       _%$%g203442203461%_))))
                              (_%$%g203441203458%_ _%$%g203442203461%_))))
                      (_%$%g203441203458%_ _%$%g203442203461%_)))))
          (_%$%g203440203624%_ _%stx203439%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self203354%_ _%stx203355%_)
        (let* ((_%$%g203357203378%_
                (lambda (_%$%g203358203375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203358203375%_))))
               (_%$%g203356203435%_
                (lambda (_%$%g203358203381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203358203381%_))
                      (let ((_%$%e203362203383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203358203381%_))))
                        (let ((_%$%hd203363203386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203362203383%_)))
                              (_%$%tl203364203388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203362203383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203364203388%_))
                              (let ((_%$%e203365203391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203364203388%_))))
                                (let ((_%$%hd203366203394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203365203391%_)))
                                      (_%$%tl203367203396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203365203391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203367203396%_))
                                      (let ((_%$%e203368203399%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203367203396%_))))
                                        (let ((_%$%hd203369203402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203368203399%_)))
                                              (_%$%tl203370203404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203368203399%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl203370203404%_))
                                              (let ((_%$%e203371203407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl203370203404%_))))
                                                (let ((_%$%hd203372203410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203371203407%_)))
                                                      (_%$%tl203373203412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203371203407%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl203373203412%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self203354%_
                             _%$%hd203372203410%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self203354%_
                                   _%$%hd203369203402%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self203354%_
                                         _%$%hd203366203394%_))
                                      (cons ''#f '())))))
              (_%$%g203357203378%_ _%$%g203358203381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203357203378%_
                                               _%$%g203358203381%_))))
                                      (_%$%g203357203378%_
                                       _%$%g203358203381%_))))
                              (_%$%g203357203378%_ _%$%g203358203381%_))))
                      (_%$%g203357203378%_ _%$%g203358203381%_)))))
          (_%$%g203356203435%_ _%stx203355%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self203254%_ _%stx203255%_)
        (let* ((_%$%g203257203282%_
                (lambda (_%$%g203258203279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203258203279%_))))
               (_%$%g203256203351%_
                (lambda (_%$%g203258203285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203258203285%_))
                      (let ((_%$%e203263203287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203258203285%_))))
                        (let ((_%$%hd203264203290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203263203287%_)))
                              (_%$%tl203265203292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203263203287%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203265203292%_))
                              (let ((_%$%e203266203295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203265203292%_))))
                                (let ((_%$%hd203267203298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203266203295%_)))
                                      (_%$%tl203268203300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203266203295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203268203300%_))
                                      (let ((_%$%e203269203303%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203268203300%_))))
                                        (let ((_%$%hd203270203306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203269203303%_)))
                                              (_%$%tl203271203308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203269203303%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl203271203308%_))
                                              (let ((_%$%e203272203311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl203271203308%_))))
                                                (let ((_%$%hd203273203314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203272203311%_)))
                                                      (_%$%tl203274203316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203272203311%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl203274203316%_))
                                                      (let ((_%$%e203275203319%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl203274203316%_))))
                (let ((_%$%hd203276203322%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e203275203319%_)))
                      (_%$%tl203277203324%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e203275203319%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl203277203324%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self203254%_
                                     _%$%hd203273203314%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self203254%_
                                           _%$%hd203276203322%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self203254%_
                                                 _%$%hd203270203306%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203254%_
                                                       _%$%hd203267203298%_))
                                                    (cons ''#f '()))))))
                      (_%$%g203257203282%_ _%$%g203258203285%_))))
              (_%$%g203257203282%_ _%$%g203258203285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203257203282%_
                                               _%$%g203258203285%_))))
                                      (_%$%g203257203282%_
                                       _%$%g203258203285%_))))
                              (_%$%g203257203282%_ _%$%g203258203285%_))))
                      (_%$%g203257203282%_ _%$%g203258203285%_)))))
          (_%$%g203256203351%_ _%stx203255%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self203170%_ _%stx203171%_)
        (let* ((_%$%g203173203194%_
                (lambda (_%$%g203174203191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203174203191%_))))
               (_%$%g203172203251%_
                (lambda (_%$%g203174203197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203174203197%_))
                      (let ((_%$%e203178203199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203174203197%_))))
                        (let ((_%$%hd203179203202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203178203199%_)))
                              (_%$%tl203180203204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203178203199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203180203204%_))
                              (let ((_%$%e203181203207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203180203204%_))))
                                (let ((_%$%hd203182203210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203181203207%_)))
                                      (_%$%tl203183203212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203181203207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203183203212%_))
                                      (let ((_%$%e203184203215%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203183203212%_))))
                                        (let ((_%$%hd203185203218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203184203215%_)))
                                              (_%$%tl203186203220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203184203215%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl203186203220%_))
                                              (let ((_%$%e203187203223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl203186203220%_))))
                                                (let ((_%$%hd203188203226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203187203223%_)))
                                                      (_%$%tl203189203228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203187203223%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl203189203228%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self203170%_
                             _%$%hd203188203226%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self203170%_
                                   _%$%hd203185203218%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self203170%_
                                         _%$%hd203182203210%_))
                                      (cons ''#f '())))))
              (_%$%g203173203194%_ _%$%g203174203197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203173203194%_
                                               _%$%g203174203197%_))))
                                      (_%$%g203173203194%_
                                       _%$%g203174203197%_))))
                              (_%$%g203173203194%_ _%$%g203174203197%_))))
                      (_%$%g203173203194%_ _%$%g203174203197%_)))))
          (_%$%g203172203251%_ _%stx203171%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self203070%_ _%stx203071%_)
        (let* ((_%$%g203073203098%_
                (lambda (_%$%g203074203095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203074203095%_))))
               (_%$%g203072203167%_
                (lambda (_%$%g203074203101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203074203101%_))
                      (let ((_%$%e203079203103%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203074203101%_))))
                        (let ((_%$%hd203080203106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203079203103%_)))
                              (_%$%tl203081203108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203079203103%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203081203108%_))
                              (let ((_%$%e203082203111%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203081203108%_))))
                                (let ((_%$%hd203083203114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203082203111%_)))
                                      (_%$%tl203084203116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203082203111%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203084203116%_))
                                      (let ((_%$%e203085203119%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203084203116%_))))
                                        (let ((_%$%hd203086203122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203085203119%_)))
                                              (_%$%tl203087203124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203085203119%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl203087203124%_))
                                              (let ((_%$%e203088203127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl203087203124%_))))
                                                (let ((_%$%hd203089203130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e203088203127%_)))
                                                      (_%$%tl203090203132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e203088203127%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl203090203132%_))
                                                      (let ((_%$%e203091203135%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl203090203132%_))))
                (let ((_%$%hd203092203138%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e203091203135%_)))
                      (_%$%tl203093203140%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e203091203135%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl203093203140%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self203070%_
                                     _%$%hd203089203130%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self203070%_
                                           _%$%hd203092203138%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self203070%_
                                                 _%$%hd203086203122%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203070%_
                                                       _%$%hd203083203114%_))
                                                    (cons ''#f '()))))))
                      (_%$%g203073203098%_ _%$%g203074203101%_))))
              (_%$%g203073203098%_ _%$%g203074203101%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g203073203098%_
                                               _%$%g203074203101%_))))
                                      (_%$%g203073203098%_
                                       _%$%g203074203101%_))))
                              (_%$%g203073203098%_ _%$%g203074203101%_))))
                      (_%$%g203073203098%_ _%$%g203074203101%_)))))
          (_%$%g203072203167%_ _%stx203071%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self202865%_ _%stx202866%_)
        (let* ((_%$%g202868202889%_
                (lambda (_%$%g202869202886%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202869202886%_))))
               (_%$%g202867203067%_
                (lambda (_%$%g202869202892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202869202892%_))
                      (let ((_%$%e202873202894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202869202892%_))))
                        (let ((_%$%hd202874202897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202873202894%_)))
                              (_%$%tl202875202899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202873202894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202875202899%_))
                              (let ((_%$%e202876202902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202875202899%_))))
                                (let ((_%$%hd202877202905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202876202902%_)))
                                      (_%$%tl202878202907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202876202902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202878202907%_))
                                      (let ((_%$%e202879202910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202878202907%_))))
                                        (let ((_%$%hd202880202913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202879202910%_)))
                                              (_%$%tl202881202915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202879202910%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl202881202915%_))
                                              (let ((_%$%e202882202918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl202881202915%_))))
                                                (let ((_%$%hd202883202921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e202882202918%_)))
                                                      (_%$%tl202884202923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e202882202918%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl202884202923%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self202865%_
                                 _%$%hd202883202921%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self202865%_
                                       _%$%hd202880202913%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp202946%_ ((_%rest202949%_
                                      (cons _%$%hd202880202913%_
                                            (cons _%$%hd202883202921%_ '())))
                                     (_%bind202951%_ '())
                                     (_%args202952%_ '()))
                    (let* ((_%$%rest202953202961%_ _%rest202949%_)
                           (_%$%else202955202969%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind202951%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp211087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (foldr__0 cons __tmp211087 _%args202952%_)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K202957203055%_
                            (lambda (_%rest202972%_ _%e202973%_)
                              (let* ((_%__stx210724210725%_ _%e202973%_)
                                     (_%$%g202978202996%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx210724210725%_)))))
                                (let ((_%__kont210726210727%_
                                       (lambda ()
                                         (_%lp202946%_
                                          _%rest202972%_
                                          _%bind202951%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e202973%_))
                                                _%args202952%_))))
                                      (_%__kont210728210729%_
                                       (lambda ()
                                         (_%lp202946%_
                                          _%rest202972%_
                                          _%bind202951%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e202973%_))
                                                _%args202952%_))))
                                      (_%__kont210730210731%_
                                       (lambda ()
                                         (let ((_%tmp203003%_
                                                (let ((__tmp211088
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp211088))))
                                           (_%lp202946%_
                                            _%rest202972%_
                                            (cons (cons _%tmp203003%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e202973%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind202951%_)
                                            (cons _%tmp203003%_
                                                  _%args202952%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx210724210725%_))
                                      (let ((_%$%e202980203034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx210724210725%_))))
                                        (let ((_%$%tl202982203039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202980203034%_)))
                                              (_%$%hd202981203037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202980203034%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd202981203037%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd202981203037%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl202982203039%_))
                                                      (let ((_%$%e202983203042%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl202982203039%_))))
                (let ((_%$%tl202985203047%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e202983203042%_)))
                      (_%$%hd202984203045%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e202983203042%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl202985203047%_))
                      (_%__kont210726210727%_)
                      (_%__kont210730210731%_))))
              (_%__kont210730210731%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd202981203037%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl202982203039%_))
                                                          (let ((_%$%e202989203019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl202982203039%_))))
                    (let ((_%$%tl202991203024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e202989203019%_)))
                          (_%$%hd202990203022%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e202989203019%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl202991203024%_))
                          (_%__kont210728210729%_)
                          (_%__kont210730210731%_))))
                  (_%__kont210730210731%_))
              (_%__kont210730210731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont210730210731%_))))
                                      (_%__kont210730210731%_)))))))
                      (if (pair? _%$%rest202953202961%_)
                          (let ((_%$%hd202958203058%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest202953202961%_)))
                                (_%$%tl202959203060%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest202953202961%_))))
                            (let* ((_%e203063%_ _%$%hd202958203058%_)
                                   (_%rest203065%_ _%$%tl202959203060%_))
                              (_%$%K202957203055%_
                               _%rest203065%_
                               _%e203063%_)))
                          (_%$%else202955202969%_)))))
              (_%$%g202868202889%_ _%$%g202869202892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202868202889%_
                                               _%$%g202869202892%_))))
                                      (_%$%g202868202889%_
                                       _%$%g202869202892%_))))
                              (_%$%g202868202889%_ _%$%g202869202892%_))))
                      (_%$%g202868202889%_ _%$%g202869202892%_)))))
          (_%$%g202867203067%_ _%stx202866%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self202644%_ _%stx202645%_)
        (let* ((_%$%g202647202672%_
                (lambda (_%$%g202648202669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202648202669%_))))
               (_%$%g202646202862%_
                (lambda (_%$%g202648202675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202648202675%_))
                      (let ((_%$%e202653202677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202648202675%_))))
                        (let ((_%$%hd202654202680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202653202677%_)))
                              (_%$%tl202655202682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202653202677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202655202682%_))
                              (let ((_%$%e202656202685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202655202682%_))))
                                (let ((_%$%hd202657202688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202656202685%_)))
                                      (_%$%tl202658202690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202656202685%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202658202690%_))
                                      (let ((_%$%e202659202693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202658202690%_))))
                                        (let ((_%$%hd202660202696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202659202693%_)))
                                              (_%$%tl202661202698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202659202693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl202661202698%_))
                                              (let ((_%$%e202662202701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl202661202698%_))))
                                                (let ((_%$%hd202663202704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e202662202701%_)))
                                                      (_%$%tl202664202706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e202662202701%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl202664202706%_))
                                                      (let ((_%$%e202665202709%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl202664202706%_))))
                (let ((_%$%hd202666202712%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e202665202709%_)))
                      (_%$%tl202667202714%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e202665202709%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl202667202714%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self202644%_
                                         _%$%hd202663202704%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self202644%_
                                               _%$%hd202666202712%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self202644%_
                                                     _%$%hd202660202696%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp202741%_ ((_%rest202744%_
                                              (cons _%$%hd202660202696%_
                                                    (cons _%$%hd202666202712%_
                                                          (cons _%$%hd202663202704%_
                                                                '()))))
                                             (_%bind202746%_ '())
                                             (_%args202747%_ '()))
                            (let* ((_%$%rest202748202756%_ _%rest202744%_)
                                   (_%$%else202750202764%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind202746%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp211089 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (foldr__0 cons __tmp211089 _%args202747%_)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K202752202850%_
                                    (lambda (_%rest202767%_ _%e202768%_)
                                      (let* ((_%__stx210770210771%_
                                              _%e202768%_)
                                             (_%$%g202773202791%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx210770210771%_)))))
                                        (let ((_%__kont210772210773%_
                                               (lambda ()
                                                 (_%lp202741%_
                                                  _%rest202767%_
                                                  _%bind202746%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e202768%_))
                                                        _%args202747%_))))
                                              (_%__kont210774210775%_
                                               (lambda ()
                                                 (_%lp202741%_
                                                  _%rest202767%_
                                                  _%bind202746%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e202768%_))
                                                        _%args202747%_))))
                                              (_%__kont210776210777%_
                                               (lambda ()
                                                 (let ((_%tmp202798%_
                                                        (let ((__tmp211090
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp211090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp202741%_
                                                    _%rest202767%_
                                                    (cons (cons _%tmp202798%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e202768%_))
                              '()))
                  _%bind202746%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp202798%_
                                                          _%args202747%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx210770210771%_))
                                              (let ((_%$%e202775202829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx210770210771%_))))
                                                (let ((_%$%tl202777202834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e202775202829%_)))
                                                      (_%$%hd202776202832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e202775202829%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd202776202832%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd202776202832%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl202777202834%_))
                      (let ((_%$%e202778202837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl202777202834%_))))
                        (let ((_%$%tl202780202842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202778202837%_)))
                              (_%$%hd202779202840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202778202837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl202780202842%_))
                              (_%__kont210772210773%_)
                              (_%__kont210776210777%_))))
                      (_%__kont210776210777%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd202776202832%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl202777202834%_))
                          (let ((_%$%e202784202814%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl202777202834%_))))
                            (let ((_%$%tl202786202819%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e202784202814%_)))
                                  (_%$%hd202785202817%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e202784202814%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl202786202819%_))
                                  (_%__kont210774210775%_)
                                  (_%__kont210776210777%_))))
                          (_%__kont210776210777%_))
                      (_%__kont210776210777%_)))
              (_%__kont210776210777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont210776210777%_)))))))
                              (if (pair? _%$%rest202748202756%_)
                                  (let ((_%$%hd202753202853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest202748202756%_)))
                                        (_%$%tl202754202855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest202748202756%_))))
                                    (let* ((_%e202858%_ _%$%hd202753202853%_)
                                           (_%rest202860%_
                                            _%$%tl202754202855%_))
                                      (_%$%K202752202850%_
                                       _%rest202860%_
                                       _%e202858%_)))
                                  (_%$%else202750202764%_)))))
                      (_%$%g202647202672%_ _%$%g202648202675%_))))
              (_%$%g202647202672%_ _%$%g202648202675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202647202672%_
                                               _%$%g202648202675%_))))
                                      (_%$%g202647202672%_
                                       _%$%g202648202675%_))))
                              (_%$%g202647202672%_ _%$%g202648202675%_))))
                      (_%$%g202647202672%_ _%$%g202648202675%_)))))
          (_%$%g202646202862%_ _%stx202645%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self202483%_ _%stx202484%_)
        (letrec ((_%import-set-template202486%_
                  (lambda (_%in202589%_ _%phi202590%_)
                    (let ((_%iphi202592%_
                           (fx+ _%phi202590%_
                                (##direct-structure-ref
                                 _%in202589%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports202593%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in202589%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp202595%_ ((_%rest202597%_ _%imports202593%_)
                                         (_%r202598%_ '()))
                        (let* ((_%$%rest202599202607%_ _%rest202597%_)
                               (_%$%else202601202615%_ (lambda () _%r202598%_))
                               (_%$%K202603202632%_
                                (lambda (_%rest202618%_ _%in202619%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in202619%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi202592%_))
                                          (_%lp202595%_
                                           _%rest202618%_
                                           (cons _%in202619%_ _%r202598%_))
                                          (_%lp202595%_
                                           _%rest202618%_
                                           _%r202598%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in202619%_
                                             'gx#module-import::t))
                                          (let ((_%iphi202623%_
                                                 (fx+ _%phi202590%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in202619%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi202623%_))
                                                (_%lp202595%_
                                                 _%rest202618%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in202619%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r202598%_))
                                                (_%lp202595%_
                                                 _%rest202618%_
                                                 _%r202598%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in202619%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi202626%_
                                                     (fx+ _%iphi202592%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in202619%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi202626%_))
                                                    (_%lp202595%_
                                                     _%rest202618%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in202619%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r202598%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi202626%_))
                                                        (_%lp202595%_
                                                         _%rest202618%_
                                                         (let ((__tmp211091
                                                                (_%import-set-template202486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in202619%_
                         _%iphi202592%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r202598%_ __tmp211091)))
                (_%lp202595%_ _%rest202618%_ _%r202598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp202595%_
                                               _%rest202618%_
                                               _%r202598%_)))))))
                          (if (pair? _%$%rest202599202607%_)
                              (let ((_%$%hd202604202635%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest202599202607%_)))
                                    (_%$%tl202605202637%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest202599202607%_))))
                                (let* ((_%in202640%_ _%$%hd202604202635%_)
                                       (_%rest202642%_ _%$%tl202605202637%_))
                                  (_%$%K202603202632%_
                                   _%rest202642%_
                                   _%in202640%_)))
                              (_%$%else202601202615%_))))))))
          (let* ((_%$%g202488202498%_
                  (lambda (_%$%g202489202495%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202489202495%_))))
                 (_%$%g202487202586%_
                  (lambda (_%$%g202489202501%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202489202501%_))
                        (let ((_%$%e202491202503%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202489202501%_))))
                          (let ((_%$%hd202492202506%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202491202503%_)))
                                (_%$%tl202493202508%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202491202503%_))))
                            (let ((_%ht202522%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp202524%_ ((_%rest202526%_
                                                  _%$%tl202493202508%_)
                                                 (_%loads202527%_ '()))
                                (letrec ((_%K202529%_
                                          (lambda (_%ctx202579%_
                                                   _%rest202580%_)
                                            (let ((_%id202582%_
                                                   (##structure-ref
                                                    _%ctx202579%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht202522%_
                                                     _%id202582%_))
                                                  (_%lp202524%_
                                                   _%rest202580%_
                                                   _%loads202527%_)
                                                  (let ((_%rt202584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id202582%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht202522%_
                                                       _%id202582%_
                                                       _%rt202584%_))
                                                    (_%lp202524%_
                                                     _%rest202580%_
                                                     (cons _%rt202584%_
                                                           _%loads202527%_))))))))
                                  (let* ((_%$%rest202530202538%_
                                          _%rest202526%_)
                                         (_%$%else202532202550%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp211093
                                                         (lambda (_%$%g202545202547%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g202545202547%_)))
                (__tmp211092 (reverse _%loads202527%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp211093
                                                           __tmp211092)))))
                                         (_%$%K202534202567%_
                                          (lambda (_%rest202553%_ _%in202554%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in202554%_
                                                   'gx#module-context::t))
                                                (_%K202529%_
                                                 _%in202554%_
                                                 _%rest202553%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in202554%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in202554%_
                            '3
                            '#f
                            '#f)))
                (_%K202529%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in202554%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest202553%_)
                (_%lp202524%_ _%rest202553%_ _%loads202527%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in202554%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi202559%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in202554%_ '2 '#f '#f))))
                  (if (fxzero? _%phi202559%_)
                      (_%K202529%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in202554%_ '1 '#f '#f))
                       _%rest202553%_)
                      (if (fxpositive? _%phi202559%_)
                          (let ((_%deps202563%_
                                 (_%import-set-template202486%_
                                  _%in202554%_
                                  '0)))
                            (_%lp202524%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest202553%_ _%deps202563%_))
                             _%loads202527%_))
                          (_%lp202524%_ _%rest202553%_ _%loads202527%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx202484%_
                   _%in202554%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest202530202538%_)
                                        (let ((_%$%hd202535202570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest202530202538%_)))
                                              (_%$%tl202536202572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest202530202538%_))))
                                          (let* ((_%in202575%_
                                                  _%$%hd202535202570%_)
                                                 (_%rest202577%_
                                                  _%$%tl202536202572%_))
                                            (_%$%K202534202567%_
                                             _%rest202577%_
                                             _%in202575%_)))
                                        (_%$%else202532202550%_))))))))
                        (_%$%g202488202498%_ _%$%g202489202501%_)))))
            (_%$%g202487202586%_ _%stx202484%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self202297%_ _%stx202298%_)
        (letrec ((_%add-lift!202300%_
                  (lambda (_%expr202481%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr202481%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote202301%_
                  (lambda (_%id202478%_ _%marks202479%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id202478%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks202479%_
                                                        '()))))))))
                 (_%generate-simple202302%_
                  (lambda (_%stxq202473%_)
                    (let ((_%gid202475%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid202476%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq202473%_))))
                      (_%add-lift!202300%_
                       (cons 'define
                             (cons _%gid202475%_
                                   (cons (_%generate-syntax-quote202301%_
                                          _%qid202476%_
                                          ''())
                                         '()))))
                      (let ((__tmp211094
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp211094 _%stxq202473%_ _%gid202475%_))
                      _%gid202475%_)))
                 (_%generate-serialized202303%_
                  (lambda (_%stxq202463%_ _%marks202464%_)
                    (let* ((_%mark-refs202466%_
                            (map _%generate-mark202304%_ _%marks202464%_))
                           (_%gid202468%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid202470%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq202463%_))))
                      (_%add-lift!202300%_
                       (cons 'define
                             (cons _%gid202468%_
                                   (cons (_%generate-syntax-quote202301%_
                                          _%qid202470%_
                                          (cons 'list _%mark-refs202466%_))
                                         '()))))
                      (let ((__tmp211095
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp211095 _%stxq202463%_ _%gid202468%_))
                      _%gid202468%_)))
                 (_%generate-mark202304%_
                  (lambda (_%mark202448%_)
                    (let ((_%$e202450%_
                           (let ((__tmp211096
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp211096 _%mark202448%_))))
                      (if _%$e202450%_
                          _%$e202450%_
                          (let* ((_%gid202454%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr202456%_
                                  (_%serialize-mark202305%_ _%mark202448%_))
                                 (_%ctx202458%_
                                  (let ((__tmp211097
                                         (##structure-ref
                                          _%mark202448%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp211097)))
                                 (_%ctx-ref202460%_
                                  (if (eq? _%ctx202458%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref202306%_
                                                               _%ctx202458%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp211098
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp211098
                               _%mark202448%_
                               _%gid202454%_))
                            (_%add-lift!202300%_
                             (cons 'define
                                   (cons _%gid202454%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr202456%_ '()))
                   (cons _%ctx-ref202460%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid202454%_)))))
                 (_%serialize-mark202305%_
                  (lambda (_%mark202396%_)
                    (letrec ((_%quote-e202398%_
                              (lambda (_%sym202446%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym202446%_))
                                    _%sym202446%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym202446%_))))))
                      (let* ((_%$%mark202399202408%_ _%mark202396%_)
                             (_%$%E202401202411%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark202399202408%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K202402202423%_
                              (lambda (_%trace202414%_
                                       _%phi202415%_
                                       _%ctx202416%_
                                       _%subst202417%_)
                                (let ((_%subs202419%_
                                       (if _%subst202417%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst202417%_))
                                           '())))
                                  (cons _%phi202415%_
                                        (let ((__tmp211099
                                               (lambda (_%pair202421%_)
                                                 (cons (_%quote-e202398%_
                                                        (car _%pair202421%_))
                                                       (_%quote-e202398%_
                                                        (cdr _%pair202421%_))))))
                                          (declare (not safe))
                                          (##map __tmp211099
                                                 _%subs202419%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark202399202408%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e202403202426%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark202399202408%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst202429%_ _%$%e202403202426%_)
                                   (_%$%e202404202431%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark202399202408%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx202434%_ _%$%e202404202431%_)
                                   (_%$%e202405202436%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark202399202408%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi202439%_ _%$%e202405202436%_)
                                   (_%$%e202406202441%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark202399202408%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace202444%_ _%$%e202406202441%_))
                              (_%$%K202402202423%_
                               _%trace202444%_
                               _%phi202439%_
                               _%ctx202434%_
                               _%subst202429%_))
                            (_%$%E202401202411%_))))))
                 (_%context-ref202306%_
                  (lambda (_%ctx202383%_)
                    (if (let ((__tmp211100
                               (##structure-ref
                                _%ctx202383%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp211100
                           'gx#module-context::t))
                        (let ((_%ctx-ref202385%_
                               (_%context-ref-nested202308%_ _%ctx202383%_))
                              (_%ctx-origin202386%_
                               (_%context-ref-origin202307%_ _%ctx202383%_))
                              (_%origin202387%_
                               (_%context-ref-origin202307%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin202387%_ _%ctx-origin202386%_)
                              (let ((_%ref202389%_
                                     (_%context-ref-nested202308%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp202391%_ ((_%ref202393%_
                                                    (cdr _%ref202389%_))
                                                   (_%ctx-ref202394%_
                                                    (cdr _%ctx-ref202385%_)))
                                  (if (and (pair? _%ref202393%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref202393%_))
                                                (car _%ctx-ref202394%_)))
                                      (_%lp202391%_
                                       (cdr _%ref202393%_)
                                       (cdr _%ctx-ref202394%_))
                                      (cons '#f _%ctx-ref202394%_))))
                              _%ctx-ref202385%_))
                        (let ((__tmp211101
                               (##structure-ref
                                _%ctx202383%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp211101)))))
                 (_%context-ref-origin202307%_
                  (lambda (_%ctx202375%_)
                    (let _%lp202377%_ ((_%ctx202379%_ _%ctx202375%_))
                      (let ((_%super202381%_
                             (##structure-ref
                              _%ctx202379%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super202381%_
                               'gx#module-context::t))
                            (_%lp202377%_ _%super202381%_)
                            _%ctx202379%_)))))
                 (_%context-ref-nested202308%_
                  (lambda (_%ctx202366%_)
                    (let _%lp202368%_ ((_%ctx202370%_ _%ctx202366%_)
                                       (_%r202371%_ '()))
                      (let ((_%super202373%_
                             (##structure-ref
                              _%ctx202370%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super202373%_
                               'gx#module-context::t))
                            (_%lp202368%_
                             _%super202373%_
                             (cons (car (##structure-ref
                                         _%ctx202370%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r202371%_))
                            (cons (let ((__tmp211102
                                         (##structure-ref
                                          _%ctx202370%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp211102))
                                  _%r202371%_)))))))
          (let* ((_%$%g202310202323%_
                  (lambda (_%$%g202311202320%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202311202320%_))))
                 (_%$%g202309202363%_
                  (lambda (_%$%g202311202326%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202311202326%_))
                        (let ((_%$%e202313202328%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202311202326%_))))
                          (let ((_%$%hd202314202331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202313202328%_)))
                                (_%$%tl202315202333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202313202328%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl202315202333%_))
                                (let ((_%$%e202316202336%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl202315202333%_))))
                                  (let ((_%$%hd202317202339%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202316202336%_)))
                                        (_%$%tl202318202341%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202316202336%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl202318202341%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd202317202339%_))
                                            (let ((_%$e202357%_
                                                   (let ((__tmp211103
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp211103
                                                      _%$%hd202317202339%_))))
                                              (if _%$e202357%_
                                                  _%$e202357%_
                                                  (let ((_%marks202361%_
                                                         (##direct-structure-ref
                                                          _%$%hd202317202339%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks202361%_)
                                                        (_%generate-simple202302%_
                                                         _%$%hd202317202339%_)
                                                        (_%generate-serialized202303%_
                                                         _%$%hd202317202339%_
                                                         _%marks202361%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd202317202339%_)))
                                        (_%$%g202310202323%_
                                         _%$%g202311202326%_))))
                                (_%$%g202310202323%_ _%$%g202311202326%_))))
                        (_%$%g202310202323%_ _%$%g202311202326%_)))))
            (_%$%g202309202363%_ _%stx202298%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self202229%_ _%stx202230%_)
        (let* ((_%$%g202232202249%_
                (lambda (_%$%g202233202246%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202233202246%_))))
               (_%$%g202231202294%_
                (lambda (_%$%g202233202252%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202233202252%_))
                      (let ((_%$%e202236202254%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202233202252%_))))
                        (let ((_%$%hd202237202257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202236202254%_)))
                              (_%$%tl202238202259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202236202254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202238202259%_))
                              (let ((_%$%e202239202262%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202238202259%_))))
                                (let ((_%$%hd202240202265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202239202262%_)))
                                      (_%$%tl202241202267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202239202262%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202241202267%_))
                                      (let ((_%$%e202242202270%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202241202267%_))))
                                        (let ((_%$%hd202243202273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202242202270%_)))
                                              (_%$%tl202244202275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202242202270%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202244202275%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd202240202265%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self202229%_
                           _%$%hd202243202273%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g202232202249%_
                                               _%$%g202233202252%_))))
                                      (_%$%g202232202249%_
                                       _%$%g202233202252%_))))
                              (_%$%g202232202249%_ _%$%g202233202252%_))))
                      (_%$%g202232202249%_ _%$%g202233202252%_)))))
          (_%$%g202231202294%_ _%stx202230%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self202178%_ _%stx202179%_)
        (let* ((_%$%g202181202191%_
                (lambda (_%$%g202182202188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202182202188%_))))
               (_%$%g202180202226%_
                (lambda (_%$%g202182202194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202182202194%_))
                      (let ((_%$%e202184202196%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202182202194%_))))
                        (let ((_%$%hd202185202199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202184202196%_)))
                              (_%$%tl202186202201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202184202196%_))))
                          (let* ((_%c-body202218%_
                                  (map (lambda (_%$%g202213202215%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self202178%_
                                            _%$%g202213202215%_)))
                                       _%$%tl202186202201%_))
                                 (_%c-body202223%_
                                  (let ((__tmp211104
                                         (lambda (_%$obj202220%_)
                                           (not (eq? _%$obj202220%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp211104 _%c-body202218%_))))
                            (cons '%#begin _%c-body202223%_))))
                      (_%$%g202181202191%_ _%$%g202182202194%_)))))
          (_%$%g202180202226%_ _%stx202179%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self202083%_ _%stx202084%_)
        (let* ((_%$%g202086202096%_
                (lambda (_%$%g202087202093%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202087202093%_))))
               (_%$%g202085202175%_
                (lambda (_%$%g202087202099%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202087202099%_))
                      (let ((_%$%e202089202101%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202087202099%_))))
                        (let ((_%$%hd202090202104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202089202101%_)))
                              (_%$%tl202091202106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202089202101%_))))
                          (let* ((_%phi202119%_
                                  (let ((__tmp211105
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp211105 '1)))
                                 (_%block202121%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self202083%_ 'state))
                                   _%phi202119%_))
                                 (_%compiled202124%_
                                  (let ((__tmp211106
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self202083%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl202091202106%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp211106
                                     gx#current-expander-phi
                                     _%phi202119%_)))
                                 (_%$%g202127202137%_
                                  (lambda (_%$%g202128202134%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g202128202134%_))))
                                 (_%$%g202126202172%_
                                  (lambda (_%$%g202128202140%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g202128202140%_))
                                        (let ((_%$%e202130202142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g202128202140%_))))
                                          (let ((_%$%hd202131202145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202130202142%_)))
                                                (_%$%tl202132202147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202130202142%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd202131202145%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd202131202145%_))
                                                    (let ((_%c-body202167%_
                                                           (filter (lambda (_%$obj202164%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj202164%_ '#!void)))
                           _%$%tl202132202147%_)))
              (if _%block202121%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block202121%_
                                                            '()))
                                                '())))
                              _%c-body202167%_))
                  (if (null? _%c-body202167%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body202167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g202127202137%_
                                                     _%$%g202128202140%_))
                                                (_%$%g202127202137%_
                                                 _%$%g202128202140%_))))
                                        (_%$%g202127202137%_
                                         _%$%g202128202140%_)))))
                            (_%$%g202126202172%_ _%compiled202124%_))))
                      (_%$%g202086202096%_ _%$%g202087202099%_)))))
          (_%$%g202085202175%_ _%stx202084%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self202014%_ _%stx202015%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self202014%_ 'state)))
        (let* ((_%$%g202017202031%_
                (lambda (_%$%g202018202028%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202018202028%_))))
               (_%$%g202016202080%_
                (lambda (_%$%g202018202034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202018202034%_))
                      (let ((_%$%e202021202036%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202018202034%_))))
                        (let ((_%$%hd202022202039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202021202036%_)))
                              (_%$%tl202023202041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202021202036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202023202041%_))
                              (let ((_%$%e202024202044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202023202041%_))))
                                (let ((_%$%hd202025202047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202024202044%_)))
                                      (_%$%tl202026202049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202024202044%_))))
                                  (let ((_%key202066%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd202025202047%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key202066%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx202015%_
                                           _%$%hd202025202047%_
                                           _%key202066%_)))
                                    (let* ((_%ctx202068%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd202025202047%_)))
                                           (_%code202071%_
                                            (let ((__tmp211107
                                                   (lambda ()
                                                     (let ((__tmp211108
                                                            (##structure-ref
                                                             _%ctx202068%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self202014%_
                                                        __tmp211108)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp211107
                                               gx#current-expander-context
                                               _%ctx202068%_)))
                                           (_%rt202073%_
                                            (let ((__tmp211109
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp211109
                                               _%ctx202068%_)))
                                           (_%loader202075%_
                                            (if _%rt202073%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt202073%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid202077%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd202025202047%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self202014%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid202077%_
                                                  (cons _%code202071%_
                                                        _%loader202075%_)))))))
                              (_%$%g202017202031%_ _%$%g202018202034%_))))
                      (_%$%g202017202031%_ _%$%g202018202034%_)))))
          (_%$%g202016202080%_ _%stx202015%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx202001%_ _%context-chain202002%_)
        (let _%lp202004%_ ((_%ctx202006%_ _%ctx202001%_) (_%path202007%_ '()))
          (let ((_%super202009%_
                 (##structure-ref _%ctx202006%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super202009%_ _%context-chain202002%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx202006%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path202007%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super202009%_
                       'gx#module-context::t))
                    (_%lp202004%_
                     _%super202009%_
                     (cons (car (##structure-ref
                                 _%ctx202006%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path202007%_))
                    (cons (let ((__tmp211110
                                 (##structure-ref
                                  _%ctx202006%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp211110))
                          _%path202007%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp201994%_ ((_%ctx201996%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r201997%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx201996%_ 'gx#module-context::t))
              (_%lp201994%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx201996%_ '3 '#f '#f))
               (cons _%ctx201996%_ _%r201997%_))
              _%r201997%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self201759%_ _%stx201760%_)
        (letrec* ((_%context-chain201762%_ (gxc#current-context-chain))
                  (_%make-import-spec201763%_
                   (lambda (_%in201931%_)
                     (let* ((_%$%in201932201944%_ _%in201931%_)
                            (_%$%E201934201947%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in201932201944%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K201935201957%_
                             (lambda (_%phi201950%_
                                      _%name201951%_
                                      _%src-name201952%_
                                      _%src-phi201953%_
                                      _%src-key201954%_
                                      _%src-ctx201955%_)
                               (cons _%phi201950%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name201951%_))
                                           (cons _%src-phi201953%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name201952%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in201932201944%_
                              'gx#module-import::t))
                           (let ((_%$%e201936201960%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in201932201944%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e201936201960%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e201939201963%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e201936201960%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx201966%_ _%$%e201939201963%_)
                                        (_%$%e201940201968%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e201936201960%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key201971%_ _%$%e201940201968%_)
                                        (_%$%e201941201973%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e201936201960%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi201976%_ _%$%e201941201973%_)
                                        (_%$%e201942201978%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e201936201960%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name201981%_
                                         _%$%e201942201978%_)
                                        (_%$%e201937201983%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in201932201944%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name201986%_ _%$%e201937201983%_)
                                        (_%$%e201938201988%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in201932201944%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi201991%_ _%$%e201938201988%_))
                                   (_%$%K201935201957%_
                                    _%phi201991%_
                                    _%name201986%_
                                    _%src-name201981%_
                                    _%src-phi201976%_
                                    _%src-key201971%_
                                    _%src-ctx201966%_))
                                 (_%$%E201934201947%_)))
                           (_%$%E201934201947%_)))))
                  (_%make-import-path201764%_
                   (lambda (_%ctx201929%_)
                     (gxc#generate-meta-import-path
                      _%ctx201929%_
                      _%context-chain201762%_)))
                  (_%make-import-spec-in201765%_
                   (lambda (_%ctx201926%_ _%in201927%_)
                     (cons 'spec:
                           (cons (_%make-import-path201764%_ _%ctx201926%_)
                                 (reverse _%in201927%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self201759%_ 'state)))
          (let* ((_%$%g201767201777%_
                  (lambda (_%$%g201768201774%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g201768201774%_))))
                 (_%$%g201766201923%_
                  (lambda (_%$%g201768201780%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g201768201780%_))
                        (let ((_%$%e201770201782%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g201768201780%_))))
                          (let ((_%$%hd201771201785%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201770201782%_)))
                                (_%$%tl201772201787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201770201782%_))))
                            (let _%lp201801%_ ((_%rest201803%_
                                                _%$%tl201772201787%_)
                                               (_%current-src201804%_ '#f)
                                               (_%current-in201805%_ '())
                                               (_%r201806%_ '()))
                              (let* ((_%$%rest201807201815%_ _%rest201803%_)
                                     (_%$%else201809201825%_
                                      (lambda ()
                                        (let ((_%r201823%_
                                               (if _%current-src201804%_
                                                   (cons (_%make-import-spec-in201765%_
                                                          _%current-src201804%_
                                                          _%current-in201805%_)
                                                         _%r201806%_)
                                                   _%r201806%_)))
                                          (cons '%#import
                                                (reverse _%r201823%_)))))
                                     (_%$%K201811201911%_
                                      (lambda (_%rest201828%_ _%in201829%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in201829%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in201831201838%_
                                                    _%in201829%_)
                                                   (_%$%E201833201841%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in201831201838%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K201834201849%_
                                                    (lambda (_%src-ctx201844%_)
                                                      (if (eq? _%current-src201804%_
                                                               _%src-ctx201844%_)
                                                          (_%lp201801%_
                                                           _%rest201828%_
                                                           _%current-src201804%_
                                                           (cons (_%make-import-spec201763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in201829%_)
                         _%current-in201805%_)
                   _%r201806%_)
                  (if _%current-src201804%_
                      (_%lp201801%_
                       _%rest201828%_
                       _%src-ctx201844%_
                       (cons (_%make-import-spec201763%_ _%in201829%_) '())
                       (cons (_%make-import-spec-in201765%_
                              _%current-src201804%_
                              _%current-in201805%_)
                             _%r201806%_))
                      (_%lp201801%_
                       _%rest201828%_
                       _%src-ctx201844%_
                       (cons (_%make-import-spec201763%_ _%in201829%_) '())
                       _%r201806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e201835201852%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in201831201838%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e201835201852%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e201836201855%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e201835201852%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx201858%_
                                                          _%$%e201836201855%_))
                                                    (_%$%K201834201849%_
                                                     _%src-ctx201858%_))
                                                  (_%$%E201833201841%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in201829%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi201861%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in201829%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src201863%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in201829%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in201903%_
                                                        (let* ((_%$%g201864201873%_
                                                                (_%make-import-path201764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src201863%_))
                       (_%$%E201867201877%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g201864201873%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K201869201893%_
                         (lambda (_%path201891%_) _%path201891%_))
                        (_%$%K201868201883%_
                         (lambda (_%path201881%_) (cons 'in: _%path201881%_))))
                    (if (pair? _%$%g201864201873%_)
                        (let ((_%$%tl201871201898%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g201864201873%_)))
                              (_%$%hd201870201896%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g201864201873%_))))
                          (if (null? _%$%tl201871201898%_)
                              (let ((_%path201901%_ _%$%hd201870201896%_))
                                (_%$%K201869201893%_ _%path201901%_))
                              (let ((_%path201886%_ _%$%g201864201873%_))
                                (_%$%K201868201883%_ _%path201886%_))))
                        (let ((_%path201886%_ _%$%g201864201873%_))
                          (_%$%K201868201883%_ _%path201886%_))))))
               (_%r201905%_
                (if _%current-src201804%_
                    (cons (_%make-import-spec-in201765%_
                           _%current-src201804%_
                           _%current-in201805%_)
                          _%r201806%_)
                    _%r201806%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp201801%_
                                                   _%rest201828%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi201861%_)
                                                             _%src-in201903%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi201861%_ (cons _%src-in201903%_ '()))))
                 _%r201905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in201829%_
                                                       'gx#module-context::t))
                                                    (let ((_%r201909%_
                                                           (if _%current-src201804%_
                                                               (cons (_%make-import-spec-in201765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src201804%_
                              _%current-in201805%_)
                             _%r201806%_)
                       _%r201806%_)))
              (_%lp201801%_
               _%rest201828%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path201764%_ _%in201829%_))
                     _%r201909%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest201807201815%_)
                                    (let ((_%$%hd201812201914%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest201807201815%_)))
                                          (_%$%tl201813201916%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest201807201815%_))))
                                      (let* ((_%in201919%_
                                              _%$%hd201812201914%_)
                                             (_%rest201921%_
                                              _%$%tl201813201916%_))
                                        (_%$%K201811201911%_
                                         _%rest201921%_
                                         _%in201919%_)))
                                    (_%$%else201809201825%_))))))
                        (_%$%g201767201777%_ _%$%g201768201780%_)))))
            (_%$%g201766201923%_ _%stx201760%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self201569%_ _%stx201570%_)
        (letrec* ((_%context-chain201572%_ (gxc#current-context-chain))
                  (_%make-import-path201573%_
                   (lambda (_%ctx201757%_)
                     (gxc#generate-meta-import-path
                      _%ctx201757%_
                      _%context-chain201572%_))))
          (let* ((_%$%g201575201585%_
                  (lambda (_%$%g201576201582%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g201576201582%_))))
                 (_%$%g201574201754%_
                  (lambda (_%$%g201576201588%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g201576201588%_))
                        (let ((_%$%e201578201590%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g201576201588%_))))
                          (let ((_%$%hd201579201593%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201578201590%_)))
                                (_%$%tl201580201595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201578201590%_))))
                            (let _%lp201609%_ ((_%rest201611%_
                                                _%$%tl201580201595%_)
                                               (_%r201612%_ '()))
                              (let* ((_%$%rest201613201621%_ _%rest201611%_)
                                     (_%$%else201615201629%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r201612%_))))
                                     (_%$%K201617201742%_
                                      (lambda (_%rest201632%_ _%out201633%_)
                                        (let* ((_%$%out201634201647%_
                                                _%out201633%_)
                                               (_%$%E201637201651%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out201634201647%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K201641201721%_
                                                 (lambda (_%name201717%_
                                                          _%phi201718%_
                                                          _%key201719%_)
                                                   (_%lp201609%_
                                                    _%rest201632%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi201718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key201719%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name201717%_))
                                          '()))))
                  _%r201612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K201638201701%_
                                                 (lambda (_%phi201655%_
                                                          _%src201656%_)
                                                   (let* ((_%out201696%_
                                                           (if _%src201656%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g201657201666%_
                                           (_%make-import-path201573%_
                                            _%src201656%_))
                                          (_%$%E201660201670%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g201657201666%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K201662201686%_
                                            (lambda (_%path201684%_)
                                              _%path201684%_))
                                           (_%$%K201661201676%_
                                            (lambda (_%path201674%_)
                                              (cons 'in: _%path201674%_))))
                                       (if (pair? _%$%g201657201666%_)
                                           (let ((_%$%tl201664201691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g201657201666%_)))
                                                 (_%$%hd201663201689%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g201657201666%_))))
                                             (if (null? _%$%tl201664201691%_)
                                                 (let ((_%path201694%_
                                                        _%$%hd201663201689%_))
                                                   (_%$%K201662201686%_
                                                    _%path201694%_))
                                                 (let ((_%path201679%_
                                                        _%$%g201657201666%_))
                                                   (_%$%K201661201676%_
                                                    _%path201679%_))))
                                           (let ((_%path201679%_
                                                  _%$%g201657201666%_))
                                             (_%$%K201661201676%_
                                              _%path201679%_)))))
                                   '()))
                       '#t))
                  (_%out201698%_
                   (if (fxzero? _%phi201655%_)
                       _%out201696%_
                       (cons 'phi:
                             (cons _%phi201655%_ (cons _%out201696%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp201609%_
                                                      _%rest201632%_
                                                      (cons _%out201698%_
                                                            _%r201612%_))))))
                                            (let ((_%$%try-match201636201714%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out201634201647%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e201639201704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out201634201647%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e201640201709%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out201634201647%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src201707%_ _%$%e201639201704%_)
                         (_%phi201712%_ _%$%e201640201709%_))
                     (_%$%K201638201701%_ _%phi201712%_ _%src201707%_)))
                 (_%$%E201637201651%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out201634201647%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e201642201724%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out201634201647%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e201643201727%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out201634201647%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e201644201732%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out201634201647%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e201645201737%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out201634201647%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key201730%_
                                                           _%$%e201643201727%_)
                                                          (_%phi201735%_
                                                           _%$%e201644201732%_)
                                                          (_%name201740%_
                                                           _%$%e201645201737%_))
                                                      (_%$%K201641201721%_
                                                       _%name201740%_
                                                       _%phi201735%_
                                                       _%key201730%_)))
                                                  (_%$%try-match201636201714%_))))))))
                                (if (pair? _%$%rest201613201621%_)
                                    (let ((_%$%hd201618201745%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest201613201621%_)))
                                          (_%$%tl201619201747%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest201613201621%_))))
                                      (let* ((_%out201750%_
                                              _%$%hd201618201745%_)
                                             (_%rest201752%_
                                              _%$%tl201619201747%_))
                                        (_%$%K201617201742%_
                                         _%rest201752%_
                                         _%out201750%_)))
                                    (_%$%else201615201629%_))))))
                        (_%$%g201575201585%_ _%$%g201576201588%_)))))
            (_%$%g201574201754%_ _%stx201570%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self201530%_ _%stx201531%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self201530%_ 'state)))
        (let* ((_%$%g201533201543%_
                (lambda (_%$%g201534201540%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201534201540%_))))
               (_%$%g201532201566%_
                (lambda (_%$%g201534201546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201534201546%_))
                      (let ((_%$%e201536201548%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201534201546%_))))
                        (let ((_%$%hd201537201551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201536201548%_)))
                              (_%$%tl201538201553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201536201548%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl201538201553%_))))
                      (_%$%g201533201543%_ _%$%g201534201546%_)))))
          (_%$%g201532201566%_ _%stx201531%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self201405%_ _%stx201406%_)
        (letrec ((_%generate1201408%_
                  (lambda (_%id201525%_ _%eid201526%_)
                    (let ((_%eid201528%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid201526%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid201528%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx201406%_
                             _%eid201528%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id201525%_))
                            (cons _%eid201528%_ '()))))))
          (let* ((_%$%g201410201438%_
                  (lambda (_%$%g201411201435%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g201411201435%_))))
                 (_%$%g201409201522%_
                  (lambda (_%$%g201411201441%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g201411201441%_))
                        (let ((_%$%e201414201443%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g201411201441%_))))
                          (let ((_%$%hd201415201446%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201414201443%_)))
                                (_%$%tl201416201448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201414201443%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl201416201448%_))
                                (let ((_g211111_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl201416201448%_
                                          '0))))
                                  (begin
                                    (let ((_g211112_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g211111_)
                                                 (##values-length _g211111_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g211112_ 2)))
                                          (error "Context expects 2 values"
                                                 _g211112_)))
                                    (let ((_%$%target201417201451%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g211111_ 0)))
                                          (_%$%tl201419201453%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g211111_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl201419201453%_))
                                          (letrec ((_%$%loop201420201456%_
                                                    (lambda (_%$%hd201418201459%_
                                                             _%$%eid201424201461%_
                                                             _%$%id201425201462%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd201418201459%_))
                                                          (let ((_%$%e201421201464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd201418201459%_))))
                    (let ((_%$%lp-hd201422201467%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e201421201464%_)))
                          (_%$%lp-tl201423201469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e201421201464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd201422201467%_))
                          (let ((_%$%e201428201472%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd201422201467%_))))
                            (let ((_%$%hd201429201475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e201428201472%_)))
                                  (_%$%tl201430201477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e201428201472%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl201430201477%_))
                                  (let ((_%$%e201431201480%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl201430201477%_))))
                                    (let ((_%$%hd201432201483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e201431201480%_)))
                                          (_%$%tl201433201485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e201431201480%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl201433201485%_))
                                          (_%$%loop201420201456%_
                                           _%$%lp-tl201423201469%_
                                           (cons _%$%hd201432201483%_
                                                 _%$%eid201424201461%_)
                                           (cons _%$%hd201429201475%_
                                                 _%$%id201425201462%_))
                                          (_%$%g201410201438%_
                                           _%$%g201411201441%_))))
                                  (_%$%g201410201438%_ _%$%g201411201441%_))))
                          (_%$%g201410201438%_ _%$%g201411201441%_))))
                  (let ((_%$%eid201426201488%_ (reverse _%$%eid201424201461%_))
                        (_%$%id201427201489%_ (reverse _%$%id201425201462%_)))
                    (cons '%#extern
                          (map _%generate1201408%_
                               (let ((__tmp211113
                                      (lambda (_%$%g201507201510%_
                                               _%$%g201508201512%_)
                                        (cons _%$%g201507201510%_
                                              _%$%g201508201512%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp211113
                                  '()
                                  _%$%id201427201489%_))
                               (let ((__tmp211114
                                      (lambda (_%$%g201514201517%_
                                               _%$%g201515201519%_)
                                        (cons _%$%g201514201517%_
                                              _%$%g201515201519%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp211114
                                  '()
                                  _%$%eid201426201488%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop201420201456%_
                                             _%$%target201417201451%_
                                             '()
                                             '()))
                                          (_%$%g201410201438%_
                                           _%$%g201411201441%_)))))
                                (_%$%g201410201438%_ _%$%g201411201441%_))))
                        (_%$%g201410201438%_ _%$%g201411201441%_)))))
            (_%$%g201409201522%_ _%stx201406%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self201333%_ _%stx201334%_)
        (let* ((_%$%g201336201353%_
                (lambda (_%$%g201337201350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201337201350%_))))
               (_%$%g201335201402%_
                (lambda (_%$%g201337201356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201337201356%_))
                      (let ((_%$%e201340201358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201337201356%_))))
                        (let ((_%$%hd201341201361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201340201358%_)))
                              (_%$%tl201342201363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201340201358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201342201363%_))
                              (let ((_%$%e201343201366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201342201363%_))))
                                (let ((_%$%hd201344201369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201343201366%_)))
                                      (_%$%tl201345201371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201343201366%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl201345201371%_))
                                      (let ((_%$%e201346201374%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl201345201371%_))))
                                        (let ((_%$%hd201347201377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201346201374%_)))
                                              (_%$%tl201348201379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201346201374%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl201348201379%_))
                                              (let ((_%ident201398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd201344201369%_)))
                                                    (_%eid201399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd201347201377%_)))
                                                    (_%props201400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd201344201369%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident201398%_
                                                            (cons _%eid201399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props201400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g201336201353%_
                                               _%$%g201337201356%_))))
                                      (_%$%g201336201353%_
                                       _%$%g201337201356%_))))
                              (_%$%g201336201353%_ _%$%g201337201356%_))))
                      (_%$%g201336201353%_ _%$%g201337201356%_)))))
          (_%$%g201335201402%_ _%stx201334%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self201122%_ _%stx201123%_)
        (letrec ((_%generate1201125%_
                  (lambda (_%id201327%_)
                    (let ((_%eid201329%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id201327%_)))
                          (_%ident201330%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id201327%_)))
                          (_%props201331%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id201327%_))))
                      (cons '%#define-runtime
                            (cons _%ident201330%_
                                  (cons _%eid201329%_ _%props201331%_))))))
                 (_%generate*201126%_
                  (lambda (_%all201295%_)
                    (let* ((_%$%all201296201304%_ _%all201295%_)
                           (_%$%else201298201312%_
                            (lambda () (cons '%#begin _%all201295%_)))
                           (_%$%K201300201317%_
                            (lambda (_%one201315%_) _%one201315%_)))
                      (if (pair? _%$%all201296201304%_)
                          (let ((_%$%hd201301201320%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all201296201304%_)))
                                (_%$%tl201302201322%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all201296201304%_))))
                            (let ((_%one201325%_ _%$%hd201301201320%_))
                              (if (null? _%$%tl201302201322%_)
                                  (_%$%K201300201317%_ _%one201325%_)
                                  (_%$%else201298201312%_))))
                          (_%$%else201298201312%_))))))
          (let* ((_%$%g201128201145%_
                  (lambda (_%$%g201129201142%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g201129201142%_))))
                 (_%$%g201127201292%_
                  (lambda (_%$%g201129201148%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g201129201148%_))
                        (let ((_%$%e201132201150%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g201129201148%_))))
                          (let ((_%$%hd201133201153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201132201150%_)))
                                (_%$%tl201134201155%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201132201150%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl201134201155%_))
                                (let ((_%$%e201135201158%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl201134201155%_))))
                                  (let ((_%$%hd201136201161%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201135201158%_)))
                                        (_%$%tl201137201163%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201135201158%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl201137201163%_))
                                        (let ((_%$%e201138201166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl201137201163%_))))
                                          (let ((_%$%hd201139201169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e201138201166%_)))
                                                (_%$%tl201140201171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e201138201166%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl201140201171%_))
                                                (let _%lp201191%_ ((_%rest201193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd201136201161%_)
                           (_%r201194%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx210849210850%_
                                                          _%rest201193%_)
                                                         (_%$%g201199201216%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx210849210850%_)))))
                                                    (let ((_%__kont210851210852%_
                                                           (lambda (_%$%g201201201279%_)
                                                             (_%lp201191%_
                                                              _%$%g201201201279%_
                                                              _%r201194%_)))
                                                          (_%__kont210853210854%_
                                                           (lambda (_%$%g201206201252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g201207201253%_)
                     (_%lp201191%_
                      _%$%g201206201252%_
                      (cons (_%generate1201125%_ _%$%g201207201253%_)
                            _%r201194%_))))
                  (_%__kont210855210856%_
                   (lambda (_%$%g201211201228%_)
                     (_%generate*201126%_
                      (let ((__tmp211115
                             (cons (_%generate1201125%_ _%$%g201211201228%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp211115 _%r201194%_)))))
                  (_%__kont210857210858%_
                   (lambda () (_%generate*201126%_ (reverse! _%r201194%_)))))
              (let ((_%$%g201197201239%_
                     (lambda ()
                       (let ((_%$%g201211201228%_ _%__stx210849210850%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g201211201228%_))
                             (_%__kont210855210856%_ _%$%g201211201228%_)
                             (_%__kont210857210858%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx210849210850%_))
                    (let ((_%$%e201202201268%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx210849210850%_))))
                      (let ((_%$%tl201204201273%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e201202201268%_)))
                            (_%$%hd201203201271%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e201202201268%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd201203201271%_))
                            (let ((_%$%e201205201276%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd201203201271%_))))
                              (if (equal? _%$%e201205201276%_ '#f)
                                  (_%__kont210851210852%_ _%$%tl201204201273%_)
                                  (_%__kont210853210854%_
                                   _%$%tl201204201273%_
                                   _%$%hd201203201271%_)))
                            (_%__kont210853210854%_
                             _%$%tl201204201273%_
                             _%$%hd201203201271%_))))
                    (_%$%g201197201239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g201128201145%_
                                                 _%$%g201129201148%_))))
                                        (_%$%g201128201145%_
                                         _%$%g201129201148%_))))
                                (_%$%g201128201145%_ _%$%g201129201148%_))))
                        (_%$%g201128201145%_ _%$%g201129201148%_)))))
            (_%$%g201127201292%_ _%stx201123%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self201019%_ _%stx201020%_)
        (let* ((_%$%g201022201039%_
                (lambda (_%$%g201023201036%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201023201036%_))))
               (_%$%g201021201119%_
                (lambda (_%$%g201023201042%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201023201042%_))
                      (let ((_%$%e201026201044%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201023201042%_))))
                        (let ((_%$%hd201027201047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201026201044%_)))
                              (_%$%tl201028201049%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201026201044%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201028201049%_))
                              (let ((_%$%e201029201052%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201028201049%_))))
                                (let ((_%$%hd201030201055%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201029201052%_)))
                                      (_%$%tl201031201057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201029201052%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl201031201057%_))
                                      (let ((_%$%e201032201060%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl201031201057%_))))
                                        (let ((_%$%hd201033201063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201032201060%_)))
                                              (_%$%tl201034201065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201032201060%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl201034201065%_))
                                              (let* ((_%eid201084%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd201030201055%_)))
                                                     (_%phi201086%_
                                                      (let ((__tmp211116
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp211116 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block201088%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self201019%_
                                                          'state))
                                                       _%phi201086%_)))
                                                (let* ((_%$%g201091201098%_
                                                        (lambda (_%$%g201092201095%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g201092201095%_))))
                                                       (_%$%g201090201116%_
                                                        (lambda (_%$%g201092201101%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self201019%_
                                                              'state))
                                                           _%phi201086%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g201092201101%_
                               (cons _%$%hd201033201063%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g201090201116%_
                                                   _%eid201084%_))
                                                (if _%block201088%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block201088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd201030201055%_))
                                          (cons _%eid201084%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd201030201055%_))
                        (cons _%eid201084%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g201022201039%_
                                               _%$%g201023201042%_))))
                                      (_%$%g201022201039%_
                                       _%$%g201023201042%_))))
                              (_%$%g201022201039%_ _%$%g201023201042%_))))
                      (_%$%g201022201039%_ _%$%g201023201042%_)))))
          (_%$%g201021201119%_ _%stx201020%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self200951%_ _%stx200952%_)
        (let* ((_%$%g200954200971%_
                (lambda (_%$%g200955200968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200955200968%_))))
               (_%$%g200953201016%_
                (lambda (_%$%g200955200974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200955200974%_))
                      (let ((_%$%e200958200976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200955200974%_))))
                        (let ((_%$%hd200959200979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200958200976%_)))
                              (_%$%tl200960200981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200958200976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200960200981%_))
                              (let ((_%$%e200961200984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200960200981%_))))
                                (let ((_%$%hd200962200987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200961200984%_)))
                                      (_%$%tl200963200989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200961200984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200963200989%_))
                                      (let ((_%$%e200964200992%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200963200989%_))))
                                        (let ((_%$%hd200965200995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200964200992%_)))
                                              (_%$%tl200966200997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200964200992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200966200997%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd200962200987%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd200965200995%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200954200971%_
                                               _%$%g200955200974%_))))
                                      (_%$%g200954200971%_
                                       _%$%g200955200974%_))))
                              (_%$%g200954200971%_ _%$%g200955200974%_))))
                      (_%$%g200954200971%_ _%$%g200955200974%_)))))
          (_%$%g200953201016%_ _%stx200952%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self200948%_ _%stx200949%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self200948%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx200949%_)
        (gxc#generate-meta-define-values% _%self200948%_ _%stx200949%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self200945%_ _%stx200946%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self200945%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx200946%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp211118 (list)) (__tmp211117 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp211118
         '(src n open blocks)
         __tmp211117
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args200942%_
        (apply make-instance gxc#meta-state::t _%$args200942%_)))
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
      (lambda (_%self200928%_ _%ctx200929%_)
        (let ((_%self200932%_ _%self200928%_))
          (if (let ((__tmp211119
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200932%_))))
                (declare (not safe))
                (##fx< '4 __tmp211119))
              (begin
                (let ((__tmp211120
                       (let ((__tmp211121
                              (##structure-ref
                               _%ctx200929%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp211121))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200932%_
                   __tmp211120
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self200932%_ '1 '2 '#f '#f))
                (let ((__tmp211122
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200932%_
                   __tmp211122
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self200932%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp211123
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200932%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self200932%_
                       '4
                       __tmp211123))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp211125 (list)) (__tmp211124 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp211125
         '(ctx phi n code)
         __tmp211124
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args200803%_
        (apply make-instance gxc#meta-state-block::t _%$args200803%_)))
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
      (lambda (_%state200763%_ _%phi200764%_)
        (let* ((_%$%state200765200773%_ _%state200763%_)
               (_%$%E200767200776%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state200765200773%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K200768200785%_
                (lambda (_%open200779%_ _%n200780%_ _%src200781%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open200779%_ _%phi200764%_))
                      '#f
                      (let ((_%block-ref200783%_
                             (let ((__tmp211126 (number->string _%n200780%_)))
                               (declare (not safe))
                               (##string-append
                                _%src200781%_
                                '"~"
                                __tmp211126))))
                        (##structure-set!
                         _%state200763%_
                         (let () (declare (not safe)) (##fx+ _%n200780%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp211127
                               (let ((__tmp211128
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp211128
                                  _%phi200764%_
                                  _%n200780%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open200779%_ _%phi200764%_ __tmp211127))
                        _%block-ref200783%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state200765200773%_
                 'gxc#meta-state::t))
              (let* ((_%$%e200769200788%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state200765200773%_
                         '1
                         '#f
                         '#f)))
                     (_%src200791%_ _%$%e200769200788%_)
                     (_%$%e200770200793%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state200765200773%_
                         '2
                         '#f
                         '#f)))
                     (_%n200796%_ _%$%e200770200793%_)
                     (_%$%e200771200798%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state200765200773%_
                         '3
                         '#f
                         '#f)))
                     (_%open200801%_ _%$%e200771200798%_))
                (_%$%K200768200785%_ _%open200801%_ _%n200796%_ _%src200791%_))
              (_%$%E200767200776%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state200757%_ _%phi200758%_ _%stx200759%_)
        (let ((_%block200761%_
               (let ((__tmp211129
                      (##structure-ref
                       _%state200757%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp211129 _%phi200758%_))))
          (##structure-set!
           _%block200761%_
           (cons _%stx200759%_
                 (##structure-ref
                  _%block200761%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state200751%_)
        (##structure-set!
         _%state200751%_
         (let ((__tmp211132
                (lambda (_%_200753%_ _%block200754%_ _%r200755%_)
                  (cons _%block200754%_ _%r200755%_)))
               (__tmp211131
                (##structure-ref _%state200751%_ '4 gxc#meta-state::t '#f))
               (__tmp211130
                (##structure-ref _%state200751%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp211132 __tmp211131 __tmp211130))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state200751%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state200704%_)
        (gxc#meta-state-end-phi! _%state200704%_)
        (let ((__tmp211134
               (lambda (_%block200706%_ _%r200707%_)
                 (let* ((_%$%block200708200717%_ _%block200706%_)
                        (_%$%E200710200720%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block200708200717%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K200711200728%_
                         (lambda (_%code200723%_
                                  _%n200724%_
                                  _%phi200725%_
                                  _%ctx200726%_)
                           (if (null? _%code200723%_)
                               _%r200707%_
                               (cons (cons _%ctx200726%_
                                           (cons _%phi200725%_
                                                 (cons _%n200724%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code200723%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r200707%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block200708200717%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e200712200731%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block200708200717%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx200734%_ _%$%e200712200731%_)
                              (_%$%e200713200736%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block200708200717%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi200739%_ _%$%e200713200736%_)
                              (_%$%e200714200741%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block200708200717%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n200744%_ _%$%e200714200741%_)
                              (_%$%e200715200746%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block200708200717%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code200749%_ _%$%e200715200746%_))
                         (_%$%K200711200728%_
                          _%code200749%_
                          _%n200744%_
                          _%phi200739%_
                          _%ctx200734%_))
                       (_%$%E200710200720%_)))))
              (__tmp211133
               (##structure-ref _%state200704%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp211134 '() __tmp211133))))
    (define gxc#collect-expression-refs
      (lambda (_%stx200700%_)
        (let ((_%ht200702%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht200702%_ _%stx200700%_)
          _%ht200702%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self200643%_ _%stx200644%_)
        (let* ((_%$%g200646200659%_
                (lambda (_%$%g200647200656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200647200656%_))))
               (_%$%g200645200697%_
                (lambda (_%$%g200647200662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200647200662%_))
                      (let ((_%$%e200649200664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200647200662%_))))
                        (let ((_%$%hd200650200667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200649200664%_)))
                              (_%$%tl200651200669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200649200664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200651200669%_))
                              (let ((_%$%e200652200672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200651200669%_))))
                                (let ((_%$%hd200653200675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200652200672%_)))
                                      (_%$%tl200654200677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200652200672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200654200677%_))
                                      (let* ((_%bind200692%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd200653200675%_)))
                                             (_%eid200694%_
                                              (if _%bind200692%_
                                                  (##structure-ref
                                                   _%bind200692%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd200653200675%_))))
                                             (__tmp211135
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self200643%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp211135
                                         _%eid200694%_
                                         _%eid200694%_))
                                      (_%$%g200646200659%_
                                       _%$%g200647200662%_))))
                              (_%$%g200646200659%_ _%$%g200647200662%_))))
                      (_%$%g200646200659%_ _%$%g200647200662%_)))))
          (_%$%g200645200697%_ _%stx200644%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self200570%_ _%stx200571%_)
        (let* ((_%$%g200573200590%_
                (lambda (_%$%g200574200587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200574200587%_))))
               (_%$%g200572200640%_
                (lambda (_%$%g200574200593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200574200593%_))
                      (let ((_%$%e200577200595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200574200593%_))))
                        (let ((_%$%hd200578200598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200577200595%_)))
                              (_%$%tl200579200600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200577200595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200579200600%_))
                              (let ((_%$%e200580200603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200579200600%_))))
                                (let ((_%$%hd200581200606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200580200603%_)))
                                      (_%$%tl200582200608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200580200603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200582200608%_))
                                      (let ((_%$%e200583200611%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200582200608%_))))
                                        (let ((_%$%hd200584200614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200583200611%_)))
                                              (_%$%tl200585200616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200583200611%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200585200616%_))
                                              (let* ((_%bind200635%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd200581200606%_)))
                                                     (_%eid200637%_
                                                      (if _%bind200635%_
                                                          (##structure-ref
                                                           _%bind200635%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd200581200606%_)))))
                                                (let ((__tmp211136
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self200570%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp211136
                                                   _%eid200637%_
                                                   _%eid200637%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self200570%_
                                                   _%$%hd200584200614%_)))
                                              (_%$%g200573200590%_
                                               _%$%g200574200593%_))))
                                      (_%$%g200573200590%_
                                       _%$%g200574200593%_))))
                              (_%$%g200573200590%_ _%$%g200574200593%_))))
                      (_%$%g200573200590%_ _%$%g200574200593%_)))))
          (_%$%g200572200640%_ _%stx200571%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self200527%_ _%stx200528%_)
        (let* ((_%$%g200530200540%_
                (lambda (_%$%g200531200537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200531200537%_))))
               (_%$%g200529200567%_
                (lambda (_%$%g200531200543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200531200543%_))
                      (let ((_%$%e200533200545%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200531200543%_))))
                        (let ((_%$%hd200534200548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200533200545%_)))
                              (_%$%tl200535200550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200533200545%_))))
                          (let ((__tmp211137
                                 (lambda (_%$%g200562200564%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self200527%_
                                      _%$%g200562200564%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp211137 _%$%tl200535200550%_))))
                      (_%$%g200530200540%_ _%$%g200531200543%_)))))
          (_%$%g200529200567%_ _%stx200528%_))))
    (define gxc#count-values-single%
      (lambda (_%self200524%_ _%stx200525%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self200392%_ _%stx200393%_)
        (let* ((_%__stx210879210880%_ _%stx200393%_)
               (_%$%g200396200425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210879210880%_)))))
          (let ((_%__kont210881210882%_
                 (lambda (_%$%g200398200491%_ _%$%g200399200492%_)
                   (length (let ((__tmp211138
                                  (lambda (_%$%g200513200516%_
                                           _%$%g200514200518%_)
                                    (cons _%$%g200513200516%_
                                          _%$%g200514200518%_))))
                             (declare (not safe))
                             (foldr__0 __tmp211138 '() _%$%g200398200491%_)))))
                (_%__kont210885210886%_ (lambda () '#f)))
            (let ((_%__match210924210925%_
                   (lambda (_%$%e200400200437%_
                            _%$%hd200401200440%_
                            _%$%tl200402200442%_
                            _%$%e200403200445%_
                            _%$%hd200404200448%_
                            _%$%tl200405200450%_
                            _%$%e200406200453%_
                            _%$%hd200407200456%_
                            _%$%tl200408200458%_
                            _%$%e200409200461%_
                            _%$%hd200410200464%_
                            _%$%tl200411200466%_
                            _%__splice210883210884%_
                            _%$%target200412200469%_
                            _%$%tl200414200471%_)
                     (letrec ((_%$%loop200415200474%_
                               (lambda (_%$%hd200413200477%_
                                        _%$%rand200419200479%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd200413200477%_))
                                     (let ((_%$%e200416200481%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd200413200477%_))))
                                       (let ((_%$%lp-tl200418200486%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e200416200481%_)))
                                             (_%$%lp-hd200417200484%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e200416200481%_))))
                                         (_%$%loop200415200474%_
                                          _%$%lp-tl200418200486%_
                                          (cons _%$%lp-hd200417200484%_
                                                _%$%rand200419200479%_))))
                                     (let ((_%$%rand200420200489%_
                                            (reverse _%$%rand200419200479%_)))
                                       (let ((_%$%g200398200491%_
                                              _%$%rand200420200489%_)
                                             (_%$%g200399200492%_
                                              _%$%hd200410200464%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g200399200492%_
                                                'values))
                                             (_%__kont210881210882%_
                                              _%$%g200398200491%_
                                              _%$%g200399200492%_)
                                             (_%__kont210885210886%_))))))))
                       (_%$%loop200415200474%_
                        _%$%target200412200469%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210879210880%_))
                  (let ((_%$%e200400200437%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx210879210880%_))))
                    (let ((_%$%tl200402200442%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e200400200437%_)))
                          (_%$%hd200401200440%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e200400200437%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl200402200442%_))
                          (let ((_%$%e200403200445%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl200402200442%_))))
                            (let ((_%$%tl200405200450%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e200403200445%_)))
                                  (_%$%hd200404200448%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e200403200445%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd200404200448%_))
                                  (let ((_%$%e200406200453%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd200404200448%_))))
                                    (let ((_%$%tl200408200458%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e200406200453%_)))
                                          (_%$%hd200407200456%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e200406200453%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd200407200456%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd200407200456%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl200408200458%_))
                                                  (let ((_%$%e200409200461%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl200408200458%_))))
                                                    (let ((_%$%tl200411200466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200409200461%_)))
                                                          (_%$%hd200410200464%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200409200461%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl200411200466%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl200405200450%_))
                      (let ((_%__splice210883210884%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl200405200450%_
                                '0))))
                        (let ((_%$%tl200414200471%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210883210884%_ '1)))
                              (_%$%target200412200469%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210883210884%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl200414200471%_))
                              (_%__match210924210925%_
                               _%$%e200400200437%_
                               _%$%hd200401200440%_
                               _%$%tl200402200442%_
                               _%$%e200403200445%_
                               _%$%hd200404200448%_
                               _%$%tl200405200450%_
                               _%$%e200406200453%_
                               _%$%hd200407200456%_
                               _%$%tl200408200458%_
                               _%$%e200409200461%_
                               _%$%hd200410200464%_
                               _%$%tl200411200466%_
                               _%__splice210883210884%_
                               _%$%target200412200469%_
                               _%$%tl200414200471%_)
                              (_%__kont210885210886%_))))
                      (_%__kont210885210886%_))
                  (_%__kont210885210886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont210885210886%_))
                                              (_%__kont210885210886%_))
                                          (_%__kont210885210886%_))))
                                  (_%__kont210885210886%_))))
                          (_%__kont210885210886%_))))
                  (_%__kont210885210886%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self200297%_ _%stx200298%_)
        (let* ((_%$%g200300200321%_
                (lambda (_%$%g200301200318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200301200318%_))))
               (_%$%g200299200389%_
                (lambda (_%$%g200301200324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200301200324%_))
                      (let ((_%$%e200305200326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200301200324%_))))
                        (let ((_%$%hd200306200329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200305200326%_)))
                              (_%$%tl200307200331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200305200326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200307200331%_))
                              (let ((_%$%e200308200334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200307200331%_))))
                                (let ((_%$%hd200309200337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200308200334%_)))
                                      (_%$%tl200310200339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200308200334%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200310200339%_))
                                      (let ((_%$%e200311200342%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200310200339%_))))
                                        (let ((_%$%hd200312200345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200311200342%_)))
                                              (_%$%tl200313200347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200311200342%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200313200347%_))
                                              (let ((_%$%e200314200350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl200313200347%_))))
                                                (let ((_%$%hd200315200353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200314200350%_)))
                                                      (_%$%tl200316200355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200314200350%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl200316200355%_))
                                                      (let ((_%$%c1200377200379%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self200297%_
                        _%$%hd200312200345%_))))
                (if _%$%c1200377200379%_
                    (let* ((_%c1200381%_ _%$%c1200377200379%_)
                           (_%$%c2200382200384%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self200297%_
                               _%$%hd200315200353%_))))
                      (if _%$%c2200382200384%_
                          (let ((_%c2200386%_ _%$%c2200382200384%_))
                            (if (fx= _%c1200381%_ _%c2200386%_)
                                _%c1200381%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g200300200321%_ _%$%g200301200324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g200300200321%_
                                               _%$%g200301200324%_))))
                                      (_%$%g200300200321%_
                                       _%$%g200301200324%_))))
                              (_%$%g200300200321%_ _%$%g200301200324%_))))
                      (_%$%g200300200321%_ _%$%g200301200324%_)))))
          (_%$%g200299200389%_ _%stx200298%_))))))
